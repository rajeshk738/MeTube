<?php
    require_once("other/home.php");
    require_once("other/connection.php");
    require_once("Classes/MessageStatus.php");
    require_once("Classes/UserAccounts2.php");


    $emailResult = false;
    $userAccount = new UserAccount($con);

    if(isset($_POST["UpdateEmail"])){
        $email=trim($_POST["email"]);
        $emailResult=$userAccount->updateEmail($email, $loggedInUserName);
    }



/*
if(isset($_POST["saveDetailsButton"])) {
    $account = new Account($con);

    $email = ChangeForm::sanitizeFormString($_POST["emailId"]);
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
*/




?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/stylen.css">

</head>
<div class="settingsContainer column">

    <div class="formSection">
        <div class="message">
            <?php echo $detailsMessage; ?>
        </div>

        <form action="emailUpdate.php" method="POST">
            <div class="user-details">
                          <div class='form-group'>
                                      <input class='form-control' type='email' placeholder='Enter new email' name='email' required>
                        </div>

                <div class="button">
                    <button type='submit' class='btn btn-primary' name='UpdateEmail'>Save</button>
                </div>
            </div>
        </form>

    </div>

</div>
