<?php
class SidePageView extends TPage
{
    public function __construct()
    {
        parent::__construct();
        
        try {

            parent::setTargetContainer('adianti_right_panel');

            $html = new THtmlRenderer('app/resources/side.html');

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
    public static function onClose()
    {
        TScript::create('Template.closeRightPanel()');
    }
}