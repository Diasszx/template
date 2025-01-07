<?php
class ObjectCreate extends TPage
{
    public function __construct()
    {
        parent::__construct();

        try {
            TTransaction::open('curso');

            Produto::create([
                'descricao' => 'Notebook',
                'estoque' => 10,
                'preco' => 1000,
                'unidade' => 'un',
            ]);

            $produto = new Produto;
            $produto->descricao = 'Notebook';
            $produto->estoque = 10;
            $produto->preco_veda = 1000;
            $produto->unidade = 'un';
            $produto->local_foto = '';
            $produto->store();

            new TMessage('info', 'Produto cadastrado com sucesso');
            
            TTransaction::close();

        } catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
    }
}
