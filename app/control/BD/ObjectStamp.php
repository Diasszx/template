<?php

class ObjectStamp extends TPage
{
    public function __construct()
    {
        parent::__construct();

        try {
            TTransaction::open('curso');

            $cliente = new Cliente;
            $cliente->nome = 'Registro teste';
            $cliente->endereco = 'Rua teste';
            $cliente->telefone = '999999';
            $cliente->nascimento = '2000-05-02';
            $cliente->situacao = 'A';
            $cliente->email = 'teste@gmail.com';
            $cliente->genero = 'M';
            $cliente->categoria_id = 1;
            $cliente->cidade_id = 1;
            $cliente->store();

            TTransaction::close();

        } catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
    }
}