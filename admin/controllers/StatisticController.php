<?php

class StatisticController extends Controller {
    public function index() {
        $conn = Connection::getInstance();

        // Lấy số lượng khách hàng
        $query = $conn->query("SELECT * FROM customers");
        $user = $query->rowCount();

        // Lấy số lượng sản phẩm
        $query2 = $conn->query("SELECT * FROM products");
        $product = $query2->rowCount();

        // Lấy số lượng đơn hàng
        $query3 = $conn->query("SELECT * FROM orders");
        $order = $query3->rowCount();

        // Lấy số lượng danh mục (có thể là số lượng đơn hàng nếu không có bảng category)
        $query4 = $conn->query("SELECT * FROM orders");
        $category = $query4->rowCount();

        // Tính tổng doanh thu
        $query5 = $conn->query("SELECT SUM(number * price) as total_sales FROM orderdetails");
        $profitRow = $query5->fetch(PDO::FETCH_ASSOC);
        $profit = $profitRow['total_sales'];

        // Chuẩn bị dữ liệu để truyền vào view
        $data['customer'] = $user;
        $data['product'] = $product;
        $data['order'] = $order;
        $data['category'] = $category;
        $data['profit'] = $profit;

        // Tải view và truyền dữ liệu
        $this->loadView("StatisticView.php", ['data' => $data]);
    }
}
?>
