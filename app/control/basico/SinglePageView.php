<?php

use Adianti\Control\TPage;
class SinglePageView extends TPage
{
    public function __construct()
    {
        parent::__construct();
        
        try {
            $html = new THtmlRenderer('app/resources/page.html');
            
            $replaces = [];
            $replaces['title'] = 'Title';
            $replaces['body'] = 'Content';
            $replaces['footer'] = 'Footer';

            $html->enableSection('main', $replaces);

            $vbox = new TVBox;
            $vbox->style = 'width:100%';
            $vbox->add (new TXMLBreadCrumb('menu.xml', __CLASS__));
            $vbox->add($html);
            parent::add($vbox);
        }
        catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
    }
}