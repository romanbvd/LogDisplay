<?php

namespace DisplayBundle\Scaners;

class DirScaner
{
    protected $dir = '';
    public function scanDir($directory)
    {
        $this->dir = $directory;
        $files = $this->getFiles();
 
        return $this->analizeFiles($files);
    }

    protected function getFiles()
    {
        return @scandir($this->dir);
    }

    private function analizeFiles($files)
    {
        array_shift($files); 
        array_shift($files);

        $fileArray = new \SplFixedArray(count($files));
        
        for($i = 0; $i < count($files); $i++){
            $fileArray[$i] = $this->getFileInfo($files[$i]);
        }

        return $fileArray;
    }

    private function getFileInfo($file)
    {
        return array(
            'name' => $file,
            'location' => $this->dir . $file,
            'modified' => filemtime($this->dir . $file)
        );
    }

}
