<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

@include_once dirname(__FILE__) . '/../Config/sql.php';

class DatabaseModel {

    /**
     * @var PDO $connection 
     */
    public $connection;

    public function __construct()
    {
        $this->connectToDatabase();
    }


    /**
     * Connects to the sql database using username and password 
     * from Config/sql.php
     */
    private function connectToDatabase() 
    {
        $url = parse_url(getenv("CLEARDB_DATABASE_URL"));
        $this->connection = new PDO(
            'mysql:host=' . ($url["host"] ?? SQLConfig::DBHost) . 
            ';dbname=' . (substr($url["path"], 1) ?? SQLConfig::DBName) . 
            ';charset=utf8',
            ($url["user"] ?? SQLConfig::username),
            ($url["pass"] ?? SQLConfig::password)
        );
        $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
    }


    /**
     * Selecting a data from a query direclty.
     * @param string $sql The sql to run.
     * @param int The fetch type, how the data is to be returned.
     * @return obj[]
     */
    public function dbSelectAllSimple($sql, $fetchType = PDO::FETCH_OBJ) {
        $result = array();
        $stmt = $this->connection->query($sql);
        if($stmt) {
            while($row = $stmt->fetch($fetchType)) {
                array_push($result, $row);
            }
        }
        else {
            return array();
        }

        if(count($result) == 0) {
            return array();
        } 

        return $result;
    }


    /**
     * Selecting data from a prepared
     * @param string $sql The sql to run.
     * @param array $data The data to be used in the sql.
     * @param int $fetchType The fetch type.
     * @return obj[]
     */
    public function dbSelectAllPrepared($sql, $data, $fetchType = PDO::FETCH_OBJ) {
        $stmt = $this->connection->prepare($sql);
        $stmt->execute($data);
        $result = $stmt->fetchAll($fetchType);

        if(count($result) == 0) {
            return array();
        }

        return $result;
    }


    /**
     * Selecting data from a prepared
     * @param string $sql The sql to run.
     * @param array $data The data to be used in the sql.
     * @param int $fetchType The fetch type.
     * @return obj[]
     */
    public function dbSelectPrepared($sql, $data, $fetchType = PDO::FETCH_OBJ) {
        $result = $this->dbSelectAllPrepared($sql, $data, $fetchType);
        if($result) {
            return $result[0];
        }
        else {
            return false;
        }
    }


    /**
     * Makes a prepared execute statement
     * @param string $sql The SQL for the query.
     * @param array $data The data for the $sql.
     */
    public function dbExecutePrepared($sql, $data = null) {
        $stmt = $this->connection->prepare($sql);
        $stmt->execute($data);
    }


    /**
     * Makes a simple sql execute
     * @param string $sql The SQL for the query.
     * @return int Number of effected rows
     */
    public function dbExecuteSimple($sql) {
        return $this->connection->exec($sql);
    }
}