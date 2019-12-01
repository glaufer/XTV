<?php
  header("Content-type:text/xml;charset=utf-8");

  class Broadcast {
    public $id;
    public $start;
    public $name;
    public $description;
    public $channel;

    public function __construct($id, $start, $name, $description, $channel)
    {
      $search = array('&', 'Ã¤', 'Ã¥', 'Ã¶', 'Ã', 'Ã…', 'Ã–', 'Ã©', 'â');
      $replace = array('&amp;', 'ä', 'å', 'ö', 'Ä', 'Å', 'Ö', 'é', '-');
      $this->id = $id;
      $this->start = substr($start, 0, -3);
      $this->name = str_replace($search, $replace, utf8_encode($name));
      $this->description = str_replace($search, $replace, utf8_encode($description));
      $this->channel = $channel;
    }
  }


  // connect using host, username, password and databasename
  error_reporting(E_ALL);
  ini_set('display_errors', 1);
  $link = mysqli_connect('gilau.fr', 'dba', 'kthdm2517!', 'xtv');

  //check connection
  if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
  }

  // The SQL query
  $query = "SELECT 
              broadcasts.id, 
              broadcasts.start, 
              programs.nameSE as name, 
              programs.subnameSE as description, 
              channels.name as channel
            FROM broadcasts 
            JOIN episodes ON broadcasts.episodeID = episodes.id 
            JOIN programs ON episodes.programID = programs.id 
            JOIN channels ON broadcasts.channelID = channels.id
            ORDER BY broadcasts.start, channels.name";

  // Execute the query
  if (($result = mysqli_query($link, $query)) == FALSE) {
    printf("Query failed: %s\n",  $query);
  }

  /**
   * @var Broadcast[] $broadcasts
   * All the broadcasts
   */
  $broadcasts = array();
  
  // Loop over the resulting lines
  while ($row = $result->fetch_object()) {
    array_push($broadcasts, new Broadcast(
      $row->id,
      $row->start,
      $row->name,
      $row->description,
      $row->channel
    ));
  }

  // Free result and just in case encode result to utf8 before returning
  mysqli_free_result($result);
?>

<rdf:RDF 
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
  xmlns="http://purl.org/rss/1.0/" 
  xmlns:dc="http://purl.org/dc/elements/1.1/" 
  xmlns:syn="http://purl.org/rss/1.0/modules/syndication/">
  
  <channel rdf:about="http://gilau.fr:8080/">
    <title>xtv Tablå</title>
    <link>http://gilau.fr:8080/</link>
    <description>xtv Tablå</description>
    <dc:language>sv</dc:language>
    <dc:rights>Copyright Gil Laufer</dc:rights>
    <dc:date><?= date(DATE_ATOM) ?></dc:date>

    <dc:publisher>KTH</dc:publisher>
    <dc:creator>glaufer@kth.se</dc:creator>
    <syn:updatePeriod>daily</syn:updatePeriod>
    <syn:updateFrequency>1</syn:updateFrequency>
    <syn:updateBase>2019-11-15T00:00+00:00</syn:updateBase>

    <image rdf:resource="http://gilau.fr:8080/Models/RSS/rssicon.png" />
  </channel>

  <?php
    foreach ($broadcasts as $broadcast) {
      ?>
        <item rdf:about="<?= $broadcast->id ?>">
          <title>
            [<?= $broadcast->channel ?>]
            <?= $broadcast->start ?>
            <?= $broadcast->name ?>
          </title>
          <link>
            ?bid=<?= $broadcast->id ?>
          </link>
          <description>
            <?= $broadcast->description ?>
          </description>
          <dc:date>
            <?= date_format(date_create($broadcast->start), 'Y-m-d\TH:i:s') ?>
          </dc:date>
        </item>
      <?php
    }
  ?>
  
</rdf:RDF>