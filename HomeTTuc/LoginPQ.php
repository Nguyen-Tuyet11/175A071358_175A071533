<?php
$conn=mysqli_connect("localhost","root","");
$db=mysqli_select_db($conn,"test");
if(!$db){
    die("Connect fail".mysqli_connect_error());
    exit();
}
if(isset($_POST['submit'])){
    if(empty($_POST['Usename'])||empty($_POST['Password']) ){
        echo "User or Pass is inval";
    }
    else{
        $user=$_POST['Username'];
        $pass=$_POST['Password'];
        $query ="SELECT *FROM userpass WHERE user=$user and pass=$pass";
        $result=mysqli_query($conn,$query);
        $row=mysqli_num_rows($result);
        // $row=mysqli_fetch_assoc($result);
        if($row==1){
            if($row['user_type']=="Admin"){
                header("Location:../Home/Home.php");
            }elseif($row['user_type']=="User"){
                header("Location : HomeTT.php") ;  
            }
                
        }

    }
}
?>
