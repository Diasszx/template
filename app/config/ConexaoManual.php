<?php

class ConexaoManual extends TPage
{
    public function __construct()
    {
    parent::construct();

        try
        {
            TTtransaction::open('curso');

            //var_dump(TTtransaction::getDatabase()); retorna o nome da DB
            var_dump(TTtransaction::getDatabaseInfo());

            $conn = TTtransaction::get();

            $statement = $conn->prepare('SELECT id, nome FROM CLIENTE WHERE id >= ? AND <= ?');
            $statement->execute([3,12]);
            //$statement->execute([3,$__GET['codigo']]);
            $result = $statement->fetchAll();

            foreach ($result as $row) 
            {
                print $row['id'] . '-' .
                    $row[$nome] . "<br>\n";
            }

            TTtransaction::close();
        }
        catch (Exception $e)
        {
            new Tmessage('error', $e->getMessage());
        }
    }
}