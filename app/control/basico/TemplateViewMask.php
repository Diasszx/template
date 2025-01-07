<?php

use Adianti\Control\TPage;
class TemplateViewMask extends Tpage{

    public function __construct(){
        parent::__construct();

        try {
            $html = new THtmlRenderer('app/resources/template_masks.html');

            $replace = [];
            $replace['date'] = TDate::date2br(date('Y-m-d'));
            $replace['datetime'] = TDate::date2br(date('Y-m-d H:i:s'));
            $replace['number'] = 123245.36;
            $replace['value1'] = 5;
            $replace['value2'] = 2;
            $replace['value3'] = 8;

            $html->enableSection('main', $replace);

            parent::add($html);
        }
        catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
    }


}