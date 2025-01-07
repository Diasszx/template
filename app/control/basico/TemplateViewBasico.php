<?php

use Adianti\Control\TPage;

class TemplateViewBasico extends TPage{

    public function __construct()
    {
        parent::__construct();

        try {
            $html = new THtmlRenderer('app/resources/template-basico.html');
              
            $customer = new stdClass;
            $customer->id = 5;
            $customer->name = 'Adam';
            $customer->address = 'Rua 1';

            $replaces = [];
            $replaces['id'] = $customer->id;
            $replaces['name'] = $customer->name;
            $replaces['address'] = $customer->address;

            $html->enableSection('main', $replaces);
            parent::add($html);
            
        }
        catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
        
    }

}
?>
