-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2019 lúc 09:59 AM
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
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `ID` varchar(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `KhoaID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphantramdiemloptc`
--

CREATE TABLE `ctphantramdiemloptc` (
  `LoaiDiemID` varchar(10) NOT NULL,
  `LopTC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `ID` varchar(10) NOT NULL,
  `Ho` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `KhoaID` varchar(10) NOT NULL,
  `HocVi` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Thạc sĩ',
  `HocHam` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Phó giáo sư',
  `ChuyenMon` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `ID` varchar(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidiem`
--

CREATE TABLE `loaidiem` (
  `ID` varchar(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `PhanTram` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `ID` varchar(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `KhoaID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loptinchi`
--

CREATE TABLE `loptinchi` (
  `ID` int(11) NOT NULL,
  `GiangVienID` varchar(10) NOT NULL,
  `MonHocID` varchar(10) NOT NULL,
  `Nhom` int(11) NOT NULL,
  `NienKhoa` int(11) DEFAULT year(curdate()),
  `HocKy` int(11) DEFAULT 1,
  `SoSVToiTieu` int(11) DEFAULT 10,
  `SoSVToiDa` int(11) DEFAULT 70,
  `NgayBatDau` date DEFAULT curdate(),
  `NgayKetThuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `ID` varchar(10) NOT NULL,
  `Ten` varchar(50) NOT NULL,
  `SoTietLyThuyet` int(11) DEFAULT 0,
  `SoTietThucHanh` int(11) DEFAULT 0,
  `SoTinChi` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `ID` varchar(10) NOT NULL,
  `Ho` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Phai` varchar(3) CHARACTER SET utf8 DEFAULT 'Nữ',
  `DiaChi` text DEFAULT NULL,
  `NgaySinh` date NOT NULL,
  `KhoaHoc` int(11) DEFAULT year(curdate()),
  `XetLVTN` int(11) DEFAULT NULL,
  `ChuyenNganhID` varchar(10) DEFAULT NULL,
  `LopID` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userpass`
--

CREATE TABLE `userpass` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `user_level` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `userpass`
--

INSERT INTO `userpass` (`id`, `user`, `pass`, `user_level`) VALUES
(NULL, 'jully', 'Vuivivu279763', NULL),
(NULL, 'vui', 'vui', NULL),
(1, 'jullyvui', '$2y$10$KfbmpZ/e4uSJmCl8q7Q1LOiZYQ6k8r7c5PolM.6yExF...', 1),
(2, 'hi', 'hi', 0),
(NULL, '', '$2y$10$KfbmpZ/e4uSJmCl8q7Q1LOiZYQ6k8r7c5PolM.6yExFEq26nhllOC', 0),
(3, 'vui', '123', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
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
  ADD UNIQUE KEY `Ten` (`Ten`);

--
-- Chỉ mục cho bảng `loaidiem`
--
ALTER TABLE `loaidiem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `FK_Lop_Khoa` (`KhoaID`);

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
  ADD UNIQUE KEY `Ten` (`Ten`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_SinhVien_Lop` (`LopID`),
  ADD KEY `FK_SinhVien_ChuyenNganh` (`ChuyenNganhID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `loptinchi`
--
ALTER TABLE `loptinchi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

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
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `FK_Lop_Khoa` FOREIGN KEY (`KhoaID`) REFERENCES `khoa` (`ID`);

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
  ADD CONSTRAINT `FK_SinhVien_Lop` FOREIGN KEY (`LopID`) REFERENCES `lop` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
