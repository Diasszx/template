<?php
class SingleWindowView extends TWindow
{
    public function __construct()
    {
        parent::__construct();
        parent::setTitle('Title Window');
        parent::setSize(0.5, null);
        
        try {
            $html = new THtmlRenderer('app/resources/page.html');

            $replaces = [];
            $replaces['title'] = 'Title';
            $replaces['body'] = 'Content';
            $replaces['footer'] = 'Footer';

            $html->enableSection('main', $replaces);
            parent::add($html);
        }
        catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }
    }
}