<?php
  $products=$data['products'];
  $paging=$data['paging'];
  $totalRecords=$data['totalRecords']
?>
<div class="container">
    <div class="row">
    <?php echo "Tổng số sản phẩm tìm thấy: ". $totalRecords. "Sản phẩm . ";?>
    </div>
    <div class="row">



        <?php
              foreach($products as $product){
   
            ?>

        <div class="col-md-3 col-sm-6 text-center card">
            <div class="card">
                <img src="<?php echo BASE_URL ?>public/upload/<?php echo $product['Image']?>" class="card-img-top"
                    alt="hinhsp">
                <div class="alert alert-success">
                    <p><i class=" fa fa-star-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                    </p><a href="<?php echo BASE_URL.'product/productDetail/'.$product['Alias']?>"
                        class="text-decoration-none fs-5 fw-bold"> <?php echo $product['productName'];?></a><br>
                    <?php if($product['salePrice']!="") { ?>
                    <span
                        class="text-decoration-line-through"><?php echo number_format($product['Price'],2).'$'?></span>
                    <span> - </span> <span
                        class="fw-bold fs-5 text-danger"><?php echo number_format($product['salePrice'],2).'$'?></span>
                    <?php }
          else {?>
                    <span
                        class="text-decoration-line-through"><?php echo number_format($product['price'],2).'$'?></span>
                    < <?php }?> <a
                        href="<?php echo BASE_URL?>cart/add/<?php echo $product['productId'] ?>/<?php echo $product['productName'] ?>/<?php if($product['salePrice']<>0) echo $product['salePrice']; else echo $product['Price'] ?>"
                        class="btn btn-primary">
                        Thêm vào giỏ hàng
                        </a>
                      
                </div>
            </div>
        </div>

        <?php
              }
            ?>
    </div>
    <div class=row>
        <?php 
            $paging->createLinks();
          ?>
    </div>
</div>