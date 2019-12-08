<?php

    class Episode {
        /** @var string $id */
        public $id;

        /** @var string $programID */
        public $name;

        /** @var string $programID */
        public $programID;
        
        /** @var int $season */
        public $season;
        
        /** @var int $epNumber */
        public $epNumber;
        
        /** @var int $prodYear */
        public $prodYear;
        
        /** @var string $descriptionSE */
        public $descriptionSE;
        
        /** @var string $descriptionEN */
        public $descriptionEN;
        
        /** @var string $language */
        public $language;
        
        /** @var bool $subtitles */
        public $subtitles;

        public function __construct($queryRow)
        {
            $this->id = $queryRow->id;
            $this->name = $queryRow->name;
            $this->programID = $queryRow->programID;
            $this->season = (int) $queryRow->season;
            $this->epNumber = (int) $queryRow->epNumber;
            $this->prodYear = (int) $queryRow->prodYear;
            $this->descriptionSE = $queryRow->descriptionSE;
            $this->descriptionEN = $queryRow->descriptionEN;
            $this->language = $queryRow->language;
            $this->subtitles = $queryRow->subtitles == 'Y' ? true : false;
        }
    }