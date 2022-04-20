
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.dropbtn {
  background-color: grey;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
</head>
</html>

<?php
require_once("connection.php");
require_once("Classes/UserDetailsInfo.php");
require_once("Classes/Media.php");
require_once("Classes/MediaGridFile.php");
require_once("Classes/MediaFiles.php");
?>
<div >
    <div>
        <p  style="text-align: center; font-size: 20px;"><?php echo $mediaTitle ?> </p>
    </div>

    <div style="display:flex; align-items: center; ">

        <div class="dropdown">
          <button class="dropbtn">Sort</button>
          <div class="dropdown-content">
            <ul aria-label="Sorted By:" class="nav nav-tabs justify-content-end" id="pills-tab-order" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="pills-Title-tab" data-bs-toggle="tab" data-bs-target="#pills-Title" type="button" role="tab" aria-controls="pills-Title" aria-selected="true">Name</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-Views-tab" data-bs-toggle="tab" data-bs-target="#pills-Views" type="button" role="tab" aria-controls="pills-Views" aria-selected="false">Views</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-Upload-tab" data-bs-toggle="tab" data-bs-target="#pills-Upload" type="button" role="tab" aria-controls="pills-Upload" aria-selected="false">Recent Videos</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-Size-tab" data-bs-toggle="tab" data-bs-target="#pills-Size" type="button" role="tab" aria-controls="pills-Size" aria-selected="false">Size</button>
                </li>
            </ul>
          </div>
        </div>



    </div>
</div>

<div class="tab-content" id="pills-tabContent-order">
    <div class="tab-pane fade show active" id="pills-Title" role="tabpanel" aria-labelledby="pills-Title-tab">
        <?php
        $sortby = "title";
        require("mediaFiles.php");
        ?>
    </div>
    <div class="tab-pane fade" id="pills-Views" role="tabpanel" aria-labelledby="pills-Views-tab">
        <?php
        $sortby = "views";
        require("mediaFiles.php");
        ?>
    </div>
    <div class="tab-pane fade" id="pills-Upload" role="tabpanel" aria-labelledby="pills-Upload-tab">
        <?php
        $sortby = "uploadDate";
        require("mediaFiles.php");
        ?>
    </div>
    <div class="tab-pane fade" id="pills-Size" role="tabpanel" aria-labelledby="pills-Size-tab">
        <?php
        $sortby = "mediaSize";
        require("mediaFiles.php");
        ?>
    </div>
</div>
