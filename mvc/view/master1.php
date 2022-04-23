<?php require_once PATH_TO_MODUL.'header.php'; ?>
<?php require_once PATH_TO_MODUL.'slide.php'; ?>


<div class="container row">
    
        <div class="col-md-3">
            <?php require_once PATH_TO_MODUL.'leftcategorymenu.php'?>
            <?php require_once PATH_TO_MODUL.'leftbrandmenu.php'?>
        </div>

        <div class="col-md-9">
            <?php
              include_once PATH_TO_VIEW.$view.'.php';
            ?>
        </div>
    </div>
</div>

<footer class="container-fluid bg-dark">
    <div class="row">
        <?php require_once PATH_TO_MODUL.'bottommenu1.php'; ?>
        <?php require_once PATH_TO_MODUL.'bottommenu2.php'; ?>

        <div class="col-md-2 p-5">
            <p class="text-primary">Liên hệ qua:</p><i class="fab fa-facebook-square text-white-50"></i>
            <i class="fab fa-instagram text-white-50"></i>
            <i class="fab fa-google text-white-50"></i>
        </div>
    </div>
</footer>

</body>

</html>