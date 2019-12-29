<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BangDiem</title>
    <link rel="stylesheet" href="BangDiem.css">
</head>
<body>
    <div class="header">
        <span>HỆ THỐNG ĐĂNG KÝ HỌC - ĐẠI HỌC THỦY LỢI</span>
        <div class="profile">
            <a href="">Trang chủ</a>
        </div>
    </div>
    <div class="main">
        
        <div class="bd">
            <form method="get">
                <div class="choose1">
                    <div>
                        <span class="MSV">Mã sinh viên</span><br>
                        <input type="text" name='MSV'>
                    </div>
                    <div>
                        <label>Khoa:</label>
                        <br>
                        <select>
                            <option selected>Công nghệ thông tin</option>
                            <option disabled>Công trình</option>
                            <option disabled>Kinh tế</option>
                            <option disabled>Quản trị kinh doanh</option>
                        </select>
                    </div>
                    <div>
                        <label>Khóa:</label>
                        <br>
                        <select>
                            <option selected>K20</option>
                            <option disabled>K19</option>
                            <option disabled>K18</option>
                            <option disabled>K17</option>
                        </select>
                    </div>
                    <div>
                        <label>Lớp:</label>
                        <br>
                        <select>
                            <option selected>---</option>
                            <option value="20HT">20HT</option>
                            <option name="20TH1">20TH1</option>
                            <option disabled>20TH2</option>
                            <option disabled>20PM</option>
                        </select>
                    </div>
                </div>
                <div class="choose2">
                    <div>
                        <span>Chứng minh thư</span><br>
                        <input type="text" name='CMT'>
                    </div>
                    <div>
                        <label>Năm học:</label>
                        <br>
                        <select>
                            <option selected>2019-2020</option>
                            <option disabled>2018-2019</option>
                            <option disabled>2017-2018</option>
                        </select>
                    </div>
                    <div>
                        <label>Học kỳ:</label>
                        <br>
                        <select>
                            <option selected>1</option>
                            <option disabled>2</option>
                            <option disabled>--</option>
                        </select>
                    </div>
                    <div>
                        <label>Đợt:</label>
                        <br>
                        <select>
                            <option selected>---</option>
                            <option value="1">1</option>
                            <option name="2">2</option>
                        </select>
                    </div>
                </div>
                <div style="text-align: right;" class="view"><input type="submit" name="view" value="Xem"></div>
            </form>
        </div>
        <table border="1" width="50%" cellpadding='0' cellspacing='0' class="table">
            <tr>
                <th>STT</th>
                <th>Mã môn học</th>
                <th>Tên môn học</th>
                <th>Số TC</th>
                <th>Lần học</th>
                <th>Lần thi</th>
                <th>Điểm thứ</th>
                <th>Đánh giá</th>
                <th>Mã sinh viên</th>
                <th>Quá trình</th>
                <th>Thi</th>
                <th>TKHP</th>
                
            </tr>
            <tr>
                <td>1</td>
                <td>CSE_487</td>
                <td>Lý thuyết tính toán</td>
                <td>3</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>Khá</td>
                <td>12345678</td>
                <td>8</td>
                <td>8</td>
                <td>8</td>
                
            </tr>
            <tr>
                <td>2</td>
                <td>CSE_485</td>
                <td>Cơ sở dữ liệu</td>
                <td>3</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>Khá</td>
                <td>12345678</td>
                <td>8</td>
                <td>8</td>
                <td>8</td>
                
            </tr>
            <tr>
                <td>3</td>
                <td>CSE_488</td>
                <td>Hệ điều hành</td>
                <td>4</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>Khá</td>
                <td>12345678</td>
                <td>7</td>
                <td>8</td>
                <td>8</td>
                
            </tr>

            <tr>
                <?php
                    if(isset($_post['Xemdiem'])){
                        if(!empty($_post['MSV'])&& empmy($_get['CMT']) && empmy($_get['Namhoc']) && empmy($_get['Hocki']) && empmy($_get['Giaidoan']));
                    }
                ?>
            </tr>
        </table>   
    </div>
    <div class="footer">
        <span>@ copyright design by NguyenThiAnhTuyet-TranThiVui</span>
    </div>
</body>
</html>