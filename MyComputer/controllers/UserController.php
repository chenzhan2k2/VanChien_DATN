<?php 
	class UserController extends Controller{
		public function index(){
			$cusId = $_SESSION['customer_id'];
			if($cusId == null){
				header('Location: index.php?controller=account&action=login');
				exit();
			}
			
			$conn = Connection::getInstance();
		
			$query = $conn->prepare("
				SELECT orders.id AS order_id, orders.create_at, orders.status, 
					   orderdetails.product_id, orderdetails.number, orderdetails.price,
					   products.name, products.photo,products.price
				FROM orders
				JOIN orderdetails ON orders.id = orderdetails.order_id
				JOIN products ON orderdetails.product_id = products.id
				WHERE orders.customer_id = :customer_id
			");
		
			// Bind giá trị cho tham số :customer_id trong truy vấn
			$query->bindParam(":customer_id", $cusId, PDO::PARAM_INT);
		
			// Thực thi truy vấn
			$query->execute();
		
			// Lấy kết quả truy vấn
			$orders = $query->fetchAll(PDO::FETCH_ASSOC);

		
			// Hiển thị kết quả truy vấn bằng cách truyền dữ liệu vào view
			$this->loadView("UserView.php", array("orders" => $orders));
		}
	}
 ?>