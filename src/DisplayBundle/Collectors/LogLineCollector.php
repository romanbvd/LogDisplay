<?php

namespace DisplayBundle\Collectors;

use DisplayBundle\Scaners\FileScaner;
use DisplayBundle\Entity\Log;

class LogLineCollector
{
    private $scaner = null;
    
    public function __construct(FileScaner $scaner)
    {
        $this->scaner = $scaner; 
    }

    public function getCollection($file)
    {
        $pattern = '/\[(.*)]\ \[(.*)]\ (.*)/';
        $lines = $this->scaner->scanFile($file, $pattern);
        
        return $this->createLogCollection($lines); 
    }

    private function createLogCollection($lines)
    {
        for($i = 0; $i < count($lines); $i++){
            $log = new Log();

            $log->setType($this->prepareType($lines[$i]));
            $log->setLogInfo($this->prepareInfo($lines[$i]));
            $log->setDate($this->prepareDate($lines[$i]));

            $lines[$i] = $log;
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
        
        $date = \DateTime::createFromFormat('D M d H:i:s Y' , $date);
        
        return $date->format('Y-m-d H:i:s');
    }
}
 
