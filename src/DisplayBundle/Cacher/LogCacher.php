<?php

namespace DisplayBundle\Cacher;

use Doctrine\ORM\EntityManager;
use DisplayBundle\Collectors\LogLineCollector;
use DisplayBundle\Collectors\LogFileCollector;

class LogCacher
{
    private $path = '';

    private $em = null;

    private $lineCollector = null;
    private $fileCollector = null;

    public function __construct(EntityManager $manager, LogFileCollector $fileCollector, LogLineCollector $lineCollector, $path)
    {
        $this->path = $path;

        $this->em = $manager;

        $this->lineCollector = $lineCollector;
        $this->fileCollector = $fileCollector;
    }

    public function refreshCache()
    {
        $path = str_replace('#username#', 'romanbvd', $this->path);

        $fileCollection = $this->fileCollector->getCollection($path);
        foreach($fileCollection as $file){
            $this->em->persist($file);    
            
            $this->saveFileLines($file);
        }

        $this->em->flush();
die;
       
        return 'hellos';
    }

    private function saveFileLines($fileObj)
    {
        $lineCollection = $this->lineCollector->getCollection($fileObj->getPath());
        foreach($lineCollection as $line){ 
            $line->setFile($fileObj);
            
            $this->em->persist($line); 
        }
    }
}
