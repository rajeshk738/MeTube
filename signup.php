<?php
require_once("other/connection.php");
require_once("Classes/UserAccounts1.php");
require_once("Classes/MessageStatus.php");
require_once("Classes/ChangeForm.php");

$account = new Account($con);

if(isset($_POST["submitButton"])) {
    $firstName = ChangeForm::sanitizeFormString($_POST["firstName"]);
    $lastName = ChangeForm::sanitizeFormString($_POST["lastName"]);

    $username = ChangeForm::sanitizeFormUsername($_POST["username"]);

    $email = ChangeForm::sanitizeFormEmail($_POST["email"]);
    $email2 = ChangeForm::sanitizeFormEmail($_POST["email2"]);

    $password = ChangeForm::sanitizeFormPassword($_POST["password"]);
    $password2 = ChangeForm::sanitizeFormPassword($_POST["password2"]);

    $wasSuccessful = $account->register($firstName, $lastName, $username, $email, $email2, $password, $password2);

    if($wasSuccessful) {
        $_SESSION["userLoggedIn"] = $username;
        header("Location: index.php");
    }

}

function getInputValue($name) {
    if(isset($_POST[$name])) {
        echo $_POST[$name];
    }
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>meTube</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/stylen.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

    <div class="signInContainer">

        <div class="column">

            <div class="header">
                <img src="images/metube.png" title="logo" alt="Site logo">
                <h3>Sign Up</h3>
                <span>to continue to meTube</span>
            </div>

            <div class="loginForm">

                <form action="signup.php" method="POST">

                <?php echo $account->getError(MessageStatus::$firstNameCharacters); ?>
                <input type="text" name="firstName" placeholder="First name" value="<?php getInputValue('firstName'); ?>" autocomplete="off" required>

                <?php echo $account->getError(MessageStatus::$lastNameCharacters); ?>
                <input type="text" name="lastName" placeholder="Last name" autocomplete="off" value="<?php getInputValue('lastName'); ?>" required>

                <?php echo $account->getError(MessageStatus::$usernameCharacters); ?>
                <?php echo $account->getError(MessageStatus::$usernameTaken); ?>
                <input type="text" name="username" placeholder="Username" autocomplete="off" value="<?php getInputValue('username'); ?>" required>

                <?php echo $account->getError(MessageStatus::$emailsDoNotMatch); ?>
                <?php echo $account->getError(MessageStatus::$emailInvalid); ?>
                <?php echo $account->getError(MessageStatus::$emailTaken); ?>
                <input type="email" name="email" placeholder="Email" autocomplete="off" value="<?php getInputValue('email'); ?>" required>
                <input type="email" name="email2" placeholder="Confirm email" autocomplete="off" value="<?php getInputValue('email2'); ?>" required>

                <?php echo $account->getError(MessageStatus::$passwordsDoNotMatch); ?>
                <?php echo $account->getError(MessageStatus::$passwordNotAlphanumeric); ?>
                <?php echo $account->getError(MessageStatus::$passwordLength); ?>
                <input type="password" name="password" placeholder="Password" autocomplete="off" required>
                <input type="password" name="password2" placeholder="Confirm password" autocomplete="off" required>

                <input type="submit" name="submitButton" value="SUBMIT">


                </form>


            </div>

            <a class="signInMessage" href="signIn.php">Already have an account? Sign in here!</a>

        </div>

    </div>




</body>
</html>
