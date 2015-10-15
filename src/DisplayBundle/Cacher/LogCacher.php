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

    private  $filesInCache = null;

    public function __construct(EntityManager $manager, LogFileCollector $fileCollector, LogLineCollector $lineCollector, $path, $refresh)
    {
        $this->path = $path;
        $this->refresh_interval = $refresh;

        $this->em = $manager;

        $this->lineCollector = $lineCollector;
        $this->fileCollector = $fileCollector;
        
        $this->filesInCache = $this->em->getRepository('DisplayBundle:File');
    }

    public function refreshCache()
    {
        if(!$this->isNeedRefresh()){
    //        return true;
        }

        $path = str_replace('#username#', 'romanbvd', $this->path);

        $fileCollection = $this->fileCollector->getCollection($path);
        foreach($fileCollection as $file){
            if(!$this->isFileChanged($file)){
               continue; 
            }

            $this->clearCacheForFile($file);

            $this->saveFile($file); 
            $this->saveFileLines($file);
        }

        $this->em->flush();
       
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

    private function isFileChanged($file)
    {
        $foundFile = $this->filesInCache->findOneByName($file->getName());
        
        if(is_null($foundFile)){
            return true;
        }

        if($foundFile->getDate() != $file->getDate()){
          return true;
        }

        return false;
    }

    private function clearCacheForFile($file)
    {
        $foundFile = $this->filesInCache->findOneByName($file->getName());
        
        if(is_null($foundFile)){
            return true;
        }

        $this->em->remove($foundFile);
        $this->em->flush();
    }

    private function saveFile($fileObj)
    {
        $this->em->persist($fileObj);    
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
