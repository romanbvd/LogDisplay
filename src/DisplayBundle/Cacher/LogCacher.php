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
        if(!$this->isNeedRefresh()){echo 'no';
            return true;
        }
echo 'yes';
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

    private function isNeedRefresh()
    {
        $cache = $this->em->getRepository('DisplayBundle:Cache')->find(1);
        $previousDate = $cache->getModified();
        
        $currentDate = new \DateTime();

        if(($currentDate->getTimestamp() - $previousDate->getTimestamp()) > $this->refresh_interval){
            $cache->setModified($currentDate);
            $this->em->flush();
            
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
