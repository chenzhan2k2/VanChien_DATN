<?php 
	trait OrdersModel{
		//ham liet ke danh sach cac ban ghi, co phan trang
		public function modelRead($recordPerPage){
			//lay tong to so ban ghi
			$total = $this->modelTotal();
			//tinh so trang
			$numPage = ceil($total/$recordPerPage);
			//lay so trang hien tai truyen tu url
			$page = isset($_GET["p"]) && $_GET["p"] > 0 ? $_GET["p"]-1 : 0;
			//lay tu ban ghi nao
			$from = $page * $recordPerPage;
			//thuc hien truy van
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orders order by id,status desc limit $from, $recordPerPage");
			//tra ve tat ca cac ban truy van duoc
			return $query->fetchAll();
		}
		//ham tinh tong so ban ghi
		public function modelTotal(){
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select id from orders");
			//lay tong so ban ghi
			return $query->rowCount();
			//---
		}
		//lay mot ban ghi table orders
		public function modelGetOrders($id){
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orders where id = $id");
			//tra ve mot ban ghi
			return $query->fetch();
			//---
		}


		//lay mot ban ghi trong table customers		
		public function modelGetCustomers($id){
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select * from customers where id = $id");
			//tra ve mot ban ghi
			return $query->fetch();
			//---
		}
		//lay mot ban ghi trong table products		
		public function modelGetProducts($id){
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where id = $id");
			//tra ve mot ban ghi
			return $query->fetch();
			//---
		}
		//xac nhan da giao hang
		public function modelDelivery($id){
			//---
			$conn = Connection::getInstance();
			$conn->query("update orders set status = 1 where id = $id");
		}

		public function modelCancel($id){
			//---
			$conn = Connection::getInstance();
			
			// Update orders status
			$updateOrderQuery = "UPDATE orders SET status = -1 WHERE id = :id";
			$stmt = $conn->prepare($updateOrderQuery);
			$stmt->bindParam(':id', $id);
			$stmt->execute();
		
			// Retrieve order details
			$orderDetailQuery = "SELECT product_id, number FROM orderdetails WHERE order_id = :id";
			$stmt = $conn->prepare($orderDetailQuery);
			$stmt->bindParam(':id', $id);
			$stmt->execute();
		
			// Process order details
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				$productId = $row['product_id'];
				$quantity = $row['number'];
		
				// Update product quantity
				$updateProductQuery = "UPDATE products SET soluong = soluong + :quantity WHERE id = :productId";
				$stmt = $conn->prepare($updateProductQuery);
				$stmt->bindParam(':quantity', $quantity);
				$stmt->bindParam(':productId', $productId);
				$stmt->execute();
			}
		}
		//lay danh sach cac san pham trong talbe orderdetails
		public function modelListOrderDetails($id){
			//---
			$conn = Connection::getInstance();
			$query = $conn->query("select * from orderdetails where order_id = $id");
			//tra ve mot ban ghi
			return $query->fetchAll();
			//---
		}
	}
 ?>