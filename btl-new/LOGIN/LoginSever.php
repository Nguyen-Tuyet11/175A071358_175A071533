<?php
$error='';
if(isset($_POST['submit'])){
    if(empty($_POST['Username'])|| empty($_POST['Password'])){
        $error="Username or Password is Invalid";
    }
    else{
        $user=$_POST['Username'];
        $pass=$_POST['Password'];
        //Kết nối vs thiết bị sử dụng user và pass
        $conn=mysqli_connect("localhost","root","","webbtl");
        // select database
        $db=mysqli_select_db($conn,"test");
        //sql query infomation of registed user and finds user match
        $query=mysqli_query($conn,"SELECT*FROM userpass WHERE pass='$pass'AND user='$user' AND user_level=1 ");
        $rows=mysqli_num_rows($query);
        if($rows==1){
            $hashed_passcode=password_hash($pass,PASSWORD_DEFAULT);
            echo $hashed_passcode;
            header("Location:../Home/admin.php");
        }
        else{
            $error="Username or Passwors is Invalid";
        }
        // Đóng chuối kết nối
        mysqli_close($conn);

    }
}
?>

