<?php
class CollectionLoad extends TPage
{
    public function __construct()
    {
        parent::__construct();

        try{
            TTransaction::open('curso');

            $criteria = new TCriteria;
            //$criteria->add(new TFilter('situacao', '=', 'Y'), TExpression::OR_OPERATOR);
            $criteria->add(new TFilter('situacao', '=', 'A'));
            $criteria->add(new TFilter('genero', '=', 'M'));
            
            $repository = new TRepository('Cliente');
            $objetos = $repository->load($criteria);

            if($objetos)
            {
                foreach($objetos as $objeto)
                {
                    $objeto->telefone = '222 333 433';
                    $objeto->store();
                }
            }

            TTransaction::close();
        }
        catch(Exception $e)
        {
            new TMessage('error', $e->getMessage());
        }
    }
}