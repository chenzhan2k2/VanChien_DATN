<?php

//load LayoutTrangTrong.php
$this->layoutPath = "LayoutTrangTrong.php";
?>
<div class="template-customer" style="width: 1000px;">
  <h1>Lịch sử đơn hàng</h1>

  <?php if (!empty($orders)) : ?>
    <?php
    $groupedOrders = [];
    foreach ($orders as $order) {
      $order_id = $order['order_id'];
      if (!array_key_exists($order_id, $groupedOrders)) {
        $groupedOrders[$order_id] = [
          'order_id' => $order['order_id'],
          'create_at' => $order['create_at'],
          'status' => $order['status'],
          'items' => []
        ];
      }
      $groupedOrders[$order_id]['items'][] = [
        'product_id' => $order['product_id'],
        'name' => $order['name'],
        'photo' => $order['photo'],
        'price' => $order['price'],
        'number' => $order['number'],
        'total_price' => $order['price'] * $order['number']
      ];
    }
    ?>
    <?php foreach ($groupedOrders as $groupedOrder) : ?>
      <div class="order">
        <h3>Order ID: <?php echo $groupedOrder['order_id']; ?></h3>
        <p>Ngày đặt: <?php echo $groupedOrder['create_at']; ?></p>
        <p>Trạng thái: <?php echo ($groupedOrder['status'] == 0) ? 'Đã tạo' : 'Đang giao hàng'; ?></p> <!-- Thay đổi ở đây -->
        <table>
          <thead>
            <tr>
              <th>Product ID</th>
              <th>Name</th>
              <th>Photo</th>
              <th>Price</th>
              <th>Number</th>
              <th>Total Price</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($groupedOrder['items'] as $item) : ?>
              <tr>
                <td><?php echo $item['product_id']; ?></td>
                <td><?php echo $item['name']; ?></td>
                <td><img src="<?php echo("assets/upload/products/". $item['photo'])?>" alt="<?php echo $item['name']; ?>"></td>
                <td><?php echo $item['price']; ?></td>
                <td><?php echo $item['number']; ?></td>
                <td><?php echo $item['total_price']; ?></td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    <?php endforeach; ?>
  <?php else : ?>
    <p>Không có đơn hàng nào.</p>
  <?php endif; ?>

</div>
<style type="text/css">
  .loc,
  .category-bottom,
  .category-top-left {
    display: none !important;
  }
  body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

/* Style cho phần container của danh sách đơn hàng */
.template-customer {
  width: 100%;
  max-width: 1200px;
  margin: 20px auto;
  padding: 20px;
  background-color: #f8f8f8;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Style cho tiêu đề */
.template-customer h1 {
  margin-bottom: 20px;
  font-size: 24px;
  color: #333;
}

/* Style cho từng đơn hàng */
.order {
  margin-bottom: 30px;
  border: 1px solid #ccc;
  padding: 20px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Style cho tiêu đề của từng đơn hàng */
.order h3 {
  margin-bottom: 10px;
  font-size: 18px;
  color: #333;
}

/* Style cho bảng thông tin chi tiết đơn hàng */
.order table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 10px;
}

/* Style cho header của bảng */
.order th {
  background-color: #f2f2f2;
  padding: 10px;
  text-align: left;
}

/* Style cho mỗi dòng của bảng */
.order td {
  padding: 10px;
  border-top: 1px solid #ddd;
}

/* Style cho ảnh sản phẩm */
.order img {
  max-width: 100px;
  height: auto;
  border-radius: 4px;
}

/* Style cho footer của bảng */
.order tfoot {
  font-weight: bold;
}

/* Style cho thông báo khi không có đơn hàng */
.no-orders {
  font-size: 16px;
  color: #888;
  margin-top: 20px;
}
</style>