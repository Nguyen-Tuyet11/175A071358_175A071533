 <!-- Tạo ông barie ở đầu trang admin để ktra -->
 <?php
 session_start();
 if(!isset($_SESSION['user_level']) or($_SESSION(['user_level']!=1)))
     {
        header("Location:../Login/HomeLogin.php");
     }
     exit();
 ?>
 <?php
 include("Navbar_Admin.php");
 ?>
 <div class="main">
    <div class="row">
 <?php
 include("SlidebarAdCol2.php");
 ?>
 <?php
  include("NoidungHome.php");
 ?>
