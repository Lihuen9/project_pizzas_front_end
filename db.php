<?php

/**
 * -----------------------------
 * Clase para manejar base de doatos, usando PDO.
 * 
 * @author Creado por mí, genio! <capo@capo.com>
 * @link https://github.com/Lihuen9/project_pizzas_front_end
 * @version 1.0.0.0.9
 * @copyright 2022 Curso Programación Web
 *  
 * -----------------------------
 */


 




class DB {
    private $connection;

    /**
     * Establecer una conexión.
     * @return connection
     */


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



   

    /**
     * Prepara una query SQL.
     *
     * @return object
     */

    public function prepare($query)
    {
        return $this->connection->prepare($query);
    }


    /**
     * Ejecuta una sql query
     *
     * @param string $query
     * @return object
     */

    public function query($query)
    {
        return $this->connection->query($query);
    }
    
    /**
     * Cierra una conexión
     *
     * @return mixed
     */


    public function close()
    {
        $this->connection=null;
    }

}


?>