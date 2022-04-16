<?php

class UserDetails{
    private $con;
    private $userData;
    public function __construct($con,$userName){
        $this->con = $con;
        $query = $this->con->prepare("SELECT * FROM users where username = '$userName'");
        $query->execute();
        $this->userData = $query->fetch(PDO::FETCH_ASSOC);
    }
    public function getUserName(){
        return $this->userData["username"];
    }
    public function getEmail(){
        return $this->userData["email"];
    }
    public function getjoinDate(){
        return $this->userData["signUpDate"];
    }

}

?>