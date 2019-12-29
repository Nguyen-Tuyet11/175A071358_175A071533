<!-- THONG BAO hiện ra khi click vào nút Thêm-->
<div class="modal" tabindex="-1" role="dialog" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Chọn cách thêm GV</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
                </div>
                <div class="modal-body">
                    <form action="">
                    <i class="fa fa-table" aria-hidden="true"></i> &nbsp<a href="FThemSV.php">Thêm bằng form</a></br></br>
                        <!-- <div class="form-group">
                            <label for="mesage">Message</label>
                            <textarea class="form-control" id="message" rows="3"></textarea>
                        </div> -->
                     <i class="fa fa-file-excel-o" aria-hidden="true"></i> &nbsp <a href="">Thêm bằng Excel</a>
                    </form>
                </div>

            </div>
        </div>
    </div>
<div class="col-md-10">
                <div class="panelSV"> 
                       <div class="panel-heading">
                                <h5>Giang Viên</h5>
                        </div>
                <div class="row">
                       
                        <form class="fmcenter" style="margin-left:40px">
                            <div class="input-group">
                            <input type="text" name="" class="form-control" placeholder="Mã GV....">
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-primary ">Tìm Kiếm</button>
                            </span>
                           
                        </form>
                   </div>
                   <div class="them" style="display:flex;">
                   <div class="col-6 d-flex justify-content-end align-items-center">
                        <button class="btn btn-primary " data-toggle="modal1" data-target="#myModal">
                        <img src="//calendar.google.com/googlecalendar/images/icon_print.gif" style="cursor: pointer;" width="16" height="16" > Print
                    </div>
                   <!-- <a href="FThemSV.php" >Thêm Sinh Viên</a> -->
                   <div class="col-7 d-flex justify-content-end align-items-center">
                        <button class="btn btn-primary " data-toggle="modal" data-target="#myModal">
                        <i class="fa fa-plus" aria-hidden="true"></i> Thêm 
                    </div>
                  </div>
                   
                    <div class="table">
                        <?php

                                include('config.php');
                                $sql='SELECT ID,HoTen,Email,ChuyenMon,gioitinh FROM giangvien';
                                                            
                                $result= mysqli_query($conn,$sql);
                                echo "<table border='1' cellpadding='10'>";
                                echo "<tr>
                                <th><font color='Red'>Mã GV</font></th>
                                <th><font color='Red'>Họ tên</font></th>
                                <th><font color='Red'>Email</font></th>
                                <th><font color='Red'>Chuyên Môn</font></th>
                                <th><font color='Red'>Giới Tính</font></th>
                                <th ><font color='Red'>Edit</font></th>
                                <th ><font color='Red'>Delete</font></th>
                               
                                </tr>";
                                if(mysqli_num_rows($result)>0)
                                {
                                while($row = mysqli_fetch_assoc( $result ))
                                {

                                echo "<tr>";
                                echo '<td><b><font color="#663300">' . $row['ID'] . '</font></b></td>';
                                echo '<td><b><font color="#663300">' . $row['HoTen'] . '</font></b></td>';
                                echo '<td><b><font color="#663300">' . $row['Email'] . '</font></b></td>';
                                echo '<td><b><font color="#663300">' . $row['ChuyenMon'] . '</font></b></td>';
                                echo '<td><b><font color="#663300">' . $row['gioitinh'] . '</font></b></td>';
                                echo '<td><b><font color="#663300"><a href="edit.php?id=' . $row['ID'] . '"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></font></b></td>';
                                echo '<td><b><font color="#663300"><a href="delete.php?id=' . $row['ID'] . '"><svg class="trash" width="20px" height="20px" viewBox="0 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"> <g stroke="none" stroke-width="1" fill-rule="evenodd"> <g id="trash"> <path d="M12,3.5 C12,2.4 11.1,1.5 10,1.5 C8.9,1.5 8,2.4 8,3.5 L5.5,3.5 C4.68,3.5 4,4.18 4,5 L4,7 C4,7.28 4.22,7.5 4.5,7.5 L15.5,7.5 C15.78,7.5 16,7.28 16,7 L16,5 C16,4.18 15.32,3.5 14.5,3.5 L12,3.5 Z M10,2.5 C10.56,2.5 11,2.94 11,3.5 L9,3.5 C9,2.94 9.44,2.5 10,2.5 L10,2.5 Z M15,6.5 L5,6.5 L5,5 C5,4.72 5.22,4.5 5.5,4.5 L14.5,4.5 C14.78,4.5 15,4.72 15,5 L15,6.5 Z M14.5,8.5 C14.22,8.5 14,8.72 14,9 L14,16 C14,16.28 13.78,16.5 13.5,16.5 L6.5,16.5 C6.22,16.5 6,16.28 6,16 L6,9 C6,8.72 5.78,8.5 5.5,8.5 C5.22,8.5 5,8.72 5,9 L5,16 C5,16.82 5.68,17.5 6.5,17.5 L13.5,17.5 C14.32,17.5 15,16.82 15,16 L15,9 C15,8.72 14.78,8.5 14.5,8.5 L14.5,8.5 Z M9,9 C9,8.72 8.78,8.5 8.5,8.5 C8.22,8.5 8,8.72 8,9 L8,15 C8,15.28 8.22,15.5 8.5,15.5 C8.78,15.5 9,15.28 9,15 L9,9 Z M12,9 C12,8.72 11.78,8.5 11.5,8.5 C11.22,8.5 11,8.72 11,9 L11,15 C11,15.28 11.22,15.5 11.5,15.5 C11.78,15.5 12,15.28 12,15 L12,9 Z" id="j"></path> </g> </g> </svg></a></font></b></td>';
                                echo "</tr>";

                                }
                                }

                                echo "</table>";

                        ?>
                    </div>
                </div>
</div>
                
            </div>
        </div>
    </div>
    </div>
</body>

</html>