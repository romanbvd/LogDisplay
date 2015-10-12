<?php

namespace DisplayBundle\Cacher;

use DisplayBundle\Collectors\LogLineCollector;

class LogCacher
{
    private $cachedFiles = array();
    private $localFiles = array();

    private $logCollector = null;
    private $fileCollector = null;

    public function __construct(LogFileCollector $fileCollector, LogLineCollector $logCollector)
    {
        $this->logCollector = $logCollector;
        $this->fileCollector = $fileCollector;
        
        $this->cachedFiles = $this->getCachedLocalFiles();
        $this->localFiles = $this->getLocalFiles();
    }

    public function refreshCache($path)
    {
        echo "<pre>";print_r($files);echo "<pre>";die;
        foreach($this->localFiles as $fileDescription){
            if(!$this->isFileExistsInCache($fileDescription)){
                $this->addToChache($fileDescription);
            }

            if(!$this->isDateChangeTheSame($fileDescription)){
                $this->updateCache($fileDescription);
            }
        }
        return 'hellos';
    }

    private function getLocalFiles()
    {
    }

    private function getCachedLocalFiles()
    {
    }
}
