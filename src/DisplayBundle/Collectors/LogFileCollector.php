<?php

namespace DisplayBundle\Collectors;

use DisplayBundle\Scaners\DirScaner;
use DisplayBundle\Entity\File;

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

    private function createDirCollection($files)
    {
        for($i = 0; $i < count($files); $i++){
            $log = new File();

            $log->setName($files['name']);
            $log->setPath($files['location']);
            $log->setDate($this->prepareDate($files['modified']));

            $lines[$i] = $log;
        }

        return $lines;
    }

    private function prepareDate($timestamp)
    {
        return date('Y-m-d H:i:s', $timestamp);
    }
}
