<?php
class DialogInputView extends TPage{
    public function __construct()
    {
        parent::__construct();

        $form = new BootstrapFormBuilder('form_input');

        $login = new TEntry('login');
        $pass = new TEntry('pass');

        $form->addFields([new TLabel('Login'), $login]);
        $form->addFields([new TLabel('Senha'), $pass]);

        $form->addAction('Confirma', new TAction([$this, 'onConfirm1']), 'fa:save green');

        new TInputDialog('titulo', $form);
    }

    public static function onConfirm1($param)
    {
        new TMessage('info', 'Login: ' . $param['login'] . 'Senha: ' . $param['pass'], null, 'Login');
    }
}