<?php
ob_start();


session_start();

date_default_timezone_set("America/New_York");

try {
  $con = new PDO("mysql:dbname=today_update_apr20; host=localhost;", "root", "");     
  $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}



?>
