<div class="bg-img">
    <div class="container">
        <a href="/"><img class="logo" src="images/logo.png"></a>
        
        <div class="dropdown" style="float: right; margin-right: 100px;">
            <!-- Image for the soppingcart -->
            <a href="#cart"><img width="30px" src="images/shoppingcart.png"></a>
            <div class="dropdown-content" style="float: left; margin-right: 20px;">
            <?php
            $cartitems = $shoppingcart->get_cartitems();
            if ($cartitems) {
                foreach ($cartitems as $cartitem) {
                    $cartproduct = $shoppingcart->get_itemdetails($cartitem['productid']);
                    echo $cartproduct['name']." <a href='#'>x</a>";
                }
            }
            ?>
            </div>
        </div>
    </div>
</div>
<a href="/?catid=1"><button class="button">Nieuws</button></a>
<a href="/?catid=2"><button class="button">Modellen</button></a>
<a href="/?catid=3"><button class="button">Land</button></a>
