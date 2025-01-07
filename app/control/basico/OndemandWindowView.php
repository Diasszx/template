<?php
class OnDemandWindowView extends TPage
{
    public function __construct()
    {
        parent::__construct();        

        $html = new THtmlrenderer('app/resources/page.html');

        $replaces = [];
        $replaces['title'] = 'Title';
        $replaces['body'] = 'Content';
        $replaces['footer'] = 'Footer';

        $html->enableSection('main', $replaces);

        $window->add($html);
        $window->show();
    }
}