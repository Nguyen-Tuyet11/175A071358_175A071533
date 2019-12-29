<?php

/* Database Connection */
//Kết nối vs thiết bị sử dụng user và pass
$conn=mysqli_connect("localhost","root","");
// select database
$db=mysqli_select_db($conn,"test");

if(!$db){
    die('Kết nối thất bại.Kiểm tra lại các đối số truyềnn vào.'.mysqli_connect_error());
  }

?>