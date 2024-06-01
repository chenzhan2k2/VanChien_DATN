<!-- load file layout chung -->
<?php $this->layoutPath = "Layout.php"; ?>
<div class="col-md-12">    
    <div class="panel panel-primary">
        <div class="panel-heading">List Orders</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Date</th>                  
                    <th style="width:150px; text-align: center;">Status</th>
                    <th style="width:150px;">Delivery</th>
                </tr>
                <?php foreach($listRecord as $rows): ?>
                <?php   
                    //lay ban ghi customer
                    $customer = $this->modelGetCustomers($rows->customer_id);
                 ?>
                 <tr>
                     <td><?php echo $rows->cname; ?></td>
                     <td><?php echo $rows->phone; ?></td>
                     <td><?php echo $rows->address; ?></td>

                     <td>
                        <?php 
                        $date = Date_create($rows->create_at);
                        echo Date_format($date, "d/m/Y");
                        ?>                            
                        </td>
                     <td style="text-align: center;">
                         <?php if($rows->status == 1): ?>
                            <span class="label label-primary">Đã giao hàng</span>
                         <?php else: ?>
                            <span class="label label-danger">Chưa giao hàng</span>
                         <?php endif; ?>
                     </td>
                     <td style="text-align: center;">
    <?php if($rows->status == -1): ?>
        <span style="color:red">Đã hủy</span>
    <?php else: ?>
        <a href="index.php?controller=orders&action=detail&id=<?php echo $rows->id; ?>" class="label label-success">Chi tiết</a>
        <?php if($rows->status == 0): ?>
            <a href="index.php?controller=orders&action=delivery&id=<?php echo $rows->id; ?>" class="label label-info">Giao hàng</a>
        <?php endif; ?>
        <a href="index.php?controller=orders&action=cancel&id=<?php echo $rows->id; ?>" class="label label-danger">Hủy</a>
    <?php endif; ?>
</td>
                 </tr>
                <?php endforeach; ?>
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
            </style>
            <ul class="pagination">
                <li class="page-item">
                    <?php for($i = 1; $i <= $numPage; $i++): ?>
                    <a href="index.php?controller=orders&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a>
                    <?php endfor; ?>
                </li>
            </ul>
        </div>
    </div>
</div>