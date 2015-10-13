<?php

namespace DisplayBundle\Scaners;

/**
 * File Scaner
 * Class which reads file to array, parse each line by pattern
 * and then puts lines to fixed array
 */

class FileScaner
{
    private $pattern = '';

    public function scanFile($file, $pattern)
    {
        $this->pattern = $pattern;

        $lines = $this->convertFileToArray($file);
        
        return $this->parse($lines);
    }

    protected function convertFileToArray($file)
    {
        return @file($file); 
    }

    private function parse(Array $lines)
    {
        $logArray = new \SplFixedArray(count($lines));
        
        for($i = 0; $i < count($lines); $i++){
           $logArray[$i] = $this->parseString($lines[$i]); 
        }

	    return $logArray;
    }

    private function parseString($str)
    {
        $matches = array();
        
        preg_match($this->pattern, $str, $matches);
    
        return $matches;
    }
}
