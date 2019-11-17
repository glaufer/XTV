<?php

    class Channel {
        const SELECT = "
            channels.id,
            channels.name
        ";

        public $id;
        public $name;

        public function __construct($queryRow)
        {
            $this->id = $queryRow->id;
            $this->name = $queryRow->name;
        }
    }