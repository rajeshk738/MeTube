<?php require_once("other/main.php") ?>
<?php require_once("other/CategoryBar.php") ?>
<?php require_once("other/MediaContent.php") ?>

<?php
    if (!isset($_GET['page'])) {
        header("location:index.php?page=Home");
    }
?>
