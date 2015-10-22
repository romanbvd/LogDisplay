<?php

namespace DisplayBundle\Form;

use Doctrine\ORM\EntityManager;

class FilterData
{
    private $em = null;

    public function __construct(EntityManager $manager)
    {
        $this->em = $manager;
    }
    public function getUser()
    {
        $users = $this->em->getRepository('DisplayBundle:User')->findAll();

        $choices = array();
        foreach($users as $user){
            $choices[$user->getName()] = $user->getName();
        }

        return array(
            'choices' => $choices   
        );
    }

    public function getType()
    {
        return array(
            'choices' => array(
                'info' => 'Info',
                'notice' => 'Notice',
                'error' => 'Error'
            )   
        );
    }

}
