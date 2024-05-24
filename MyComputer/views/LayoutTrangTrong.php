<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="assets/frontend/css/trangchu.css">
  <link rel="stylesheet" type="text/css" href="assets/frontend/css/trangdanhmuc.css">
  

  <link rel="stylesheet" href="assets/frontend/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="assets/frontend/css/font-awesome.css" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- danhsachsanpham -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- /danhsachsanpham -->
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="assets/frontend/css/revslider.css" type="text/css">
  <!-- doi mau chu -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
  <!-- /doi mau cho -->
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> 
  <link rel="stylesheet" type="text/css" href="assets/frontend/css/stylecategory.css">
  <!--  -->
  <!-- trang chi tiet -->
  <link rel="stylesheet" type="text/css" href="assets/frontend/css/trangchitiet.css">
  <script type="text/javascript" src="assets/frontend/js/jquery-3.5.1.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

  <!-- JavaScript --> 
<script type="text/javascript" src="assets/frontend/js/jquery.min.js"></script> 
<script type="text/javascript" src="assets/frontend/js/bootstrap.min.js"></script> 
 
 
<script type="text/javascript" src="assets/frontend/js/jquery.jcarousel.min.js"></script> 
<script type="text/javascript" src="assets/frontend/js/cloudzoom.js"></script>
 
  <!--  /trang chi tiet-->
  <!--  -->
</head>
<body>
  <script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/605c9747f7ce18270933dcdc/1f1kqts5f';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<?php 
    //load MVC bang tay -> load file controller
    include "controllers/HeaderController.php";
    $obj = new HeaderController();
    $obj->index();
 ?>

 <!--  -->

  <section id="category" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
    <div class="category">
      <div class="category-top">
        
        <!-- <div class="category-top-right">
          <select name="" >
            <option value="">Mặc định</option>
            <option value="">Giá: tăng dần</option>
            <option value="">Giá: giảm dần</option>
            <option value="">Tên: A-Z</option>0
            <option value="">Tên: Z-A</option>
            <option value="">Sale</option>
          </select>
        </div> -->
      </div>
      <div class="category-mid">
        <div class="category-mid-left">
          <h3><b>DANH MỤC</b></h3>
          <ul class="list-category">
            <li><a href="index.php?controller=products&action=categories&category_id=32" title=""><i class="fas fa-laptop"></i> SSD - Ổ Cứng</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=29" title=""><i class="fas fa-laptop"></i> HDD - Ổ Cứng</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=33" title=""><i class="fas fa-laptop"></i> CPU</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=28" title=""><i class="fas fa-laptop"></i> Bộ Nhớ Trong</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=27" title=""><i class="fas fa-laptop"></i> Nguồn Máy Tính</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=26" title=""><i class="fas fa-laptop"></i> Card Màn Hình</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=31" title=""><i class="fas fa-laptop"></i> Bàn Phím - Chuột</a></li>
          </ul>
          <!-- <ul class="Grootte" style="color: black; ">
            <li><a href="index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>&order=1" onclick="return check();" class='mot' title=""><<input class="form-control" type="checkbox" name="">></input></a> 100.000đ -> 200.000đ</li>
            <li><a href="index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>&order=2" title=""><i class="far fa-square"></i></a> 200.000đ -> 500.000đ</li>
            <li><a href="index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>&order=3" title=""><i class="far fa-square"></i></a> 500.000đ -> 1.000.000đ</li>
            <li><a href="index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>&order=4" title=""><i class="far fa-square"></i></a> 1.000.000đ -> 2.000.000đ</li>
            <li><a href="index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>&order=5" title=""><i class="far fa-square"></i></a> 2.000.000 -> 5.000.000</li>
            <li><a href="index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>&order=6" title=""><i class="far fa-square"></i></a> 5.000.000đ -> 10.000.000đ</li>
          </ul> -->
          
          <?php $checked1 = "";
            $checked2 = "";
            $checked3 = "";
            $checked4 = "";
            $checked5 = "";
            $checked6 = ""; if(isset($_GET['order']))
          {
            if ($_GET['order'] == 1) $checked1 = "checked";
            if ($_GET['order'] == 2) $checked2 = "checked";
            if ($_GET['order'] == 3) $checked3 = "checked";
            if ($_GET['order'] == 4) $checked4 = "checked";
            if ($_GET['order'] == 5) $checked5 = "checked";
            if ($_GET['order'] == 6) $checked6 = "checked";
          } ?>
          <div class="loc">
          <hr>
          <h3><b>MỨC GIÁ</b></h3>
          <form action="index.php?controller=products&action=categories&category_id=<?php echo $category_id; ?>" method="GET">
          <ul class="Grootte" style="color: black; ">
          <li><input type="radio" value="1" <?php echo $checked1; ?> name="order"> 100.000đ -> 200.000đ</li>
          <li><input type="radio" value="2" <?php echo $checked2; ?> name="order"> 200.000đ -> 500.000đ</li>
          <li><input type="radio" value="3" <?php echo $checked3; ?> name="order"> 500.000đ -> 1.000.000đ</li>
          <li><input type="radio" value="4" <?php echo $checked4; ?> name="order"> 1.000.000đ -> 2.000.000đ</li>
          <li><input type="radio" value="5" <?php echo $checked5; ?> name="order"> 2.000.000đ -> 5.000.000đ</li>
          <li><input type="radio" value="6" <?php echo $checked6; ?> name="order"> 5.000.000đ -> 10.000.000đ</li>
          <input type="hidden" value="products" name="controller">
          <input type="hidden" value="categories" name="action">
          <input type="hidden" value="<?php echo $category_id; ?>" name="category_id">
          <input class="search" type="submit" value="Đồng ý">
          </ul>
          </form>
          </div>
        </div>
        <!--  -->
        <div class="chitiet">
        <!-- hang1 -->
        <div class="container">
          <div class="row">
             <?php echo $this->view; ?>
            <div class="col-md-3 col-sm-6">
              <!-- main -->
        
        
        
        <!-- end main -->
      </div>
    </div>
  </div>
