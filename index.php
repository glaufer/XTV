<?php
    header('Content-type: text/xml');

    echo '<?xml version="1.0"?>';
    echo '<?xml-stylesheet type="text/xsl" href="indexXSL.php?bid=' . $_GET['bid'] . '"?>';

    include 'Models/xmlData.php';