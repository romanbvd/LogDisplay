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
        
    
        $cacher = $this->get('log_cacher');
        $cacher->refreshCache();

        return $this->render('DisplayBundle:Display:index.html.twig', array(
            'var' => 's'));
    }
}
