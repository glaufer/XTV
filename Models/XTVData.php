<?php

@require_once 'database.php';
@require_once 'Templates/episodes.php';
@require_once 'Templates/channels.php';
@require_once 'Templates/programs.php';
@require_once 'Templates/broadcasts.php';

class XTVData extends DatabaseModel {
    public function __construct()
    {
        // Parent connects to database
        parent::__construct();
    }

    /**
     * From an sql result, create objects of given 
     * class type and return them.
     * @param array $sqlResult The sql result
     * @param string $classType The type of the class
     * @return obj[] The object of with the given class type
     */
    private function createObjectsFromSQL($sqlResult, $classType) {
        $objects = array();
        foreach ($sqlResult as $resultRow) {
            array_push($objects, new $classType($resultRow));
        }
        return $objects;
    }

    /**
     * Getting all the episodes that exist
     * in the database.
     * @return Episode[] All the episodes
     */
    public function getAllEpisodes() {
        $result = $this->dbSelectAllSimple(
            'SELECT *
            FROM episodes'
        );
        return $this->createObjectsFromSQL($result, 'Episode');
    }

    /**
     * @return Channel[] Al the channels
     */
    public function getAllChannels() {
        $result = $this->dbSelectAllSimple(
            'SELECT *
            FROM channels'
        );
        return $this->createObjectsFromSQL($result, 'Channel');
    }

    /**
     * @return Program[] Al the channels
     */
    public function getAllPrograms() {
        $result = $this->dbSelectAllSimple(
            'SELECT *
            FROM programs'
        );
        return $this->createObjectsFromSQL($result, 'Program');
    }

    /**
     * @return Broadcast[] Al the channels
     */
    public function getAllBroadcasts() {
        $result = $this->dbSelectAllSimple(
            'SELECT *
            FROM broadcasts'
        );
        return $this->createObjectsFromSQL($result, 'Broadcast');
    }
}