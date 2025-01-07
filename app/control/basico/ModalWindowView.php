<?php
class ModalWindowView extends TWindow
{
    public function __construct()
    {
        parent::__construct();

        parent::setSize(0.6,null);
        parent::removePadding();
        parent::removeTitleBar();
        parent::disableEscape();

        $html = new THtmlRenderer('app/resources/modal.html');

        $replaces = [];
        $replaces['title'] = 'Title';
        $replaces['body'] = 'Content';
        $replaces['footer'] = 'Footer';

        $html->enableSection('main', $replaces);

        parent::add($html);

    }
}