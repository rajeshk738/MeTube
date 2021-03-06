<?php
require_once("other/connection.php");
require_once("other/home.php");


$filename = $_FILES["mediaFile"]["name"];
$title = $_POST["title"];
$description = $_POST['description'];
$category = $_POST['category'];
$visibility = $_POST['visibility'];
$keywords = $_POST['keywords'];
$keywords = rtrim($keywords, ',');
$keyword_arr = explode(',', $keywords);

$videoExts = array("video/mp4");
$imageExts = array("image/pjpeg", "image/gif", "image/jpeg");
$audioExts = array("audio/mp3", "audio/wma");
$mediaId = 0;

$extension = $_FILES["mediaFile"]["type"];
$mediaType = explode('/', $extension);
$mediaType = $mediaType[0];
$size = $_FILES['mediaFile']['size'];
$username = $_SESSION["loggedinUser"];
$file_path = 'uploads/'.$username.'/';


if (!file_exists($file_path)) {
    mkdir($file_path);
    chmod($file_path, 0755);
}

if($_FILES["mediaFile"]["error"] > 0 ) {
    echo "<h1> error:".$_FILES["mediaFile"]["error"] ."</h1>";
    header("Refresh: 2;URL=uploadMedia.php?");
    exit;
}


$upload_file = $file_path.$filename;
if(file_exists($upload_file))
{
    echo "File".$upload_file." already exists";
    header("location:uploadMedia.php?file_exist=true");
    exit;
}

try{
    move_uploaded_file($_FILES["mediaFile"]["tmp_name"],
        $upload_file);
    echo "Stored in: " . $file_path;
    chmod($upload_file, 0644);
    $query = $con->prepare("INSERT INTO media(mediaType, title, description, category, privacy, filepath, file_extension, mediaSize, uploadedBy, views, keywords)
                    VALUES('$mediaType', '$title', '$description','$category','$visibility', '$upload_file', '$extension', '$size','$username', 0, '$keywords')");
    $query->execute();
    $query = $con->prepare("SELECT id FROM media order by id desc limit 1");
    $query->execute();

    $row = $query->fetch(PDO::FETCH_ASSOC);
    $mediaId = $row['id'];

    if ($keywords != "") {
        for ($i = 0; $i < count($keyword_arr); $i++) {
            $key = $keyword_arr[$i];
            $query = $con->prepare("INSERT INTO keywords(keyword, media_id) VALUES('$key', '$mediaId')");
            $query->execute();
        }
    }
}
catch(Exception $e){
    echo"Some Error Occured: ".$e->getMessage();
}

header("Refresh: 2;URL=uploadMedia.php?");
?>
