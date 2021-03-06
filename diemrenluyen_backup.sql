-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 12:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diemrenluyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `chamdiemrenluyen`
--

CREATE TABLE `chamdiemrenluyen` (
  `maChamDiemRenLuyen` int(11) NOT NULL,
  `maPhieuRenLuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maTieuChi3` int(11) DEFAULT NULL,
  `maTieuChi2` int(11) DEFAULT NULL,
  `maSinhVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diemSinhVienDanhGia` int(11) DEFAULT NULL,
  `diemLopDanhGia` int(11) DEFAULT NULL,
  `ghiChu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chamdiemrenluyen`
--

INSERT INTO `chamdiemrenluyen` (`maChamDiemRenLuyen`, `maPhieuRenLuyen`, `maTieuChi3`, `maTieuChi2`, `maSinhVien`, `diemSinhVienDanhGia`, `diemLopDanhGia`, `ghiChu`) VALUES
(484, 'PRLHK221223118410018', 1, 0, '3118410018', 0, 0, ''),
(485, 'PRLHK221223118410018', 2, 0, '3118410018', 12, 12, ''),
(486, 'PRLHK221223118410018', 3, 0, '3118410018', 0, 0, ''),
(487, 'PRLHK221223118410018', 4, 0, '3118410018', 0, 0, ''),
(488, 'PRLHK221223118410018', 5, 0, '3118410018', 0, 0, ''),
(489, 'PRLHK221223118410018', 6, 0, '3118410018', 0, 0, ''),
(490, 'PRLHK221223118410018', 7, 0, '3118410018', 0, 0, ''),
(491, 'PRLHK221223118410018', 8, 0, '3118410018', 0, 0, ''),
(492, 'PRLHK221223118410018', 9, 0, '3118410018', 0, 0, ''),
(493, 'PRLHK221223118410018', 10, 0, '3118410018', 0, 0, ''),
(494, 'PRLHK221223118410018', 11, 0, '3118410018', 0, 0, ''),
(495, 'PRLHK221223118410018', 12, 0, '3118410018', 0, 0, ''),
(496, 'PRLHK221223118410018', 13, 0, '3118410018', 0, 0, ''),
(497, 'PRLHK221223118410018', 14, 0, '3118410018', 0, 0, ''),
(498, 'PRLHK221223118410018', 15, 0, '3118410018', 0, 0, ''),
(499, 'PRLHK221223118410018', 16, 0, '3118410018', 0, 0, ''),
(500, 'PRLHK221223118410018', 17, 0, '3118410018', 0, 0, ''),
(501, 'PRLHK221223118410018', 18, 0, '3118410018', 0, 0, ''),
(502, 'PRLHK221223118410018', 19, 0, '3118410018', 0, 0, ''),
(503, 'PRLHK221223118410018', 20, 0, '3118410018', 0, 0, ''),
(504, 'PRLHK221223118410018', 21, 0, '3118410018', 0, 0, ''),
(505, 'PRLHK221223118410018', 0, 7, '3118410018', 15, 15, ''),
(506, 'PRLHK221223118410018', 0, 8, '3118410018', 10, 10, ''),
(507, 'PRLHK221223118410018', 0, 9, '3118410018', 0, 0, ''),
(508, 'PRLHK221223118410018', 0, 10, '3118410018', 0, 0, ''),
(509, 'PRLHK221223118410018', 22, 0, '3118410018', 10, 10, ''),
(510, 'PRLHK221223118410018', 23, 0, '3118410018', 0, 0, ''),
(511, 'PRLHK221223118410018', 0, 12, '3118410018', 5, 5, ''),
(512, 'PRLHK221223118410018', 24, 0, '3118410018', 0, 0, ''),
(513, 'PRLHK221223118410018', 25, 0, '3118410018', 0, 0, ''),
(514, 'PRLHK221223118410018', 26, 0, '3118410018', 0, 0, ''),
(515, 'PRLHK221223118410018', 0, 14, '3118410018', 10, 10, ''),
(516, 'PRLHK221223118410018', 0, 15, '3118410018', 0, 0, ''),
(517, 'PRLHK221223118410018', 0, 16, '3118410018', 0, 0, ''),
(518, 'PRLHK221223118410018', 0, 17, '3118410018', 0, 0, ''),
(519, 'PRLHK221223118410018', 0, 18, '3118410018', 0, 0, ''),
(520, 'PRLHK221223118410018', 0, 19, '3118410018', 0, 0, ''),
(521, 'PRLHK221223118410018', 0, 20, '3118410018', 0, 0, ''),
(522, 'PRLHK221223118410018', 0, 21, '3118410018', 0, 0, ''),
(523, 'PRLHK221223118410018', 0, 22, '3118410018', 0, 0, ''),
(524, 'PRLHK221223118410018', 0, 23, '3118410018', 0, 0, ''),
(525, 'PRLHK221223118410018', 0, 24, '3118410018', 0, 0, ''),
(526, 'PRLHK221223118410018', 0, 25, '3118410018', 0, 0, ''),
(527, 'PRLHK221223118410018', 0, 26, '3118410018', 0, 0, ''),
(528, 'PRLHK221223118410018', 0, 27, '3118410018', 3, 3, ''),
(529, 'PRLHK221223118410018', 27, 0, '3118410018', 0, 0, ''),
(530, 'PRLHK221223118410018', 28, 0, '3118410018', 0, 0, ''),
(531, 'PRLHK221223118410018', 0, 29, '3118410018', 0, 0, ''),
(532, 'PRLHK221223118410018', 0, 30, '3118410018', 0, 15, ''),
(533, 'PRLHK221223118410262', 1, 0, '3118410262', 0, 0, ''),
(534, 'PRLHK221223118410262', 2, 0, '3118410262', 12, 12, ''),
(535, 'PRLHK221223118410262', 3, 0, '3118410262', 0, 0, ''),
(536, 'PRLHK221223118410262', 4, 0, '3118410262', 0, 0, ''),
(537, 'PRLHK221223118410262', 5, 0, '3118410262', 0, 0, ''),
(538, 'PRLHK221223118410262', 6, 0, '3118410262', 0, 0, ''),
(539, 'PRLHK221223118410262', 7, 0, '3118410262', 0, 0, ''),
(540, 'PRLHK221223118410262', 8, 0, '3118410262', 0, 0, ''),
(541, 'PRLHK221223118410262', 9, 0, '3118410262', 0, 0, ''),
(542, 'PRLHK221223118410262', 10, 0, '3118410262', 0, 0, ''),
(543, 'PRLHK221223118410262', 11, 0, '3118410262', 0, 0, ''),
(544, 'PRLHK221223118410262', 12, 0, '3118410262', 0, 0, ''),
(545, 'PRLHK221223118410262', 13, 0, '3118410262', 0, 0, ''),
(546, 'PRLHK221223118410262', 14, 0, '3118410262', 0, 0, ''),
(547, 'PRLHK221223118410262', 15, 0, '3118410262', 0, 0, ''),
(548, 'PRLHK221223118410262', 16, 0, '3118410262', 0, 0, ''),
(549, 'PRLHK221223118410262', 17, 0, '3118410262', 0, 0, ''),
(550, 'PRLHK221223118410262', 18, 0, '3118410262', 2, 2, ''),
(551, 'PRLHK221223118410262', 19, 0, '3118410262', 0, 0, ''),
(552, 'PRLHK221223118410262', 20, 0, '3118410262', 0, 0, ''),
(553, 'PRLHK221223118410262', 21, 0, '3118410262', 0, 0, ''),
(554, 'PRLHK221223118410262', 0, 7, '3118410262', 15, 15, ''),
(555, 'PRLHK221223118410262', 0, 8, '3118410262', 10, 10, ''),
(556, 'PRLHK221223118410262', 0, 9, '3118410262', 0, 0, ''),
(557, 'PRLHK221223118410262', 0, 10, '3118410262', 0, 0, ''),
(558, 'PRLHK221223118410262', 22, 0, '3118410262', 10, 10, ''),
(559, 'PRLHK221223118410262', 23, 0, '3118410262', 0, 0, ''),
(560, 'PRLHK221223118410262', 0, 12, '3118410262', 5, 5, ''),
(561, 'PRLHK221223118410262', 24, 0, '3118410262', 0, 0, ''),
(562, 'PRLHK221223118410262', 25, 0, '3118410262', 0, 0, ''),
(563, 'PRLHK221223118410262', 26, 0, '3118410262', 0, 0, ''),
(564, 'PRLHK221223118410262', 0, 14, '3118410262', 10, 10, ''),
(565, 'PRLHK221223118410262', 0, 15, '3118410262', 0, 0, ''),
(566, 'PRLHK221223118410262', 0, 16, '3118410262', 0, 0, ''),
(567, 'PRLHK221223118410262', 0, 17, '3118410262', 0, 0, ''),
(568, 'PRLHK221223118410262', 0, 18, '3118410262', 5, 5, ''),
(569, 'PRLHK221223118410262', 0, 19, '3118410262', 0, 0, ''),
(570, 'PRLHK221223118410262', 0, 20, '3118410262', 0, 0, ''),
(571, 'PRLHK221223118410262', 0, 21, '3118410262', 0, 0, ''),
(572, 'PRLHK221223118410262', 0, 22, '3118410262', 0, 0, ''),
(573, 'PRLHK221223118410262', 0, 23, '3118410262', 0, 0, ''),
(574, 'PRLHK221223118410262', 0, 24, '3118410262', 0, 0, ''),
(575, 'PRLHK221223118410262', 0, 25, '3118410262', 0, 0, ''),
(576, 'PRLHK221223118410262', 0, 26, '3118410262', 0, 0, ''),
(577, 'PRLHK221223118410262', 0, 27, '3118410262', 3, 3, ''),
(578, 'PRLHK221223118410262', 27, 0, '3118410262', 0, 0, ''),
(579, 'PRLHK221223118410262', 28, 0, '3118410262', 0, 0, ''),
(580, 'PRLHK221223118410262', 0, 29, '3118410262', 0, 0, ''),
(581, 'PRLHK221223118410262', 0, 30, '3118410262', 5, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `covanhoctap`
--

CREATE TABLE `covanhoctap` (
  `maCoVanHocTap` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `hoTenCoVan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soDienThoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matKhauTaiKhoanCoVan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cvht'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `covanhoctap`
--

INSERT INTO `covanhoctap` (`maCoVanHocTap`, `hoTenCoVan`, `soDienThoai`, `matKhauTaiKhoanCoVan`, `quyen`) VALUES
('11364', 'L????ng Minh Hu???n', '0559349434', 'e96c7de8f6390b1e6c71556e4e0a4959', 'cvht');

-- --------------------------------------------------------

--
-- Table structure for table `hoatdongdanhgia`
--

CREATE TABLE `hoatdongdanhgia` (
  `maHoatDong` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `maTieuChi2` int(11) NOT NULL,
  `maTieuChi3` int(11) NOT NULL,
  `maKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenHoatDong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diemNhanDuoc` int(11) NOT NULL,
  `diaDiemDienRaHoatDong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maQRDiaDiem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoiGianBatDauHoatDong` datetime NOT NULL,
  `thoiGianKetThucHoatDong` datetime NOT NULL,
  `maHocKyDanhGia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoiGianBatDauDiemDanh` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoatdongdanhgia`
--

INSERT INTO `hoatdongdanhgia` (`maHoatDong`, `maTieuChi2`, `maTieuChi3`, `maKhoa`, `tenHoatDong`, `diemNhanDuoc`, `diaDiemDienRaHoatDong`, `maQRDiaDiem`, `thoiGianBatDauHoatDong`, `thoiGianKetThucHoatDong`, `maHocKyDanhGia`, `thoiGianBatDauDiemDanh`) VALUES
('HD7', 16, 0, 'DCT', 'Ho???t ?????ng 23', 3, 'SGU', '62940ede5bd82.png', '2022-05-30 07:24:00', '2022-05-31 07:24:00', 'HK12122', '2022-05-30 18:26:21'),
('HD8', 16, 0, 'DCT', 'Ho???t ?????ng ch??? nh???t xanh', 5, 'SGU', '62946bafd3720.png', '2022-05-30 14:00:00', '2022-05-31 14:01:00', 'HK22122', '2022-05-30 18:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `hockydanhgia`
--

CREATE TABLE `hockydanhgia` (
  `maHocKyDanhGia` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `hocKyXet` int(11) NOT NULL,
  `namHocXet` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hockydanhgia`
--

INSERT INTO `hockydanhgia` (`maHocKyDanhGia`, `hocKyXet`, `namHocXet`) VALUES
('HK12122', 1, '2021-2022'),
('HK22122', 2, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `maKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taiKhoanKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matKhauKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'khoa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`maKhoa`, `tenKhoa`, `taiKhoanKhoa`, `matKhauKhoa`, `quyen`) VALUES
('DCT', 'C??ng ngh??? th??ng tin', 'cntt', '8e347e789002556f4b6043bbd2c0862f', 'khoa');

-- --------------------------------------------------------

--
-- Table structure for table `khoahoc`
--

CREATE TABLE `khoahoc` (
  `maKhoaHoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `namBatDau` year(4) NOT NULL,
  `namKetThuc` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoahoc`
--

INSERT INTO `khoahoc` (`maKhoaHoc`, `namBatDau`, `namKetThuc`) VALUES
('K18', 2018, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `maLop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenLop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maCoVanHocTap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maKhoaHoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`maLop`, `tenLop`, `maKhoa`, `maCoVanHocTap`, `maKhoaHoc`) VALUES
('DCT1184', 'CNTT K18 l???p 4', 'DCT', '11364', 'K18'),
('DCT1186', 'CNTT l???p 6', 'DCT', '11363', 'K18'),
('DCT1188', 'CNTT l???p 8', 'DCT', '11364', 'K18'),
('DCT1189', 'C??ng ngh??? th??ng tin l???p 9', 'DCT', '11364', 'K18');

-- --------------------------------------------------------

--
-- Table structure for table `phieurenluyen`
--

CREATE TABLE `phieurenluyen` (
  `maPhieuRenLuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `xepLoai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diemTongCong` int(11) DEFAULT NULL,
  `maSinhVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diemTrungBinhChungHKTruoc` double NOT NULL,
  `diemTrungBinhChungHKXet` double NOT NULL,
  `maHocKyDanhGia` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `coVanDuyet` tinyint(1) DEFAULT NULL,
  `khoaDuyet` tinyint(1) DEFAULT NULL,
  `fileDinhKem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieurenluyen`
--

INSERT INTO `phieurenluyen` (`maPhieuRenLuyen`, `xepLoai`, `diemTongCong`, `maSinhVien`, `diemTrungBinhChungHKTruoc`, `diemTrungBinhChungHKXet`, `maHocKyDanhGia`, `coVanDuyet`, `khoaDuyet`, `fileDinhKem`) VALUES
('PRLHK221223118410018', 'T???t', 80, '3118410018', 3.5, 3.42, 'HK22122', 1, 0, 'New WinRAR archive.rar'),
('PRLHK221223118410262', 'Kh??', 75, '3118410262', 3.5, 3.42, 'HK22122', 1, 0, 'New WinRAR archive.rar');

-- --------------------------------------------------------

--
-- Table structure for table `phongcongtacsinhvien`
--

CREATE TABLE `phongcongtacsinhvien` (
  `taiKhoan` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `hoTenNhanVien` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  `quyen` varchar(255) NOT NULL DEFAULT 'ctsv'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phongcongtacsinhvien`
--

INSERT INTO `phongcongtacsinhvien` (`taiKhoan`, `matKhau`, `hoTenNhanVien`, `email`, `sodienthoai`, `diaChi`, `quyen`) VALUES
('ctsv1', '0bf27758133599500db277a95366941b', 'Nh??n vi??n CTSV 1', 'ctsv1@edu.vn', '0562346234', '87 Nguy???n V??n C???, TP HCM', 'ctsv');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `maSinhVien` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `hoTenSinhVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL,
  `he` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matKhauSinhVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maLop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sinhvien'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`maSinhVien`, `hoTenSinhVien`, `ngaySinh`, `he`, `matKhauSinhVien`, `maLop`, `quyen`) VALUES
('3118410018', 'L?? NG?? THI??N ???N', '2000-12-16', '?????i h???c', '041f7b834b36b8d4f10e5a62b978550e', 'DCT1189', 'sinhvien'),
('3118410030', 'B??I H???U B???NG', '2000-04-07', '?????i h???c', '1e0b1e37e1e1705428d0f3d22c81685d', 'DCT1189', 'sinhvien'),
('3118410046', 'TR???N THANH C???A', '2000-10-13', '?????i h???c', 'e10adc3949ba59abbe56e057f20f883e', 'DCT1189', 'sinhvien'),
('3118410059', 'NGUY???N PH?????C DUY', '2000-11-13', '?????i h???c', 'd78c4e1abc3480c8899313aa648f9e03', 'DCT1189', 'sinhvien'),
('3118410262', 'NGUY???N TH????NG M???N', '2000-06-01', '?????i h???c', 'b75617aed87d1a170dd25d22547f888d', 'DCT1189', 'sinhvien');

-- --------------------------------------------------------

--
-- Table structure for table `thamgiahoatdong`
--

CREATE TABLE `thamgiahoatdong` (
  `maThamGiaHoatDong` int(11) NOT NULL,
  `maHoatDong` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `maSinhVienThamGia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thamgiahoatdong`
--

INSERT INTO `thamgiahoatdong` (`maThamGiaHoatDong`, `maHoatDong`, `maSinhVienThamGia`) VALUES
(4, 'HD9', '3118410018'),
(5, 'HD9', '3118410262');

-- --------------------------------------------------------

--
-- Table structure for table `thongbaodanhgia`
--

CREATE TABLE `thongbaodanhgia` (
  `maThongBao` int(11) NOT NULL,
  `ngaySinhVienDanhGia` date NOT NULL,
  `ngaySinhVienKetThucDanhGia` date NOT NULL,
  `ngayCoVanDanhGia` date NOT NULL,
  `ngayCoVanKetThucDanhGia` date NOT NULL,
  `ngayKhoaDanhGia` date NOT NULL,
  `ngayKhoaKetThucDanhGia` date NOT NULL,
  `ngayThongBao` date NOT NULL,
  `maHocKyDanhGia` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `taiKhoanCTSV` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongbaodanhgia`
--

INSERT INTO `thongbaodanhgia` (`maThongBao`, `ngaySinhVienDanhGia`, `ngaySinhVienKetThucDanhGia`, `ngayCoVanDanhGia`, `ngayCoVanKetThucDanhGia`, `ngayKhoaDanhGia`, `ngayKhoaKetThucDanhGia`, `ngayThongBao`, `maHocKyDanhGia`, `taiKhoanCTSV`) VALUES
(1, '2021-12-14', '2022-01-14', '2022-01-15', '2022-02-16', '2022-02-17', '2022-02-24', '2022-02-13', 'HK12122', NULL),
(2, '2022-05-20', '2022-05-31', '2022-05-18', '2022-06-15', '2022-05-16', '2022-06-30', '2022-05-20', 'HK22122', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tieuchicap1`
--

CREATE TABLE `tieuchicap1` (
  `matc1` int(11) NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diemtoida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tieuchicap1`
--

INSERT INTO `tieuchicap1` (`matc1`, `noidung`, `diemtoida`) VALUES
(1, 'I - ????nh gi?? v??? ?? th???c v?? k???t qu??? h???c t???p (t???i ??a 20 ??i???m).', 20),
(2, 'II - ????nh gi?? v??? ?? th???c v?? k???t qu??? ch???p h??nh quy ch???, n???i quy, quy ?????nh trong nh?? tr?????ng (t???i ??a 25 ??i???m).', 25),
(3, 'III - ????nh gi?? v??? ?? th???c v?? k???t qu??? tham gia c??c ho???t ?????ng ch??nh tr??? - x?? h???i, v??n h??a, v??n ngh???, th??? thao, ph??ng ch???ng c??c t??? n???n x?? h???i (t???i ??a 20 ??i???m).', 20),
(4, 'IV ??? ????nh gi?? ?? th???c c??ng d??n trong quan h??? c???ng ?????ng (t???i ??a 25 ??i???m).', 25),
(5, 'V - ????nh gi?? v??? ?? th???c v?? k???t qu??? tham gia ph??? tr??ch l???p, c??c ??o??n th??? trong nh?? tr?????ng (t???i ??a 10 ??i???m).', 10),
(6, 'VI. Ho???t ?????ng kh??c', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tieuchicap2`
--

CREATE TABLE `tieuchicap2` (
  `matc2` int(11) NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diemtoida` int(11) NOT NULL,
  `matc1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tieuchicap2`
--

INSERT INTO `tieuchicap2` (`matc2`, `noidung`, `diemtoida`, `matc1`) VALUES
(1, '1.K???t qu??? h???c t???p: ', 0, 1),
(2, '2.Tinh th???n v?????t kh?? trong h???c t???p:', 0, 1),
(3, '3.Tham gia nghi??n c???u khoa h???c (NCKH):', 0, 1),
(4, '4.Tham gia r??n luy???n nghi???p v??? (RLNV):', 0, 1),
(5, '5. Tham gia c??c c??u l???c b??? h???c thu???t', 0, 1),
(6, '6. Th??nh vi??n ?????i tuy???n d??? thi Olympic c??c m??n h???c:', 0, 1),
(7, '1. Ch???p h??nh t???t n???i quy, quy ch??? c???a nh?? tr?????ng', 15, 2),
(8, '2. Tham gia ?????y ????? c??c bu???i h???p c???a tr?????ng, khoa, CVHT, l???p t??? ch???c', 10, 2),
(9, '3. M???t l???n vi ph???m quy ch???, quy ?????nh c???a tr?????ng (c?? bi??n b???n x??? l??)', -10, 2),
(10, '4. V???ng 01 bu???i h???p do tr?????ng, khoa, CVHT, l???p t??? ch???c kh??ng l?? do', -5, 2),
(11, '1. Tham gia c??c ho???t ?????ng ch??nh tr??? ??? x?? h???i do nh?? tr?????ng quy ?????nh:', 0, 3),
(12, '2. Tham gia ho???t ?????ng v??n h??a, v??n ngh???, TDTT, ph??ng ch???ng TNXH???', 5, 3),
(13, '3. Tham gia trong ?????i tuy???n v??n ngh???, TDTT :', 0, 3),
(14, '1. Ch???p h??nh t???t c??c ch??? tr????ng, ch??nh s??ch, ph??p lu???t c???a nh?? n?????c:', 10, 4),
(15, '2. ???????c bi???u d????ng ng?????i t???t, vi???c t???t ??? nh?? tr?????ng ho???c ??? ?????a ph????ng (c?? gi???y ch???ng nh???n)', 5, 4),
(16, '3. Tham gia c??c ho???t ?????ng t??nh nguy???n trung h???n: MHX, Ti???p s???c m??a thi', 10, 4),
(17, '4. Tham gia c??c c??ng t??c x?? h???i v?? c??c ho???t ?????ng t??nh nguy???n ng???n ng??y (c?? x??c nh???n c???a ????n v??? t??? ch???c)', 10, 4),
(18, '5. C?? tinh th???n chia s???, gi??p ????? ng?????i c?? kh?? kh??n, ho???n n???n', 5, 4),
(19, '6. Tham gia hi???n m??u t??nh nguy???n', 5, 4),
(20, '7. Tham gia h???i thao GDQP ???AN c???p qu???n, c???p TP', 5, 4),
(21, '8. Vi ph???m ATGT, tr???t t??? c??ng c???ng (c?? gi???y b??o g???i v??? tr?????ng)', -10, 4),
(22, '1. L???p tr?????ng, BCH ??o??n tr?????ng, BCH H???i sinh vi??n tr?????ng', 10, 5),
(23, '2. L???p ph??, BCH ??o??n khoa, BCH LCH SV; BCH C??, BCH chi h???i l???p', 8, 5),
(24, '3. T??? tr?????ng, t??? ph??', 3, 5),
(25, '4. ?????ng vi??n', 8, 5),
(26, '5. ?????i t?????ng ?????ng', 5, 5),
(27, '6. ??o??n vi??n TNCS H??? Ch?? Minh', 3, 5),
(28, '7. ???????c ??o??n thanh ni??n, H???i sinh vi??n bi???u d????ng, khen th?????ng', 0, 5),
(29, '*Tham gia c??c h???at ?????ng ?????c bi???t do nh?? tr?????ng huy ?????ng', 15, 6),
(30, '*?????t gi???i th?????ng trong c??c k?? thi c???p t???nh th??nh tr??? l??n', 15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tieuchicap3`
--

CREATE TABLE `tieuchicap3` (
  `matc3` int(11) NOT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `matc2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tieuchicap3`
--

INSERT INTO `tieuchicap3` (`matc3`, `noidung`, `diem`, `matc2`) VALUES
(1, 'a. ??i???m trung b??nh chung h???c k?? t???  3,60 ?????n 4,00', 14, 1),
(2, 'b. ??i???m trung b??nh chung h???c k?? t???  3,20 ?????n 3,59', 12, 1),
(3, 'c. ??i???m trung b??nh chung h???c k?? t???  2,50 ?????n 3,19', 10, 1),
(4, 'd. ??i???m trung b??nh chung h???c k?? t???  2,00 ?????n 2,49', 2, 1),
(5, '??. ??i???m trung b??nh chung h???c k??  d?????i 2,00', 0, 1),
(6, 'a. K???t qu??? h???c t???p t??ng m???t b???c so v???i h???c k??? tr?????c,  ??TBCHK t???  2,00 tr??? l??n', 3, 2),
(7, 'b. K???t qu??? h???c t???p t??ng hai b???c so v???i h???c k??? tr?????c,  ??TBCHK t???  2,00 tr??? l??n', 6, 2),
(8, 'c. Sinh vi??n n??m th??? I, n???u c?? k???t qu??? h???c t???p HK I t??? 2,00 tr??? l??n', 3, 2),
(9, 'a. Kh??a lu???n t???t nghi???p t??? lo???i gi???i tr??? l??n', 6, 3),
(10, 'b. ????? t??i NCKH c???p tr?????ng t??? lo???i gi???i tr??? l??n', 6, 3),
(11, 'c. ????? t??i NCKH c???p tr?????ng t??? lo???i ?????t tr??? l??n', 5, 3),
(12, 'a. Tham gia h???i thi RLNV c???p khoa', 2, 4),
(13, 'b. Tham gia h???i thi  RLNV c???p tr?????ng', 4, 4),
(14, 'c. Tham gia h???i thi  RLNV to??n qu???c', 4, 4),
(15, 'd. Tham gia ?????y ????? c??c bu???i h???i th???o khoa h???c, b??o c??o chuy??n ?????', 2, 4),
(16, 'a. Ban ch??? nhi???m c??u l???c b??? c???p khoa', 4, 5),
(17, 'b. Ban ch??? nhi???m c??u l???c b??? c???p tr?????ng', 6, 5),
(18, 'c. Th??nh vi??n tham gia th?????ng xuy??n c??c c??u l???c b??? h???c thu???t', 2, 5),
(19, 'a. C???p khoa', 4, 6),
(20, 'b. C???p tr?????ng', 6, 6),
(21, 'c. C???p to??n qu???c', 10, 6),
(22, 'a. Tham gia ?????y ????? c??c bu???i sinh ho???t ch??nh tr??? x?? h???i theo quy ?????nh', 10, 11),
(23, 'b. V???ng m???t 01 bu???i kh??ng l?? do', -5, 11),
(24, 'a. C???p khoa', 5, 13),
(25, 'b. C???p tr?????ng', 10, 13),
(26, 'c. ???????c khen th?????ng c???p to??n qu???c', 15, 13),
(27, 'a. C???p khoa', 5, 28),
(28, 'b. C???p tr?????ng, c???p th??nh ph???', 10, 28);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `stt` int(11) NOT NULL,
  `maSo` varchar(11) NOT NULL,
  `token` text NOT NULL,
  `quyen` varchar(255) NOT NULL,
  `thoiGianDangNhap` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `thoiGianHetHan` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`stt`, `maSo`, `token`, `quyen`, `thoiGianDangNhap`, `thoiGianHetHan`) VALUES
(254, '3118410046', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJpYXQiOjE2NTM0MTA4NzgsIm5iZiI6MTY1MzQxMDg4OCwiZXhwIjoxNjUzNDk3Mjc4LCJhdWQiOiJzaW5odmllbiIsInNpbmh2aWVuIjp7Im1hU2luaFZpZW4iOiIzMTE4NDEwMDQ2IiwiaG9UZW5TaW5oVmllbiI6IlRSXHUxZWE2TiBUSEFOSCBDXHUxZWU2QSIsInF1eWVuIjoic2luaHZpZW4ifX0.riF7cOGFXA7r5Tgo_nFwO4A29AXj4UbPfU9IOIWqZU4', 'sinhvien', '2022-05-24 16:47:58', '2022-05-25 16:47:58'),
(304, '3118410018', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJpYXQiOjE2NTM4OTQyODksIm5iZiI6MTY1Mzg5NDI5OSwiZXhwIjoxNjUzOTgwNjg5LCJhdWQiOiJzaW5odmllbiIsInNpbmh2aWVuIjp7Im1hU2luaFZpZW4iOiIzMTE4NDEwMDE4IiwiaG9UZW5TaW5oVmllbiI6IkxcdTAwY2EgTkdcdTAwZDQgVEhJXHUwMGNhTiBcdTFlYTROIiwicXV5ZW4iOiJzaW5odmllbiJ9fQ.-Tyel4_NNz6p3-nmNTMEBHXl1HaMWZFB3uGDiyImPiM', 'sinhvien', '2022-05-30 07:04:49', '2022-05-31 07:04:49'),
(315, 'ctsv1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJpYXQiOjE2NTM5NTgyNDIsIm5iZiI6MTY1Mzk1ODI1MiwiZXhwIjoxNjU0MDQ0NjQyLCJhdWQiOiJwaG9uZ2Nvbmd0YWNzaW5odmllbiIsInBob25nY29uZ3RhY3Npbmh2aWVuIjp7InRhaUtob2FuIjoiY3RzdjEiLCJob1Rlbk5oYW5WaWVuIjoiTmhcdTAwZTJuIHZpXHUwMGVhbiBDVFNWIDEiLCJxdXllbiI6ImN0c3YifX0.8Axv1vUvnhUPACYDB4w5Cds3RTqVVXnhwjBqq82nFyo', 'ctsv', '2022-05-31 00:50:42', '2022-06-01 00:50:42'),
(316, '11364', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJpYXQiOjE2NTM5NzU3MDAsIm5iZiI6MTY1Mzk3NTcxMCwiZXhwIjoxNjU0MDYyMTAwLCJhdWQiOiJjdmh0IiwiY3ZodCI6eyJtYUNvVmFuSG9jVGFwIjoiMTEzNjQiLCJob1RlbkNvVmFuIjoiTFx1MDFiMFx1MDFhMW5nIE1pbmggSHVcdTFlYTVuIiwicXV5ZW4iOiJjdmh0In19.620yR76iBrlhLcWb-DUqpjAio-221dDTBghHpYymCCI', 'cvht', '2022-05-31 05:41:40', '2022-06-01 05:41:40'),
(317, '3118410262', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJpYXQiOjE2NTM5NzYxNjUsIm5iZiI6MTY1Mzk3NjE3NSwiZXhwIjoxNjU0MDYyNTY1LCJhdWQiOiJzaW5odmllbiIsInNpbmh2aWVuIjp7Im1hU2luaFZpZW4iOiIzMTE4NDEwMjYyIiwiaG9UZW5TaW5oVmllbiI6Ik5HVVlcdTFlYzROIFRIXHUwMWFmXHUwMWEwTkcgTVx1MWViZU4iLCJxdXllbiI6InNpbmh2aWVuIn19.KT10WwR3aJ2GUkmdB_iEUIjOuxfjFDOhCcxmr8bPDyw', 'sinhvien', '2022-05-31 05:49:25', '2022-06-01 05:49:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chamdiemrenluyen`
--
ALTER TABLE `chamdiemrenluyen`
  ADD PRIMARY KEY (`maChamDiemRenLuyen`);

--
-- Indexes for table `covanhoctap`
--
ALTER TABLE `covanhoctap`
  ADD PRIMARY KEY (`maCoVanHocTap`);

--
-- Indexes for table `hoatdongdanhgia`
--
ALTER TABLE `hoatdongdanhgia`
  ADD PRIMARY KEY (`maHoatDong`);

--
-- Indexes for table `hockydanhgia`
--
ALTER TABLE `hockydanhgia`
  ADD PRIMARY KEY (`maHocKyDanhGia`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`maKhoa`);

--
-- Indexes for table `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`maKhoaHoc`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`maLop`);

--
-- Indexes for table `phieurenluyen`
--
ALTER TABLE `phieurenluyen`
  ADD PRIMARY KEY (`maPhieuRenLuyen`);

--
-- Indexes for table `phongcongtacsinhvien`
--
ALTER TABLE `phongcongtacsinhvien`
  ADD PRIMARY KEY (`taiKhoan`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`maSinhVien`);

--
-- Indexes for table `thamgiahoatdong`
--
ALTER TABLE `thamgiahoatdong`
  ADD PRIMARY KEY (`maThamGiaHoatDong`);

--
-- Indexes for table `thongbaodanhgia`
--
ALTER TABLE `thongbaodanhgia`
  ADD PRIMARY KEY (`maThongBao`);

--
-- Indexes for table `tieuchicap1`
--
ALTER TABLE `tieuchicap1`
  ADD PRIMARY KEY (`matc1`);

--
-- Indexes for table `tieuchicap2`
--
ALTER TABLE `tieuchicap2`
  ADD PRIMARY KEY (`matc2`);

--
-- Indexes for table `tieuchicap3`
--
ALTER TABLE `tieuchicap3`
  ADD PRIMARY KEY (`matc3`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`stt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chamdiemrenluyen`
--
ALTER TABLE `chamdiemrenluyen`
  MODIFY `maChamDiemRenLuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `thamgiahoatdong`
--
ALTER TABLE `thamgiahoatdong`
  MODIFY `maThamGiaHoatDong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thongbaodanhgia`
--
ALTER TABLE `thongbaodanhgia`
  MODIFY `maThongBao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tieuchicap1`
--
ALTER TABLE `tieuchicap1`
  MODIFY `matc1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tieuchicap2`
--
ALTER TABLE `tieuchicap2`
  MODIFY `matc2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tieuchicap3`
--
ALTER TABLE `tieuchicap3`
  MODIFY `matc3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
