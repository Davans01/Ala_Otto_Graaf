<?php

class Product 
{


    function __construct($id)
    {
        //
        $this->productid = $id;
    }

    public function details()
    {
        //
        global $db;

        $db->where("id = $this->productid");
        return $db->getOne('products');
    }

    public function order()
    {
        //
    }

    
}