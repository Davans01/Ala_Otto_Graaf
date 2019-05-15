<?php

function get_all_products() 
{
    global $db;
    
    return $db->get('products');
}