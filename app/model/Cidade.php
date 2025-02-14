<?php
/** 
* Cliente Active record
* @author <your-name-here>
*/
class Cidade extends TRecord
{
    const TABLENAME = 'cidade';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'serial'; // {max, serial}

    private $estado;

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('nome');
        parent::addAttribute('estado_id');
    }   

    public function get_estado()
    {
        if(empty($this->estado_id))
        {
            $this->estado = new Estado($this->estado_id);
        }
        return $this->estado;
    }
}
