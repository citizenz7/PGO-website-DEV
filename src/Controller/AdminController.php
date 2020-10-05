<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Category;
use App\Form\ArticleType;
use App\Form\CategoryType;
use Gedmo\Sluggable\Util\Urlizer;
use App\Repository\UserRepository;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminController extends AbstractController
{
    /**
     * @Route("/admin", name="admin_index")
     */
    public function indexAdmin(ArticleRepository $repoArticle, CategoryRepository $repoCategory, UserRepository $repoUser) 
    {

        return $this->render('admin/index.html.twig', [
            'articles' => $repoArticle->findAll(),
            'categories' => $repoCategory->findAll(),
            'users' => $repoUser->findAll(),
        ]);
    }

    /**
     * @Route("/admin/articles", name="admin_articles")
     */
    public function indexArticles(ArticleRepository $repo, Request $request, PaginatorInterface $paginator)
    {

        $donnees = $this->getDoctrine()->getRepository(Article::class)->findBy([],['created_at' => 'desc']);

        $articles = $paginator->paginate(
            $donnees, // on passe les données
            $request->query->getInt('page', 1), // N° de la page en cours, 1 par défaut
            10 // nombre d'éléments par page
        );

        return $this->render('admin/articles/index.html.twig', [
            'controller_name' => 'AdminController',
            'articles' => $articles,
        ]);
    }

    /**
    * @Route("/admin/categories", name="admin_categories")
    */
    public function indexCategories(CategoryRepository $repo, Request $request, PaginatorInterface $paginator)
    {
        $donnees = $repo->findAll();

        $categories = $paginator->paginate(
            $donnees, // on passe les données
            $request->query->getInt('page', 1), // N° de la page en cours, 1 par défaut
            3 // nombre d'éléments par page
        );

        return $this->render('admin/categories/index.html.twig', [
            'controller_name' => 'CategoryController',
            'categories' => $categories,
        ]);
    }

    /**
    * @Route("/admin/article/new", name="article_new", methods={"GET","POST"})
    */
    public function newArticle(Request $request): Response
    {
        $article = new Article();
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            /** @var UploadedFile $uploadedFile */
            $uploadedFile = $form['img']->getData();

            if ($uploadedFile) {
                $destination = $this->getParameter('kernel.project_dir').'/public/uploads/article_image';

                $originalFilename = pathinfo($uploadedFile->getClientOriginalName(), PATHINFO_FILENAME);
                $newFilename = $originalFilename.'-'.uniqid().'.'.$uploadedFile->guessExtension();

                $uploadedFile->move(
                    $destination,
                    $newFilename
                );
                $article->setImage($newFilename);
            }

            $entityManager = $this->getDoctrine()->getManager();

            // Default date/time when creating
            $article->setCreatedAt(new \DateTime());
            
            // Minimum number of views for article when creating
            $article->setViews('1');

            $entityManager->persist($article);
            $entityManager->flush();

            return $this->redirectToRoute('admin_index');
        }

        return $this->render('admin/articles/new.html.twig', [
            'article' => $article,
            'form' => $form->createView(),
        ]);
    }

    /**
    * @Route("/admin/category/new", name="category_new", methods={"GET","POST"})
    */
    public function newCategory(Request $request): Response
    {
        $category = new Category();
        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($category);
            $entityManager->flush();

            return $this->redirectToRoute('admin_index');
        }

        return $this->render('admin/categories/new.html.twig', [
            'category' => $category,
            'form' => $form->createView(),
        ]);
    }

    /**
    * @Route("/admin/article/{slug}/edit", name="article_edit", methods={"GET","POST"})
    */
    public function editArticle(Request $request, Article $article): Response
    {
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            /** @var UploadedFile $uploadedFile */
            $uploadedFile = $form['img']->getData();

            if ($uploadedFile) {
                $destination = $this->getParameter('kernel.project_dir').'/public/uploads/article_image';

                $originalFilename = pathinfo($uploadedFile->getClientOriginalName(), PATHINFO_FILENAME);
                $newFilename = $originalFilename.'-'.uniqid().'.'.$uploadedFile->guessExtension();

                $uploadedFile->move(
                    $destination,
                    $newFilename
                );
                $article->setImage($newFilename);
            }

            $article->setUpdatedAt(new \DateTime());

            $this->getDoctrine()->getManager()->flush();

            $this->addFlash('success', 'Article updated!');

            return $this->redirectToRoute('admin_articles');
        }

        return $this->render('admin/articles/edit.html.twig', [
            'article' => $article,
            'form' => $form->createView(),
        ]);
    }

    /**
    * @Route("/admin/{id}/category/edit", name="category_edit", methods={"GET","POST"})
    */
    public function editCategory(Request $request, Category $category): Response
    {
        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_index');
        }

        return $this->render('admin/categories/edit.html.twig', [
            'category' => $category,
            'form' => $form->createView(),
        ]);
    }

    /**
    * @Route("/admin/article/{slug}/delete", name="article_delete", methods={"DELETE"})
    */
    public function deleteArticle(Request $request, Article $article): Response
    {
        if ($this->isCsrfTokenValid('delete'.$article->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();

            $destination = $this->getParameter('kernel.project_dir').'/public/uploads/article_image/';
            unlink($destination.$article->getImage());

            $entityManager->remove($article);
            $entityManager->flush();
        }

        return $this->redirectToRoute('admin_index');
    }

    /**
    * @Route("/admin/category/{id}/delete", name="category_delete", methods={"DELETE"})
    */
    public function deleteCategory(Request $request, Category $category): Response
    {
        if ($this->isCsrfTokenValid('delete'.$category->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();

            $entityManager->remove($category);
            $entityManager->flush();
        }

        return $this->redirectToRoute('admin_index');
    }

}
