<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  background-color: white;
  width: 50%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
</htm>

<?php
require_once("files/main.php");

$query = $con->prepare("SELECT * from playlist where userName = '$loggedInUserName'");
$query->execute();
$html = "";

if($query->rowCount()== 0){
    echo "";
}
else{
    $html .= "
    <div><div class='table-responsive'><table>
            <thead class='thead-light'>
            <tr>
            <th>Playlist Name</th>
            <th>View Playlist</th>
            <th>Delete Playlist</th>
            </tr>

            </thead>
            <tbody><tr><td>
            <form action='playlist.php' method='POST'>";

    $html.= "<select name='playlistname'>";
    while($row= $query->fetch(PDO::FETCH_ASSOC)){
        $html.= "<option value='" . $row['name'] . "'>" . $row['name'] . "</option>";
    }
    $html.="</select></td>
    <td><button type='submit' class='btn btn-secondary bt-sm' name='viewplaylistButton' value='name'>View</button></td>
    <td><button type='submit' class='btn btn-secondary bt-sm' name='deleteplaylistButton' value='name'>Delete</button></td>
    </form>
    </div></tr></tbody>
    </table></div></div>";


}
$html.="
    <div>
    <br/><br/>
    <form action='playlist.php' method='POST'>
	        <p1>Playlist Name: </p1><input type='text' name ='playlistNamein' placeholder='Enter playlist name ' required>
            <button type='submit' class='btn btn-secondary bt-lg' name='createPlaylist' value='$loggedInUserName'>Create</button>
        </form>

    </div>";
echo $html;

if(isset($_POST["createPlaylist"])){

    $playlistnamein = $_POST['playlistNamein'];
    $query = $con->prepare("INSERT INTO playlist (name, userName) VALUES ('$playlistnamein', '$loggedInUserName')");
    $query->execute();
    echo $playlistnamein ." has been added. Please refresh the page.";
    header("location:playlist.php");
}

if(isset($_POST["deleteplaylistButton"])){
    $deleteplaylist = $_POST['playlistname'];
    $query = $con->prepare("DELETE FROM playlist where userName='$loggedInUserName' and name='$deleteplaylist'");
    $query->execute();
    echo $deleteplaylist ." has been deleted. Please refresh the page.";
    header("location:playlist.php");
}

if(isset($_POST["viewplaylistButton"])){
    $playlistname = $_POST['playlistname'];
    $query = $con->prepare("SELECT media.*
    FROM media
    JOIN playlist_media ON media.id = playlist_media.videoId
    JOIN playlist ON playlist.name = playlist_media.playlistName
    WHERE playlistName = '$playlistname' AND userName='$loggedInUserName'");
    $query->execute();
    echo"
    <div>
    <div class='table-responsive'>
    <br/>
    <table>
    <thead class='thead-light'>
    <tr>
        <th>Playlist File</th>
    </tr>
    </thead>
    <tbody>";

    while($row = $query->fetch(PDO::FETCH_ASSOC)){
        $title = $row['title'];
        $id = $row['id'];
        $url= 'watch.php?Id='. $row['id'];
        echo"
        <tr><td><a href='$url'>$title</td></tr>";
    }
    echo "</tbody></table></div></div>";
}
?>
