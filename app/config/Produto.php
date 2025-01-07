<?php

class Produto extends TRecord
{
    const TABLENAME = 'produto';
    const PRIMARYKEY = 'id';
    const IDPOLICY = 'max'; //{max,serial} mais seguro

    public function __construct($id = null, $callObjectLoad = true)
    {
        parent::__construct($id, $callObjectLoad);
        
        parent::addAttribute();
    }
}