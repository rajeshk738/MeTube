<?php

class UserDetails{
    private $con;
    private $userData;
    public function __construct($con,$userName){
        $this->con = $con;
        $query = $this->con->prepare("SELECT * FROM userAccounts WHERE userName = :un");
        $query->bindParam(":un", $userName);
        $query->execute();
        $this->userData = $query->fetch(PDO::FETCH_ASSOC);
    }
      public function getFirstName() {
        return $this->sqlData["firstName"];
    }

    public function getLastName() {
        return $this->sqlData["lastName"];
    }

    public function getUserName(){
        return $this->userData["userName"];
    }
    public function getEmail(){
        return $this->userData["emailId"];
    }
    public function getjoinDate(){
        return $this->userData["joinDate"];
    }





}

?>
