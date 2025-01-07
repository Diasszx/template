<?php

class ObjectStore extends TPage
{
    public function __construct()
    {
        parent::__construct();

        try {
            TTransaction::open('curso');

            TTransaction::setLoggerFunction(function ($mensagem) {
                print $mensagem . '<br>';
            });

            /*OU 
            TTransaction::dump();*/

            $produto = New Produto;
            $produto->descricao = 'Notebook';
            $produto->estoque = 10;
            $produto->preco_venda = 5000;
            $produto->unidade = 'un';
            $produto->local_foto = 'C:\Users\julio\Downloads\Notebook.jpg';
            $produto->store();

            new TMessage('info','Produto cadastrado com sucesso');

            TTransaction::close();

        } catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
    }
}