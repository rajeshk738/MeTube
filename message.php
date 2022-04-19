
<!DOCTYPE html>
<html>
<head>
<style>
.k {
  background-color: 	#F0F0F0;
}
</style>
</head></html>
<?php

require_once("files/main.php");
require_once("files/Classes/messagingClass.php");

?>

<div class='k' style='padding-top:25px;'>
<div>
    <!-- <h2 class="text-dark display-3 text-center">Messages</h2> -->
    <p class="text-dark display-5 text-left"><b>Compose Message</b></p>

    <?php

    $messagingClass = new MessagingClass($con);
    $result= $messagingClass->getAllUserstoMessage($loggedInUserName);
    if($result!="")
    {
        echo $result;
    }
    else{
        echo "<h5 class='text-primary display-4 text-center'>";
        echo StatusMessage::$NoContacts;
        "</h5>";
    }
?>
<?php

	if(isset($_POST["messageButton"])){
        $recipient = $_POST['recipient'];
		$resultKey = $messagingClass->sendMessage($loggedInUserName, $recipient, $_POST["msg"]);
	}
    else if(isset($_POST["inbox"])){
        $var = 'Sent By';
        $resultKey = $messagingClass->viewMessage($loggedInUserName, $var);
    }
    else if(isset($_POST["sent"])){
        $var = 'Sent To';
        $resultKey = $messagingClass->viewMessage($loggedInUserName, $var);
    }

?>