</div>

        <!--  -->
      </div>
      <div class="category-bottom" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
        <div class="container">
          <ul>
            <li><a href="#" title="">1</a></li>
            <li><a href="#" title="">2</a></li>
            <li><a href="#" title="">3</a></li>
            <li><a href="#" title="">...</a></li>
            <li><a href="#" title=""><i class="fas fa-long-arrow-alt-right"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="pr">
      <ul>
        <li></li>
      </ul>
    </div>
  </section>


 
    <!-- footer -->
    <!-- /anh -->
<section id="category-news" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
    <div class="category-new">
      <ul class="first-category">
        <li>
          <div class="new-arrivals">
            <ul>
              <li><a href="#" title=""><b>Tim mới</b></a></li>
            </ul>
          </div>
        </li>
      </ul>
    </div>
    <div class="menu">
      <div class="container">
        <ul>
          <li>
          <div class="content">
              <a href="#" title=""><div class="khoi1"><img class="images" src="assets/frontend/images/news/anh1.jpg" alt=""></div></a>
              <a href="#" title=""><h3>GIẢM GIÁ TỪ 50% VỚI HƠN 30.000 SẢN PHẨM</h3></a>
              <p>Hàng Việt Nam chất lượng cao...</p>
            </div>
          </li>
          <li>
            <div class="content">
              <a href="#" title=""><div class="khoi1"><img class="images" src="assets/frontend/images/news/news2.jpg" alt=""></div></a>
              <a href="#" title=""><h3>LÊN ĐỜI PC NÂNG TẦM BẢN LĨNH</h3></a>
              <p>Khách hàng khi mua linh kiện MSI được chỉ định sẽ nhận được quà tăng Steamcode với giá trị tương ứng, trị giá lên đến 100$...</p>
            </div>
          </li>
          <li>
            <div class="content">
              <a href="#" title=""><div class="khoi1"><img class="images" src="assets/frontend/images/news/news3.jpg" alt=""></div></a>
              <a href="#" title=""><h3>KHÁM PHÁ KHỞI NGUỒN CỦA SỰ SÁNG TẠO</h3></a>
              <p>Asus Vivobook Pro 14X OLED. Khám Phá Khởi Nguồn Của Sự Sáng Tạo</p>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="see-more">
      <ul>
        <li><a href="#" title="">Xem thêm</a></li>
      </ul>
    </div>
    <div class="pr">
      <ul>
        <li></li>
      </ul>
    </div>
  </section>
