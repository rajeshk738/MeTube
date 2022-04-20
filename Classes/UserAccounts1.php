<?php
class Account {

    private $con;
    private $errorArray = array();

    public function __construct($con) {
        $this->con = $con;
    }

    public function login($un, $pw) {
        $pw = hash("sha512", $pw);

        $query = $this->con->prepare("SELECT * FROM userAccounts WHERE userName=:un AND password=:pw");
        $query->bindParam(":un", $un);
        $query->bindParam(":pw", $pw);

        $query->execute();

        if($query->rowCount() == 1) {
            return true;
        }
        else {
            array_push($this->errorArray, MessageStatus::$loginFailed);
            return false;
        }
    }

    public function register($fn, $ln, $un, $em, $em2, $pw, $pw2) {
        $this->validateFirstName($fn);
        $this->validateLastName($ln);
        $this->validateUsername($un);
        $this->validateEmails($em, $em2);
        $this->validatePasswords($pw, $pw2);

        if(empty($this->errorArray)) {
            return $this->insertUserDetails($fn, $ln, $un, $em, $pw);
        }
        else {
            return false;
        }
    }

    // public function updateDetails($un,$em, $newem) {


    //     if($this->validateOldEmail($em, $un)) {
    //         $q = ("UPDATE userAccounts SET emailId= '$newem' WHERE userName= '$un'");
    //         return $con->query($q);
    //     }
    //     else {
    //         return false;
    //     }
    // }

    // private function validateOldEmail($em, $un) {

    //     $c = "SELECT * FROM userAccounts WHERE emailId= '$em' AND userName= ''$un'";
    //     $res = $con->query($c);

    //     if($res->rowCount() != 0){
    //       return true;
    //     }

    //     return false;
    // }

    public function updatePassword($oldPw, $pw, $pw2, $un) {
        $this->validateOldPassword($oldPw, $un);
        $this->validatePasswords($pw, $pw2);

        if(empty($this->errorArray)) {
            $query = $this->con->prepare("UPDATE userAccounts SET password=:pw WHERE userName=:un");
            $pw = hash("sha512", $pw);
            $query->bindParam(":pw", $pw);
            $query->bindParam(":un", $un);

            return $query->execute();
        }
        else {
            return false;
        }
    }

    private function validateOldPassword($oldPw, $un) {
        $pw = hash("sha512", $oldPw);

        $query = $this->con->prepare("SELECT * FROM userAccounts WHERE userName=:un AND password=:pw");
        $query->bindParam(":un", $un);
        $query->bindParam(":pw", $pw);

        $query->execute();

        if($query->rowCount() == 0) {
            array_push($this->errorArray, MessageStatus::$passwordIncorrect);
        }
    }

    public function insertUserDetails($fn, $ln, $un, $em, $pw) {

        $pw = hash("sha512", $pw);
        $profilePic = "files/images/profilePictures/default.png";

        $query = $this->con->prepare("INSERT INTO userAccounts (firstName, lastName, userName, emailId, password, profilePic)
                                        VALUES(:fn, :ln, :un, :em, :pw, :pic)");

        $query->bindParam(":fn", $fn);
        $query->bindParam(":ln", $ln);
        $query->bindParam(":un", $un);
        $query->bindParam(":em", $em);
        $query->bindParam(":pw", $pw);
        $query->bindParam(":pic", $profilePic);

        return $query->execute();
    }

    private function validateFirstName($fn) {
        if(strlen($fn) > 25 || strlen($fn) < 2) {
            array_push($this->errorArray, MessageStatus::$firstNameCharacters);
        }
    }

    private function validateLastName($ln) {
        if(strlen($ln) > 25 || strlen($ln) < 2) {
            array_push($this->errorArray, MessageStatus::$lastNameCharacters);
        }
    }

    private function validateUsername($un) {
        if(strlen($un) > 25 || strlen($un) < 5) {
            array_push($this->errorArray, MessageStatus::$usernameCharacters);
            return;
        }

        $query = $this->con->prepare("SELECT userName FROM userAccounts WHERE userName=:un");
        $query->bindParam(":un", $un);
        $query->execute();

        if($query->rowCount() != 0) {
            array_push($this->errorArray, MessageStatus::$usernameTaken);
        }

    }

    private function validateEmails($em, $em2) {
        if($em != $em2) {
            array_push($this->errorArray, MessageStatus::$emailsDoNotMatch);
            return;
        }

        if(!filter_var($em, FILTER_VALIDATE_EMAIL)) {
            array_push($this->errorArray, MessageStatus::$emailInvalid);
            return;
        }

        $query = $this->con->prepare("SELECT emailId FROM userAccounts WHERE emailId=:em");
        $query->bindParam(":em", $em);
        $query->execute();

        if($query->rowCount() != 0) {
            array_push($this->errorArray, MessageStatus::$emailTaken);
        }

    }



    private function validatePasswords($pw, $pw2) {
        if($pw != $pw2) {
            array_push($this->errorArray, MessageStatus::$passwordsDoNotMatch);
            return;
        }

        if(preg_match("/[^A-Za-z0-9]/", $pw)) {
            array_push($this->errorArray, MessageStatus::$passwordNotAlphanumeric);
            return;
        }

        if(strlen($pw) > 30 || strlen($pw) < 5) {
            array_push($this->errorArray, MessageStatus::$passwordLength);
        }
    }

    public function getError($error) {
        if(in_array($error, $this->errorArray)) {
            return "<span class='errorMessage'>$error</span>";
        }
    }

    public function getFirstError() {
        if(!empty($this->errorArray)) {
            return $this->errorArray[0];
        }
        else {
            return "";
        }
    }

}
?>