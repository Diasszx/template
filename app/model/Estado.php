<?php
/** 
* Cliente Active record
* @author <your-name-here>
*/
class Estado extends TRecord
{
    const TABLENAME = 'estado';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'serial'; // {max, serial}

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('nome');
    }   
}
