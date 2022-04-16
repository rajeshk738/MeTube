<?php
ob_start();


session_start();

date_default_timezone_set("America/New_York");

try {
  $con = new PDO("mysql:dbname=today; host=localhost;", "root", "");
  // set the PDO error mode to exception
  $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}



?>
