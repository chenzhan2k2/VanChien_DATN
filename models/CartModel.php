<?php
	trait CartModel{		
		public function cartAdd($id){
		    if(isset($_SESSION['cart'][$id])){
		        //nếu đã có sp trong giỏ hàng thì số lượng lên 1
		        $_SESSION['cart'][$id]['number']++;
		    } else {
		        //lấy thông tin sản phẩm từ CSDL và lưu vào giỏ hàng
		        //$product = db::get_one("select * from products where id=$id");
		        //---
		        //PDO
		        $conn = Connection::getInstance();
		        $query = $conn->prepare("select * from products where id=:id");
		        $query->execute(array("id"=>$id));
		        $query->setFetchMode(PDO::FETCH_OBJ);
		        $product = $query->fetch();
		        //---
		        
		        $_SESSION['cart'][$id] = array(
		            'id' => $id,
		            'name' => $product->name,
		            'photo' => $product->photo,
		            'number' => 1,
		            'price' => $product->price
		        );
		    }
		}
		/**
		 * Cập nhật số lượng sản phẩm
		 * @param int
		 * @param int
		 */
		public function cartUpdate($id, $number){
		    if($number==0){
		        //xóa sp ra khỏi giỏ hàng
		        unset($_SESSION['cart'][$id]);
		    } else {
		        $_SESSION['cart'][$id]['number'] = $number;
		    }
		}
		/**
		 * Xóa sản phẩm ra khỏi giỏ hàng
		 * @param int
		 */
		public function cartDelete($id){
		    unset($_SESSION['cart'][$id]);
		}
		/**
		 * Tổng giá trị giỏ hàng
		 */
		public function cartTotal(){
		    $total = 0;
		    foreach($_SESSION['cart'] as $product){
		        $total += $product['price'] * $product['number'];
		    }
		    return $total;
		}
		/**
		 * Số sản phẩm có trong giỏ hàng
		 */
		public function cartNumber(){
		    $number = 0;
		    foreach($_SESSION['cart'] as $product){
		        $number += $product['number'];
		    }
		    return $number;
		}
		/**
		 * Danh sách sản phẩm trong giỏ hàng
		 */
		public function cartList(){
		    return $_SESSION['cart'];
		}
		/**
		 * Xóa giỏ hàng
		 */
		public function cartDestroy(){
		    $_SESSION['cart'] = array();
		}
		//=============
		//checkout
		public function cartCheckOut(){
		
			date_default_timezone_set('Asia/Ho_Chi_Minh');

			$conn = Connection::getInstance();
			$name = $_REQUEST['name'];
			$phone = $_REQUEST['phone'];
			$address = $_REQUEST['address'];
			$payment = $_REQUEST['payment_type'];


			$total = 0;
			foreach($_SESSION["cart"] as $product){
			
				$productCheck = $conn->prepare("SELECT soluong FROM products WHERE id = ?");
				$productCheck->execute([$product['id']]);
				$productRow = $productCheck->fetch(PDO::FETCH_ASSOC);

				$productQuantity = $productRow['soluong'];

				if ($productQuantity < $product['number']) {
					echo "<script>alert('Số lượng sản phẩm trong kho đã hết'); window.history.back();</script>";
					exit();
				}

				$total += $product['price'] * $product['number'];
				// $query = $conn->prepare("insert into orderdetails set order_id=:order_id, product_id=:product_id, price=:price, number=:number");
				// $query->execute(array("order_id"=>$order_id,"product_id"=>$product["id"],"price"=>$product["price"],"number"=>$product["number"]));
			}
			
			if($payment == "vnpay") {
				$order = 'shop_'.random_int(1000, 999999);

				$vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
				$vnp_Returnurl = "http://localhost/MyComputer/index.php?controller=cart&action=checkoutDone?name=".$name."&phone=".$phone."&address=".$address."";
				$vnp_TmnCode = "2TNEXMQ8"; //Mã website tại VNPAY
				$vnp_HashSecret = "NTELFBCCDPWBIXLZQRTUCNLOYNVFNANA"; //Chuỗi bí mật
				$vnp_TxnRef = $order; //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
				$vnp_OrderInfo = "Thanh toán hóa đơn".$order;
				$vnp_OrderType = "Thanh toán hóa đơn";
				$vnp_Amount = $total * 100;
				$vnp_Locale = "VN";
				$vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
				print($vnp_IpAddr);
				$inputData = array(
					"vnp_Version" => "2.1.0",
					"vnp_TmnCode" => $vnp_TmnCode,
					"vnp_Amount" => $vnp_Amount,
					"vnp_Command" => "pay",
					"vnp_CreateDate" => date('YmdHis'),
					"vnp_CurrCode" => "VND",
					"vnp_IpAddr" => $vnp_IpAddr,
					"vnp_Locale" => $vnp_Locale,
					"vnp_OrderInfo" => $vnp_OrderInfo,
					"vnp_OrderType" => $vnp_OrderType,
					"vnp_ReturnUrl" => $vnp_Returnurl,
					"vnp_TxnRef" => $vnp_TxnRef,
				);
				// dd($inputData);
		
				if (isset($vnp_BankCode) && $vnp_BankCode != "") {
					$inputData['vnp_BankCode'] = $vnp_BankCode;
				}
		
				ksort($inputData);
				$query = "";
				$i = 0;
				$hashdata = "";
				foreach ($inputData as $key => $value) {
					if ($i == 1) {
						$hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
					} else {
						$hashdata .= urlencode($key) . "=" . urlencode($value);
						$i = 1;
					}
					$query .= urlencode($key) . "=" . urlencode($value) . '&';
				}
		
		
				$vnp_Url = $vnp_Url . "?" . $query;
				
				if (isset($vnp_HashSecret)) {
					$vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret);//
					$vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
				}

				echo '<script>document.location.href= "'.$vnp_Url.'"</script>';

				exit();
			}else{
				$customer_id = $_SESSION["customer_id"];
				//echo $_SESSION["customer_id"];
				//---
				//---
				//insert ban ghi vao orders, lay order_id vua moi insert
				$query = $conn->prepare("insert into orders set customer_id=:customer_id, cname=:cname, phone=:phone, address=:address, create_at=now()");
				$query->execute(array("customer_id"=>$customer_id,"phone"=>$phone,"cname"=>$name,"address"=>$address));
		

				//lay id vua moi insert
				$order_id = $conn->lastInsertId();
	
				//---
				//duyet cac ban ghi trong session array de insert vao orderdetails
				foreach($_SESSION["cart"] as $product){
					$query = $conn->prepare("insert into orderdetails set order_id=:order_id, product_id=:product_id, price=:price, number=:number");
					$query->execute(array("order_id"=>$order_id,"product_id"=>$product["id"],"price"=>$product["price"],"number"=>$product["number"]));
					
					$productUpdateQuery = $conn->prepare("UPDATE products SET soluong = soluong - :number WHERE id = :product_id");
					$productUpdateQuery->execute(array("number" => $product["number"], "product_id" => $product["id"]));
				}
				//xoa gio hang
				unset($_SESSION["cart"]);
	
				echo "<script>alert('Thanh toán thành công'); document.location.href='http://localhost/MyComputer/index.php?controller=cart'</script>";	
					}

			

			
		}

		function cartCheckOutDone(){
			$conn = Connection::getInstance();
			//lay id vua moi insert
			$customer_id = $_SESSION["customer_id"];
			$name = $_REQUEST['name'];
			$phone = $_REQUEST['phone'];
			$address = $_REQUEST['address'];
			//echo $_SESSION["customer_id"];
			//---
			//---
			//insert ban ghi vao orders, lay order_id vua moi insert
			$query = $conn->prepare("insert into orders set customer_id=:customer_id, name=:name, phone=:phone, address=:address, create_at=now()");
			$query->execute(array("customer_id"=>$customer_id,"phone"=>$phone,"cname"=>$name,"address"=>$address));

			//lay id vua moi insert
			$order_id = $conn->lastInsertId();

			//---
			//duyet cac ban ghi trong session array de insert vao orderdetails
			foreach($_SESSION["cart"] as $product){
				$query = $conn->prepare("insert into orderdetails set order_id=:order_id, product_id=:product_id, price=:price, number=:number");
				$query->execute(array("order_id"=>$order_id,"product_id"=>$product["id"],"price"=>$product["price"],"number"=>$product["number"]));
				
				$productUpdateQuery = $conn->prepare("UPDATE products SET soluong = soluong - :number WHERE id = :product_id");
        		$productUpdateQuery->execute(array("number" => $product["number"], "product_id" => $product["id"]));
			}
			//xoa gio hang
			unset($_SESSION["cart"]);

			echo "<script>alert('Thanh toán thành công'); document.location.href='http://localhost/MyComputer/index.php?controller=cart'</script>";
			exit();
		}
		//=============
	}	
?>