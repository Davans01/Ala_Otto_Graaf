<?php

class ShoppingCart
{
    public function __construct()
    {
        global $db;
        //
        if (isset($_SESSION['cartid']) && isset($_SESSION['token']) && !empty($_SESSION['cartid'])) {
            // check if the SESSION is valide
            // if the SESSION is valide set contruct values
            if(self::validate_cart($_SESSION['cartid'], $_SESSION['token'])) {
                // Set cart values for Object
                $this->cartid   = $_SESSION['cartid'];
                $this->token    = $_SESSION['token'];
                $this->test     = 'valid';
            }
            // if SESSION is not valide
            else {
                unset($_SESSION['cartid']);
                unset($_SESSION['token']);
                
                $this->cartid = self::newcart();
                $this->token = self::token($this->cartid);
                $this->test     = 'token fail';
                
                $_SESSION['cartid'] = $this->cartid;
                $_SESSION['token'] = $this->token;
            }
        }
        else {
            $this->cartid = self::newcart();
            $this->token = self::token($this->cartid);
            
            $_SESSION['cartid'] = $this->cartid;
            $_SESSION['token'] = $this->token;
            $this->test     = 'new cart';

        }   
    }
    
    public function validate_cart($cartid, $token)
    {
        //
        if(self::token($cartid) == $token) {
            return true;
        }
        else {
            return false;
        }
    }

    public function token($cartid)
    {
        // generate the token and return it
        return sha1($cartid."".$cartid);

    }

    public function newcart()
    {
        //
        global $db;

        $data = array(
            'time'          => time()
        );

        $cart = $db->insert('orders', $data);
        $cartid = $db->getInsertId();

        return $cart;
    }
    //

    public function add_item($itemid)
    {
        //
        global $db;

        // set the values
        $orderitem = array(
            'orderid' => $this->cartid,
            'productid' => $itemid,
            'quantity' => 1
        );

        // check if item already in cart
        $db->where("orderid = '$this->cartid' and productid = '$itemid'");
        $existingitem = $db->get('order_items');

        // check if there are more then 3 items in cart
        $db->where("orderid = '$this->cartid'");
        $cartitems = $db->get('order_items');

        // if not in cart add it
        if (!$existingitem && count($cartitems) < 3) {
            $db->insert('order_items', $orderitem);
        }

    }

    public function get_cartitems()
    {
        //
        global $db;

        $db->where("orderid = '$this->cartid'");
        $cartitems = $db->get('order_items');

        return $cartitems;
    }

    public function get_itemdetails($itemid)
    {
        //
        global $db;

        $db->where("id = '$itemid'");
        $item = $db->getOne('products');

        return $item;
    }

    public function delete_item($id)
    {
        //
        global $db;
        // delete the item from order_items
        $db->where("id = $id");
        $db->delete('order_items');
    }
}
