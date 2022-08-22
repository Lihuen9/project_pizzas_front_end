<?php
class DB {
    private $connection;
    public function __construct()
    {
        try {
        $dsn = "mysql:dbname=".DATABASE_NAME.";host=".SERVER_NAME;
        $this->connection = new PDO ($dsn, USER_NAME, PASSWORD);
        
        }

        catch(PDOException $e) {
            die("Conexión fallida la PQLPR!");
        
        }
        return $this->connection;
    } 

    
}

?>