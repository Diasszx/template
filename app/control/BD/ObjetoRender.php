<?php
class ObjetoRender extends TPage
{
    public function __construct()
    {
        parent::__construct();

        try
        {
            TTransaction::open('curso');

            $produto = new Produto(3);

            // render forma uma string
            print $produto-render('Ó produto (<b>{id}</b> - nome <b>{descricao}</b> - preco R$<b>{preco_venda}</b>');
            echo '<br>';
            echo 'Resultado: ';
            // evaluate  executa um calculo
            print $produto->evaluate('= {preco_venda} * {estoque}');

            TTransaction::close();
        }
        catch(Exception $e)
        {
            new TMessage('error', $e->getMessage());
        }
    }
}