-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2019 lúc 10:00 AM
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
-- Cơ sở dữ liệu: `tinonl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bantin`
--

CREATE TABLE `bantin` (
  `IDTin` int(11) NOT NULL,
  `IDNhom` int(11) NOT NULL,
  `TieuDe` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `TrichDan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Anh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomtin`
--

CREATE TABLE `nhomtin` (
  `IDNhom` int(11) NOT NULL,
  `TenNhom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bantin`
--
ALTER TABLE `bantin`
  ADD PRIMARY KEY (`IDTin`),
  ADD KEY `BT_NT` (`IDNhom`);

--
-- Chỉ mục cho bảng `nhomtin`
--
ALTER TABLE `nhomtin`
  ADD PRIMARY KEY (`IDNhom`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bantin`
--
ALTER TABLE `bantin`
  MODIFY `IDTin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhomtin`
--
ALTER TABLE `nhomtin`
  MODIFY `IDNhom` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bantin`
--
ALTER TABLE `bantin`
  ADD CONSTRAINT `BT_NT` FOREIGN KEY (`IDNhom`) REFERENCES `nhomtin` (`IDNhom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
