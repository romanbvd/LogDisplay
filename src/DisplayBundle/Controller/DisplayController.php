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
        $cache = $this->get('log_cacher');

        $fileName = str_replace('username', 'roman', $this->getParameter('path'));
        $pattern = $this->getParameter('log_pattern');

        $cacher = $this->get('log_cacher');
        $cacher->execute();
print_r($res);die;
        return $this->render('DisplayBundle:Display:index.html.twig', array(
            'var' => 's'));
    }
}
