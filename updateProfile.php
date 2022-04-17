<?php 
    require_once("files/main.php"); 
    require_once("files/connection.php");
    require_once("files/Classes/StatusMessage.php");
    require_once("files/Classes/Account.php");
    require_once("files/classes/FormSanitizer.php");
    require_once("files/classes/SettingsFormProvider.php");
    require_once("files/classes/User.php");

   

$detailsMessage = "";
$passwordMessage = "";
$formProvider = new SettingsFormProvider();

if(isset($_POST["saveDetailsButton"])) {
    $account = new Account($con);

    $email = FormSanitizer::sanitizeFormString($_POST["emailId"]);
    $userName=$loggedInUser->getUserName();
    if($account->updateDetails($userName, $email)) {
        $detailsMessage = "<div class='alert alert-success'>
                                <strong>SUCCESS!</strong> Details updated successfully!
                            </div>";
    }
    else {
        $errorMessage = $account->getFirstError();

        if($errorMessage == "") $errorMessage = "Something went wrong";

        $detailsMessage = "<div class='alert alert-danger'>
                                <strong>ERROR!</strong> $errorMessage
                            </div>";
    }
}


if(isset($_POST["savePasswordButton"])) {
    $account = new Account($con);

    $oldPassword = FormSanitizer::sanitizeFormPassword($_POST["oldPassword"]);
    $newPassword = FormSanitizer::sanitizeFormPassword($_POST["newPassword"]);
    $newPassword2 = FormSanitizer::sanitizeFormPassword($_POST["newPassword2"]);

    if($account->updatePassword($oldPassword, $newPassword, $newPassword2, $loggedInUser->getusername())) {
        $passwordMessage = "<div class='alert alert-success'>
                                <strong>SUCCESS!</strong> Password updated successfully!
                            </div>";
    }
    else {
        $errorMessage = $account->getFirstError();

        if($errorMessage == "") $errorMessage = "Something went wrong";

        $passwordMessage = "<div class='alert alert-danger'>
                                <strong>ERROR!</strong> $errorMessage
                            </div>";
    }
}



?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="files/css/stylen.css">
    
</head>
<div class="settingsContainer column">

    <div class="formSection">
        <div class="message">
            <?php echo $detailsMessage; ?>
        </div>
        <?php
            echo $formProvider->createUserDetailsForm(
                
                isset($_POST["emailId"]) ? $_POST["emailId"] : $loggedInUser->getEmail()
            );
        ?>
    </div>



    <div class="formSection">
        <div class="message">
            <?php echo $passwordMessage; ?>
        </div>
        <?php
            echo $formProvider->createPasswordForm();
        ?>
    </div>

    
    

</div>