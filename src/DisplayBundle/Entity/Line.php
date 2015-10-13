<?php

namespace DisplayBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Line
 *
 * @ORM\Table(name="Line")
 * @ORM\Entity
 */
class Line
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_file", type="integer", nullable=true)
     */
    private $idFile;

    /**
     * @var string
     *
     * @ORM\Column(name="type", type="string", length=10, nullable=true)
     */
    private $type;

    /**
     * @var string
     *
     * @ORM\Column(name="log_info", type="text", length=65535, nullable=true)
     */
    private $logInfo;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date", type="datetime", nullable=true)
     */
    private $date;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \DisplayBundle\Entity\File
     *
     * @ORM\ManyToOne(targetEntity="DisplayBundle\Entity\File", inversedBy="lines")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="file_id", referencedColumnName="id")
     * })
     */
    private $file;



    /**
     * Set idFile
     *
     * @param integer $idFile
     *
     * @return Line
     */
    public function setIdFile($idFile)
    {
        $this->idFile = $idFile;

        return $this;
    }

    /**
     * Get idFile
     *
     * @return integer
     */
    public function getIdFile()
    {
        return $this->idFile;
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
     * Set logInfo
     *
     * @param string $logInfo
     *
     * @return Line
     */
    public function setLogInfo($logInfo)
    {
        $this->logInfo = $logInfo;

        return $this;
    }

    /**
     * Get logInfo
     *
     * @return string
     */
    public function getLogInfo()
    {
        return $this->logInfo;
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
    /**
     * @var integer
     */
    private $fileId;


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
}
