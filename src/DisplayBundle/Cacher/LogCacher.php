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
        $lineCollection = $this->lineCollector->getCollection($path . 'error.log');

        foreach($lineCollection as $line){
            $this->em->persist($line);
        }

        $this->em->flush();
die;
        foreach($fileCollection as $file){
            $this->em->persist($file);
        }

        $this->em->flush();

        return 'hellos';
    }
}
