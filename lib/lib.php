<?php

function get_all_products()
{
    global $db;

    return $db->get('products');
}

function get_all_nieuws()
{
    global $db;
    $db->where("catogory_id = 1");
    return $db->get('products');
}

function get_all_modellen()
{
    global $db;
    $db->where("catogory_id = 2");
    return $db->get('products');
}

function get_all_landen()
{
    global $db;
    $db->where("catogory_id = 3");
    return $db->get('products');
}
