<?php

namespace DisplayBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DisplayController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $cacher = $this->get('log_cacher');
        $cacher->refreshCache();

        $em = $this->get('doctrine.orm.entity_manager');
        $dql   = "SELECT l FROM DisplayBundle:Line l";
        $query = $em->createQuery($dql);

        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $query,
            $request->query->getInt('page', 1)/*page number*/,
            10/*limit per page*/
        );

        return $this->render('DisplayBundle:Display:index.html.twig', array(
            'pagination' => $pagination));
    }
}
