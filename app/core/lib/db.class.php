<?php

class DB {

    private static $instance = NULL;

    public function __construct() {
        $dbname = 'bank';
        $username = 'root';
        $password = 'admin1234';
        if (!self::$instance){
            self::$instance = new PDO("mysql:host=localhost;dbname=$dbname;charset=utf8", $username, $password);
        }
        return self::$instance;
    }

    /**
     * Execute query for SELECT and get rows
     * 
     * example call without args: Database::executeQueryGetResults("SELECT * FROM table");
     * example call with args: Database::executeQueryGetResults("SELECT * FROM table WHERE col1 = :col1", array(':col1' => 1));
     */
    public function executeQueryGetResults($query, $args = null) {
        //$db = Database::connect();

        if ($args) {
            $stmt = self::$instance->prepare($query);
            $stmt->execute($args);
        } else {
            $stmt = self::$instance->query($query);
        }
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Execute query for INSERT, UPDATE, DELETE
     * 
     * example call without args: Database::executeQuery("INSERT INTO table (col1, col2) VALUES(1, 2)");
     * example call with args: Database::executeQuery("INSERT INTO table (col1, col2) VALUES(:col1, :col2)", array(':col1' => 1, ':col2' => 2));
     */
    public function executeQuery($query, $args = null) {
        //db = Database::connect();

        if ($args) {
            $stmt = self::$instance->prepare($query);
            $stmt->execute($args);
        } else {
            $stmt = self::$instance->exec($query);
        }
        if($stmt){
            return true;
        }
        return false;
    }

//    private function __construct() {
//        
//    }
//
//    private function __clone() {
//        
//    }

}
