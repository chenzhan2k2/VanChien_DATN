<!doctype html>
<html>
<head>
<title>Đăng ký</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="assets/frontend/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="assets/frontend/css/dangki.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
<style>
  body {
    background: url('https://png.pngtree.com/thumb_back/fw800/background/20230523/pngtree-large-black-cubes-moving-on-the-black-background-image_2606196.jpg') no-repeat center center fixed;
    background-size: cover;
  }
</style>
<script>
  function validateForm() {
    var email = document.forms["registrationForm"]["email"].value;
    var password = document.forms["registrationForm"]["password"].value;
    var phone = document.forms["registrationForm"]["phone"].value;

    if (!email.includes("@")) {
      alert("Email phải chứa '@'.");
      return false;
    }

    if (!/[!@#$%^&*(),.?":{}|<>]/.test(password)) {
      alert("Mật khẩu phải chứa ít nhất một ký tự đặc biệt.");
      return false;
    }

    if (!/^\d+$/.test(phone)) {
      alert("Số điện thoại chỉ được chứa chữ số.");
      return false;
    }

    return true;
  }
</script>
</head>
<body>
<h1 class="w3ls">My Computer Shop </h1>
<div class="content-w3ls" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
  <div class="content-agile1">
    <h2 class="agileits1">Welcome</h2>
    <p class="agileits2">to My Computer shop</p>
  </div>
  <div class="content-agile2">
    <form name="registrationForm" action="index.php?controller=account&action=registerPost" method="post" onsubmit="return validateForm()">
      <div class="form-control w3layouts"> 
        <input type="text" id="firstname" name="name" placeholder="Họ và tên" title="Please enter your First Name" required="">
      </div>

      <div class="form-control w3layouts">  
        <input type="text" id="email" name="email" placeholder="mail@example.com" title="Please enter a valid email" required="">
      </div>

      <div class="form-control agileinfo">  
        <input type="text" class="lock" name="address" placeholder="Address" id="password1" required="">
      </div>  

      <div class="form-control agileinfo">  
        <input type="text" class="lock" name="phone" placeholder="Phone" id="firstname" required="">
      </div>
      <div class="form-control agileinfo">  
        <input type="password" class="lock" name="password" placeholder="Mật khẩu" id="password2"required="">
      </div>
              
      <input type="submit" class="register" value="Register">
    </form>
    
    <ul class="social-agileinfo wthree2">
      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
      <li><a href="#"><i class="fa fa-youtube"></i></a></li>
      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
      <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
    </ul>
  </div>
  <div class="clear"></div>
</div>
</body>
</html>
