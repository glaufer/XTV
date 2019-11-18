<?php

    class Channel {
        public $id;
        public $name;

        public function __construct($queryRow)
        {
            $this->id = $queryRow->id;
            $this->name = $queryRow->name;
        }
    }