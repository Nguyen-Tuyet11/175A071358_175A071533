<?php
include("LoginPQ.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tin Tức</title>
    <link rel="stylesheet" href="css/tt.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">


</head>

<body>
    <!-- THONG BAO -->
    <div class="modal" tabindex="-1" role="dialog" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">User Log In</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
                </div>
                <div class="modal-body">
                    <form action="" method="Post">
                        <div class="form-group">
                            <label for="name">Username</label>
                            <input type="text" name="Usename" class="form-control " id="name"  placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="phone">Password</label>
                            <input type="text" class="form-control" id="phone" placeholder="Password">
                        </div>
                        <!-- <div class="form-group">
                            <label for="mesage">Message</label>
                            <textarea class="form-control" id="message" rows="3"></textarea>
                        </div> -->
                        <input type="submit" class="btn btn-primary justify-content-end " name="submit">
                    </form>
                </div>

            </div>
        </div>
    </div>
    <div class="header">
        <div class="logo">
            <img src="http://tlu.edu.vn/dhtl/images/front/logo.png" alt="logo">
        </div>
        <div class="col-6 d-flex justify-content-end align-items-center">
            <button class="btn btn-primary " data-toggle="modal" data-target="#myModal">
               Đăng Nhập
            </button>
        </div>

    </div>
    <div class="menu">

        <ul class="clearfix">
            <li class="home"><a href=""><i class="fas fa-home" ></i></a></li>
            <li><a href="">TIN TỨC & THÔNG BÁO</a>
                <ul class="sub-menu">
                    <li><a href="#">>> Tin tức</a></li>
                    <li><a href="#">>> Thông báo</a></li>
                    <li><a href="#">>> Tin video</a></li>
                </ul>
            </li>
            <li><a href="">TUYỂN SINH</a>
                <ul class="sub-menu">
                    <li><a href="#">>> Đại học chính quy</a></li>
                    <li><a href="#">>> Thạc sĩ</a></li>
                    <li><a href="#">>> Tiến sĩ</a></li>
                    <li><a href="#">>> Vừa làm vừa học</a>
                        <li><a href="#">>> Tuyển sinh liên thông</a></li>
                        <li><a href="#">>> Văn bằng 2</a></li>
                </ul>
                </li>
                <li><a href="../Diem/BangDiem.php">TRA CỨU ĐIỂM</a></li>
                <li><a href="">ĐÀO TẠO</a>
                    <ul class="sub-menu">
                        <li><a href="#">>> Đại học chính quy</a></li>
                        <li><a href="#">>> Thạc sĩ </a></li>
                        <li><a href="#">>> Tiến sĩ</a></li>
                        <li><a href="#">>> Vừa học vừa làm</a>
                            <li><a href="#">>> Kiểm định và bảo đảm chất lượng</a></li>
                    </ul>
                    </li>
                    <li><a href="">KHOA HỌC VÀ CÔNG NGHỆ</a>
                        <ul class="sub-menu">
                            <li><a href="#">>> Đại học chính quy</a></li>
                            <li><a href="#">>> Thạc sĩ </a></li>
                            <li><a href="#">>> Tiến sĩ</a></li>
                            <li><a href="#">>> Vừa học vừa làm</a>
                        </ul>
                        </li>
                        <li><a href="">SINH VIÊN</a>
                            <ul class="sub-menu">
                                <li><a href="#">>> Đại học chính quy</a></li>
                                <li><a href="#">>> Thạc sĩ </a></li>
                                <li><a href="#">>> Tiến sĩ</a></li>
                                <li><a href="#">>> Vừa học vừa làm</a>
                                    <li><a href="#">>> Kiểm định và bảo đảm chất lượng</a></li>
                            </ul>
                            </li>

        </ul>

    </div>

    <div class="res_menu">
        <div id="icon"><i class="fas fa-bars"></i></div>
        <ul id="nav">
            <li><a href="">TIN TỨC & THÔNG BÁO</a></li>
            <li><a href="">TUYỂN SINH</a></li>
            <li><a href="">LIÊN HỆ</a></li>
            <li><a href="">ĐÀO TẠO</a></li>
            <li><a href="">KHOA HỌC VÀ CÔNG NGHỆ</a></li>
            <li><a href="">SINH VIÊN</a></li>
        </ul>
    </div>

    <div class="main">
        <div class="container">
            <div class="row">
                <div class="item">
                    <div class="img">
                        <img src="img/thong-bao.jpg" alt="">
                    </div>
                    <div class="title">
                        <h3><a href="#" class="a">Hội thảo chương trình Meister School đào tạo kỹ sư làm việc tại Nhật Bản</a></h3>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img/begiang.jpg" alt="">
                    </div>
                    <div class="title">
                        <h3><a href="#" class="a">Bế giảng khóa học bồi dưỡng tiếng Anh cho công chức thuộc Bộ Nông nghiệp và Phát triển nông thôn năm 2019</a></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid  ">
        <div class="row">
            <div class="col-md-12 justify-content-end">
                <nav>
                    <ul class="pagination">

                        <li class="page-item">
                            <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">4</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">5</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="footer-top">

            <h3><span class="h3">©  2019   - Trường đại học Thủy Lợi</span></h3>
            <div class="socials">
                <a href="https://www.facebook.com/daihocthuyloi1959/?fref=ts" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.youtube.com/user/daihocthuyloi" target="_blank"><i class="fab fa-youtube"></i></a>
                <a href="https://twitter.com/Daihocthuyloihn" target="_blank"><i class="fab fa-twitter"></i></a>
            </div>
        </div>
        <div class="footer-middle">
            <div class="map">
                <img src="img/TLU-map.jpg" alt="">
            </div>
            <div class="container">

                <div class="row">

                    <div class="address">TRƯỜNG ĐẠI HỌC THỦY LỢI<br> Địa chỉ : 175 TÂY SƠN, ĐỐNG ĐA, HÀ NỘI.<br> Điện thoại: (024) 3852 2201 - Fax: (024) 3563 3351<br> Email: <a href="#">phonghcth@tlu.edu.vn</a></div>


                    <div class="address">TRƯỜNG ĐẠI HỌC THỦY LỢI - CƠ SỞ 2<br> Địa chỉ : Số 2 - Đường Trường Sa - P.17 - Q.Bình Thạnh - Tp.Hồ Chí Minh<br> Điện thoại: (84)028.38&nbsp;400 532 - Fax: (84)028.38 400542<br> Email: <a href="#">cs2@tlu.edu.vn</a></div>
                </div>



                <div class="row">

                    <div class="address">TRƯỜNG ĐẠI HỌC THỦY LỢI - CƠ SỞ 2<br> Phường An Thạnh - TX Thuận An - Tỉnh Bình Dương<br> Điện thoại: (84).650.3748 620<br> Fax:(84).650.3833 489</div>

                    <div class="address">VIỆN ĐÀO TẠO VÀ KHOA HỌC ỨNG DỤNG MIỀN TRUNG<br> Địa chỉ: Số 115 Trần Phú, Thành phố&nbsp;Phan Rang, Tỉnh Ninh Thuận<br> Điện thoại: 02593.823 027, 02593.823 028<br> Email: <a href="#"> trungtamdh2@tlu.edu.vn</a></div>
                </div>

            </div>
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/tt.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/popper.min.js"></script>
</body>

</html>