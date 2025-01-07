<?php
class QuestionView extends TPage{
    public function __construct()
    {
        parent::__construct();

        $action1 = new TAction([$this, 'onActionYes']);
        $action2 = new TAction([$this, 'onActionNo']);

        new TQuestion('Voce gostaria de executar esta operação?', $action1, $action2);

    }

    public static function onActionYes($param)
    {
        new TMessage('info', 'Voce escolheu sim');
    }

    public static function onActionNo($param)
    {
        new TMessage('error', 'Voce escolheu nao');
    }
}