<?php
	require_once("other/home.php");
	$vidId=(int)$_GET['Id'];
	$checkquery = $con -> prepare("SELECT * from favouriteList where userName='$loggedInUserName' and videoId = '$vidId'");
	$checkquery -> execute();
	if($checkquery->rowCount()==0){
    	$query = $con -> prepare("INSERT into favouriteList (videoId, userName) VALUES ('$vidId', '$loggedInUserName')");
        $query->execute();
        header("location:viewMedia.php?Id=$vidId&add=success");
    }
    else{
    	echo"Video is already in favorites";
    }
?>
