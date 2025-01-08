<?php
class CollectionBatchUpdate extends TPage
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

            $valores = [];
            $valores['telefone'] = '1111-4444';
            
            $repository = new TRepository('Cliente');
            $repository->update($valores, $criteria);

            TTransaction::close();
        }
        catch(Exception $e)
        {
            new TMessage('error', $e->getMessage());
        }
    }
}