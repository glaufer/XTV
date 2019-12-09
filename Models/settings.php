<?php
    class Setting {
        /** @var string SE or EN */
        public $language;

        public function __construct()
        {
            session_start();
            $this->language = $_SESSION['language'] ?? 'SE';
            if(!empty($_GET['settingType'])) {
                $this->setNewSetting();
            }
            session_write_close();
        }

        private function setNewSetting() {
            session_start();
            $settingType = $_GET['settingType'];
            $settingValue = $_GET['settingValue'];
            $_SESSION[$settingType] = $settingValue;
            header('Location: ../index.php');
            session_write_close();
        }
    }
    
    $setting = new Setting();