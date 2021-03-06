<?php
    require_once("other/connection.php");
    require_once("other/home.php");
    require_once("Classes/PlayerMedia.php");
    require_once("Classes/MediaInfo.php");
    require_once("Classes/CommentClass.php");

    $commentsClass= new CommentClass($con);
    if(!isset($_GET["Id"]) && !isset($_POST["postComment"])){
        echo "No URL passed on to page";
        exit();
    }

    $mediaId="";
    if(isset($_GET["Id"])){
        $mediaId = $_GET["Id"];
    }
    if(isset($_POST["postComment"])){
        $mediaId = $_POST["postComment"];
    }

    $media= new Media($con,$mediaId);
    $media->incrementViews();

    $query = $con->prepare("SELECT uploadedBy FROM media where id = '$mediaId'");
    $query->execute();
    $row = $query->fetch(PDO::FETCH_ASSOC);
    $mediaOwner = $row['uploadedBy'];

?>

<div class="PageDiv">
    <div class="watchLeftColumn embed-responsive">
    <?php
        $mediaPlayer= new PlayerMedia($media);
        echo $mediaPlayer->create();
    ?>
    </div>
    <div class= "suggestions">
        <div>
            Recommended media
        </div>
        <?php
            $mediaGrid= new MediaGridFile($con);
            echo $mediaGrid->create('Recommendation', "", "","", $loggedInUserName, "", $mediaId);
        ?>

    </div>
</div>

<div>

<?php
    $mediaPlayer= new MediaInfo($con,$media,$loggedInUser);
    echo $mediaPlayer->create();

    echo "<form action='videoDownload.php' method='POST' >
    <button type='submit' class='btn btn-dark btn-sm' name='downloadButton' value='$mediaId'>Download</button>

    </form>";


    $checkquery = $con->prepare("SELECT * from favouriteList where userName='$loggedInUserName' and videoId = '$mediaId'");
        $checkquery->execute();
        echo str_repeat("&nbsp;", 30);
        if ($checkquery->rowCount() == 0) {
            echo "<form action='addFav.php' method='GET' >
            <button type='submit' class='btn btn-dark btn-sm' name='Id' value='$mediaId' &nbsp;&nbsp>Add to Favorite</button>

                  </form>";
        }
        else {
            echo "<form action='removeFav.php' method='GET' >
            <button type='submit' class='btn btn-dark btn-sm' name='Id' value='$mediaId' &nbsp;&nbsp>Remove from Favorite</button>

                  </form>";

        }

        if (isset($_GET["add"]) && $_GET["add"] == 'success') {
            echo "<div class='badge'>
                     <p style = 'color:green'>Successfully added to Favorite!</p>
                  </div>";
        }

        if (isset($_GET["delete"]) && $_GET["delete"] == 'success') {
            echo "<div class='badge'>
                    <p style = 'color:red'>Successfully removed From Favorite!</p>
                  </div>";
        }


    $checkquery = $con->prepare("SELECT * from userRating where mediaId = '$mediaId'");
    $checkquery -> execute();

    if ($checkquery->rowCount() == 0) {
        echo "No ratings available";
    }
    else{
        $ratingquery = $con->prepare("SELECT ROUND(AVG(ratedIndex),1) as avg FROM rating where mediaId='$mediaId'");
        $ratingquery->execute();
        while($row = $ratingquery->fetch(PDO::FETCH_ASSOC)){
            echo "Overall Rating: ". $row['avg'];
        }
    }

    if($loggedInUserName!=""){
        echo "<form action='ratingUpdate.php' method='POST' >
        <td><select name='rate'>
        <option value=1>1</option>
        <option value=2>2</option>
        <option value=3>3</option>
        <option value=4>4</option>
        <option value=5>5</option>
      	</select>
          <button type='submit' class='btn btn-dark btn-sm' name='ratingButton' value='$mediaId'>Update Rating</button>

        </form>";
        echo str_repeat("&nbsp;", 30);
        echo "<form action='addPlaylist.php' method='POST' >";
        $query = $con->prepare("SELECT * FROM playlist where userName = '$loggedInUserName'");
        $query->execute();

        echo "<select name='playlistname'>";
        while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
            echo "<option value='" . $row['name'] . "'>" . $row['name'] . "</option>";
        }
        echo "</select> &nbsp";

        echo "<button type='submit' class='btn btn-dark btn-sm' name='playlistButton' value='$mediaId'>Add to Playlist</button>
        </form>";



        if ($mediaOwner == $loggedInUserName) {
            echo "<form action='videoInfoUpdate.php' method='GET' >
                    <button type='submit' value='$mediaId' name='Id'>Edit Video Info</button>
              </form>";
        }
    }
?>
</div>


<?php
    echo "<div style='padding-top:20px;' ><h3>User Comments</h3></div>";
    if(isset($_GET["Id"])){
        $result=$commentsClass->getAllCommentsOfMedia($mediaId);
        if($result==""){
            echo "No Comments";
        }
        else{
            echo $result;
        }

    }

    if(isset($_POST["postComment"])){
        $commentsClass->postComment($loggedInUserName,$mediaId,$_POST['comment']);
        $result=$commentsClass->getAllCommentsOfMedia($mediaId);
        echo $result;
        header("location:viewMedia.php?Id=$mediaId");
    }


?>
<?php

if($loggedInUserName!=""){
    echo "<div class='commentSection' style='margin-right:350px;'>
               <form action='viewMedia.php' method='POST' style='padding-top:20px' >
                <div class='input-group'>
                    <input type='text' id='comment' name='comment' required placeholder='comment what you like/dislike' class='form-control' >&nbsp;&nbsp
                    <div class='input-group-append'>

                        <button class='btn btn-primary' type='submit' value='$mediaId' name='postComment'>Comment</button>
                    </div>
                </div>
            </form>
        </div>";
}

?>
