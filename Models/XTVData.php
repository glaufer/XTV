<?php

@require_once 'database.php';
@require_once 'settings.php';
@require_once 'Templates/episodes.php';
@require_once 'Templates/channels.php';
@require_once 'Templates/programs.php';
@require_once 'Templates/broadcasts.php';
@require_once 'Templates/reprises.php';

class XTVData extends DatabaseModel {

    /**
     * @var Setting
     */
    private $settings;

    public function __construct()
    {
        // Parent connects to database
        parent::__construct();
        $this->settings = new Setting();
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
            'SELECT e.*, p.nameSE AS name
            FROM episodes AS e
            LEFT JOIN programs AS p ON p.id = programID'
        );
        return $this->createObjectsFromSQL($result, 'Episode');
    }

    /**
     * @return Channel[] All the channels
     */
    public function getAllChannels() {
        $result = $this->dbSelectAllSimple(
            'SELECT *
            FROM channels'
        );
        return $this->createObjectsFromSQL($result, 'Channel');
    }

    /**
     * @return Program[] All the programs
     */
    public function getAllPrograms() {
        $result = $this->dbSelectAllSimple(
            'SELECT *
            FROM programs'
        );
        return $this->createObjectsFromSQL($result, 'Program');
    }

    /**
     * @return Broadcast[] All the broadcasts
     */
    public function getAllBroadcasts() {
        $result = $this->dbSelectAllSimple(
            'SELECT ' . Broadcast::SQL_SELECT . '
            FROM broadcasts'
        );
        return $this->createObjectsFromSQL($result, 'Broadcast');
    }

    /**
     * @return Broadcast[] All broadcasts of channel
     */
    public function getChBroadcasts($channelID) {
        $result = $this->dbSelectAllPrepared(
            'SELECT ' . Broadcast::SQL_SELECT . '
            FROM broadcasts 
            WHERE channelID = ?', array($channelID)
        );
        $this->applyEarliestBroadcastDate($result);
        return $this->createObjectsFromSQL($result, 'Broadcast');
    }

    private function applyEarliestBroadcastDate($objects) {
        $earliestBroadcastDate = $this->dbSelectPrepared(
            'SELECT start
            FROM broadcasts 
            ORDER BY start
            LIMIT 1', array(), PDO::FETCH_COLUMN
        );

        foreach ($objects as $object) {
            $object->earliestBroadcast = $earliestBroadcastDate;
        }
    }

    /**
     * @return Broadcast[] All episodes of program
     */
    public function getPrEpisodes($programID) {
        $result = $this->dbSelectAllPrepared(
            'SELECT *
            FROM episodes 
            WHERE programID = ?', array($programID)
        );
        return $this->createObjectsFromSQL($result, 'Episode');
    }

    /**
     * @return Reprise[] All the reprises
     */
    public function getAllReprises() {
        $result = $this->dbSelectAllSimple(
            'SELECT DISTINCT originalID, 1 as repriseID
            FROM reprises'
        );
        return $this->createObjectsFromSQL($result, 'Reprise');
    }

    /**
     * @return Reprise[] All the reprises for a broadcast
     */
    public function getBrReprises($originalID) {
        $result = $this->dbSelectAllPrepared(
            'SELECT originalID, repriseID
            FROM reprises 
            WHERE originalID = ?', array($originalID)
        );
        return $this->createObjectsFromSQL($result, 'Reprise');
    }

    /**
     * @return object[] All the broadcasts
     */
    public function getBroadcastFromSearch($searchString) {
        $searchStringWithPercent = '%' . $searchString . '%';
        $result = $this->dbSelectAllPrepared(
            $this->getNestedBroadcastSelect() .
            'WHERE p.nameSE LIKE ? OR p.nameEN LIKE ?', 
            array($searchStringWithPercent, $searchStringWithPercent)
        );
        return $result;
    }

    public function getAllNestedBroadcastData() {
        return $this->dbSelectAllSimple(
            $this->getNestedBroadcastSelect() .
            'ORDER BY name'
        );
    }

    /**
     * Getting the string to select
     * programn data and episode data as a broadcast object
     */
    private function getNestedBroadcastSelect() {
        return '
            SELECT 
                c.name AS channel,
                p.name' . $this->settings->language . ' AS name, 
                e.season, 
                e.epNumber, 
                b.start, 
                b.end, 
                b.id
            FROM broadcasts AS b
            LEFT JOIN episodes AS e ON e.id = b.episodeID
            LEFT JOIN programs AS p ON p.id = e.programID
            RIGHT JOIN channels AS c ON c.id = b.channelID
        ';
    }
}