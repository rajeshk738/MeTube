<?php
class FriendsClass{
	private $con;
    public function __construct($con){
        $this->con=$con;
    }

    public function getAllUserstoFriend($userName){
        try{
            $query = $this->con->prepare("select * from userAccounts where userName != '$userName'");
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
                <form action='friend.php' method='POST'>
                <label for='username'><b>Username</b></label>
                    <select name='person'
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

                $html.="</select>
                <table style='width:100%;border:1px solid black;'>
                <tr>
                <th>
                <div style='background-color:white'>
                <h3 class='text-dark display-5 text-center'>Relationship</h3>
                <label for='relation'>Relationship status:</label>
                <select name='relation'
                style='
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;>'>
                     <option value='Friend'>Friend</option>
                     <option value='Family'>Family</option>
										 <option value='Favourite'>Favourite</option>
                 </select>
                <button type='submit' class= 'btn btn-secondary bt-sm'
                style='width: 50%;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;' name='friendsButton' value='$userName'>Confirm</button></div></th>";

                $html.="<th><div
                style='background-color:red;
                border-radius: 5px;
                align-contents: right;
                background-color: white;
                padding: 20px;Margin:5px'>

                <h3 class='text-dark display-5 text-center'>Block User</h3>
                <label for='block'>Choose status type:</label>
                <select name='block'
                style='
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;>'>
                     <option value='block'>Block</option>
                     <option value='Unblock'>Un-blocked</option>
                 </select>";

                $html.="
                <button type='submit' class= 'btn btn-secondary bt-sm'
                style='width: 50%;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;' name='blockButton' value='$userName'>Confirm</button>
                </div></th><tr><table>
                </form>
                </div>";

               $html.="<table style='width:100%;border:1px solid black;'>
               <tr>
               <th><div
                style='
                border-radius: 5px;
                align-contents: right;
                background-color: white;
                padding: 20px;Margin:5px'>
                <table class='table table-bordered'>
                    <thead>
                    <tr>
                    <th>Username</th>
                    <th>Relationship</th>
                    </tr>
                    </thead>
                <tbody>";
                $contactquery = $this->con->prepare("select * from contactList where userName = '$userName'");
                $contactquery->execute();

                while($row = $contactquery->fetch(PDO::FETCH_ASSOC)){
                    $contactUserName = $row['contactUserName'];
                    $contactType = $row['contactType'];

                    $html.="
                    <tr><td>$contactUserName</td>
                        <td>$contactType</td>";
                }
                $html.= "</tbody></table></div></th><br>";

                $html.="<th><div
                style='
                border-radius: 5px;
                align-contents: right;
                background-color: white;
                padding: 20px;Margin:5px'>
                <table class='table table-bordered'>
                    <thead>
                    <tr>
                    <th>Username</th>
                    <th>Block Status</th>
                    </tr>
                    </thead>
                <tbody>";
                $contactquery = $this->con->prepare("select * from contactList where userName = '$userName'");
                $contactquery->execute();

                while($row = $contactquery->fetch(PDO::FETCH_ASSOC)){
                    $contactUserName = $row['contactUserName'];
                    $status = $row['status'];

                    $html.="
                    <tr><td>$contactUserName</td>
                        <td>$status</td></tr>";
                }
                $html.= "</tbody></table></div></th></tr></table>";

                return $html;
            }
        }
        catch(Exception $e){
            echo"Some Error Occured: ".$e->getMessage();
        }
    }

    public function makefriends($userName, $friendName, $relationType){
    	echo "Relationship status with " . $friendName . " changed to ". $relationType;

    	$checkquery = $this->con->prepare("SELECT * from contactList where userName='$userName' and contactUserName = '$friendName'");
    	$checkquery->execute();

    	if($checkquery->rowCount()==0){
	    	$query = $this->con->prepare("INSERT INTO contactList(userName, contactUserName, contactType) VALUES('$userName', '$friendName', '$relationType')");
	        $query->execute();
	    }
	    else{
	    	$query = $this->con->prepare("UPDATE contactList SET contactType = '$relationType' where userName='$userName' and contactUserName = '$friendName'");
	        $query->execute();
    	}
      header("location:friend.php");
    }

    public function blockfriends($userName, $friendName, $relationType){
        echo "You have " .$relationType. " user " . $friendName;

        $checkquery = $this->con->prepare("SELECT * from contactList where userName='$userName' and contactUserName = '$friendName'");
        $checkquery->execute();

        if($checkquery->rowCount()!=0){
            $query = $this->con->prepare("UPDATE contactList SET status = '$relationType' where userName='$userName' and contactUserName = '$friendName'");
            $query->execute();
        }
        else{
            $query = $this->con->prepare("INSERT INTO contactList(userName, contactUserName, status) VALUES('$userName', '$friendName', '$relationType')");
            $query->execute();
        }
       header("location:friend.php");
    }

}
