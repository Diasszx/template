<?php  

use Adianti\Control\TPage;

class TemplateViewRepeat extends TPage
{
    public function __construct()
    {
        parent::__construct();

        try {
            $html = new THtmlRenderer('app/resources/template_repeat.html');

            $replace = [];
            $replace[] = [
                'id' => 1,
                'name' => 'Adam',
                'address' => 'Rua 1',
            ];
            $replace[] = [
                'id' => 2,
                'name' => 'Eva',
                'address' => 'Rua 2',
            ];
            $replace[] = [
                'id' => 3,
                'name' => 'John',
                'address' => 'Rua 3',
            ];

            $html->enableSection('main', []);
            $html->enableSection('detail', $replace, true);
        }
        catch (Exception $e) {
            new TMessage('error', $e->getMessage());
        }

        parent::add($html);
    }
}