<?php
$id=$_GET['id'];
include("config.php");
$sql="DELETE FROM sinhvien WHERE ID=$id";
if(mysqli_query($conn,$sql)){
    mysqli_close($conn);
    header("Location:SinhVien.php");
    exit;
}
else{

   echo"Error".mysqli_connect_error();
}

?>