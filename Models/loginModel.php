<?php
    include_once 'database.php';

    class LoginModel {

        private $db;

        public function __construct()
        {
            $this->db = new DatabaseModel();
        }

        /**
         * Try to login the user
         * @param string $email 
         * @param string $password
         * @return bool If the login was success full or not
         */
        public function login($email, $password) 
        {
            $result = $this->db->dbSelectPrepared(
                'SELECT *
                FROM users
                WHERE email = ? AND password = ?', array($email, $password));

            if (!$result) {
                return false;
            }

            session_start();
            $_SESSION['userID'] = $result->id;
            return true;
        }

        /**
         * Logout the current user
         */
        public function logout() 
        {
            session_start();
            $_SESSION['userID'] = null;
        }

        /**
         * Checks if the current user is logged in
         * @return bool True if logged in, else false
         */
        public function isLoggedIn() 
        {
            session_start();
            return empty($_SESSION['userID']) != true;
        }
    }
?>