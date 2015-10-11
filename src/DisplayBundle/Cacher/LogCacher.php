<?php

namespace DisplayBundle\Cacher;

use DisplayBundle\Collectors\LogLineCollector;

class LogCacher
{
    private $cachedFiles = array();
    private $localFiles = array();

    private $logCollector = null;

    public function __construct(LogLineCollector $logCollector)
    {
        $this->logCollector = $logCollector;
        $this->cachedFiles = $this->getCachedLocalFiles();
        $this->localFiles = $this->getLocalFiles();
    }

    public function refreshCache()
    {
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
