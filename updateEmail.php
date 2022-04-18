<?php
    require_once("files/main.php");
    require_once("files/connection.php");
    require_once("files/Classes/StatusMessage.php");
    require_once("files/Classes/Account.php");
    require_once("includes/classes/FormSanitizer_Email.php");
    require_once("includes/classes/SettingsFormProvider_Email.php");

    if(!User::isLoggedIn()) {
        header("Location: signIn.php");
    }

    $detailsMessage = "";
    $passwordMessage = "";
    $formProvider = new SettingsFormProvider_Email();

    if(isset($_POST["saveDetailsButton"])) {
        $account = new Account($con);
        $email = FormSanitizer_Email::sanitizeFormString($_POST["email"]);

        if($account->updateDetails($userLoggedInObj->getusername(), $email)) {
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


    ?>
    <div class="settingsContainer column">

        <div class="formSection">
            <div class="message">
                <?php echo $detailsMessage; ?>
            </div>
            <?php
                echo $formProvider->createUserDetailsForm(
                    isset($_POST["email"]) ? $_POST["email"] : $userLoggedInObj->getEmail()
                );
            ?>
        </div>

    </div>
