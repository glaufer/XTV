<?php

class Program {

    /** @var string $id */
    public $id;

    /** @var string $nameSE */
    public $nameSE;
    
    /** @var string $nameEN */
    public $nameEN;
    
    /** @var string $subnameSE */
    public $subnameSE;
    
    /** @var string $subnameEN */
    public $subnameEN;
    
    /** @var string $descriptionSE */
    public $descriptionSE;
    
    /** @var string $descriptionEN */
    public $descriptionEN;
    
    
    public function __construct($queryRow)
    {
        $this->id = $queryRow->id;
        $this->nameSE = $queryRow->nameSE;
        $this->nameEN = $queryRow->nameEN;
        $this->subnameSE = $queryRow->subnameSE;
        $this->subnameEN = $queryRow->subnameEN;
        $this->descriptionSE = $queryRow->descriptionSE;
        $this->descriptionEN = $queryRow->descriptionEN;
    }
}