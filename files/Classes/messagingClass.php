<?php
class MessagingClass{
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

                $html = "
                <div><div class='table-responsive'>
                        <p></p>
                        <p></p>
                        <p></p>";

                $html.= "<div style='padding-bottom:10px;'>

                <form action='message.php' method='POST'>

                <p> Username: <p><select name='recipient'>";
                while($row= $query->fetch(PDO::FETCH_ASSOC)){
                    $html.= "<option value='" . $row['userName'] . "'>" . $row['userName'] . "</option>";
                }

                $html.= "</select></p></p>
                <p>Message: <p> <textarea rows = '10' cols = '100' name = 'msg' placeholder='Enter your message here...'></textarea
                </p></p>
                <button type='submit' class='btn btn-dark btn-lg' name='messageButton' value='$userName'>Send Message</button>
                </form>
                </div>";

                $html.="
                </div>

                <form action='message.php' method='POST'>
                    <button type='submit' class='btn btn-dark btn-sm' name='inbox' value='$userName'>Inbox</button>
                    <button type='submit' class='btn btn-dark btn-sm' name='sent' value='$userName'>Sent</button>
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
                    <thead class='thead-dark'>
                    <tr>
                    <th>Sent By</th>
                    <th>Sent To</th>
                    <th>Messages</th>
                    <th>Sent At</th>
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
