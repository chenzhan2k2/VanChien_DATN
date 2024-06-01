<?php 
    // Load file layout.php
    $this->layoutPath = "Layout.php";
?>
<div class="col-md-12">
    <div style="margin-bottom: 20px;">
        <a href="index.php?controller=products&action=create" class="btn btn-primary">Add Products</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">List Products</div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th style="width: 100px;">Photo</th>
                            <th>Name</th>
                            <th style="width:150px;">Category</th>
                            <th style="width: 70px;">Price</th>
                            <th style="width: 70px;">Quantity</th>

                            <th style="width: 70px;">Discount</th>
                            <th style="width:70px;">Hot</th>
                            <th style="width:120px;">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($data as $rows): ?>
                            <tr>
                                <td style="text-align: center;">
                                    <?php if(file_exists("../assets/upload/products/".$rows->photo)): ?>
                                        <img src="../assets/upload/products/<?php echo $rows->photo; ?>" style="width: 100px;">
                                    <?php endif; ?>
                                </td>
                                <td><?php echo $rows->name ?></td>
                                <td><?php echo $this->getCategory($rows->category_id); ?></td>
                                <td style="text-align: center;"><?php echo number_format($rows->price); ?></td>
                                <td style="text-align: center;"><?php echo ($rows->soluong); ?></td>

                                <td style="text-align: center;"><?php echo $rows->discount; ?></td>
                                <td style="text-align: center;">
                                    <?php if($rows->hot == 1): ?>
                                        <span class="fa fa-check text-success"></span>
                                    <?php else: ?>
                                        <span class="fa fa-times text-danger"></span>
                                    <?php endif; ?>
                                </td>
                                <td style="text-align:center;">
                                    <a href="index.php?controller=products&action=update&id=<?php echo $rows->id; ?>" class="btn btn-xs btn-info">Update</a>
                                    <a href="index.php?controller=products&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');" class="btn btn-xs btn-danger">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <style type="text/css">
                .pagination { padding: 0px; margin: 0px; }
            </style>
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a href="#" class="page-link">Page</a>
                    </li>
                    <?php for($i = 1; $i <= $numPage; $i++): ?>
                        <li class="page-item"><a href="index.php?controller=products&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                    <?php endfor; ?>
                </ul>
            </nav>
        </div>
    </div>
</div>
