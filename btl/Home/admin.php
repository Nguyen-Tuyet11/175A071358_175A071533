<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ADMIN</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <!-- jQuery library -->
    <script src="js/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="js/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="js/bootstrap.min.js"></script>


</head>

<body>
    <div class="wrapper">
        <!-- NAVBAR-->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="logo">
                <a href="#">
                    <img src="img/thuyloi.jpg" alt="ThuyLoi">
                </a>
            </div>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <div class="container-fluid">
                        <div class="navbar-btn">
                            <i class="fa fa-arrow-circle-left"></i>
                        </div>
                    </div>
                </li>

            </ul>
            <form navbar-form navbar-left>
                <div class="input-group">
                    <input type="text" name="" class="form-control" placeholder="Search....">
                    <span class="input-group-btn">
                            <button type="button" class="btn btn-primary">Go</button>
                    </span>
                </div>
            </form>

            <ul class="navbar-nav ml-md-auto"> </ul>

            <li class="nav-item dropdown">
                <a data-toggle="dropdown"><img src="icons/question.svg" alt=""> Help
                    <img src="icons/chevron-down.svg" alt=""></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                    <div class="dropdown-divider">
                    </div> <a class="dropdown-item" href="#">Separated link</a>
                </div>
            </li>

            <ul class="navbar-nav ml-md"></ul>
            <li class="nav-item dropdown">
                <a id="navbarDropdownMenuLink" data-toggle="dropdown">JullyVui<img src="icons/chevron-down.svg" alt=""></a></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#"><img src="icons/person.svg" alt=""> My Profile </a>
                    <a class="dropdown-item" href="#"><img src="icons/envelope.svg" alt=""> Message</a>
                    <a class="dropdown-item" href="#"><img src="icons/gear.svg" alt=""> Settings</a>
                    <div class="dropdown-divider">
                    </div>
                    <a class="dropdown-item" href="#"><img src="icons/box-arrow-right.svg" alt=""> Logout</a>
                </div>
            </li>
        </nav>

    </div>
    <div class="main">
        <div class="row">
            <div class="col-md-2">
                <div class="slidebar">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-home" aria-selected="true">Dashboard</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="SinhVien.php" role="tab" aria-controls="v-pills-profile" aria-selected="false">SinhVien</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">Danh Sách Sinh Viên</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">Điểm</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">Học Bổng</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">Giảng Viên</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">Danh sách Giảng Viên</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">Lịch Dạy</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">Môn Học</a>
                        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-messages" aria-selected="false">Lớp học phần</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">Lớp Chuyên Ngành</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">Chuyên Ngành</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">Khoa</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">Ngành Học</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">Thời Khóa Biểu</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">Liên Hệ</a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false"></a>

                    </div>
                </div>
            </div>
            <div class="col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <h5>Bảng Điều Hướng</h5>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="metric">
                                <a href=""><span class="icon">  <i class="fa fa-user"></i> </span></a>
                                <p>
                                    <span class="number">300</span>
                                    <span class="title">Teacher</span>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="metric">
                                <a href=""><span class="icon"><i class="fas fa-user-friends"></i></span></a>
                                <p>
                                    <span class="number">5000</span>
                                    <span class="title">Students</span>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="metric">
                                <a href=""><span class="icon"></span></a>
                                <p>
                                    <span class="number">10</span>
                                    <span class="title">Khoa</span>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="metric">
                                <a href=""><span class="icon"><i class="fas fa-book-open"></i></span></a>
                                <p>
                                    <span class="number">700</span>
                                    <span class="title">Môn Học</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="calendar">
                    <iframe src="https://calendar.google.com/calendar/embed?height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;ctz=Asia%2FHo_Chi_Minh&amp;src=dHJhbnZhbm5iOTRAZ21haWwuY29t&amp;src=dmkudmlldG5hbWVzZSNob2xpZGF5QGdyb3VwLnYuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%2322AA99&amp;color=%231F753C"
                        style="border-width:0" width="100%" height="300" frameborder="0" scrolling="no"></iframe>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>