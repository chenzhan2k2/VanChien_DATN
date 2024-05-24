<?php 
  //load LayoutTrangChu.php
  $this->layoutPath = "LayoutTrangTrong.php";
 ?>
 <div class="row">
  <h2>Tìm kiếm</h2>
  
  <?php 
                  $products = $this->modelHotProducts();
                 ?>
                 <?php foreach($products as $rows): ?>
            <div class="col-md-3 col-sm-6">
              <div class="product-grid">
                <div class="product-image">
                  <a href="">
                    <img class="pic-1" src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>" width="331px" height="238px">
                    <img class="pic-2" src="images/vu3.jpg" width="331px" height="238px">
                  </a>
                  <span class="product-trend-label">TRENDING</span>
                  <ul class="social">
                    <li><a href="" data-tip="Add to cart"><i class="fa fa-shopping-cart"></i></a></li>



                    <li><a href="" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>


                    <li><a href="" data-tip="Compare"><i class="fa fa-random"></i></a></li>

                    <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                  </ul>
                </div>
                <div class="product-content">
                  <h3 class="title"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h3>
                  <div class="price"></span> $ </span><?php echo number_format($rows->price); ?>
                  <div class="action-btn">
                <form>
                          <a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" class="button">Mua Ngay</a>
                        </form></div></div>
                </div>

              </div>
            </div>
            <?php endforeach; ?>
    <!--  -->
          </div>
          