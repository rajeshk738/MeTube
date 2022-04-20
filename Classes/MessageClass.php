
<html>
<head>
<style>

select {
    cursor:pointer;
    display:inline-block;
    position:relative;
    font:normal 18px Arial, Sans-Serif;
    color:green;
    border:0px solid #ccc;
}
</style>
</head>
</html>

<?php
class MessageClass{
    private $con;
    public function __construct($con){
        $this->con=$con;
    }

    public function getAllUserstoMessage($userName){
        try{
            $query = $this->con->prepare("SELECT * from userAccounts where userName != '$userName'");
            $query->execute();
            if($query->rowCount()== 0){
                return "";
            }
            else{


              $html="<div class='row' style='background-color:white;padding:20px;height:100%'>";

              $html.="<div
              style='width:100%;
              border-radius: 5px;
              background-color: white;
              padding: 20px;Margin:5px'>
              <form action='messageSection.php' method='POST'>
              <label for='username'><b>Username</b></label>
                  <select name='recipient'
                  style='
                  width: 100%;
                  padding: 12px 20px;
                  margin: 8px 0;
                  display: inline-block;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  box-sizing: border-box;>'";
                      while($row= $query->fetch(PDO::FETCH_ASSOC)){
                          $html.= "<option value='" . $row['userName'] . "'>" . $row['userName'] . "</option>";
                      }


                $html.= "</select></p></p>
                <p>Message: <p> <textarea rows = '10' cols='150' name = 'msg' placeholder='Enter your message here...' required></textarea
                </p></p>
                <button type='submit' class='btn btn-secondary btn-lg active' name='messageButton' value='$userName'>Send Message</button>
                </form>
                </div>";


                $html.="
                <form action='messageSection.php' method='POST'>
                <table style='width:100%;border:1px solid black;'>
                <tr>
                <th>
                <div style='background-color:white'>

                <button type='submit' class= 'btn btn-secondary bt-sm active'
                style='width: 100%;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;' name='inbox' value='$userName'>Inbox</button></div></th>";

                $html.="<th><div
                style='background-color:red;
                border-radius: 5px;
                align-contents: right;
                background-color: white;
                padding: 20px;Margin:5px'>";

                $html.="
                <button type='submit' class= 'btn btn-secondary bt-sm active'
                style='width: 100%;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;' name='sent' value='$userName'>Sent</button>
                </div></th><tr><table>
                </form>
                </div>";


                 return $html;
            }
        }
        catch(Exception $e){
            echo"Some Error Occured: ".$e->getMessage();
        }
    }
    public function sendMessage($loggedInUserName, $recipient, $msg){
        echo "<p><br/>Successfully sent the message.</p>";
        $query = $this->con->prepare("INSERT INTO messages(sentBy, sentTo, message) VALUES('$loggedInUserName', '$recipient', '$msg')");
        $query->execute();
    }

    public function viewMessage($loggedInUserName, $var){
        if ($var == 'Sent By'){
            $query = $this->con->prepare("select * from messages where sentTo = '$loggedInUserName'");
        }
        else if($var == 'Sent To'){
            $query = $this->con->prepare("select * from messages where sentBy = '$loggedInUserName'");
        }
        $query->execute();
        if($query->rowCount()== 0){
                return "";
        }
        else{
            $html = "
            <div><div class='table-responsive'><br/><br/><table class='table table-bordered table-striped table-hover'>
                    <thead class='thead-light'>
                    <tr>
                    <th>Sender</th>
                    <th>Receiver</th>
                    <th>Message</th>
                    <th>Date and Time</th>
                    </tr>
                    </thead>
                    <tbody>";
            while($row=$query->fetch(PDO::FETCH_ASSOC)){
                $sentBy= $row["sentBy"];
                $sentTo= $row["sentTo"];
                $message= $row["message"];
                $sentAt= $row["sentAt"];

                $html.=  "<tr><td>$sentBy</td>";
                $html.=  "<td>$sentTo</td>";
                $html.=  "<td>$message</td>";
                $html.=  "<td>$sentAt</td></tr>";
            }
            echo $html;
        }
    }
}
