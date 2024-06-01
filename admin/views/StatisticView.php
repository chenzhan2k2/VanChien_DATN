<?php 
$this->layoutPath = "Layout.php";
?>

<div class="col-md-12">
    <h1>Thống kê</h1>
    
    <div class="stat-container">
        <div class="stat-block">
            <h2>Người dùng</h2>
            <p>Tổng số: <?php echo $data['customer']; ?></p>
            <canvas id="userChart"></canvas>
        </div>
        
        <div class="stat-block">
            <h2>Sản phẩm</h2>
            <p>Tổng số: <?php echo $data['product']; ?></p>
            <canvas id="productChart"></canvas>
        </div>
        
        <div class="stat-block">
            <h2>Đơn hàng</h2>
            <p>Tổng số: <?php echo $data['order']; ?></p>
            <canvas id="orderChart"></canvas>
        </div>
        
        <div class="stat-block">
            <h2>Danh mục</h2>
            <p>Tổng số: <?php echo $data['category']; ?></p>
            <canvas id="categoryChart"></canvas>
        </div>
        
        <div class="stat-block">
            <h2>Lợi nhuận</h2>
            <p>Tổng số: <?php echo number_format($data['profit'], 2); ?> VNĐ</p>
            <canvas id="profitChart"></canvas>
        </div>
    </div>
</div>

<style>
.stat-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
}
.stat-block {
    flex: 1;
    min-width: 200px;
    max-width: 300px;
    margin-bottom: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    text-align: center;
}
.stat-block h2 {
    margin-top: 0;
}
canvas {
    width: 100%;
    height: 150px; /* Adjusted height for smaller charts */
}
</style>

<!-- Include Chart.js library -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
document.addEventListener('DOMContentLoaded', function () {
    // Users Chart
    var ctx = document.getElementById('userChart').getContext('2d');
    var userChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Người dùng'],
            datasets: [{
                label: 'Người dùng',
                data: [<?php echo $data['customer']; ?>],
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Products Chart
    var ctx = document.getElementById('productChart').getContext('2d');
    var productChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Sản phẩm'],
            datasets: [{
                label: 'Sản phẩm',
                data: [<?php echo $data['product']; ?>],
                backgroundColor: 'rgba(153, 102, 255, 0.2)',
                borderColor: 'rgba(153, 102, 255, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Orders Chart
    var ctx = document.getElementById('orderChart').getContext('2d');
    var orderChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Đơn hàng'],
            datasets: [{
                label: 'Đơn hàng',
                data: [<?php echo $data['order']; ?>],
                backgroundColor: 'rgba(255, 159, 64, 0.2)',
                borderColor: 'rgba(255, 159, 64, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Categories Chart
    var ctx = document.getElementById('categoryChart').getContext('2d');
    var categoryChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Danh mục'],
            datasets: [{
                label: 'Danh mục',
                data: [<?php echo $data['category']; ?>],
                backgroundColor: 'rgba(255, 206, 86, 0.2)',
                borderColor: 'rgba(255, 206, 86, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Profit Chart
    var ctx = document.getElementById('profitChart').getContext('2d');
    var profitChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Lợi nhuận (VNĐ)'],
            datasets: [{
                label: 'Lợi nhuận (VNĐ)',
                data: [<?php echo $data['profit']; ?>],
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
});
</script>
