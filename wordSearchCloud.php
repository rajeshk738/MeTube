<?php
require_once("other/connection.php");
require_once("other/home.php");

$query = $con->prepare("SELECT * FROM wordSearch");
$query->execute();

echo "<div style = 'font-size: 20px; text-align: center;'>
           <strong>Word Search Cloud</strong>
      </div>";
echo "<div>";


while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
    $keyword = $row['word'];
    $count = $row['search_count'] + 10;
    if ($count > 100) {
        $count = 100;
    }
    echo "<marquee direction='down' width='250' height='200' behavior='alternate' style='border:light'>
  <marquee behavior='alternate'>
    <div style = 'font-size:".$count."px'>".$keyword."&nbsp;&nbsp;&nbsp;&nbsp;</div>
  </marquee>
</marquee>";
    //echo "<marquee behavior= 'alternate'> <div style = 'font-size:".$count."px'>".$keyword."&nbsp;&nbsp;&nbsp;&nbsp;</div> </marquee>";
}
echo "</div>";
?>
