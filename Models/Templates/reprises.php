<?php

class Reprise {

    /** @var string $originalID */
    public $originalID;
    
    /** @var string $repriseID */
    public $repriseID;
        
    
    public function __construct($queryRow)
    {
        $this->originalID = $queryRow->originalID;
        $this->repriseID = $queryRow->repriseID;
    }
}