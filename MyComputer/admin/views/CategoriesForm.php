<?php 
    $this->layoutPath = "Layout.php";
?>
<div class="col-md-12">  
    <div class="panel panel-primary">
        <div class="panel-heading">Add/Edit Category</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $action; ?>">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" value="<?php echo isset($record->name) ? $record->name : ""; ?>" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="parent">Parent:</label>
                    <?php 
                        $categories = $this->modelListCategories(isset($record->id) ? $record->id : 0);
                     ?>
                     <select name="parent_id" class="form-control">
                        <option value="0">None</option>
                        <?php foreach($categories as $rows): ?>
                            <option <?php if(isset($record->parent_id) && $record->parent_id == $rows->id): ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->name; ?></option>
                        <?php endforeach; ?>
                     </select>
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" <?php if(isset($record->displayhomepage) && $record->displayhomepage == 1): ?> checked <?php endif; ?> name="displayhomepage" id="displayhomepage"> Display this category on homepage
                        </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Process</button>
            </form>
        </div>
    </div>
</div>
