<?php

namespace DisplayBundle\Cacher;

use Doctrine\ORM\EntityManager;
use DisplayBundle\Collectors\LogLineCollector;
use DisplayBundle\Collectors\LogFileCollector;

class LogCacher
{
    private $path = '';
    private $refresh_interval = 0;

    private $em = null;

    private $lineCollector = null;
    private $fileCollector = null;

    public function __construct(EntityManager $manager, LogFileCollector $fileCollector, LogLineCollector $lineCollector, $path, $refresh)
    {
        $this->path = $path;
        $this->refresh_interval = $refresh;

        $this->em = $manager;

        $this->lineCollector = $lineCollector;
        $this->fileCollector = $fileCollector;
    }

    public function refreshCache()
    {
        if(!$this->isNeedRefresh()){
            return true;
        }

        $path = str_replace('#username#', 'roman', $this->path);

        $fileCollection = $this->fileCollector->getCollection($path);
        foreach($fileCollection as $file){
            $this->em->persist($file);    
            
            $this->saveFileLines($file);
        }

        $this->em->flush();
die;
       
        return 'hellos';
    }

    private function isNeedRefresh()
    {echo 'f';die;
        $cache = $this->em->getRepository('DisplayBundle:Cache')->find(1);
        
        $previousDate = $cache->getModified();
        $previousDate = $previousDate->add(new \DateInterval('PT' . $this->refresh_interval .'S'));
        
        $currentDate = new \DateTime();

        $cache->setModified($currentDate);

        $this->em->flush();

        if(($currentDate->getTimestamp() - $previousDate->getTimestamp()) > $this->refresh_interval){
            return true;
        }

        return false;
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
