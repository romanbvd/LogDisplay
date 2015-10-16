<?php

namespace DisplayBundle\Entity;

/**
 * Cache
 */
class Cache
{
    /**
     * @var \DateTime
     */
    private $modified = 'CURRENT_TIMESTAMP';

    /**
     * @var integer
     */
    private $id;


    /**
     * Set modified
     *
     * @param \DateTime $modified
     *
     * @return Cache
     */
    public function setModified($modified)
    {
        $this->modified = $modified;

        return $this;
    }

    /**
     * Get modified
     *
     * @return \DateTime
     */
    public function getModified()
    {
        return $this->modified;
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }
}

