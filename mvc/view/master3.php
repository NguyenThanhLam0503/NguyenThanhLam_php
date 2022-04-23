<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book Store</title>
  <link rel="stylesheet" href="<?php echo BASE_URL?>public/css/bootstrap.min.css" >
  <script src="<?php echo BASE_URL?>public/js/popper.min.js"></script>
  <script src="<?php echo BASE_URL?>public/js/bootstrap.min.js" ></script>

  <script src="https://kit.fontawesome.com/0d447503d1.js" crossorigin="anonymous"></script>
</head>
<body>
<header class="container bg-light">
    <div class="row">
        <div class="col-md-4"><img src="<?php echo BASE_URL?>public/img/NGUYENTHANHLAM_logo.jpg" style='width:120px;height:120px' alt="brand"></div>
        <div class="col-md-4"></div>
          
    </div>

</header>
<div class="container">
<?php require_once PATH_TO_VIEW.$view.'.php' ?>
</div>


   <footer class="container-fluid row bg-dark">
   @copyright 2020
    </footer>



</body>
</html>