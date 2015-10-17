<?php

namespace DisplayBundle\Entity;

/**
 * Line
 */
class Line
{
    /**
     * @var integer
     */
    private $fileId;

    /**
     * @var string
     */
    private $type;

    /**
     * @var string
     */
    private $info;

    /**
     * @var \DateTime
     */
    private $date;

    /**
     * @var integer
     */
    private $id;

    /**
     * @var \DisplayBundle\Entity\File
     */
    private $file;


    /**
     * Set fileId
     *
     * @param integer $fileId
     *
     * @return Line
     */
    public function setFileId($fileId)
    {
        $this->fileId = $fileId;

        return $this;
    }

    /**
     * Get fileId
     *
     * @return integer
     */
    public function getFileId()
    {
        return $this->fileId;
    }

    /**
     * Set type
     *
     * @param string $type
     *
     * @return Line
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Set info
     *
     * @param string $info
     *
     * @return Line
     */
    public function setInfo($info)
    {
        $this->info = $info;

        return $this;
    }

    /**
     * Get info
     *
     * @return string
     */
    public function getInfo()
    {
        return $this->info;
    }

    /**
     * Set date
     *
     * @param \DateTime $date
     *
     * @return Line
     */
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime
     */
    public function getDate()
    {
        return $this->date;
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

    /**
     * Set file
     *
     * @param \DisplayBundle\Entity\File $file
     *
     * @return Line
     */
    public function setFile(\DisplayBundle\Entity\File $file = null)
    {
        $this->file = $file;

        return $this;
    }

    /**
     * Get file
     *
     * @return \DisplayBundle\Entity\File
     */
    public function getFile()
    {
        return $this->file;
    }
}

