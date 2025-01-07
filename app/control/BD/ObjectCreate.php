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

            new TMessage('info', 'Produto cadastrado com sucesso');
            
            TTransaction::close();

        } catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
    }
}
