<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_Chien | Dashboard</title>
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../assets/admin/layout1/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../assets/admin/layout1/css/font-awesome.min.css">
    <!-- AdminLTE -->
    <link rel="stylesheet" href="../assets/admin/layout1/css/AdminLTE.min.css">
    <!-- AdminLTE Skins -->
    <link rel="stylesheet" href="../assets/admin/layout1/css/_all-skins.min.css">
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <!-- Your Custom Styles -->
    <link rel="stylesheet" href="../assets/admin/layout1/css/custom.css">
    <!-- load file ckeditor.js vao day de hien thi editor o text area -->
    <script type="text/javascript" src="../assets/ckeditor/ckeditor.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Header -->
    <header class="main-header">
        <a href="index2.html" class="logo">
            <span class="logo-mini"><b>H</b>VC</span>
            <span class="logo-lg"><b>MY COMPUTER</b></span>
        </a>
        <nav class="navbar navbar-static-top">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="../assets/admin/layout1/images/avt.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Hà Văn Chiến</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="../assets/admin/layout1/images/user2-160x160.jpg" class="img-circle" alt="User Image">
                                <p>Your profile<small>Web developer</small></p>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Sidebar -->
    <aside class="main-sidebar">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="../assets/admin/layout1/images/avt.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Hà Văn Chiến</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">LAOYOUT ADMIN</li>
                <li><a href="index.php?controller=categories"><i class="fa fa-th"></i> <span>Danh mục sản phẩm</span></a></li>
                <li><a href="index.php?controller=products"><i class="fa fa-th"></i> <span>Sản phẩm</span></a></li>
                <li><a href="index.php?controller=news"><i class="fa fa-th"></i> <span>Tin tức</span></a></li>
                <li><a href="index.php?controller=orders"><i class="fa fa-th"></i> <span>Đơn hàng</span></a></li>
                <li><a href="index.php?controller=Customer"><i class="fa fa-code"></i> <span>Quản lý khách hàng</span></a></li>
                <li><a href="index.php?controller=users"><i class="fa fa-code"></i> <span>Quản lý user</span></a></li>
                <li><a href="index.php?controller=statistic"><i class="fa fa-code"></i> <span>Thông kê tổng quan</span></a></li>

                <li><a href="index.php?controller=login&action=logout"><i class="fa fa-code"></i> <span>Đăng xuất</span></a></li>
            </ul>
        </section>
    </aside>

    <!-- Content Wrapper -->
    <div class="content-wrapper">
        <section class="content-header">
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <?php echo $this->view; ?>
        </section>
    </div>
    <!-- Footer -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.4.13-pre
        </div>
        <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">Admin_Chien</a>.</strong>
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <div class="tab-content">
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane" id="sidebar-settings"></div>
            </div>
        </div>
    </aside>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../assets/admin/layout1/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../assets/admin/layout1/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="../assets/admin/layout1/js/adminlte.min.js"></script>
</body>
</html>
