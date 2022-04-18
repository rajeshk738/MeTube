 <?php require_once("files/main.php") ?>
<?php
    if(!isset($_GET["page"])){
        //$keywords = $_GET["term"];
        header("location:search.php?page=Search&keywords=".$_GET["keywords"]);
    }

    if($_GET["keywords"]) {
      $mediaTitle = "Search results for '".$_GET["keywords"]."'";
      $wor = $_GET['keywords'];
      $c = "SELECT * from wordSearch where word = '$wor';";
      $res = $con->query($c);

      if($res->rowCount() != 0){
        $query = "UPDATE wordSearch SET search_count = search_count+1 WHERE word = '$wor' ";
        $con->query($query);
      }
    }
    else {
      $mediaTitle = "No search Results, Use keywords to Search";
    }

    //$mediaTitle = "Search results for '".$_GET["keywords"]."'";
    if(isset($_GET["size"])){
        $size = $_GET["size"];
    } else {
        $size = "";
    }
?>



<div>
    <div style="display:flex; font-size: 20px; justify-content: center">
        <div>
            <a class="btn btn-secondary bt-sm" href='search.php?page=Search&keywords=<?php echo $_GET["keywords"]?>'>All</a>
            <a class="btn btn-secondary bt-sm" href='search.php?page=Search&keywords=<?php echo $_GET["keywords"]?>&size=0-100K'>0-100K</a>
            <a class="btn btn-secondary bt-sm" href='search.php?page=Search&keywords=<?php echo $_GET["keywords"]?>&size=100K-1000K'>100K-1000K</a>
            <a class="btn btn-secondary bt-sm" href='search.php?page=Search&keywords=<?php echo $_GET["keywords"]?>&size=>1000K'>>1000K </a>
        </div>
    </div>
</div>


<?php require_once("files/MediaOrder.php") ?>
