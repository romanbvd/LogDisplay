<?php

namespace DisplayBundle\Collectors;

use DisplayBundle\Scaners\FileScaner;
use DisplayBundle\Entity\Line;

/**
 *  Class generates collection of Line objects
 *  which ready to persists to database via Doctrine
 */

class LogLineCollector
{
    private $scaner = null;
    
    public function __construct(FileScaner $scaner)
    {
        $this->scaner = $scaner; 
    }

    public function getCollection($file)
    {
        $pattern = '/\[(.*)]\ \[(.*)]\ (.*)$/U';
        $lines = $this->scaner->scanFile($file, $pattern);
        
        return $this->createLogCollection($lines); 
    }

    private function createLogCollection($lines)
    {
        for($i = 0; $i < count($lines); $i++){
            $lineObj = new Line();

            $lineObj->setType($this->prepareType($lines[$i]));
            $lineObj->setInfo($this->prepareInfo($lines[$i]));
            $lineObj->setDate($this->prepareDate($lines[$i]));

            $lines[$i] = $lineObj;
        }

        return $lines;
    }

    private function prepareType($logArray)
    {
        return isset($logArray[2]) ? $logArray[2] : '';
    }

    private function prepareInfo($logArray)
    {
        return isset($logArray[3]) ? $logArray[3] : '';

    }

    private function prepareDate($logArray)
    {
        $date = isset($logArray[1]) ? $logArray[1] : '';
        
        return \DateTime::createFromFormat('D M d H:i:s Y' , $date);
    }
}
 
