<?php

use DG\Twitter\Twitter;

require_once 'src/twitter.class.php';

// ENTER HERE YOUR CREDENTIALS (see readme.txt)
$consumerKey = "";
$consumerSecret = "";
$accessToken = "";
$accessTokenSecret = "";
$twitter = new Twitter($consumerKey, $consumerSecret, $accessToken, $accessTokenSecret);

try {
	$tweet = $twitter->send('This update was sent from the XTV system.'); // you can add $imagePath or array of image paths as second argument

} catch (DG\Twitter\TwitterException $e) {
	echo 'Error: ' . $e->getMessage();
}
