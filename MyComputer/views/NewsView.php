<?php 
  //load LayoutTrangChu.php
  $this->layoutPath = "LayoutTrangTrong.php";
 ?>
<h1 style="font-weight: bold; color: red">Tin tức</h1>
<hr style="background: red;">
<div class="wrapper-blog"> 
  <!-- list news -->
  <div class="row">
  <?php foreach($data as $rows): ?>
    <div class="col-md-6 article" style="height: 500px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"> 
      <h3><a href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>"><?php echo $rows->name; ?></a></h3>
      <p class="date"><?php echo $rows->description; ?></p>
      <a href="index.php?controller=news&action=detail&id=<?php echo $rows->id; ?>" class="image"> <img src="assets/upload/news/<?php echo $rows->photo; ?>" class="img-responsive"> </a>
    </div>
    
  <?php endforeach; ?>
  </div>
  <!-- end list news -->
  <ul class="pagination pull-right" style="margin-top: 0px !important">
    <li><a href="#">Trang</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
  </ul>
</div>
<style type="text/css"> 
   .loc, .category-bottom,.category-top-left{
    display: none !important;
  }
</style>
<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="DATN_CHIEN"
  agent-id="0123df46-f46a-48f4-9240-aad0d45cebce"
  language-code="vi"
></df-messenger>