<?php
    require_once("other/home.php");
    require_once("other/connection.php");
    require_once("Classes/MessageStatus.php");
    require_once("Classes/UserAccounts1.php");
    require_once("Classes/ChangeForm.php");
    require_once("Classes/ChangeFormSettings.php");
    require_once("Classes/User.php");

$detailsMessage = "";
$passwordMessage = "";
$formProvider = new ChangeFormSettings();

if(isset($_POST["savePasswordButton"])) {
    $account = new Account($con);

    $oldPassword = ChangeForm::sanitizeFormPassword($_POST["oldPassword"]);
    $newPassword = ChangeForm::sanitizeFormPassword($_POST["newPassword"]);
    $newPassword2 = ChangeForm::sanitizeFormPassword($_POST["newPassword2"]);

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
</head>
<div class="settingsContainer column">

    <div class="formSection">
        <div class="message">
            <?php echo $passwordMessage; ?>
        </div>
        <?php
            echo $formProvider->createPasswordForm();
        ?>
    </div>
</div>
