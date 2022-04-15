<?php 
require_once("files/connection.php"); 
require_once("files/Classes/UserAccount.php");
require_once("files/Classes/StatusMessage.php");

$userAccount = new UserAccount($con);
if(isset($_POST["signupButton"])){

    $email = trim($_POST["email"]);
    $userName = trim($_POST["username"]);
    $password = $_POST["password"];
    $confirmPassword = $_POST["confirmpassword"];

    $resultKey=$userAccount->register($email,$password,$confirmPassword,$userName);

    echo $resultKey;

    if($resultKey){
        echo "Success";
        header("location:index.php");
    }
    else{
        echo "failure";
    }
    echo $email;
    echo $password;
    echo $confirmPassword;
}

?>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- ni -->
    
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
  <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    
    
    
  </head>

	<body background-color:white>   
   
  <!--
	  <div class="container">
	    <div class="title">Register</div>
	    <h4>or <a href="login.php">sign in!</a></h4>  
	    <div class="content">
	    
	    <form action="signup.php" method="POST">
	        <div class="user-details">
	            <div class="input-box">
	                <input type="text" name="username" placeholder="Enter username" required>
	                <?php echo $userAccount->displayError(StatusMessage::$userNameUniqueError); ?>
	            </div>
	            <div class="input-box">
	                <input type="text" name = "email" placeholder="Enter email" required>
	                <?php  echo $userAccount->displayError(StatusMessage::$emailInvalidError); ?>
	                <?php echo $userAccount->displayError(StatusMessage::$emailUniqueError); ?>
	            </div>
	            <div class="input-box">
	                <input type="password" name ="password" placeholder="Enter password" required>
	            </div>
	            <div class="input-box">
	                <input type="password" name = "confirmpassword" placeholder="Confirm password" required>

	                <?php echo $userAccount->displayError(StatusMessage::$passwordMatchError); ?>
	                <?php echo $userAccount->displayError(StatusMessage::$passwordLengthError); ?>
	            </div>
	        </div>

	        <div class="button">
	          <button type="submit" name="signupButton">Register</button>
	        </div>
	    </form>
	    </div>
	  </div>
            
            
-->
            
      <div class="container">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg" role="document">
            <div class="modal-content">
               
	    <div class="modal-body">
            <h2 style="color:#9D4B33 ">Welcome to MeTube</h2>
	    <div class="content">
            
	    <form action="signup.php" class="needs-validated" method="POST" id="registrationForm">
                    
                <div class="user-details">
                    <div class="form-group">
                    <label for="username">Username</label>
                    
    
                    <input type="text" class="form-control" placeholder="Enter username" id="rusername" name="username" required>
                    <?php echo $userAccount->displayError(StatusMessage::$userNameUniqueError); ?>
 
                    
                    <div class="valid-feedback">Valid.</div>
                    <div class="invalid-feedback">Please fill out this field.</div>
                     </div>
                    
                 
          <div class="form-group">
            <label for="email">Email</label>
 
            <input type="email" class="form-control" placeholder="Enter email" id="email" name="email" required>
           <?php  echo $userAccount->displayError(StatusMessage::$emailInvalidError); ?>
	    <?php echo $userAccount->displayError(StatusMessage::$emailUniqueError); ?>
            
            <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
          </div>
                
            
                    
                    
          <div class="form-group">
            <label for="password">Password:</label>
            	 
	                 <input type="password" class="form-control" placeholder="Enter password" id="registerPassword" name="password" required>
	           
           
            <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
          </div>
            
                    
           <div class="form-group">
            <label for="password">Password:</label>
            
            
	                <input type="password" class="form-control" placeholder="Confirm password" id="registerPassword" name="confirmpassword" required>

	                <?php echo $userAccount->displayError(StatusMessage::$passwordMatchError); ?>
	                <?php echo $userAccount->displayError(StatusMessage::$passwordLengthError); ?>
	           
            
            <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
          </div>

       </div>

	        <div class="button">
	          <button type="submit" name="signupButton">Sign Up</button>
                    
	        </div>
                
            </div>
                <h5> <a href="login.php">Sign in instead</a></h5>
            </div>
	    </form>
	    </div>
            
            </div>
            </div>
            </div>
	  </div>
            

	</body>
</html>
