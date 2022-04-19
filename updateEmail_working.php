<?php
    require_once("files/main.php");
    require_once("files/connection.php");
    require_once("files/Classes/StatusMessage.php");
    require_once("files/Classes/UserAccount.php");


    $emailResult = false;
    $userAccount = new UserAccount($con);

    if(isset($_POST["UpdateEmail"])){
        $email=trim($_POST["email"]);
        $emailResult=$userAccount->updateEmail($email, $loggedInUserName);
    }

?>

<!DOCTYPE html>

<html lang="en" dir="ltr">
    <head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
        <div>
            <div class="title">Update Email</div>
            <div class="content">

                <form action="updateEmail.php" method="POST">
                    <div class="user-details">
                          <div class='form-group'>
                                      <input class='form-control' type='email' placeholder='Enter new email' name='email' required>
                                      <?php  echo $userAccount->displayError(StatusMessage::$emailInvalidError); ?>
                                      <?php echo $userAccount->displayError(StatusMessage::$emailUniqueError); ?>
                                  </div>

                        <div class="button">
                            <button type='submit' class='btn btn-primary' name='UpdateEmail'>Save</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </body>
</html>
