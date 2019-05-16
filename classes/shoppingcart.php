<?php

class ShoppingCart
{
    public function __construct()
    {
        global $db;
        //
        if (isset($_SESSION['cartid']) ||isset($_SESSION['token'])) {
            // check if the SESSION is valide
            // if the SESSION is valide set contruct values
            if(self::validate_cart($_SESSION['cartid'], $_SESSION['token'])) {
                // Set cart values for Object
                $this->cartid   = $_SESSION['cartid'];
                $this->token    = $_SESSION['token'];
            }
            // if SESSION is not valide
            else {
                $this->cartid = self::newcart();
                $this->token = self::token($this->cartid);

                $_SESSION['cartid'] = $this->cartid;
                $_SESSION['token'] = $this->token;
            }
        }
        else {
            $this->cartid = self::newcart();
            $this->token = self::token($this->cartid);

            $_SESSION['cartid'] = $this->cartid;
            $_SESSION['token'] = $this->token;

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
        // return $db;
        $data = array(
            'time'          => time(),
            'total_amount'  => 100
        );

        $cart = $db->insert('orders', $data);
        $cartid = $db->getInsertId();
        return $cart;
    }
    //

    public function add_item($itemid)
    {
        //
    }
}
