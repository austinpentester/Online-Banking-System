<?php


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bank";


$conn = mysqli_connect($servername, $username, $password, $dbname);





function show_all_users(){
    global $conn;
    $query = "SELECT * FROM `users`";
    $result = mysqli_query($conn, $query);

    if(mysqli_num_rows($result) > 0){
        $posts = [];
        while($row = mysqli_fetch_assoc($result)){
            $posts[] = $row;
        }
        return $posts;
    } else{
        return [];
    }

     
     
}





function show_users($id){
    global $conn;
    $query = "SELECT * FROM `users` WHERE `account_number`='$id';";
    $result = mysqli_query($conn, $query);

    if(mysqli_num_rows($result) > 0){
        $posts = [];
        while($row = mysqli_fetch_assoc($result)){
            $posts[] = $row;
        }
        return $posts;
    } else{
        return [];
    }
}

// 




function money_update($sender_id,$ammount,$r_id){
    global $conn;
    $storge = "SELECT * FROM `users` WHERE account_number = $sender_id";
    $result = mysqli_query($conn, $storge);

    $row = mysqli_fetch_assoc($result);

    // maths

    $a = $row['current_balance'];
    $b = $a - $ammount;

    // update 

    $update = "UPDATE `users` SET `current_balance` = '$b' WHERE `users`.`account_number` = $sender_id;";
    $result1 = mysqli_query($conn, $update);


    // update money in user side

    $storge2 = "SELECT * FROM `users` WHERE account_number = $r_id";
    $result3 = mysqli_query($conn, $storge2);

    $row2 = mysqli_fetch_assoc($result3);

    // maths

    $ra = $row2['current_balance'];
    $rb = $ra + $ammount;


    $update2 = "UPDATE `users` SET `current_balance` = '$rb' WHERE `users`.`account_number` = $r_id;";
    $result1 = mysqli_query($conn, $update2);

   

}