<!-- Footer -->
  <footer class="footer" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
    <div class="footer-middle container">
      <div class="col-md-3 col-sm-4">
        <h1 style="color: white">MY COMPUTER</h1>
        <p>Hãy kết nối với chúng tôi !!! </p>
        <div class="payment-accept">
          <div><img src="assets/frontend/images/payment-1.png" alt="payment"> <img src="assets/frontend/images/payment-2.png" alt="payment"> <img src="assets/frontend/images/payment-3.png" alt="payment"> <img src="assets/frontend/images/payment-4.png" alt="payment"></div>
        </div>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Công Ty</h4>
        <ul class="links">
          <li class="first"><a href="#" title="How to buy">Giới Thiệu Về KINGSHOP</a></li>
          <li><a href="faq.html" title="FAQs">Tuyển Dụng</a></li>
          <li><a href="#" title="Payment">Payment</a></li>
          <li><a href="#" title="Shipment&lt;/a&gt;">Hệ Thống Cửa Hàng</a></li>
          <li><a href="delivery.html" title="delivery">Chăm Sóc Khách Hàng</a></li>
          <li class="last"><a href="#" title="Return policy">Báo Cáo</a></li>
        </ul>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Sản Phẩm Chính</h4>
        <ul class="links">
        <li><a href="index.php?controller=products&action=categories&category_id=32" title=""> SSD - Ổ Cứng</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=29" title=""> HDD - Ổ Cứng</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=33" title=""> CPU</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=28" title=""> Bộ Nhớ Trong</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=27" title=""> Nguồn Máy Tính</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=26" title=""> Card Màn Hình</a></li>
            <li><a href="index.php?controller=products&action=categories&category_id=31" title=""> Bàn Phím - Chuột</a></li>
        </ul>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Về Khách Hàng</h4>
        <ul class="links">
          <li class="first"><a href="sitemap.html" title="Site Map">Hướng Dẫn Mua Hàng</a></li>
          <li><a href="#/" title="Search Terms">Mua Hàng Trả Góp</a></li>
          <li><a href="#" title="Advanced Search">Vận Chuyển</a></li>
          <li><a href="contact_us.html" title="Contact Us">Trả Hàng & Hoàn Tiền</a></li>
          <li><a href="#" title="Suppliers">Trung Tâm Trợ Giúp</a></li>
          <li class=" last"><a href="#" title="Our stores" class="link-rss">Chính Sách Bảo Hành</a></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-4">
        <h4>Liên Hệ</h4>
        <div class="contacts-info">
          <address>
          <a href="#"><i class="add-icon">&nbsp;</i></a>132, Cầu Diễn, Bắc Từ Liêm, TP. Hà Nội<br>
          </address>
          <div class="phone-footer"><i class="phone-icon">&nbsp;</i> 0123456789</div>
          <div class="email-footer"><i class="email-icon">&nbsp;</i> <a href="mailto:support@magikcommerce.com">support@magikcommerce.com</a> </div>
        </div>
      </div>
    </div>
    <div class="footer-bottom container">
      <div class="col-sm-5 col-xs-12 coppyright"> &copy; 2015 Magikcommerce. All Rights Reserved.</div>
      <div class="col-sm-7 col-xs-12 company-links">
        <ul class="links">
          <li><a href="#" title="Magento Themes">Magento Themes</a></li>
          <li><a href="#" title="Premium Themes">Premium Themes</a></li>
          <li><a href="#" title="Responsive Themes">Responsive Themes</a></li>
          <li class="last"><a href="#" title="Magento Extensions">Magento Extensions</a></li>
        </ul>
      </div>
    </div>
  </footer>
  <!-- End Footer -->
  </div>
<div class="social">
  <ul>
    <li class="fb"><a href="#"></a></li>
    <li class="tw"><a href="#"></a></li>
    <li class="googleplus"><a href="#"></a></li>
    <li class="rss"><a href="#"></a></li>
    <li class="pintrest"><a href="#"></a></li>
    <li class="linkedin"><a href="#"></a></li>
    <li class="youtube"><a href="#"></a></li>
  </ul>
</div>
    <!-- /footer -->
    
    <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="DATN_CHIEN"
  agent-id="0123df46-f46a-48f4-9240-aad0d45cebce"
  language-code="vi"
></df-messenger>
<!-- script -->
 <script src="assets/frontend/js/jquery-3.5.1.js"></script>
<style>
  .search{
  background-color: #dc4a38;
  border: none;
  color: white;
  padding: 6px 25px;
  border-radius: 10px 10px 10px 10px;
  }
</style>
</body>
</html>