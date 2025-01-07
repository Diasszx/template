<?php
class PanelGroupView extends TPage
{
    public function __construct()
    {
        parent::__construct();

        $panel = new TPanelGroup('Titulo');

        $table = new TTable;
        $table->border = 1;
        $table->width = '100%';
        $table->style = 'border-collapse:collapse';
        $table->addRowSet('a', 'b', 'c');
        $table->addRowSet('d', 'e', 'f');


        $panel->add($table);
        $panel->addfooter("rodape");
        parent::add($panel);

    }
}