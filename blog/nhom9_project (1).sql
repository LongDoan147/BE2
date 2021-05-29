-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 29, 2021 lúc 05:25 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom9_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `id_bill` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `bill_detail` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'STT,name,price,so luong,thanhtien,===tong tien',
  `ghichu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`) VALUES
(1, 'Điện Thoại'),
(2, 'LapTop'),
(3, 'Máy Tính Bảng'),
(4, 'Đồng Hồ'),
(5, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_products`, `name`, `comment`, `created_at`) VALUES
(79, 1, 'Phạm Văn Hiệu', 'hay', '2019-12-16 11:39:20'),
(80, 1, 'Phạm Văn Hiệu', 'hay', '2019-12-16 11:39:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `phone`, `email`, `address`) VALUES
(64, 'Phạm Văn Hiệu', '0359003130', 'vanhieutdc6@gmail.com', '143/12 đường 11, phường Trường Thọ,quận Thủ Đức,tp.Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'oppo'),
(2, 'samsung'),
(3, 'apple'),
(4, 'acer'),
(5, 'asus'),
(6, 'vivo\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_05_19_050618_create_tbl_admin_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_id` int(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot` tinyint(4) NOT NULL,
  `sale` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `cate_id`, `price`, `image`, `description`, `hot`, `sale`) VALUES
(55, 'Laptop Acer Swift 3 SF314 57 52GB i5 1035G1/8GB/512GB/Win10 (NX.HJFSV.001)', 4, 2, 18490000, 'acer-swift-3-sf314-nx-hjfsv-0018-217351-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, LPDDR4 (On board), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	USB 3.1, HDMI, USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Nhôm - Magie, PIN liền\r\nKích thước:	Dày 15.95 mm, 1.19 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(56, 'Laptop Acer Swift 3S SF314 57G 53T1 i5 1035G1/8GB/512GB/2GB MX250/Win10 (NX.HJESV.001)', 4, 2, 19490000, 'acer-swift-3s-sf314-57g-53t1-i5-1035g1-8gb-512gb-2-9-213849-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, LPDDR4 (On board), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Không hỗ trợ khe cắm HDD\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce MX250 2GB\r\nCổng kết nối:	Thunderbolt 3, USB 3.1, HDMI, USB 2.0\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Nhôm - Magie, PIN liền\r\nKích thước:	Dày 15.95 mm, 1.19kg\r\nThời điểm ra mắt:	2019', 1, 0),
(57, 'Laptop Acer Aspire A315 54 558R i5 8265U/4GB/1TB/Win10 (NX.HEFSV.005)', 4, 2, 11490000, 'acer-aspire-a315-54-558r-i5-8265u-4gb-1tb-win10-n3-209143-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, LAN (RJ45)\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 17.95 mm, 1.7 Kg\r\nThời điểm ra mắt:	2019', 1, 0),
(59, 'Laptop Acer Aspire A514 53 5921 i5 1035G1/8GB/512GB/Win10 (NX.HUPSV.001)', 4, 2, 16490000, 'acer-aspire-a514-53-5921-i5-nxhupsv001-223657-1-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.95 mm, 1.5kg\r\nThời điểm ra mắt:	2020', 1, 0),
(72, 'Laptop Asus VivoBook A412F i5 10210U/8GB/32GB+512GB/Win10 (EK739T)', 5, 2, 16490000, 'asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Comet Lake, 10210U, 1.60 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	Intel Optane 32GB (H10), SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	USB 3.1, HDMI, USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 19.5 mm, 1.406 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(73, 'Laptop Asus VivoBook X509JA i7 1065G7/8GB/512GB/Office H&S2019/Win10 (EJ232TS)', 5, 2, 19490000, 'asus-vivobook-x509ja-i7-ej232ts-vântay-220576-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Ice Lake, 1065G7, 1.30 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB Type-C, USB 3.0', 1, 0),
(74, 'Laptop Asus VivoBook A415EA i5 1135G7/8GB/512GB/Win10 (EB354T)', 5, 2, 17290000, 'asus-vivobook-a415ea-i5-eb354t-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Tiger Lake, 1135G7, 2.40 GHz\r\nRAM:	8 GB, DDR4 (On board), 3200 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® Iris® Xe Graphics\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.4 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(76, 'Laptop Asus VivoBook S530FN i5 8265U/4GB/1TB/2GB MX150/Win10 (BQ128T)', 5, 2, 14290000, 'asus-vivobook-a415ea-i5-eb354t-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX150, 2GB\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 18 mm, 1.76 kg\r\nThời điểm ra mắt:	2018', 1, 0),
(78, 'Điện thoại Vivo X50 Pro', 0, 1, 17990000, 'vivo-x50-pro-14-600x600.jpg', '\r\nThông số kỹ thuật\r\nMàn hình:	AMOLED, 6.56\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 13 MP, 8 MP, 8 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 765G 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 5G', 1, 0),
(87, 'Điện thoại Vivo Y30', 6, 1, 4090000, 'vivo-y30-xanh-new-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.47\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	MediaTek Helio P35 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(88, 'Điện thoại Vivo Y12s (4GB/128GB)', 6, 1, 4290000, 'vivo-y12s-den-new-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.51\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 2 MP\r\nCamera trước:	8 MP\r\nCPU:	MediaTek Helio P35 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(89, 'Điện thoại Vivo Y20', 6, 1, 3990000, 'vivo-y20-white-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.51\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 2 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	Snapdragon 460 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(90, 'Điện thoại Vivo U10', 6, 1, 3590000, 'vivo-u10-xanh-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.35\", HD+\r\nHệ điều hành:	Android 9 (Pie)\r\nCamera sau:	Chính 13 MP & Phụ 8 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	Snapdragon 665 AIE 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Đồng Hồ Thông Minh'),
(4, 'Máy Tính Bảng'),
(5, 'Tai Nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Long Doan', '0334814243', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
