-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2020 lúc 09:32 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id12088928_qldsv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `ID` varchar(10) NOT NULL,
  `TenCN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `KhoaID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chuyennganh`
--

INSERT INTO `chuyennganh` (`ID`, `TenCN`, `KhoaID`) VALUES
('1', 'Công nghệ thông tin', '1'),
('10', 'Điện công nghiệp và dân dụng ', '5'),
('11', 'Năng lượng mới và tái tạo', '5'),
('2', 'Hệ thống thông tin', '1'),
('3', 'Kỹ thuật phần mềm', '1'),
('4', 'Kỹ thuật công trình thủy', '2'),
('5', 'Thủy điện và công trình năng lượng', '2'),
('6', 'Công trình Cảng-Đường Thủy', '2'),
('7', 'Kỹ thuật tài nguyên nước', '3'),
('8', 'Kỹ thuật cơ khí', '4'),
('9', 'Hệ thống điện', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdiemsv`
--

CREATE TABLE `ctdiemsv` (
  `LoaiDiemID` varchar(10) NOT NULL,
  `SinhVienID` varchar(10) NOT NULL,
  `LopTC_ID` int(11) NOT NULL,
  `Diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ctdiemsv`
--

INSERT INTO `ctdiemsv` (`LoaiDiemID`, `SinhVienID`, `LopTC_ID`, `Diem`) VALUES
('1', '1', 4, 8),
('2', '1', 4, 10),
('3', '1', 2, 7),
('4', '1', 2, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphantramdiemloptc`
--

CREATE TABLE `ctphantramdiemloptc` (
  `LoaiDiemID` varchar(10) NOT NULL,
  `LopTC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ctphantramdiemloptc`
--

INSERT INTO `ctphantramdiemloptc` (`LoaiDiemID`, `LopTC_ID`) VALUES
('1', 4),
('2', 4),
('3', 2),
('4', 2),
('5', 1),
('6', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `ID` varchar(10) NOT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8 NOT NULL,
  `KhoaID` varchar(10) NOT NULL,
  `HocVi` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Thạc sĩ',
  `HocHam` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Phó giáo sư',
  `ChuyenMon` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) NOT NULL,
  `gioitinh` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`ID`, `HoTen`, `KhoaID`, `HocVi`, `HocHam`, `ChuyenMon`, `email`, `gioitinh`) VALUES
('1', 'Trần Kim', '1', 'Thạc sĩ', 'Phó giáo sư', 'HTTT', 'kim@wru.vn', 'nữ'),
('2', 'Nguyễn MI', '1', 'Thạc sĩ', 'Thạc sĩ', 'CNTT', 'miwwru.com', 'nữ'),
('3', 'Phùng Thế Việt', '1', 'Thạc sĩ', 'Phó giáo sư', 'CNTT', 'viet@gmail.com', 'Nam'),
('4', 'Tiếng Văn Anh', '1', 'Thạc sĩ', 'Thạc sĩ', 'CNTT', 'anh@gmail.com', 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kehoachgiang`
--

CREATE TABLE `kehoachgiang` (
  `MonHocID` varchar(10) NOT NULL,
  `ChuyenNganhID` varchar(10) NOT NULL,
  `Ngay` date DEFAULT curdate(),
  `HocKy` int(11) DEFAULT 1,
  `NienKhoa` int(11) DEFAULT year(curdate())
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khanangdayhoc`
--

CREATE TABLE `khanangdayhoc` (
  `MonHocID` varchar(10) NOT NULL,
  `GiangVienID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khanangdayhoc`
--

INSERT INTO `khanangdayhoc` (`MonHocID`, `GiangVienID`) VALUES
('CSE280', '2'),
('CSE371', '1'),
('CSE381', '1'),
('CSE486', '1'),
('ENGL112', '3'),
('ENGL112', '4'),
('PHYS121', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `ID` varchar(10) NOT NULL,
  `TenKhoa` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`ID`, `TenKhoa`) VALUES
('1', 'Công nghệ thông tin'),
('4', 'Khoa cơ khí'),
('2', 'Khoa Công Trình'),
('7', 'Khoa Hóa và Môi trường'),
('6', 'Khoa Kinh tế và quản lý'),
('3', 'Khoa Kỹ thuật tài nguyên nước'),
('5', 'Khoa điện tử');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidiem`
--

CREATE TABLE `loaidiem` (
  `ID` varchar(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `PhanTram` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaidiem`
--

INSERT INTO `loaidiem` (`ID`, `Ten`, `PhanTram`) VALUES
('1', 'QuaTrinh', 30),
('2', 'Thi', 70),
('3', 'QuaTrinh', 40),
('4', 'Thi', 60),
('5', 'QuaTrinh', 50),
('6', 'QuaTrinh', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `ID` varchar(10) NOT NULL,
  `TenLop` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ChuyenNganhID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`ID`, `TenLop`, `ChuyenNganhID`) VALUES
('1', '59TH1', ''),
('2', '59TH2', ''),
('3', '59TH3', ''),
('4', '59CT1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop1`
--

CREATE TABLE `lop1` (
  `ID` varchar(10) NOT NULL,
  `TenLop` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ChuyenNganhID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lop1`
--

INSERT INTO `lop1` (`ID`, `TenLop`, `ChuyenNganhID`) VALUES
('1', '59TH1', '1'),
('2', '59TH2', '1'),
('3', '59TH3', '1'),
('4', 'HT', '2'),
('5', 'PM1', '3'),
('6', 'PM2', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loptinchi`
--

CREATE TABLE `loptinchi` (
  `ID` int(11) NOT NULL,
  `GiangVienID` varchar(10) NOT NULL,
  `MonHocID` varchar(10) NOT NULL,
  `NienKhoa` int(11) DEFAULT 2019,
  `HocKy` int(11) DEFAULT 1,
  `SoSVToiTieu` int(11) DEFAULT 10,
  `SoSVToiDa` int(11) DEFAULT 70,
  `NgayBatDau` date DEFAULT curdate(),
  `NgayKetThuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loptinchi`
--

INSERT INTO `loptinchi` (`ID`, `GiangVienID`, `MonHocID`, `NienKhoa`, `HocKy`, `SoSVToiTieu`, `SoSVToiDa`, `NgayBatDau`, `NgayKetThuc`) VALUES
(1, '1', 'CSE486', 2019, 1, 10, 70, '2019-01-10', '2019-02-17'),
(2, '2', 'PHYS121', 2019, 1, 20, 70, '2019-01-10', '2019-02-15'),
(3, '1', 'CSE381', 2019, 2, 25, 50, '2019-03-10', '2019-03-16'),
(4, '4', 'ENGL112', 2019, 2, 30, 50, '2019-03-10', '2019-04-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `ID` varchar(10) NOT NULL,
  `TenMH` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `SoTietLyThuyet` int(11) DEFAULT 0,
  `SoTietThucHanh` int(11) DEFAULT 0,
  `SoTinChi` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`ID`, `TenMH`, `SoTietLyThuyet`, `SoTietThucHanh`, `SoTinChi`) VALUES
('CSE280', 'Ngôn ngữ lập trình', 20, 20, 4),
('CSE371', 'Phương pháp số', 20, 15, 3),
('CSE381', 'Lập trình nâng cao', 20, 15, 3),
('CSE484', 'Cơ sở dữ liệu', 20, 20, 4),
('CSE486', 'Hệ quản trị cơ sở dữ liệu', 20, 15, 3),
('ENGL112', 'Tiếng Anh 1', 15, 15, 2),
('ENGL123', 'Tiếng Anh 2', 20, 15, 2),
('ITL112', 'Pháp luật đại cương', 15, 15, 2),
('PHYS121', 'Vật lý đại cương', 20, 15, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `ID` varchar(10) NOT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8 NOT NULL,
  `GioiTinh` varchar(3) CHARACTER SET utf8 DEFAULT 'Nữ',
  `DiaChi` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `NgaySinh` date NOT NULL,
  `KhoaHoc` int(11) DEFAULT 2019,
  `ChuyenNganhID` varchar(10) DEFAULT NULL,
  `LopID` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`ID`, `HoTen`, `GioiTinh`, `DiaChi`, `NgaySinh`, `KhoaHoc`, `ChuyenNganhID`, `LopID`, `Email`) VALUES
('1', 'Trần Thị Vui', 'Nữ', 'Ninh Bình', '1999-09-27', 2019, '1', '2', 'vuitran@gmail.com'),
('3', 'Nguyễn Hòa Phát Lộc', 'Nam', 'Hà Nội', '1998-10-04', 2019, '1', '1', 'hoaphat@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userpass`
--

CREATE TABLE `userpass` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `registration_date` datetime DEFAULT NULL,
  `user_type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `userpass`
--

INSERT INTO `userpass` (`id`, `user`, `FullName`, `pass`, `email`, `registration_date`, `user_type`) VALUES
(1, 'jully', 'Jully Alex', 'Vuivivu279763', 'jull@gmail.com', NULL, 'GV'),
(3, 'jullyvui', 'Nguyễn Quang Bình', '$2y$10$KfbmpZ/e4uSJmCl8q7Q1LOiZYQ6k8r7c5PolM.6yExF...', 'jullyv@gmail.com', NULL, 'Students'),
(4, 'hi', 'Trần Chí Công', 'hi', 'hi@gmail.com', NULL, 'QuanLy'),
(5, 'student', 'Trung Nhân', '$2y$10$KfbmpZ/e4uSJmCl8q7Q1LOiZYQ6k8r7c5PolM.6yExFEq26nhllOC', 'st@gmail.com', NULL, 'Students'),
(6, 'vui', 'Trần Vui', '123456', 'vuitran@gmail.com', NULL, 'Admin'),
(7, 'Jun', 'Jun Phạm', '123', 'jun@gmail.com', NULL, 'Admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`TenCN`),
  ADD KEY `FK_ChuyenNganh_Khoa` (`KhoaID`);

--
-- Chỉ mục cho bảng `ctdiemsv`
--
ALTER TABLE `ctdiemsv`
  ADD PRIMARY KEY (`LoaiDiemID`,`SinhVienID`,`LopTC_ID`),
  ADD KEY `FK_CTDiemSV` (`LoaiDiemID`,`LopTC_ID`),
  ADD KEY `FK_CTDiemSV1` (`SinhVienID`);

--
-- Chỉ mục cho bảng `ctphantramdiemloptc`
--
ALTER TABLE `ctphantramdiemloptc`
  ADD PRIMARY KEY (`LoaiDiemID`,`LopTC_ID`),
  ADD KEY `FK_CTPhanTramDiemLopTC_LopTC` (`LopTC_ID`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GiangVien_Khoa` (`KhoaID`);

--
-- Chỉ mục cho bảng `kehoachgiang`
--
ALTER TABLE `kehoachgiang`
  ADD PRIMARY KEY (`MonHocID`,`ChuyenNganhID`) USING BTREE,
  ADD KEY `FK_ChuyenNganh` (`ChuyenNganhID`,`MonHocID`) USING BTREE;

--
-- Chỉ mục cho bảng `khanangdayhoc`
--
ALTER TABLE `khanangdayhoc`
  ADD PRIMARY KEY (`MonHocID`,`GiangVienID`),
  ADD KEY `FK_KhaNang_GiangVien` (`GiangVienID`,`MonHocID`) USING BTREE;

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`TenKhoa`);

--
-- Chỉ mục cho bảng `loaidiem`
--
ALTER TABLE `loaidiem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Ten` (`Ten`) USING BTREE;

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`TenLop`);

--
-- Chỉ mục cho bảng `lop1`
--
ALTER TABLE `lop1`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`TenLop`),
  ADD KEY `FK_Lop_ChuyenNganh` (`ChuyenNganhID`);

--
-- Chỉ mục cho bảng `loptinchi`
--
ALTER TABLE `loptinchi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_LopTinChi_KhaNang` (`MonHocID`,`GiangVienID`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`TenMH`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_SinhVien_ChuyenNganh` (`ChuyenNganhID`),
  ADD KEY `FK_SinhVien_Lop1` (`LopID`);

--
-- Chỉ mục cho bảng `userpass`
--
ALTER TABLE `userpass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `loptinchi`
--
ALTER TABLE `loptinchi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `userpass`
--
ALTER TABLE `userpass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD CONSTRAINT `FK_ChuyenNganh_Khoa` FOREIGN KEY (`KhoaID`) REFERENCES `khoa` (`ID`);

--
-- Các ràng buộc cho bảng `ctdiemsv`
--
ALTER TABLE `ctdiemsv`
  ADD CONSTRAINT `FK_CTDiemSV` FOREIGN KEY (`LoaiDiemID`,`LopTC_ID`) REFERENCES `ctphantramdiemloptc` (`LoaiDiemID`, `LopTC_ID`),
  ADD CONSTRAINT `FK_CTDiemSV1` FOREIGN KEY (`SinhVienID`) REFERENCES `sinhvien` (`ID`);

--
-- Các ràng buộc cho bảng `ctphantramdiemloptc`
--
ALTER TABLE `ctphantramdiemloptc`
  ADD CONSTRAINT `FK_CTPhanTramDiemLopTC_LoaiDIem` FOREIGN KEY (`LoaiDiemID`) REFERENCES `loaidiem` (`ID`),
  ADD CONSTRAINT `FK_CTPhanTramDiemLopTC_LopTC` FOREIGN KEY (`LopTC_ID`) REFERENCES `loptinchi` (`ID`);

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `GiangVien_Khoa` FOREIGN KEY (`KhoaID`) REFERENCES `khoa` (`ID`);

--
-- Các ràng buộc cho bảng `kehoachgiang`
--
ALTER TABLE `kehoachgiang`
  ADD CONSTRAINT `FK_ChuyenNganh` FOREIGN KEY (`ChuyenNganhID`) REFERENCES `chuyennganh` (`ID`),
  ADD CONSTRAINT `FK_MonHoc` FOREIGN KEY (`MonHocID`) REFERENCES `monhoc` (`ID`);

--
-- Các ràng buộc cho bảng `khanangdayhoc`
--
ALTER TABLE `khanangdayhoc`
  ADD CONSTRAINT `FK_KhaNang_GiangVien` FOREIGN KEY (`GiangVienID`) REFERENCES `giangvien` (`ID`),
  ADD CONSTRAINT `FK_KhaNang_MonHoc` FOREIGN KEY (`MonHocID`) REFERENCES `monhoc` (`ID`);

--
-- Các ràng buộc cho bảng `lop1`
--
ALTER TABLE `lop1`
  ADD CONSTRAINT `FK_Lop_ChuyenNganh` FOREIGN KEY (`ChuyenNganhID`) REFERENCES `chuyennganh` (`ID`);

--
-- Các ràng buộc cho bảng `loptinchi`
--
ALTER TABLE `loptinchi`
  ADD CONSTRAINT `FK_LopTinChi_KhaNang` FOREIGN KEY (`MonHocID`,`GiangVienID`) REFERENCES `khanangdayhoc` (`MonHocID`, `GiangVienID`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `FK_SinhVien_ChuyenNganh` FOREIGN KEY (`ChuyenNganhID`) REFERENCES `chuyennganh` (`ID`),
  ADD CONSTRAINT `FK_SinhVien_Lop` FOREIGN KEY (`LopID`) REFERENCES `lop` (`ID`),
  ADD CONSTRAINT `FK_SinhVien_Lop1` FOREIGN KEY (`LopID`) REFERENCES `lop1` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
