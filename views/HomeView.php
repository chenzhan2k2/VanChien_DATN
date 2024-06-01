<?php 
	//load LayoutTrangChu.php
	$this->layoutPath = "LayoutTrangChu.php";
 ?>
 <div class="chitiet" style=" font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
				<!-- hang1 -->
				<div class="container">
          <h2 style="color: red;">SẢN PHẨM NỔI BẬT</h2>
          <hr style="background: red;">
          <div style="height: 20px"></div>
					<div class="row">
						<?php 
              		$products = $this->modelHotProducts();
              	 ?>
              	 <?php foreach($products as $rows): ?>
						<div class="col-md-3 col-sm-6" style="position: relative;">
              <div style="position: absolute; width: 40px; line-height: 40px; border-radius: 40px; background: black; color:white; text-align: center;z-index: 100;margin-top: 10px;"><?php echo $rows->discount; ?>%</div>
							<div class="product-grid">
								<div class="product-image">
									
									<a href="#">
										<img class="pic-1" src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
										<img class="pic-2" src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
									</a>
									<!-- <span class="product-trend-label"><header><h5>TRENDING</h5></header></span> -->
									<ul class="social">
										<li><a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" data-tip="Add to cart"><i class="fa fa-shopping-cart"></i></a></li>



										<li><a href="index.php?controller=wishlist&action=create&id=<?php echo $rows->id; ?>" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>


										<li><a href="" data-tip="Compare"><i class="fa fa-random"></i></a></li>

										<li><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>" data-tip="Quick View"><i class="fa fa-search" title="tìm kiếm"></i></a></li>
									</ul>
								</div>
								

							</div>
							<div class="product-content">
									<h4 class="title"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h4>
									<div class="item-content">
                            <div class="ratings">
                              <div class="rating-box"><a href="#">
                                <div style="width:60%" class="rating"></div></a>
                              </div>
                            </div>
                        </div>

									<div class="price"><?php echo number_format($rows->price); ?></div>
                  <div style="height:20px;"></div>
									<div class="muangay">
                    <a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" id="muangay1" >Mua Ngay</a>
                  </div>

								</div>

						</div>
						<?php endforeach; ?>
					</div>
				</div>
     </div>
      </div>
    
  </div>
</div>
</div>
 <?php 
          $categories = $this->modelGetCategories();
         ?>
         <?php foreach($categories as $rowsCategories): ?>
<div class="chitiet">

        <!-- hang1 -->

      
        <div class="container">
          <div class="row">
          	 <?php 
                  $products = $this->modelGetProducts($rowsCategories->id);
                 ?>
                 <?php foreach($products as $rows): ?>
             

            <div class="col-md-3 col-sm-6">
 
              <div class="product-grid">

                <div class="product-image">
                  
                  <a href="#">
                    <img class="pic-1" src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
                    <img class="pic-2" src="assets/upload/products/<?php echo $rows->photo; ?>" title="<?php echo $rows->name; ?>" alt="<?php echo $rows->name; ?>">
                  </a>
                  <!-- <span class="product-trend-label"><header><h5>TRENDING</h5></header></span> -->
                  <ul class="social">
                    <li><a href="" data-tip="Add to cart"><i class="fa fa-shopping-cart"></i></a></li>



                    <li><a href="" data-tip="Wishlist"><i class="fa fa-heart"></i></a></li>


                    <li><a href="" data-tip="Compare"><i class="fa fa-random"></i></a></li>

                    <li><a href="" data-tip="Quick View"><i class="fa fa-search" title="tim"></i></a></li>
                  </ul>
                </div>
                

              </div>
              <div class="product-content">
                  <h3 class="title"><a href="index.php?controller=products&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h3>
                  <div class="item-content">
                            <div class="ratings">
                              <div class="rating-box"><a href="#">
                                <div style="width:60%" class="rating"></div></a>
                              </div>
                            </div>
                        </div>

                  <div class="price"><?php echo number_format($rows->price); ?></div>
                  <div class="muangay">
                    <a href="index.php?controller=cart&action=create&id=<?php echo $rows->id; ?>" id="muangay1" >Mua Ngay</a>
                  </div>

                </div>
                  <div class="chatbox">
                  
                  </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
    <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="DATN_CHIEN"
  agent-id="0123df46-f46a-48f4-9240-aad0d45cebce"
  language-code="vi"
></df-messenger>

  </div>
    <?php endforeach; ?>
  </div>