<?php require_once("files/main.php") ?>
<?php require_once("files/CategoryBar.php") ?>
<?php require_once("files/MediaContent.php") ?>

<?php
    if (!isset($_GET['page'])) {
        header("location:index.php?page=Home");
    }
?>

    