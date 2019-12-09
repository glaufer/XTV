<?php

    class Broadcast {
        const SQL_SELECT = "
            *, TIMESTAMPDIFF(minute, start, end) as duration
        ";

        /** @var string $id */
        public $id;

        /** @var string $channelID */
        public $channelID;

        /** @var string $episodeID */
        public $episodeID;

        /** @var string $start */
        public $start;

        /** @var string $end */
        public $end;

        /** @var bool $outsideSE */
        public $outsideSE;

        /** @var bool $live */
        public $live;

        /** @var bool $reprise */
        public $reprise;

        /** @var $duration */
        public $duration;

        public $earliestBroadcast;

        public function __construct($queryRow)
        {
            $this->id = $queryRow->id;
            $this->channelID = $queryRow->channelID;
            $this->episodeID = $queryRow->episodeID;
            $this->start = $queryRow->start;
            $this->end = $queryRow->end;
            $this->outsideSE = $queryRow->outsideSE == 'Y' ? true : false;
            $this->live = $queryRow->live == 'Y' ? true : false;
            $this->reprise = $queryRow->reprise == 'Y' ? true : false;
            $this->duration = $queryRow->duration;
            $this->earliestBroadcast = $queryRow->earliestBroadcast ?? null;
        }

        public function minutesFromEarliestBroadcast() {
            return intval(round(abs(strtotime($this->start) - strtotime($this->earliestBroadcast)) / 60));
        }
    }