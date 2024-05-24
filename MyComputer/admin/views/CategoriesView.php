<?php 
    // Load file layout.php
    $this->layoutPath = "Layout.php";
?>
<div class="col-md-12">
    <div style="margin-bottom: 20px;">
        <a href="index.php?controller=categories&action=create" class="btn btn-primary">Add Category</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">List Category</div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th style="width: 150px;">Display on Homepage</th>
                            <th style="width:120px;">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($data as $rows): ?>
                            <tr>
                                <td><?php echo $rows->name ?></td>
                                <td style="text-align: center;">
                                    <?php if($rows->displayhomepage == 1): ?>
                                        <span class="fa fa-check text-success"></span>
                                    <?php else: ?>
                                        <span class="fa fa-times text-danger"></span>
                                    <?php endif; ?>
                                </td>
                                <td style="text-align:center;">
                                    <a href="index.php?controller=categories&action=update&id=<?php echo $rows->id; ?>" class="btn btn-xs btn-info">Update</a>
                                    <a href="index.php?controller=categories&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');" class="btn btn-xs btn-danger">Delete</a>
                                </td>
                            </tr>
                            <!-- Sub categories -->
                            <?php 
                                $dataSub = $this->modelListCategoriesSub($rows->id);
                             ?>
                            <?php foreach($dataSub as $rowsSub): ?>
                                <tr>
                                    <td style="padding-left: 30px;"><?php echo $rowsSub->name ?></td>
                                    <td style="text-align: center;">
                                        <?php if($rowsSub->displayhomepage == 1): ?>
                                            <span class="fa fa-check text-success"></span>
                                        <?php else: ?>
                                            <span class="fa fa-times text-danger"></span>
                                        <?php endif; ?>
                                    </td>
                                    <td style="text-align:center;">
                                        <a href="index.php?controller=categories&action=update&id=<?php echo $rowsSub->id; ?>" class="btn btn-xs btn-info">Update</a>
                                        <a href="index.php?controller=categories&action=delete&id=<?php echo $rowsSub->id; ?>" onclick="return window.confirm('Are you sure?');" class="btn btn-xs btn-danger">Delete</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
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
                        <li class="page-item"><a href="index.php?controller=categories&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                    <?php endfor; ?>
                </ul>
            </nav>
        </div>
    </div>
</div>
