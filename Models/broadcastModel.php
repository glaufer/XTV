<?php
    include_once '../Config/twitterKeys.php';
    include_once 'database.php';
    use DG\Twitter\Twitter;
    require_once 'Twitter/src/twitter.class.php';


    class BroadcastModel extends DatabaseModel {
        private $twitter;

        public function __construct()
        {
            parent::__construct();
            $this->twitter = new Twitter(
                TwitterKeys::CONSUMERKEY, 
                TwitterKeys::CONSUMERSECRET, 
                TwitterKeys::ACCESSTOKEN,
                TwitterKeys::ACCESSTOKENSECRET
            );
        }

        public function addNewBroadcast($id, $channel, $episodeID, $start, $end, $outsideSE, $live, $reprise) {
            
            // Add new broadcast
            $this->dbExecutePrepared(
                'INSERT INTO `broadcasts` (`id`, `channelID`, `episodeID`, `start`, `end`, `outsideSE`, `live`, `reprise`) 
                VALUES (?, ?, ?, ?, ?, ?, ?, ?)', 
                array($id, $channel, $episodeID, $start, $end, $outsideSE, $live, $reprise)
            );

            // Send twitter update
            $twitterData = $this->dbSelectPrepared(
                'SELECT channel, name, description, start FROM twitter WHERE id = ?', array($id)
            );
            try {
                $tweet = $this->twitter->send(
                    'The program ' . $twitterData->name . ' (' . $twitterData->description . ') will be aired on ' . $twitterData->channel . ' at ' . $twitterData->start
                ); 
            } catch (DG\Twitter\Twitter $error) {
                
            }

        }

        public function deleteBroadcast($id) {
            $this->dbExecutePrepared(
                'DELETE FROM broadcasts WHERE id = ?', 
                array($id)
            );
        }


    }