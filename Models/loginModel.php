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

            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
            $_SESSION['userID'] = $result->id;
            session_write_close();
            return true;
        }

        /**
         * Logout the current user
         */
        public function logout() 
        {
            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
            $_SESSION['userID'] = null;
            session_write_close();
        }

        /**
         * Checks if the current user is logged in
         * @return bool True if logged in, else false
         */
        public function isLoggedIn() 
        {
            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
            return empty($_SESSION['userID']) != true;
            session_write_close();
        }

        /**
         * Moves the user to the login page if she/he are
         * not logged in
         */
        public function preventUnauthorizedAccess() 
        {
            if (!$this->isLoggedIn()) {
                header('Location: login.php');
                exit;
            }
        }
    }
?>