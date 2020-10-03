<?php

namespace App\Controller;

use App\Form\SearchType;
use App\Repository\ArticleRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class SearchController extends AbstractController
{
    /**
     * @Route("/search", name="search")
     */
    public function index(Request $request, ArticleRepository $repo, PaginatorInterface $paginator)
    {

        $searchForm = $this->createForm(SearchType::class);
        $searchForm->handleRequest($request);
       
        //$donnees = $repo->findAll();
        $donnees = $repo->findArticles();

        if ($searchForm->isSubmitted() && $searchForm->isValid())
        {
            $title = $searchForm->getData()->getTitle();
            $donnees = $repo->search($title);
        }

        // Paginate the results of the query
        $articles = $paginator->paginate(
            $donnees, // Doctrine Query, not results
            $request->query->getInt('page', 1), // Define the page parameter
            4 // Items per page
        );

        return $this->render('search/index.html.twig', [
            'controller_name' => 'SearchController',
            'articles' => $articles,
            'searchForm' => $searchForm->createView()
        ]);

    }
}