<?php
require_once("other/home.php");
require_once("Classes/ContactListClass.php");
require_once("Classes/MessageStatus.php");
?>

    <h3 class="text-dark display-8 text-center">Contacts List</h3>

    <?php

    $friendsClass = new ContactListClass($con);
    $result= $friendsClass->getAllUserstoFriend($loggedInUserName);
    if($result!="")
    {
        echo $result;
    }
    else{
        echo "<h5 class='text-primary display-5 text-center'>";
        echo MessageStatus::$NoContacts;
        "</h5>";
    }

    ?>

	<?php
		if(isset($_POST["friendsButton"])){
			$relation = $_POST['relation'];
			$person = $_POST['person'];
    		$resultKey = $friendsClass->makefriends($loggedInUserName,$person, $relation);
    	}
        else if(isset($_POST["blockButton"])){
        	$relation = $_POST['block'];
			$person = $_POST['person'];
            $resultKey = $friendsClass->blockfriends($loggedInUserName, $person, $relation);
        }
   	?>
