<?php
require_once("connection.php");
require_once("Classes/UserDetails.php");
require_once("Classes/Media.php");
require_once("Classes/MediaGrid.php");
require_once("Classes/MediaItem.php");

$loggedInUserName = "";
$page = "";
$category = "";
$sortby = "";
$keywords = "";
$mediaTitle = "";

if (isset($_SESSION["loggedinUser"])) {
    $loggedInUserName = $_SESSION["loggedinUser"];
}
$loggedInUser = new UserDetails($con, $loggedInUserName);
?>

<!DOCTYPE html>
<html>
<head>
    <title>MeTube</title>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css"
          rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="files/js/jsfile.js"></script>
    <link rel="stylesheet" type="text/css" href="files/css/style.css">



    <!-- ni  -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

  <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

</head>


<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <button class="btn hamburgermenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="index.php?page=Home"><i class="fab fa-youtube fa-lg" style="color:red;"></i> MeTube</a>
    <button class="navbar-toggler btn " type="button" data-toggle="collapse" data-target="#navbar-collapse-content"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        Menu <i class="fas fa-caret-square-down"></i>
    </button>

 <div class="collapse navbar-collapse" id="navbar-collapse-content">
  <div class="box">
    <div class="search-bar">
      <form class="form-inline my-2 my-lg-0 mr-auto search-bar" action="search.php" method="GET">
        <input class="form-control mr-sm-2 search" list="datalist" onkeyup="ac(this.value)" type="search"
                   placeholder="Search" aria-label="Search" name="keywords">
        <button><i class="fas fa-search" type="submit"></i></button>
      </form>
    </div>
  </div>
    </div>


        <?php
        if ($loggedInUserName != "") {
            echo "<ul class='navbar-nav'>
      <li class='nav-item'>
      <a class='text-danger nav-link' href='channels.php'>" . $loggedInUser->getuserName() . " </a>
      </li>

      <li class='nav-item'>
         <a class='nav-link' href='upload.php'>Upload <i class='fas fa-upload'></i></a>
      </li>

      <li class='nav-item'>
      <a class='nav-link' href='logout.php'>Log Out <i class='fas fa-sign-out-alt'></i></a>
      </li>
      </ul>";

        } else {
        /*    echo "<ul class='navbar-nav'>

        <li class='nav-item'>
          <a class='style-scope ytd-button-renderer style-suggestive size-small' href='signup.php'>Sign Up <i class='far fa-user-plus' style='font-size:24px'></i> </a>
        </li>

        <li class='nav-item'>
          <a class='style-scope ytd-button-renderer style-suggestive size-small' href='signIn.php'>Sign In<i class='fas fa-user' style='font-size:24px'></i></a>
        </li>


      </ul>";

         */



       echo "<ul class='navbar-nav ml-auto'>
      <li class='nav-item'>
        <a class='btn nav-link text-primary sign btn btn-outline-primary my-2 my-lg-1'  href='signIn.php'  >Sign In</a>
      </li> <p>&nbsp</p>

      <li class='nav-item'>
        <a class='btn nav-link text-primary sign btn btn-outline-primary my-2 my-lg-1' href='signup.php'>Sign Up</a>
        </li>
         </ul>
            ";


        }
        ?>
    </div>
</nav>


<div id="side-nav" style="display:none;">
    <div class="sidebar-menu">
        <ul style="list-style-type:none;">
            <li class='nav-item'>
                <a href='index.php?page=Home'>Home</a>
            </li>
            <li class='nav-item'>
                <a href='wordCloud.php'>Word Cloud</a>
            </li>
            <?php
            if ($loggedInUserName != "") {
                echo "<li class='nav-item'>
                      <a href='updateProfile.php'>Update Profile</a>
                        </li>
                        <li class='nav-item'>
                        <a href='friend.php'>Contacts</a>
                      </li>
                      <li class='nav-item'>
                        <a href='message.php'>Messages</a>
                      </li>

                      <li class='nav-item'>
                      <a href='channels.php'>Your Channel</a>
                    </li>
                    <li class='nav-item'>
                      <a href='playlist.php?id='>Your Playlist</a>
                    </li>

                    <li class='nav-item'>
                      <a href='favorites.php'>Favorite List</a>
                    </li>

                    <li class='nav-item'>
                      <a href='discussionBoard.php'>Discussion Board</a>
                    </li>";
            }
            ?>
        </ul>
    </div>

</div>


<div id="main-section">
    <div id="content" class="container-fluid">
