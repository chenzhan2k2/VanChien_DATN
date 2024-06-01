<?php 
	trait AccountModel{
		public function modelRegister(){
			$name = $_POST["name"];
			$email = $_POST["email"];
			$address = $_POST["address"];
			$phone = $_POST["phone"];
			$password = $_POST["password"];
			//kiem tra neu email khong ton tai trong table customers thi insert
			$conn = Connection::getInstance();
			$check = $conn->prepare("select id from customers where email=:var_email");
			$check->execute(array("var_email"=>$email));
			if($check->rowCount() == 0){
				$password = md5($password);
				$query = $conn->prepare("insert into customers set name=:var_name,email=:var_email,address=:var_address,phone=:var_phone,password=:var_password");
				$query->execute(array("var_name"=>$name,"var_email"=>$email,"var_address"=>$address,"var_phone"=>$phone,"var_password"=>$password));
				//di chuyen den trang login
				header("location:index.php?controller=account&action=login&notify=success");
			}else
				header("location:index.php?controller=account&action=register&notify=exists");
		}
		public function modelLogin(){
			$email = $_POST["email"];
			$password = $_POST["password"];
			$password = md5($password);
			$conn = Connection::getInstance();
			$query = $conn->query("select * from customers where email='$email'");
			$result = $query->fetch();
            if(isset($result->email))
              {if($result->password == $password)
         	   	{
         	   		$_SESSION["customer_email"] = $email;
         	   	    $_SESSION["customer_id"] = $result->id;  
					$_SESSION['alert'] = '<script>alert("Đăng nhập thành công!")</script>';
					header('Location: /MyComputer/');
				}
         	    
              else
              {header("location:index.php?controller=account&action=login");}
            }
            else
            {   
            	header("location:index.php?controller=account&action=login");
            }  
		}
	}
 ?>