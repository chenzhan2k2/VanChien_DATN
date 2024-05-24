<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="../assets/admin/layout1/css/bootstrap.min.css">
	<style>
		body {
			background-color: #f8f9fa;
		}
		.container {
			margin-top: 80px;
		}
		.panel-primary {
			border-color: #007bff;
			box-shadow: 0px 0px 10px 0px #888888;
		}
		.panel-heading {
			background-color: #007bff;
			color: white;
			text-align: center;
			padding: 20px 0;
			font-weight: bold;
			border-bottom: 2px solid #0056b3;
			border-radius: 5px 5px 0 0;
		}
		.panel-body {
			padding: 30px;
		}
		.form-group {
			margin-bottom: 20px;
		}
		.form-control {
			border-radius: 20px;
		}
		.btn-login {
			border-radius: 20px;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">Login</div>
					<div class="panel-body">
						<form method="post" action="index.php?controller=login&action=login">
							<div class="form-group">
								<input type="email" id="email" name="email" required class="form-control" placeholder="Email">
							</div>
							<div class="form-group">
								<input type="password" id="password" name="password" required class="form-control" placeholder="Password">
							</div>
							<div class="form-group text-center">
								<input type="submit" value="Login" class="btn btn-primary btn-login"> 
								<input type="reset" value="Reset" class="btn btn-danger btn-login">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
