<?php

use Doctrine\ORM\Mapping as ORM;

/**
 * Ministrants entity class.
 *
 * Annotations define the entity mappings to database.
 *
 * @ORM\Entity
 * @ORM\Table(name="Worship_Churchesworship")
 */
class Worship_Entity_Churchesworships extends Zikula_EntityAccess
{

    /**
     * The following are annotations which define the id field.
     *
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $cwid;
	
	/**
     * The following are annotations which define the cid field.
     *
     * @ORM\Column(type="integer")
     */
    private $cid;
    
    /**
     * The following are annotations which define the weektime field.
     *
     * @ORM\Column(type="integer")
     */
    private $weektime;

    /**
     * The following are annotations which define the nwtime field.
     *
     * @ORM\Column(type="time")
     */
    private $nwtime;
	
	 /**
     * The following are annotations which define the nwtitle field.
     *
     * @ORM\Column(type="text")
     */
    private $nwtitle;


    public function getcwid()
    {
        return $this->cwid;
    }
    
     public function getcid()
    {
        return $this->cid;
    }
    
      public function getweektime()
    {
        return $this->weektime;
    }
    
	  public function getnwtitle()
    {
        return $this->nwtitle;
    }
    
    public function getnwtime()
    {
        return $this->nwtime;
    }
	
	public function getnwtimeFormatted()
    {
        return $this->nwtime->format('G:i');
    }
    
    public function setnwtime($nwtime)
    {
        $this->nwtime = new \DateTime($nwtime);
    }
    
    public function setcid($cid)
    {
        $this->cid = ($cid);
    }
    
    public function setweektime($weektime)
    {
        $this->weektime = ($weektime);
    }
    
     public function setnwtitle($nwtitle)
    {
        $this->nwtitle = ($nwtitle);
    }
	 public function getCname()
    {
    	return ModUtil::apiFunc('Worship', 'Admin', 'getChurchNameById', array('id' => $this->cid));
    }
    public function getDayName()
    {
    	return ModUtil::apiFunc('Worship', 'Admin', 'getDayNameById', array('id' => $this->weektime));
    }
} 
