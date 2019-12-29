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

            <!-- <li class="nav-item dropdown">
                <a data-toggle="dropdown"><img src="icons/question.svg" alt=""> Help
                    <img src="icons/chevron-down.svg" alt=""></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                    <div class="dropdown-divider">
                    </div> <a class="dropdown-item" href="#">Separated link</a>
                </div>
            </li> -->

            <ul class="navbar-nav ml-md"></ul>
            <li class="nav-item dropdown">
                <a id="navbarDropdownMenuLink" data-toggle="dropdown">JullyVui<img src="icons/chevron-down.svg" alt=""></a></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#"><img src="icons/person.svg" alt=""> My Profile </a>
                    <a class="dropdown-item" href="#"><img src="icons/envelope.svg" alt=""> Message</a>
                    <a class="dropdown-item" href="#"><img src="icons/gear.svg" alt=""> Settings</a>
                    <div class="dropdown-divider">
                    </div>
                    <a class="dropdown-item" href="HomeLogin.php"><img src="icons/box-arrow-right.svg" alt=""> Logout</a>
                </div>
            </li>
        </nav>
    </div>