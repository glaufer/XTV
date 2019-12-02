<?php
    session_start();
    class Setting {
        /** @var string SE or EN */
        public $language;

        public function __construct()
        {
            $this->language = $_SESSION['language'];
            if(!empty($_GET['settingType'])) {
                $this->setNewSetting();
            }
        }

        private function setNewSetting() {
            $settingType = $_GET['settingType'];
            $settingValue = $_GET['settingValue'];
            $_SESSION[$settingType] = $settingValue;
            header('Location: ../index.php');
        }
    }
    
    $setting = new Setting();
    
