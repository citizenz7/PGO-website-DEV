<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Category;
use App\Repository\ArticleRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class ArticleController extends AbstractController
{
    /**
     * @Route("/", name="article_index", methods={"GET"})
     */
    public function indexArticle(Request $request, ArticleRepository $repo, PaginatorInterface $paginator)
    {

        //$donnees = $repo->findAll();
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $donnees = $this->getDoctrine()->getRepository(Article::class)->findBy([],['created_at' => 'desc']);

        // Featured articles - Index page
        $featured = $this->getDoctrine()->getRepository(Article::class)->findBy([],['featured' => 'desc'], 3);

        $articles = $paginator->paginate(
            $donnees, // on passe les données
            $request->query->getInt('page', 1), // N° de la page en cours, 1 par défaut
            6 // nombre d'éléments par page
        );

        return $this->render('article/index.html.twig', [
            'controller_name' => 'ArticleController',
            'articles' => $articles,
            'featured' => $featured,
        ]);
    }

    /**
     * @Route("/article/{slug}", name="article_show", methods={"GET"})
     */
    public function showArticle(Article $article): Response
    {
        $newview = $article->getViews() + 1;
        $article->setViews($newview);

        $entityManager = $this->getDoctrine()->getManager();

        $entityManager->persist($article);
        $entityManager->flush();

        return $this->render('article/show.html.twig', [
            'article' => $article,
        ]);
    }

    /**
     * @Route("/category/{id}", name="category_show", methods={"GET"})
     */
    public function showCategory(Category $category): Response
    {
        return $this->render('category/show.html.twig', [
            'category' => $category,
        ]);
    }

}
