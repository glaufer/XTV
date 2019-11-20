<?php
  header("Content-type:text/xml;charset=utf-8");



  class Broadcast {
    public $id;
    public $start;
    public $name;
    public $description;

    public function __construct($id, $start, $name, $description)
    {
      $search = array('&', 'Ã¤', 'Ã¥', 'Ã¶', 'Ã', 'Ã…', 'Ã–', 'Ã©', 'â');
      $replace = array('&amp;', 'ä', 'å', 'ö', 'Ä', 'Å', 'Ö', 'é', '-');
      $this->id = $id;
      $this->start = $start;
      $this->name = str_replace($search, $replace, utf8_encode($name));
      $this->description = str_replace($search, $replace, utf8_encode($description));

    }
  }


  // connect using host, username, password and databasename
  error_reporting(E_ALL);
  ini_set('display_errors', 1);
  $link = mysqli_connect('127.0.0.1', 'root', 'kthdd1334', 'dm2517');

  //check connection
  if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
  }

  // The SQL query
  $query = "SELECT broadcasts.id, broadcasts.start, programs.nameSE as name, programs.subnameSE as description 
            FROM broadcasts 
            JOIN episodes ON broadcasts.episodeID = episodes.id 
            JOIN programs ON episodes.programID = programs.id 
            WHERE broadcasts.channelID = 'c1' 
            ORDER BY broadcasts.id";

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
      $row->description
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
  
  <channel rdf:about="http://localhost/XTV/index.php">
    <title>xtv1 Tablå</title>
    <link>http://localhost/XTV/index.php</link>
    <description>xtv1 Tablå</description>
    <dc:language>sv</dc:language>
    <dc:rights>Copyright Gil Laufer</dc:rights>
    <dc:date><?= date(DATE_ATOM) ?></dc:date>

    <dc:publisher>KTH</dc:publisher>
    <dc:creator>glaufer@kth.se</dc:creator>
    <syn:updatePeriod>daily</syn:updatePeriod>
    <syn:updateFrequency>1</syn:updateFrequency>
    <syn:updateBase>2019-11-15T00:00+00:00</syn:updateBase>

    <image rdf:resource="http://localhost/XTV/x1g.gif" />
  </channel>

  <?php
    foreach ($broadcasts as $broadcast) {
      ?>
        <item rdf:about="<?= $broadcast->id ?>">
          <title>
            <?= $broadcast->start ?>
            <?= $broadcast->name ?>
          </title>
          <link>
            <?= $broadcast->id ?>
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