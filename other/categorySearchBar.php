
<html>
<head>
<style>
element.style {
    touch-action: pan-y;
}

div.scrollmenu {
  background-color: white;
  overflow: auto;
  white-space: nowrap;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 12px;
  text-decoration: none;
}

div.scrollmenu a:hover {
  background-color: #777;
}
</style>
</head>
</html>

<?php
require_once("connection.php");
require_once("Classes/UserDetailsInfo.php");
require_once("Classes/Media.php");
require_once("Classes/MediaGridFile.php");
require_once("Classes/MediaFiles.php");
if(isset($_GET["category"])){
    $category = $_GET["category"];
} else {
    $category = "All";

}
?>

<div>
    <div style="display:flex; font-size: 18px; justify-content: flex-start">
        <div>
            <a class="btn btn-dark btn-sm" href='index.php?page=Home'>All</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Music'>Music</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Animal'>Animal</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Sports'>Sports</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Travel'>Travel</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Education'>Education</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Human'>Human</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Cars'>Cars</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Bikes'>Bikes</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Food'>Food</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Movie'>Movie</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Cooking'>Cooking</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Nature'>Nature</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Animation'>Animation</a>
            <a class="btn btn-secondary btn-sm" href='index.php?page=Home&category=Other'>Other</a>

        </div>
    </div>
</div>

<?php
require("mediaSort.php");
?>
