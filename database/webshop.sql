-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 29, 2021 lúc 10:13 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'DinhVan', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 2147483647),
(5, 'HUNGPHAM', 'hungpham@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1624930608),
(4, 'VANBE', 'vanbe@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1624930534);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Sản Phẩm', '', 0, 1, '2017-04-22 05:35:21'),
(34, 'Laptop', '', 1, 1, '0000-00-00 00:00:00'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(25, 'Tủ Lạnh', '', 1, 1, '0000-00-00 00:00:00'),
(8, 'Máy Giặt', '', 1, 2, '2017-04-22 05:37:36'),
(26, 'SAMSUNG', '', 25, 1, '0000-00-00 00:00:00'),
(27, 'PANASONIC', '', 25, 1, '0000-00-00 00:00:00'),
(28, 'TOSHIBA', '', 25, 1, '0000-00-00 00:00:00'),
(29, 'LG', '', 25, 1, '0000-00-00 00:00:00'),
(30, 'SAMSUNG', '', 8, 2, '0000-00-00 00:00:00'),
(31, 'PANASONIC', '', 8, 2, '0000-00-00 00:00:00'),
(32, 'TOSHIBA', '', 8, 2, '0000-00-00 00:00:00'),
(33, 'LG', '', 8, 2, '0000-00-00 00:00:00'),
(36, 'Dell', '', 34, 1, '0000-00-00 00:00:00'),
(35, 'TiVi', '', 1, 1, '0000-00-00 00:00:00'),
(37, 'HP', '', 34, 1, '0000-00-00 00:00:00'),
(38, 'Asus', '', 34, 1, '0000-00-00 00:00:00'),
(39, 'Lennovo', '', 34, 1, '0000-00-00 00:00:00'),
(40, 'SAMSUNG', '', 35, 1, '0000-00-00 00:00:00'),
(41, 'LG', '', 35, 1, '0000-00-00 00:00:00'),
(42, 'SONY', '', 35, 1, '0000-00-00 00:00:00'),
(43, 'TOSHIBA', '', 35, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(26, 22, 76, 1, '17000000.00', 0),
(25, 21, 64, 1, '7400000.00', 0),
(24, 20, 75, 1, '20000000.00', 0),
(23, 19, 76, 1, '17000000.00', 0),
(22, 18, 65, 1, '19900000.00', 0),
(21, 17, 64, 1, '7400000.00', 0),
(20, 16, 65, 1, '19900000.00', 0),
(19, 15, 58, 1, '11390000.00', 0),
(18, 14, 64, 2, '14800000.00', 0),
(17, 14, 65, 2, '39800000.00', 0),
(16, 13, 54, 1, '11450000.00', 0),
(27, 23, 76, 1, '17000000.00', 0),
(28, 24, 75, 1, '20000000.00', 0),
(29, 25, 74, 4, '68000000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(62, 32, 'MÁY GIẶT TOSHIBA 9 KG AW-K1005FV(SG)', '<h3>Th&ocirc;ng số kỹ thuật chi tiết M&aacute;y giặt Toshiba 9 kg AW-K1005FV(SG)</h3>\r\n\r\n<ul>\r\n	<li>Th&ocirc;ng tin chung</li>\r\n	<li>Loại m&aacute;y giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-kieu-may-giat-pho-bien-hien-tai-tren-thi-truon-1177077#tren\" target=\"_blank\">Cửa tr&ecirc;n</a></li>\r\n	<li>Lồng giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-kieu-long-giat-pho-bien-hien-nay-tren-may-giat-1177049#long-dung\" target=\"_blank\">Lồng đứng</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/chon-may-giat-bao-nhieu-kg-la-hop-ly-814804\" target=\"_blank\">Khối lượng giặt:</a>9 Kg</li>\r\n	<li>Tốc độ quay vắt tối đa:700 v&ograve;ng/ph&uacute;t</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/hieu-suat-su-dung-nang-luong-tren-may-giat-la-gi-905585\" target=\"_blank\">Hiệu suất sử dụng điện:</a>4.0 Wh/kg</li>\r\n	<li>Kiểu động cơ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-giat-truyen-dong-truc-tiep-va-may-giat-truyen-658582#day-curoa\" target=\"_blank\">Truyền động d&acirc;y Curoa</a></li>\r\n	<li>C&ocirc;ng nghệ giặt</li>\r\n	<li>Chương tr&igrave;nh hoạt động:8 chương tr&igrave;nh</li>\r\n	<li>C&ocirc;ng nghệ giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-giat-tren-may-giat-toshiba-586944#fuzzy-logic\" target=\"_blank\">Greatwaves k&ecirc;́t hợp 3 lu&ocirc;̀ng nước</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-giat-tren-may-giat-toshiba-586944#cong-nghe-3-thac-nuoc\" target=\"_blank\">H&ecirc;̣ th&ocirc;́ng 3 thác nước</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-giat-tren-may-giat-toshiba-586944#ngoi-sao-pha-le\" target=\"_blank\">Lồng giặt ng&ocirc;i sao pha l&ecirc;</a></li>\r\n	<li>Tiện &iacute;ch:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#tro-luc\" target=\"_blank\">Nắp m&aacute;y trợ lực chống kẹt tay</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#tu-khoi-dong-lai\" target=\"_blank\">Tự khởi động lại khi c&oacute; điện</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#khu-mui-khang-khuan\" target=\"_blank\">Khử m&ugrave;i kh&aacute;ng khuẩn</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#ve-sinh-long-giat\" target=\"_blank\">Vệ sinh lồng giặt</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#hen-gio-giat-xong\" target=\"_blank\">Hẹn giờ giặt</a></li>\r\n	<li>Th&ocirc;ng tin chi tiết</li>\r\n	<li>Chất liệu lồng giặt:Th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li>Chất liệu vỏ m&aacute;y:Kim loại sơn tĩnh điện</li>\r\n	<li>Chất liệu nắp m&aacute;y:K&iacute;nh chịu lực</li>\r\n	<li>Bảng điều khiển:Song ngữ Anh - Việt c&oacute; n&uacute;t nhấn</li>\r\n	<li>Số người sử dụng:Từ 3 - 5 người (8 - 9 kg)</li>\r\n	<li>K&iacute;ch thước:Cao 96.0 cm - Ngang 55.0 cm - S&acirc;u 59.5 cm</li>\r\n	<li>Khối lượng m&aacute;y:40 kg</li>\r\n	<li>Nơi sản xuất:Th&aacute;i Lan</li>\r\n	<li>D&ograve;ng sản phẩm:2020</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '5940000.00', 40000, 'toshiba-aw-k1005fv-sg-300x300.jpg', '[]', 0, 0, 4, 1, 1622701630),
(61, 30, 'MÁY GIẶT SAMSUNG INVERTER 9 KG WW90J54E0BW/SV', '<h3>Th&ocirc;ng số kỹ thuật chi tiết M&aacute;y giặt Samsung Inverter 9 kg WW90J54E0BW/SV</h3>\r\n\r\n<ul>\r\n	<li>Th&ocirc;ng tin chung</li>\r\n	<li>Loại m&aacute;y giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-kieu-may-giat-pho-bien-hien-tai-tren-thi-truon-1177077#truoc\" target=\"_blank\">Cửa trước</a></li>\r\n	<li>Lồng giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-kieu-long-giat-pho-bien-hien-nay-tren-may-giat-1177049#long-ngang\" target=\"_blank\">Lồng ngang</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/chon-may-giat-bao-nhieu-kg-la-hop-ly-814804\" target=\"_blank\">Khối lượng giặt:</a>9 Kg</li>\r\n	<li>Tốc độ quay vắt tối đa:1400 v&ograve;ng/ph&uacute;t</li>\r\n	<li>Inverter:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-giat-inverter-la-gi-586476\" target=\"_blank\">C&oacute;</a></li>\r\n	<li>Kiểu động cơ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-giat-truyen-dong-truc-tiep-va-may-giat-truyen-658582#day-curoa\" target=\"_blank\">Truyền động d&acirc;y Curoa</a></li>\r\n	<li>C&ocirc;ng nghệ giặt</li>\r\n	<li>Chương tr&igrave;nh hoạt động:14 Chương tr&igrave;nh</li>\r\n	<li>C&ocirc;ng nghệ giặt:C&ocirc;ng nghệ giặt hơi nước Steam Cycles<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-giat-tren-may-giat-samsung-586471#long-giat-kim-cuong\" target=\"_blank\">Lồng giặt thiết kế kim cương</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-giat-tren-may-giat-samsung-586471#eco-bubble\" target=\"_blank\">C&ocirc;ng nghệ giặt bong b&oacute;ng Eco Bubble</a></li>\r\n	<li>Tiện &iacute;ch:Chẩn đo&aacute;n sự cố th&ocirc;ng minh qua ứng dụng điện thoại Smart Check<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#khoa-tre-em\" target=\"_blank\">Kh&oacute;a trẻ em</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tai-sao-nen-chon-may-giat-co-giat-nuoc-nong-947564\" target=\"_blank\">Giặt nước n&oacute;ng</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-giat-hoi-nuoc-la-gi-uu-nhuoc-diem-cua-may-giat-946533\" target=\"_blank\">Giặt hơi nước</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-giat-inverter-la-gi-586476\" target=\"_blank\">C&ocirc;ng nghệ Inverter tiết kiệm điện</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#ve-sinh-long-giat\" target=\"_blank\">Vệ sinh lồng giặt</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#giat-nhanh\" target=\"_blank\">Chương tr&igrave;nh giặt nhanh</a></li>\r\n	<li>Th&ocirc;ng tin chi tiết</li>\r\n	<li>Chất liệu lồng giặt:Th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li>Chất liệu vỏ m&aacute;y:Kim loại sơn tĩnh điện</li>\r\n	<li>Chất liệu nắp m&aacute;y:Nhựa</li>\r\n	<li>Bảng điều khiển:Song ngữ Anh - Việt c&oacute; n&uacute;t xoay, n&uacute;t nhấn v&agrave; m&agrave;n h&igrave;nh hiển thị</li>\r\n	<li>Số người sử dụng:Từ 3 - 5 người (8 - 9 kg)</li>\r\n	<li>K&iacute;ch thước:Cao 85 cm - Ngang 60 cm - S&acirc;u 62 cm</li>\r\n	<li>Khối lượng m&aacute;y:61 kg</li>\r\n	<li>Nơi sản xuất:Việt Nam</li>\r\n	<li>D&ograve;ng sản phẩm:2018</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '11490000.00', 90000, 'may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg', '[]', 0, 0, 4, 1, 1622695834),
(60, 29, 'TỦ LẠNH TOSHIBA INVERTER 180 LÍT GR-B22VU UKG', '<h3>Th&ocirc;ng số kỹ thuật chi tiết Tủ lạnh Toshiba Inverter 180 l&iacute;t GR-B22VU UKG</h3>\r\n\r\n<ul>\r\n	<li>Đặc điểm sản phẩm</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049\" target=\"_blank\">Dung t&iacute;ch sử dụng:</a>180 l&iacute;t</li>\r\n	<li>Số c&aacute;nh cửa:2 c&aacute;nh</li>\r\n	<li>Số người sử dụng:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049#150-300\" target=\"_blank\">2 - 3 người</a></li>\r\n	<li>Dung t&iacute;ch ngăn đ&aacute;:61 l&iacute;t</li>\r\n	<li>Dung t&iacute;ch ngăn lạnh:119 l&iacute;t</li>\r\n	<li>C&ocirc;ng nghệ Inverter:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Inverter</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/lua-chon-tu-lanh-tiet-kiem-dien-qua-thong-tin-tren-1255558\" target=\"_blank\">C&ocirc;ng suất ti&ecirc;u thụ c&ocirc;ng bố theo TCVN:</a>~ 0.89 kW/ng&agrave;y</li>\r\n	<li>Chế độ tiết kiệm điện:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">C&ocirc;ng nghệ m&aacute;y n&eacute;n biến tần Inverter</a></li>\r\n	<li>C&ocirc;ng nghệ l&agrave;m lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-lam-lanh-tren-tu-lanh-toshiba-585931#khi-lanh-vong-cung\" target=\"_blank\">Luồng kh&iacute; lạnh v&ograve;ng cung</a></li>\r\n	<li>C&ocirc;ng nghệ kh&aacute;ng khuẩn, khử m&ugrave;i:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-khang-khuan-tren-tu-lanh-toshiba-585915#ag-bio\" target=\"_blank\">Ag+ Bio</a></li>\r\n	<li>C&ocirc;ng nghệ bảo quản thực phẩm:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/ngan-cap-dong-mem-ultra-cooling-zone-tren-tu-lanh-1099128\" target=\"_blank\">Ngăn cấp đ&ocirc;ng mềm Ultra Cooling Zone -1&deg;C</a></li>\r\n	<li>Tiện &iacute;ch:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cap-dong-mem-la-gi-719322\" target=\"_blank\">Cấp đ&ocirc;ng mềm</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/ben-trong-tu-lanh-toshiba-inverter-729950#ngan-rau-qua-lon\" target=\"_blank\">Ngăn rau quả rộng</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Inverter tiết kiệm điện</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-va-tien-ich-thuong-gap-tren-tu-lanh-1108671#ngan-di-chuyen\" target=\"_blank\">Ngăn kệ c&oacute; thể thay đổi linh hoạt</a></li>\r\n	<li>Kiểu tủ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/nhung-kieu-tu-lanh-thong-dung-nhat-hien-nay-1025134#top-freezer\" target=\"_blank\">Ngăn đ&aacute; tr&ecirc;n</a></li>\r\n	<li>Chất liệu cửa tủ lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-chat-lieu-cua-tu-lanh-pho-bien-hien-nay-tren-t-1177203#uniglass\" target=\"_blank\">Uniglass</a></li>\r\n	<li>Chất liệu khay ngăn lạnh:K&iacute;nh chịu lực</li>\r\n	<li>K&iacute;ch thước - Khối lượng:Cao 128.5 cm - Rộng 54.5 cm - S&acirc;u 61.5 cm - Nặng 37 kg</li>\r\n	<li>Nơi sản xuất:Th&aacute;i Lan</li>\r\n	<li>Năm ra mắt:2019</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '7490000.00', 40000, 'lg-gn-b422wb-19-300x300.jpg', '[]', 0, 0, 4, 1, 1622695724),
(59, 28, 'TỦ LẠNH TOSHIBA INVERTER 233 LÍT GR-A28VM(UKG1)', '<h3>Th&ocirc;ng số kỹ thuật chi tiết Tủ lạnh LG Inverter 315 l&iacute;t GN-M315BL</h3>\r\n\r\n<ul>\r\n	<li>Đặc điểm sản phẩm</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049\" target=\"_blank\">Dung t&iacute;ch tổng:</a>333 l&iacute;t</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049\" target=\"_blank\">Dung t&iacute;ch sử dụng:</a>315 l&iacute;t</li>\r\n	<li>Số c&aacute;nh cửa:2 c&aacute;nh</li>\r\n	<li>Số người sử dụng:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049#300-400\" target=\"_blank\">3 - 4 người</a></li>\r\n	<li>Dung t&iacute;ch ngăn đ&aacute;:71 l&iacute;t</li>\r\n	<li>Dung t&iacute;ch ngăn lạnh:244 l&iacute;t</li>\r\n	<li>C&ocirc;ng nghệ Inverter:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Inverter</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/lua-chon-tu-lanh-tiet-kiem-dien-qua-thong-tin-tren-1255558\" target=\"_blank\">C&ocirc;ng suất ti&ecirc;u thụ c&ocirc;ng bố theo TCVN:</a>~ 1.13 kW/ng&agrave;y</li>\r\n	<li>C&ocirc;ng nghệ l&agrave;m lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/he-thong-lam-lanh-da-chieu-tren-tu-lanh-la-gi-796059\" target=\"_blank\">L&agrave;m lạnh đa chiều</a></li>\r\n	<li>C&ocirc;ng nghệ kh&aacute;ng khuẩn, khử m&ugrave;i:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-khang-khuan-tren-tu-lanh-lg-585629#nano-cacbon\" target=\"_blank\">Khử m&ugrave;i Nano Carbon</a></li>\r\n	<li>C&ocirc;ng nghệ bảo quản thực phẩm:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tien-ich-ngan-rau-cu-giu-am-tren-tu-lanh-1308675#Fresh-Zone\" target=\"_blank\">Ngăn rau củ c&acirc;n bằng ẩm 2 chế độ Fresh Zone</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-door-cooling-tren-tu-lanh-lg-la-gi-1000960\" target=\"_blank\">L&agrave;m lạnh từ cửa tủ DoorCooling+</a></li>\r\n	<li>Tiện &iacute;ch:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-va-tien-ich-thuong-gap-tren-tu-lanh-1108671#hop-da-xoay-di-dong\" target=\"_blank\">Khay đ&aacute; di động</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-va-tien-ich-thuong-gap-tren-tu-lanh-1108671#ngan-keo-tro-luc\" target=\"_blank\">Ngăn k&eacute;o linh hoạt</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Inverter tiết kiệm điện</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-moi-tren-tu-lanh-lg-2017-1001842#smart-diaogsis\" target=\"_blank\">Chẩn đo&aacute;n lỗi th&ocirc;ng minh Smart Diagnosis</a>Ngăn rau giữ ẩm nhiều chế độ</li>\r\n	<li>Kiểu tủ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/nhung-kieu-tu-lanh-thong-dung-nhat-hien-nay-1025134#top-freezer\" target=\"_blank\">Ngăn đ&aacute; tr&ecirc;n</a></li>\r\n	<li>Chất liệu cửa tủ lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-chat-lieu-cua-tu-lanh-pho-bien-hien-nay-tren-t-1177203#thep\" target=\"_blank\">Th&eacute;p kh&ocirc;ng gỉ</a></li>\r\n	<li>Chất liệu khay ngăn lạnh:K&iacute;nh chịu lực</li>\r\n	<li>K&iacute;ch thước - Khối lượng:Cao 169 cm - Rộng 60 cm - S&acirc;u 66.5 cm - Nặng 53 kg</li>\r\n	<li>Nơi sản xuất:Indonesia</li>\r\n	<li>Năm ra mắt:2019</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '10490000.00', 100000, 'toshiba-gr-a28vm-ukg1-300x300.jpg', '[]', 0, 0, 4, 1, 1622695608),
(58, 27, 'TỦ LẠNH PANASONIC INVERTER 255 LÍT NR-BV280QSVN', '<h3>Th&ocirc;ng số kỹ thuật chi tiết Tủ lạnh Panasonic Inverter 255 l&iacute;t NR-BV280QSVN</h3>\r\n\r\n<ul>\r\n	<li>Đặc điểm sản phẩm</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049\" target=\"_blank\">Dung t&iacute;ch sử dụng:</a>255 l&iacute;t</li>\r\n	<li>Số c&aacute;nh cửa:2 c&aacute;nh</li>\r\n	<li>Số người sử dụng:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049#150-300\" target=\"_blank\">2 - 3 người</a></li>\r\n	<li>Dung t&iacute;ch ngăn đ&aacute;:85 l&iacute;t</li>\r\n	<li>Dung t&iacute;ch ngăn lạnh:170 l&iacute;t</li>\r\n	<li>C&ocirc;ng nghệ Inverter:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Tủ lạnh Inverter</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/lua-chon-tu-lanh-tiet-kiem-dien-qua-thong-tin-tren-1255558\" target=\"_blank\">C&ocirc;ng suất ti&ecirc;u thụ c&ocirc;ng bố theo TCVN:</a>~ 0.9 kW/ng&agrave;y</li>\r\n	<li>Chế độ tiết kiệm điện:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-noi-bat-tren-tu-lanh-panasonic-nam-2-1107309#multi-control\" target=\"_blank\">Multi Control</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-econavi-tren-tu-lanh-panasonic-720959\" target=\"_blank\">Econavi</a></li>\r\n	<li>C&ocirc;ng nghệ l&agrave;m lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-lam-lanh-tren-tu-lanh-panasonic-585689#panorama\" target=\"_blank\">L&agrave;m lạnh v&ograve;ng cung Panorama</a></li>\r\n	<li>C&ocirc;ng nghệ kh&aacute;ng khuẩn, khử m&ugrave;i:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/danh-bay-mui-tu-lanh-voi-cong-nghe-ag-clean-cua-pa-993561\" target=\"_blank\">C&ocirc;ng nghệ kh&aacute;ng khuẩn Ag Clean với tinh thể bạc Ag+</a></li>\r\n	<li>C&ocirc;ng nghệ bảo quản thực phẩm:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-noi-bat-tren-tu-lanh-panasonic-nam-2-1107309#prime-fresh-plus\" target=\"_blank\">Ngăn cấp đ&ocirc;ng mềm thế hệ mới Prime Fresh+</a></li>\r\n	<li>Tiện &iacute;ch:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cap-dong-mem-la-gi-719322\" target=\"_blank\">Ngăn đ&ocirc;ng mềm trữ thịt c&aacute; kh&ocirc;ng cần r&atilde; đ&ocirc;ng</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Inverter tiết kiệm điện</a></li>\r\n	<li>Kiểu tủ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/nhung-kieu-tu-lanh-thong-dung-nhat-hien-nay-1025134#ngan-da-duoi\" target=\"_blank\">Ngăn đ&aacute; dưới</a></li>\r\n	<li>Chất liệu cửa tủ lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-chat-lieu-cua-tu-lanh-pho-bien-hien-nay-tren-t-1177203#thep\" target=\"_blank\">Th&eacute;p kh&ocirc;ng gỉ</a></li>\r\n	<li>Chất liệu khay ngăn lạnh:K&iacute;nh chịu lực</li>\r\n	<li>K&iacute;ch thước - Khối lượng:Cao 150.5 cm - Rộng 60.1 cm - S&acirc;u 64.8 cm - Nặng 51 kg</li>\r\n	<li>Nơi sản xuất:Việt Nam</li>\r\n	<li>D&ograve;ng sản phẩm:2019</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '11490000.00', 100000, 'panasonic3-nr-ba190ppvn-300x300.jpg', '[]', 0, 1, 4, 1, 1622695450),
(57, 26, 'TỦ LẠNH SAMSUNG INVERTER 360 LÍT RT35K5982BS/SV', '<h3>Th&ocirc;ng số kỹ thuật chi tiết Tủ lạnh Samsung Inverter 360 l&iacute;t RT35K5982BS/SV</h3>\r\n\r\n<ul>\r\n	<li>Đặc điểm sản phẩm</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049\" target=\"_blank\">Dung t&iacute;ch tổng:</a>375 l&iacute;t</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049\" target=\"_blank\">Dung t&iacute;ch sử dụng:</a>360 l&iacute;t</li>\r\n	<li>Số c&aacute;nh cửa:2 c&aacute;nh</li>\r\n	<li>Số người sử dụng:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049#300-400\" target=\"_blank\">3 - 4 người</a></li>\r\n	<li>Dung t&iacute;ch ngăn đ&aacute;:88 l&iacute;t</li>\r\n	<li>Dung t&iacute;ch ngăn lạnh:272 l&iacute;t</li>\r\n	<li>C&ocirc;ng nghệ Inverter:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Tủ lạnh Inverter</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/lua-chon-tu-lanh-tiet-kiem-dien-qua-thong-tin-tren-1255558\" target=\"_blank\">C&ocirc;ng suất ti&ecirc;u thụ c&ocirc;ng bố theo TCVN:</a>~ 1.2 kW/ng&agrave;y</li>\r\n	<li>Chế độ tiết kiệm điện:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-digital-inverter-tren-tu-lanh-samsung-co-1022075\" target=\"_blank\">C&ocirc;ng Nghệ Digital Inverter</a></li>\r\n	<li>C&ocirc;ng nghệ l&agrave;m lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/doc-dao-tu-lanh-2-dan-lanh-doc-lap-cua-samsung-797118\" target=\"_blank\">2 d&agrave;n lạnh ri&ecirc;ng biệt (Twin Cooling Plus&trade;)</a></li>\r\n	<li>C&ocirc;ng nghệ kh&aacute;ng khuẩn, khử m&ugrave;i:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-khang-khuan-tren-tu-lanh-samsung-585636#bo-loc-than-hoat-tinh\" target=\"_blank\">Bộ lọc than hoạt t&iacute;nh Deodorizer</a></li>\r\n	<li>C&ocirc;ng nghệ bảo quản thực phẩm:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-va-tien-ich-thuong-gap-tren-tu-lanh-1108671#ngan-rau-cu-can-bang-do-am\" target=\"_blank\">Ngăn giữ ẩm tối ưu</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tien-ich-ngan-rau-cu-giu-am-tren-tu-lanh-1308675#ngan-rau-cu-samsung\" target=\"_blank\">Ngăn rau củ lớn giữ ẩm Big Box</a></li>\r\n	<li>Tiện &iacute;ch:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/ben-trong-tu-lanh-toshiba-inverter-729950#ngan-rau-qua-lon\" target=\"_blank\">Ngăn rau quả rộng</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tinh-nang-lam-da-tu-dong-tren-tu-lanh-la-gi-1090491\" target=\"_blank\">L&agrave;m đ&aacute; tự động</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Inverter tiết kiệm điện</a>Ngăn đ&aacute; lớn<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-va-tien-ich-thuong-gap-tren-tu-lanh-1108671#lay-nuoc-ben-ngoai\" target=\"_blank\">Lấy nước b&ecirc;n ngo&agrave;i</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/mr-coolpack-cong-nghe-giu-lanh-khi-mat-dien-tren-t-585622\" target=\"_blank\">Ngăn Cool Pack duy tr&igrave; độ lạnh khi mất điện</a></li>\r\n	<li>Kiểu tủ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/nhung-kieu-tu-lanh-thong-dung-nhat-hien-nay-1025134#top-freezer\" target=\"_blank\">Ngăn đ&aacute; tr&ecirc;n</a></li>\r\n	<li>Chất liệu cửa tủ lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-chat-lieu-cua-tu-lanh-pho-bien-hien-nay-tren-t-1177203#kim-loai-son\" target=\"_blank\">Kim loại phủ sơn tĩnh điện</a></li>\r\n	<li>Chất liệu khay ngăn lạnh:K&iacute;nh chịu lực</li>\r\n	<li>K&iacute;ch thước - Khối lượng:Cao 171.5 cm - Rộng 67.5 cm - S&acirc;u 66.8 cm - Nặng 65 kg</li>\r\n	<li>Nơi sản xuất:Th&aacute;i Lan</li>\r\n	<li>D&ograve;ng sản phẩm:2018</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '14690000.00', 90000, 'samsung4-rt35k5982bs-sv-300x300.jpg', '[]', 0, 0, 4, 1, 1622695252),
(56, 26, 'TỦ LẠNH SAMSUNG INVERTER 208 LÍT RT20HAR8DBU/SV', '<h3>Th&ocirc;ng số kỹ thuật chi tiết Tủ lạnh Samsung Inverter 208 l&iacute;t RT20HAR8DBU/SV</h3>\r\n\r\n<ul>\r\n	<li>Đặc điểm sản phẩm</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049\" target=\"_blank\">Dung t&iacute;ch sử dụng:</a>208 l&iacute;t</li>\r\n	<li>Số c&aacute;nh cửa:2 c&aacute;nh</li>\r\n	<li>Số người sử dụng:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cach-chon-dung-tich-tu-lanh-theo-so-thanh-vien-tro-1124049#150-300\" target=\"_blank\">2 - 3 người</a></li>\r\n	<li>Dung t&iacute;ch ngăn đ&aacute;:53 l&iacute;t</li>\r\n	<li>Dung t&iacute;ch ngăn lạnh:155 l&iacute;t</li>\r\n	<li>C&ocirc;ng nghệ Inverter:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Tủ lạnh Inverter</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/lua-chon-tu-lanh-tiet-kiem-dien-qua-thong-tin-tren-1255558\" target=\"_blank\">C&ocirc;ng suất ti&ecirc;u thụ c&ocirc;ng bố theo TCVN:</a>~ 0.93 kW/ng&agrave;y</li>\r\n	<li>Chế độ tiết kiệm điện:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-digital-inverter-tren-tu-lanh-samsung-co-1022075\" target=\"_blank\">C&ocirc;ng Nghệ Digital Inverter</a></li>\r\n	<li>C&ocirc;ng nghệ l&agrave;m lạnh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/he-thong-lam-lanh-da-chieu-tren-tu-lanh-la-gi-796059\" target=\"_blank\">L&agrave;m lạnh đa chiều</a></li>\r\n	<li>C&ocirc;ng nghệ kh&aacute;ng khuẩn, khử m&ugrave;i:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cong-nghe-khang-khuan-tren-tu-lanh-samsung-585636#bo-loc-than-hoat-tinh\" target=\"_blank\">Bộ lọc than hoạt t&iacute;nh Deodorizer</a></li>\r\n	<li>C&ocirc;ng nghệ bảo quản thực phẩm:Kh&ocirc;ng c&oacute;,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tien-ich-ngan-rau-cu-giu-am-tren-tu-lanh-1308675#ngan-rau-cu-samsung\" target=\"_blank\">Ngăn rau củ lớn giữ ẩm Big Box</a></li>\r\n	<li>Tiện &iacute;ch:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/ben-trong-tu-lanh-toshiba-inverter-729950#ngan-rau-qua-lon\" target=\"_blank\">Ngăn rau quả rộng</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tu-lanh-inverter-la-gi-585937\" target=\"_blank\">Inverter tiết kiệm điện</a></li>\r\n	<li>Kiểu tủ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/nhung-kieu-tu-lanh-thong-dung-nhat-hien-nay-1025134#top-freezer\" target=\"_blank\">Ngăn đ&aacute; tr&ecirc;n</a></li>\r\n	<li>Chất liệu cửa tủ lạnh:Kim loại phủ sơn b&oacute;ng giả gương</li>\r\n	<li>Chất liệu khay ngăn lạnh:K&iacute;nh chịu lực</li>\r\n	<li>K&iacute;ch thước - Khối lượng:Cao 144.5 cm - Rộng 55.5 cm - S&acirc;u 63.7 cm - Nặng 44.5 kg</li>\r\n	<li>Nơi sản xuất:Việt Nam</li>\r\n	<li>D&ograve;ng sản phẩm:2020</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '5940000.00', 40000, 'samsung2-rt20har8dbu-sv-300x300.jpg', '[]', 0, 0, 4, 1, 1622695026),
(63, 33, 'MÁY GIẶT CỬA TRƯỚC 8.5KG LG BD-W85SAE', '<p>M&aacute;y giặt cửa trước 8.5kg Hitachi BD-W85SAE điều khiển giặt với cảm biến 3D th&ocirc;ng minh, gi&uacute;p&nbsp;nhận biết chất liệu đồ giặt v&agrave; điều chỉnh tốc độ quay của lồng giặt ph&ugrave; hợp, đ&aacute;nh bật vết bẩn nhanh ch&oacute;ng m&agrave; kh&ocirc;ng hề ti&ecirc;u tốn nhiều điện năng. Hệ thống chống rung lắc k&eacute;p gi&uacute;p m&aacute;y hoạt động ổn định, kh&ocirc;ng g&acirc;y ra tiếng ồn trong qu&aacute; tr&igrave;nh vận h&agrave;nh, mang đến cuộc sống thoải m&aacute;i, dễ chịu cho cả gia đ&igrave;nh.</p>\r\n', '15000000.00', 100000, 'may-giat-lg-fv1409s2w-124020-104020-300x300.jpg', '[]', 1, 0, 4, 1, 1622701765),
(64, 32, 'MÁY GIẶT TOSHIBA INVERTER 8.5 KG TW-BH95S2V WK', '<h3>Th&ocirc;ng số kỹ thuật chi tiết M&aacute;y giặt Toshiba Inverter 8.5 Kg TW-BH95S2V WK</h3>\r\n\r\n<ul>\r\n	<li>Th&ocirc;ng tin chung</li>\r\n	<li>Loại m&aacute;y giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-kieu-may-giat-pho-bien-hien-tai-tren-thi-truon-1177077#truoc\" target=\"_blank\">Cửa trước</a></li>\r\n	<li>Lồng giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-kieu-long-giat-pho-bien-hien-nay-tren-may-giat-1177049#long-ngang\" target=\"_blank\">Lồng ngang</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/chon-may-giat-bao-nhieu-kg-la-hop-ly-814804\" target=\"_blank\">Khối lượng giặt:</a>8.5 Kg</li>\r\n	<li>Tốc độ quay vắt tối đa:1200 v&ograve;ng/ph&uacute;t</li>\r\n	<li>Lượng nước ti&ecirc;u thụ chuẩn:Khoảng 50 l&iacute;t một lần giặt thường</li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/hieu-suat-su-dung-nang-luong-tren-may-giat-la-gi-905585\" target=\"_blank\">Hiệu suất sử dụng điện:</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/hieu-suat-su-dung-nang-luong-tren-may-giat-la-gi-905585\" target=\"_blank\">20 Wh/kg</a></li>\r\n	<li>Inverter:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-giat-inverter-la-gi-586476\" target=\"_blank\">C&oacute;</a></li>\r\n	<li>Kiểu động cơ:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/may-giat-truyen-dong-truc-tiep-va-may-giat-truyen-658582#day-curoa\" target=\"_blank\">Truyền động d&acirc;y Curoa</a></li>\r\n	<li>C&ocirc;ng nghệ giặt</li>\r\n	<li>Chương tr&igrave;nh hoạt động:16 chương tr&igrave;nh</li>\r\n	<li>C&ocirc;ng nghệ giặt:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-noi-bat-tren-may-giat-cua-truoc-tosh-1118688#greatwave\" target=\"_blank\">Greatwaves sức mạnh si&ecirc;u s&oacute;ng</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-noi-bat-tren-may-giat-cua-truoc-tosh-1118688#phuc-hoi\" target=\"_blank\">Phục hồi chương tr&igrave;nh giặt dang dở</a></li>\r\n	<li>Tiện &iacute;ch:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tai-sao-nen-chon-may-giat-co-giat-nuoc-nong-947564\" target=\"_blank\">Giặt nước n&oacute;ng</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#khoa-tre-em\" target=\"_blank\">Kh&oacute;a trẻ em</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#tu-khoi-dong-lai\" target=\"_blank\">Tự khởi động lại khi c&oacute; điện</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#ve-sinh-long-giat\" target=\"_blank\">Vệ sinh lồng giặt</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#hen-gio-giat-xong\" target=\"_blank\">Hẹn giờ giặt xong</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#giat-nhanh\" target=\"_blank\">Chương tr&igrave;nh giặt nhanh</a><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-tien-ich-thuong-thay-tren-may-giat-795612#giat-so\" target=\"_blank\">Chế độ giặt sơ tự động</a></li>\r\n	<li>Th&ocirc;ng tin chi tiết</li>\r\n	<li>Chất liệu lồng giặt:Th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li>Chất liệu vỏ m&aacute;y:Kim loại sơn tĩnh điện</li>\r\n	<li>Chất liệu nắp m&aacute;y:K&iacute;nh chịu lực</li>\r\n	<li>Bảng điều khiển:Song ngữ Anh - Việt c&oacute; n&uacute;t xoay, n&uacute;t nhấn v&agrave; m&agrave;n h&igrave;nh hiển thị</li>\r\n	<li>Số người sử dụng:Từ 3 - 5 người (8 - 9 kg)</li>\r\n	<li>K&iacute;ch thước:Cao 84.5 cm - Ngang 59.5 cm - S&acirc;u 60.0 cm</li>\r\n	<li>Khối lượng m&aacute;y:61 kg</li>\r\n	<li>Nơi sản xuất:Trung Quốc</li>\r\n	<li>D&ograve;ng sản phẩm:2019</li>\r\n	<li>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:24 th&aacute;ng</li>\r\n</ul>\r\n', '7490000.00', 90000, 'may-giat-toshiba1-tw-bh95s2v-wk-9-300x300.jpg', '[]', 1, 1, 4, 1, 1622701819),
(65, 26, 'TỦ LẠNH SAMSUNG INVENTER 2 CÁNH', '<ul>\r\n	<li><strong>Đặc điểm sản phẩm</strong></li>\r\n	<li>Dung t&iacute;ch sử dụng:616 l&iacute;t</li>\r\n	<li>Số người sử dụng:Tr&ecirc;n 7 người</li>\r\n	<li>Dung t&iacute;ch ngăn đ&aacute;:202 l&iacute;t</li>\r\n	<li>Dung t&iacute;ch ngăn lạnh:414</li>\r\n	<li>C&ocirc;ng nghệ Inverter:Tủ lạnh Inverter</li>\r\n	<li>Đi&ecirc;̣n năng ti&ecirc;u thụ:</li>\r\n	<li>C&ocirc;ng nghệ l&agrave;m lạnh:C&ocirc;ng nghệ l&agrave;m lạnh v&ograve;m</li>\r\n	<li>C&ocirc;ng nghệ kh&aacute;ng khuẩn, khử m&ugrave;i:Bộ lọc than hoạt t&iacute;nh Anti-Bacterial Protector</li>\r\n	<li>Tiện &iacute;ch:L&agrave;m lạnh nhanh, L&agrave;m đ&aacute; nhanh, L&agrave;m đ&aacute; tự động, Inverter tiết kiệm điện, Lấy nước b&ecirc;n ngo&agrave;i, Ngăn đ&aacute; lớn, Chu&ocirc;ng b&aacute;o cửa mở, Lấy đ&aacute; b&ecirc;n ngo&agrave;i, Bảng điều khiển b&ecirc;n ngo&agrave;i</li>\r\n	<li>Kiểu tủ:Tủ lớn &ndash; Side by side</li>\r\n	<li>Chất liệu cửa tủ lạnh:Th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li>Chất liệu khay ngăn:K&iacute;nh chịu lực</li>\r\n	<li>K&iacute;ch thước &ndash; Khối lượng:Cao 178 cm &ndash; Rộng 91.2 cm &ndash; S&acirc;u 71.6 cm &ndash; Nặng 118 kg</li>\r\n	<li>Nơi sản xuất: Trung Quốc</li>\r\n</ul>\r\n', '20000000.00', 100000, 'samsung3-rs62r5001m9-sv-9-300x300.jpg', '[]', 1, 2, 4, 1, 1622701963);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(21, 0, 0, 'Nguyễn Văn A', 'vana@gmail.com', '98765432', '2 Đại Cồ Việt', 'hrhr', '7400000.00', '', 1624789061),
(25, 1, 0, 'Trần Đình Văn', 'vantran.soict@gmail.com', '0983026318', '1 Đại Cồ Việt', 'alo', '68000000.00', '', 1624952576),
(15, 1, 8, 'Trần Đình Văn', 'dinhvan@gmail.com', '0983026318', '1 Đại Cồ Việt', 'nhanh giúp em', '11390000.00', '', 1622703078),
(16, 1, 8, 'Trần Đình Văn', 'dinhvan@gmail.com', '0983026318', '1 Đại Cồ Việt', 'giao nhanh nha', '19900000.00', '', 1624061572);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(8, 'Trần Đình Văn', 'dinhvan@gmail.com', '8a84f1b13bfcbec5a02c98c4dc34e896', '0983026318', '1 Đại Cồ Việt', 2021);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
