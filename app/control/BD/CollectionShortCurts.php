<?php
class CollectionShortCurts extends TPage
{
    public function __construct()
    {
        parent::__construct();
   
        try
        {
            TTransaction::open('curso');

            // retorna tudo os cliente sem filtro
            //$clientes = Cliente::all();
            // print_r($clientes);
            /*
            $count =Cliente::where('situacao', '=', 'A')
                            ->where('genero','=','M')
                            ->count();
            */
            /*
            $count =Cliente::where('situacao', '=', 'A')
                            ->where('genero','=','M')
                            ->load();
                            */

            /*
            $count =Cliente::where('situacao', '=', 'A')
                            ->where('genero','=','M')
                            ->orderby('id')
                            ->load();
            */
            /*
            $clientes = Clientes::where('id','>',0)
                                ->take(10) // conte 0-9
                                ->skip(20) // pular 20
                                -load();
            */
            /*
            $cliente = Cliente::where('situacao','=','A')
                                ->where('genero','=','F')
                                ->first();
            print_r($cliente);*/

            $clientes = Cliente::where('cidade_id','=','2')
                                ->set('telefone','9999-9999')
                                ->update();

            $cliente = Cliente::where('categoria_id','=','3')
                                ->delete();

            $clientes = Cliente::where('situacao','=','A')
                                ->orderBy('id')
                                ->getIndexedArray('id','nome');
                                print_r($clientes);
            

            TTransaction::close();
            

        }
        catch(Exception $e)
        {
            new TMessage('error',$e->getMessage());
        }

    }
}