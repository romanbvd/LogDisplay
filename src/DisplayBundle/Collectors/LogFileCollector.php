<?php

namespace DisplayBundle\Collectors;

use DisplayBundle\Scaners\DirScaner;
use DisplayBundle\Entity\File;

/**
 *  Class generates collection of File objects
 *  which ready to persists to database via Doctrine
 */

class LogFileCollector
{
    private $scaner = null;
    
    public function __construct(DirScaner $scaner)
    {
        $this->scaner = $scaner; 
    }

    public function getCollection($directory)
    {
        $files = $this->scaner->scanDir($directory);
        
        return $this->createFileCollection($files); 
    }

    private function createFileCollection($files)
    {
        for($i = 0; $i < count($files); $i++){
            $fileObj = new File();

            $fileObj->setName($files[$i]['name']);
            $fileObj->setPath($files[$i]['location']);
            $fileObj->setDate($this->prepareDate($files[$i]['mtime']));

            $files[$i] = $fileObj;
        }

        return $files;
    }

    private function prepareDate($timestamp)
    {
        $dateTime = new \DateTime();
        return $dateTime->setTimestamp($timestamp);
    }
}
