<?php

namespace DisplayBundle\Scaners;

/**
 * Dir Scaner
 * Class which reads directory to array, finds files,
 * gets info about it and put it to fixed array
 */

class DirScaner
{
    protected $dir = '';
    public function scanDir($directory)
    {
        $this->dir = $directory . '/';
        $files = $this->getFiles();
 
        return $this->analizeFiles($files);
    }

    protected function getFiles()
    {
        return @scandir($this->dir);
    }

    private function analizeFiles($files)
    {
        $files = $this->filterFiles($files);

        $fileArray = new \SplFixedArray(count($files));
        
        for($i = 0; $i < count($files); $i++){
            $fileArray[$i] = $this->getFileInfo($files[$i]);
        }

        return $fileArray;
    }

    private function filterFiles($files)
    {
        $filteredFiles = array();

        foreach($files as $file){
            if(!is_file($this->dir . $file) || !is_readable($this->dir . $file)){
                continue;
            }

            $filteredFiles[] = $file;
        }

        return $filteredFiles;
    }

    private function getFileInfo($file)
    {
        $info = stat($this->dir . $file);

        return array(
            'name' => $file,
            'location' => $this->dir . $file,
        ) + $info;
    }

}
