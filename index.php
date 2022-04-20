<?php require_once("other/home.php") ?>
<?php require_once("other/categorySearchBar.php") ?>
<?php require_once("other/mediaFiles.php") ?>

<?php
    if (!isset($_GET['page'])) {
        header("location:index.php?page=Home");
    }
?>
