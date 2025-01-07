<?php
class CollectionCount extends TPage
{
    public function __construct()
    {
        parent::__construct();

        try{
            TTransaction::open('curso');

            $criteria = new TCriteria;
            $criteria->setProperty('limit', 10);
            $criteria->setProperty('offset', 5);
            $criteria->setProperty('order', 'nome');
            
            $repository = new TRepository('Cliente');
            $count = $repository->count($criteria);

            new TMessage('info', "Registros: $count");

            TTransaction::close();
        }
        catch(Exception $e)
        {
            new TMessage('error', $e->getMessage());
        }
    }
}