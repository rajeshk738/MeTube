<?php
    require_once("other/home.php");

    $vidId=$_POST['downloadButton'];
    //$query=$con->prepare("select filepath from videos where id='$vidId'");
    $query=$con->prepare("select filepath from media where id='$vidId'");
    $query->execute();

    $filePath=$query->fetchColumn();

    echo "<div class='text-center'><a href='$filePath' download><button class='btn btn-lg btn-secondary'>Click Me to Download</button></a></div>";


?>
