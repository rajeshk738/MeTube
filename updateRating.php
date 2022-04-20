<?php
require_once("other/main.php");
    if (isset($_POST["ratingButton"])){
    	$mediaId = $_POST["ratingButton"];
    	echo $mediaId;
		$ratecheck =  $con->prepare("SELECT * from userRating where userName='$loggedInUserName' and mediaId = '$mediaId'");
		$ratecheck->execute();
		$rateme = $_POST['rate'];
   		if ($ratecheck->rowCount() != 0){
   			$updaterating = $con->prepare("UPDATE userRating set ratedIndex='$rateme' where userName = '$loggedInUserName' and mediaId = '$mediaId'");
   			$updaterating->execute();
   		}
   		else{
   			$updaterating = $con->prepare("INSERT INTO userRating(userName, mediaId, ratedIndex) values ('$loggedInUserName', '$mediaId','$rateme')");
   			$updaterating->execute();
   		}
    }
    header('Location: ' . $_SERVER['HTTP_REFERER']);
?>
