<?php
    require_once("other/home.php");
    $vidId = (int)$_GET['Id'];
    $checkquery = $con->prepare("SELECT * from favouriteList where userName='$loggedInUserName' and videoId = '$vidId'");
    $checkquery->execute();
    if ($checkquery->rowCount() > 0) {
        $query = $con->prepare("DELETE FROM favouriteList WHERE userName='$loggedInUserName' and videoId = '$vidId'");
        $query->execute();
        header("location:viewMedia.php?Id=$vidId&delete=success");
    } else {
        echo "Video is already not in favorites";
    }
?>
