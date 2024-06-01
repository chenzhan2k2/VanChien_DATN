<?php 
  //load LayoutTrangChu.php
  $this->layoutPath = "LayoutTrangTrong.php";
 ?>
 <div class="container" style="font-weight: bold; font-size: 16px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"> 
  <form action="index.php?controller=cart&action=update" method="post">
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:50%">Tên sản phẩm</th> 
    <th style="width:10%">Giá</th> 
    <th style="width:3%;">Số lượng</th> 
    <th style="width:22%" class="text-center">Thành tiền</th> 
    <th style="width:10%"> </th> 
   </tr> 
  </thead> 
  <tbody>
    <?php foreach($_SESSION["cart"] as $product): ?>
    <tr> 
   <td data-th="Product"> 
    <div class="row"> 
     <div class="col-sm-2 hidden-xs"><img src="assets/upload/products/<?php echo $product['photo']; ?>" class="img-responsive" width="100">
     </div> 
     <div class="col-sm-10"> 
      <h4 class="nomargin"><a href="index.php?controller=products&action=detail&id=<?php echo $product['id']; ?>"><?php echo $product['name']; ?></a></h4> 
     </div> 
    </div> 
   </td> 
  <td> <?php echo number_format($product['price']); ?>₫ </td>
   <td><input type="number" id="quantity" min="1" class="input-control" value="<?php echo $product['number']; ?>" name="product_<?php echo $product['id']; ?>" required="Không thể để trống">
   </td> 
   <td data-th="Subtotal" class="text-center"><p><b><?php echo number_format($product['number']*$product['price']); ?>₫</b></p></td> 
   <td class="actions" data-th="">
    <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
    </button> 
    <p class="btn btn-danger btn-sm"><a href="index.php?controller=cart&action=delete&id=<?php echo $product['id']; ?>" data-id="2479395"><i class="fa fa-trash"></i></a></i>
    </p>
   </td> 
  </tr> 
  <?php endforeach; ?>
  </tbody>
  <?php if($this->cartNumber() > 0): ?>
  <tfoot> 
   <tr class="visible-xs"> 
    <td class="text-center"><strong>Tổng 200.000 đ</strong>
    </td> 
   </tr> 
   <tr> 
    <td><a href="index.php" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
    </td> 
     <td><a href="index.php?controller=cart&action=destroy" class="btn btn-warning"><i class="fa fa-trash"></i> Xóa toàn bộ</a>
    </td>
     <td>
      <input type="submit" class="btn btn-warning" value="Cập nhật">
    </td> 
    <td class="hidden-xs text-center">
      <?php if($this->cartNumber() > 0): ?>
      <strong>Tổng tiền:<?php echo number_format($this->cartTotal()); ?>₫</strong>
      <?php endif; ?>
    </td> 
    
   
   
   </tr> 
  </tfoot> 
  <?php endif; ?>
 </table>
</div>
</form>

<form style="width:100%" action="index.php" method="get">
    <input type="hidden" name ="controller" value="cart">
    <input type="hidden" name ="action" value="checkout">

    <div class="form-group">
        <label for="recipientName">Tên người nhận:</label>
        <input type="text" class="form-control" id="recipientName" name="name" required>
    </div>
    <div class="form-group">
        <label for="phoneNumber">Số điện thoại:</label>
        <input type="tel" class="form-control" id="phoneNumber" name="phone" pattern="[0-9]{10,11}" title="Số điện thoại phải có từ 10 đến 11 chữ số" required>
    </div>
    <div class="form-group">
        <label for="deliveryAddress">Địa chỉ nhận:</label>
        <input type="text" class="form-control" id="deliveryAddress" name="address" required>
    </div>
    <div class="form-group">
        <label for="paymentMethod">Phương thức thanh toán:</label>
        <select class="form-control" id="paymentMethod" name="payment_type" required>
            <option value="cod">Thanh toán khi nhận</option>
            <option value="vnpay">Thanh toán VNPay</option>
        </select>
    </div>
    <button type="submit" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></button>
</form>
 
</div>
<style type="text/css">
  .loc, .category-bottom,.category-top-left{
    display: none !important;
  }
    <style type="text/css">.table&amp;amp;gt;tbody&amp;amp;gt;tr&amp;amp;gt;td, .table&amp;amp;gt;tfoot&amp;amp;gt;tr&amp;amp;gt;td {  
vertical-align: middle;
}
 
@media screen and (max-width: 600px) { 
table#cart tbody td .form-control { 
width:20%; 
display: inline !important;
} 
 
.actions .btn { 
width:36%; 
margin:1.5em 0;
} 
 
.actions .btn-info { 
float:left;
} 
 
.actions .btn-danger { 
float:right;
} 
 
table#cart thead {
display: none;
} 
 
table#cart tbody td {
display: block;
padding: .6rem;
min-width:320px;
} 
 
table#cart tbody tr td:first-child {
background: #333;
color: #fff;
} 
 
table#cart tbody td:before { 
content: attr(data-th);
font-weight: bold; 
display: inline-block;
width: 8rem;
} 
 
table#cart tfoot td {
display:block;
} 
table#cart tfoot td .btn {
display:block;
}
}</style>
  </style>
   <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js" integrity="sha256-VAvG3sHdS5LqTT+5A/aeq/bZGa/Uj04xKxY8KM/w9EE=" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="DATN_CHIEN"
  agent-id="0123df46-f46a-48f4-9240-aad0d45cebce"
  language-code="vi"
></df-messenger>