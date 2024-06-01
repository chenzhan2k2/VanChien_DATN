<?php 
  //load LayoutTrangChu.php
  $this->layoutPath = "LayoutTrangTrong.php";
  $category_id = isset($_GET["category_id"])&&is_numeric($_GET["category_id"])?$_GET["category_id"]:0;
 ?>

 <h3 style="font-weight: bold;">Sản phẩm/ <?php echo $this->getCategory($category_id); ?></h3>
<div class="category-top-right" style="margin-left: 870px; font-weight: bold;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
          <select name="" onchange="location.href = 'index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>&order='+this.value;">
            <option value="0">Mặc định</option>
            <option value="priceAsc">Giá: tăng dần</option>
            <option value="priceDesc">Giá: giảm dần</option>
            <option value="nameAsc">Tên: A-Z</option>
            <option value="nameDesc">Tên: Z-A</option>
            <option value="">Sale</option>
          </select>
        </div>
        

  
       <section id="category">
    <div class="category">
        
      <div class="category-mid">

       <div class="chitiet">
        <!-- hang1 -->
        <div class="container">
          <div class="row">
            <?php foreach($data as $rows): ?>
            <div class="col-md-3 col-sm-6">
              
              <div class="product-grid">
                <div class="product-image">
                  
                  <a href="#">
                    <img class="pic-1" src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
                    <img class="pic-2" src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
                  </a>
                  <span class="product-trend-label"><header><h5>TRENDING</h5></header></span>
                  <ul class="social">
                    <li><a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" data-tip="Add to cart"><i class="fa fa-shopping-cart"></i></a></li>



                    <li><a href="index.php?controller=wishlist&action=create&id=<?php echo $rows->id; ?>" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>


                    <li><a href="" data-tip="Compare"><i class="fa fa-random"></i></a></li>

                    <li><a href="" data-tip="Quick View"><i class="fa fa-search" title="tim"></i></a></li>
                  </ul>
                </div>
                

              </div>
              <div class="product-content" style="font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                  <h3 class="title"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h3>
                  <div class="item-content">
                            <div class="ratings">
                              <div class="rating-box"><a href="#">
                                <div style="width:60%" class="rating"></div></a>
                              </div>
                            </div>
                        </div>

                  <div class="price"><?php echo number_format($rows->price); ?></div>
                  <div style="height: 20px;"></div>
                  <div class="muangay">
                    <a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" id="muangay1" >Mua Ngay</a>
                  </div>
                  <div style="height: 30px;"></div>
                </div>


            </div>
            <?php endforeach; ?>
          </div>
        </div>
    

          
          
           

         
        </div>

     </div>

      
    </div>
    <div class="pr">
      <ul>
        <li></li>
      </ul>
    </div>
  </section>



