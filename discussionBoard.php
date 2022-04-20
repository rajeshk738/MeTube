<?php
require_once("other/connection.php");
require_once("other/main.php");
$name= $loggedInUser->getusername();
?>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/favicon.png" type="image/png" sizes="16x16">
<title>forum</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="main.js"></script>
</head>

<div class="container">

<div class="panel panel-default" style="margin-top:50px">
  <div class="panel-body">

    <form action='save.php' method="post">
        <input type="hidden" id="id" name="id" value="0">

	  <label for="name">Name:</label>
	  <input type='text' class='form-control' name='name'required>


      <label for="msg">Question:</label>
      <textarea class="form-control" rows="5" name="msg" required></textarea>

	 <input type="button" class="btn btn-primary" value="Submit">
  </form>

</div>
</div>
