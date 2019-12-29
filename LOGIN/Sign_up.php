<!-- Nơi đặt biểu mẫu đăng ký và xử lý đầu vào của người dùng -->
<?php
if($_POST){
    $email=isset($_POST['email'])? $_POST['email']:"";
    if(empty($email)){
        echo "<div>Emaill connot be empty</div>";
    }
    // filter_var() là kiểm tra xem email hợp lệ không 
    else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        echo "<div>Địa chỉ Email của bạn không hợp lệ...Vui lòng thử lại!</div>"
    }
    else{
        // Kết nối cơ sở dữ liệu
        include'Tên file kết nối';
        $query="SELECT id from users WHERE email=? and verified='1'";
        // verified là đã xác minh
        $smtp=$conn->bindParam(1,$email);
    }
}
?>