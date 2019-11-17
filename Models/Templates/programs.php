<?php

class Program {

    const SELECT = "
        programs.nameSE,
        programs.nameEN,
        programs.subnameSE,
        programs.subnameEN,
        programs.descriptionSE,
        programs.descriptionEN
    ";

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
        $this->nameSE = $queryRow->nameSE;
        $this->nameEN = $queryRow->nameEN;
        $this->subnameSE = $queryRow->subnameSE;
        $this->subnameEN = $queryRow->subnameEN;
        $this->descriptionSE = $queryRow->descriptionSE;
        $this->descriptionEN = $queryRow->descriptionEN;
    }
}