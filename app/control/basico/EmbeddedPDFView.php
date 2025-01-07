<?php
class EmbeddedPDFView extends TPage
{
    public function __construct()
    {
        parent::__construct();

        TTransaction::open('curso');
        var_dump(TTransaction::getDataBaseInfo());
        $object = new TElement('iframe');
        $object = '100%';
        $object = '600px';
        $object = 'https//www.adianti.com.br/framework_files/adianti_framework.pdf';   
        TTransaction::close();

        parent::add($object);
    }
}