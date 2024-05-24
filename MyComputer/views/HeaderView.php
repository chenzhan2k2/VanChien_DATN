
  <!-- Header -->
  <header class="header-container" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"">
  <style>

  </style>
    <div class="header-top">
      <div class="container">
        <div class="row"> 
          <!-- Header Language -->
          <div class="col-xs-6"><a href="#">
<i class="glyphicon glyphicon-cloud"></i></a>
<a href=""><i class="glyphicon glyphicon-user"></i></a>
<a href=""><i class="glyphicon glyphicon-envelope"></i></a>
<a href=""><i class="glyphicon glyphicon-thumbs-up"></i></a>
            <!-- End Header Currency -->
            <div class="welcome-msg hidden-xs">Chào mừng quý khách ! </div>
          </div>
          <div class="col-xs-6"> 
            
            <!-- Header Top Links -->
            <div class="toplinks">
              <div class="links">
                <?php if(isset($_SESSION["customer_email"]) == false): ?>
                <div class="myaccount"><a title="My Account" href="index.php?controller=account&action=login"><span class="hidden-xs">Đăng nhập</span></a></div>
                <div class="check"><a title="Checkout" href="index.php?controller=account&action=register"><span class="hidden-xs">Đăng kí</span></a></div>&nbsp;&nbsp;
                <?php else: ?>
                  <a href="#">Xin chào <?php echo $_SESSION["customer_email"]; ?></a>&nbsp; &nbsp;<a href="index.php?controller=account&action=logout">Đăng xuất</a>
        <?php endif; ?>
                <a href="">
                  <i class="glyphicon glyphicon-earphone"></i>&nbsp;0123456789</a>
              </div>
            </div>
             
            <!-- End Header Top Links --> 
          </div>
        </div>
      </div>
    </div>
    <div class="header container">
      <div class="row">
        <div class="col-lg-2 col-sm-3 col-md-2 col-xs-12"> 
          <!-- Header Logo --> 
          <div class="logo_content">

      <div style="font-weight: bold; text-align: center; font-size: 25px; text-shadow: 2px 2px 5px #666; margin-top: 10px">
      MY COMPUTER
      </div>
      <div style="text-align: center; font-size: 10px; letter-spacing: 5px; margin-bottom: 20px;">
         SHOP
      </div>
  </div>
          <!-- <a class="logo" title="Magento Commerce" href="index.html"><img alt="Magento Commerce" src="images/footer-logo.png"></a>  -->
          <!-- End Header Logo --> 
        </div>
        <div class="col-lg-7 col-sm-4 col-md-6 col-xs-12"> 
          <!-- Search-col -->
          <div class="box">
            <form>
               <script type="text/javascript">
      function search(){
        var key = document.getElementById('key').value;
        //di chuyen den trang search
        location.href="index.php?controller=search&action=productName&key="+key;
      }
      function smartSearch(){
        var key = document.getElementById('key').value;
        if(key != ""){
          document.getElementById('smart-search').setAttribute("style","display:block;");
          //---
          $.ajax({
            url: "index.php?controller=search&action=smartSearch&key="+key,
            success: function( result ) {
              $( "#smart-search ul" ).empty();
              $( "#smart-search ul" ).append(result);
            }
          });
           }else{
          document.getElementById('smart-search').setAttribute("style","display:none;");
        }
      }
    </script>
              <input type="text" placeholder="Search here..." value="" maxlength="70" class="search1" onkeyup ="smartSearch();" id="key" onkeyup ="smartSearch();" style="position: relative; height: 30px; width: 450px;border: solid #dddd;border-radius:5px 0px 0px 5px; margin-top: 20px; ">
               <style type="text/css">
        #smart-search ul{padding:0px; margin:0px; list-style: none; }
        #smart-search ul li{border-bottom: 1px solid #dddddd;border-right: 1px solid #dddddd; width: 490px;}
        #smart-search{position: absolute; width: 490px; z-index: 100; background: white; display: none;margin-top: 50px;}
      </style>
      <div id="smart-search">
        <ul>
        </ul>
      </div>
              <button id="submit-button" class="search-btn-bg" style="position: absolute;margin-left: 0px;margin-top: 20px;" onclick="return search();"><span>Tìm kiếm</span></button>
              
            </form>
            
          </div>
          <!-- End Search-col --> 
        </div>
      
      
        
        <!-- Top Cart -->
         <?php 
        $numberProduct = 0;
        if(isset($_SESSION["cart"])){
            foreach($_SESSION["cart"] as $product){
              $numberProduct++;
            }
        }
     ?>
        <div class="col-lg-3 col-sm-5 col-md-4 col-xs-12" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
          <div class="top-cart-contain">
            <div class="mini-cart">
              <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="index.php?controller=cart"> <i class="icon-cart"></i>
                <div class="cart-box"><span class="title">Giỏ Hàng</span><span id="cart-total"> <?php echo $numberProduct; ?> </span></div>
                </a></div>
              <div>
                <div class="top-cart-content arrow_box">
                  <div class="block-subtitle">Thêm vào giỏ hàng</div>
                  <ul id="cart-sidebar" class="mini-products-list">
                    <?php foreach($_SESSION["cart"] as $product): ?>
                    <li class="item even"> <a class="product-image" href="#" title="Downloadable Product "><img alt="<?php echo $product['name']; ?>" src="assets/upload/products/<?php echo $product['photo']; ?>" title="<?php echo $product['name']; ?>" width="80"></a>
                      <div class="detail-item">
                        <div class="product-details"> <a href="#" title="Remove This Item" onClick="" class="">&nbsp;</a> <a class="" title="Edit item" href="#">&nbsp;</a>
                          <p class="product-name"> <a href="index.php?controller=products&action=detail&id=<?php echo $product['id']; ?>" title="Downloadable Product"><?php echo $product['name']; ?></a> </p>
                        </div>
                        <div class="product-details-bottom"> <span class="price"><?php echo number_format($product['price']); ?>đ</span> <span class="title-desc"></h3>
                  <p><?php echo $product['number']; ?> x <?php echo number_format($product['price']); ?>₫</p></span></div>
                        <div> <a href="index.php?controller=cart&action=delete&id=<?php echo $product['id']; ?>"> <i class="fa fa-times"></i></a> </div>
                      </div>
                    </li>
                    <?php endforeach; ?>
                  </ul>

                  <!-- <div class="top-subtotal">Tổng: <span class="price">470.000đ</span></div> -->
                  <div class="actions">
                    <button class="btn-checkout" type="button"><span><?php if($numberProduct > 0): ?>
            <a href="index.php?controller=cart&action=checkout" class="button">Thanh toán</a><?php endif; ?></span></button>
                    <!-- <button class="view-cart" type="button"><span>View Cart</span></button> -->
                  </div>
                </div>
              </div>
            </div>
            <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
              <input value="" type="hidden">
              <input id="enable_module" value="1" type="hidden">
              <input class="effect_to_cart" value="1" type="hidden">
              <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
            </div>
          </div>
        
        </div>
        <!-- End Top Cart --> 
      </div>
    </div>
  </header>
  <!-- menu -->
  
  <div id="menu1" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
  <ul>
    <li><a href="index.php">Trang chủ</a></li>
    <li><a href="#">Danh Mục</a>
     <ul class="sub-menu1" style="width: 150px;">
        <?php 
              //load cap 1
              $categories = $this->modelGetCategories();
           ?>
           <?php foreach($categories as $rows): ?>
            <li><a href="index.php?controller=products&action=categories&category_id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></li>
              <?php 
                //load cap 2
                $categoriesSub = $this->modelGetCategoriesSub($rows->id);
             ?>
             <?php foreach($categoriesSub as $rowsSub): ?>
            <li style="padding-left:20px;"><a href="index.php?controller=products&action=categories&category_id=<?php echo $rowsSub->id; ?>"><?php echo $rowsSub->name; ?></a></li>
              <?php endforeach; ?>
            <?php endforeach; ?>
      </ul></li>
    <li><a href="index.php?controller=news">Tin tức</a>
      <ul class="sub-menu1">
        
      </ul>
    </li>
    <li><a href="index.php?controller=cart">Giỏ hàng</a></li>
    <li><a href="index.php?controller=wishlist">Yêu thích</a></li>
    <li><a href="index.php?controller=contact">Liên hệ</a></li>
    <li><a href="index.php?controller=user">Đơn hàng</a></li>

  </ul>
</div>