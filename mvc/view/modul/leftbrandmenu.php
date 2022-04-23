<?php
$brandmodel=new BrandModel;
$brands=$brandmodel->getAll(['trash'=>0, 'status'=>1])
?>
<div class="card mt-2">
                <div class="card-header">
                  Tên Các Nhà Xuất Bản
                </div>
                <?php foreach ($brands as $brand) {?>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item"><a href="<?php echo BASE_URL?>index.php?req=product/productByBrand/<?php echo $brand['alias'].'/'.LIMIT.'/0'?>" class="text-decoration-none"><?php echo $brand['brandName']?></a></li>
                <?php }?>
                </ul>
            
</div>
