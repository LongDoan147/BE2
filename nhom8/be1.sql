-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 12, 2021 lúc 03:59 PM
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
-- Cơ sở dữ liệu: `be1`
--
CREATE DATABASE IF NOT EXISTS `be1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `be1`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Iphone'),
(2, 'HP'),
(3, 'Ipad'),
(4, 'Sony'),
(5, 'Enkor'),
(6, 'DELL'),
(7, 'Samsung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `pro_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`, `created_at`) VALUES
(1, 'Điện thoại iPhone 11 64GB', 1, 1, 19990000, 'iphone-11-64gb-hop-moi-292520-102501-400x460.png', 'Màn hình:	IPS LCD, 6.1\", Liquid Retina\nHệ điều hành:	iOS 13\nCamera sau:	2 camera 12 MP\nCamera trước:	12 MP\nCPU:	Apple A13 Bionic 6 nhân\nRAM:	4 GB\nBộ nhớ trong:	64 GB\nThẻ SIM:\n1 Nano SIM & 1 eSIM, Hỗ trợ 4G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	3110 mAh, có sạc nhanh', 1, '2020-11-27 10:00:00'),
(2, 'Điện thoại iPhone 12 Pro Max 512GB', 1, 1, 43990000, 'iphone-12-pro-max-512gb-191020-021004-400x400.png', 'Màn hình:	OLED, 6.7\", Super Retina XDR\nHệ điều hành:	iOS 14\nCamera sau:	3 camera 12 MP\nCamera trước:	12 MP\nCPU:	Apple A14 Bionic 6 nhân\nRAM:	6 GB\nBộ nhớ trong:	512 GB\nThẻ SIM:\n1 Nano SIM & 1 eSIM, Hỗ trợ 5G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	3687 mAh, có sạc nhanh', 1, '2020-11-27 10:00:00'),
(3, 'Điện thoại iPhone 12 Pro 256GB', 1, 1, 34990000, 'iphone-12-pro-256gb-195920-015933-400x400.png', 'Màn hình:	OLED, 6.1\", Super Retina XDR\nHệ điều hành:	iOS 14\nCamera sau:	3 camera 12 MP\nCamera trước:	12 MP\nCPU:	Apple A14 Bionic 6 nhân\nBộ nhớ trong:	256 GB\nThẻ SIM:\n1 Nano SIM & 1 eSIM, Hỗ trợ 5G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	có sạc nhanh', 1, '2020-11-27 10:00:00'),
(4, 'Điện thoại iPhone 12 mini 256GB', 1, 1, 25990000, 'iphone-12-mini-256gb-193220-023215-400x400.png', 'Màn hình:	OLED, 5.4\", Super Retina XDR\nHệ điều hành:	iOS 14\nCamera sau:	2 camera 12 MP\nCamera trước:	12 MP\nCPU:	Apple A14 Bionic 6 nhân\nRAM:	4 GB\nBộ nhớ trong:	256 GB\nThẻ SIM:\n1 Nano SIM & 1 eSIM, Hỗ trợ 5G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	2227 mAh, có sạc nhanh', 0, '2020-11-27 10:00:00'),
(5, 'Điện thoại iPhone 11 256GB', 1, 1, 23990000, 'iphone-11-256gb-black-400x460.png', 'Màn hình:	IPS LCD, 6.1\", Liquid Retina\nHệ điều hành:	iOS 13\nCamera sau:	2 camera 12 MP\nCamera trước:	12 MP\nCPU:	Apple A13 Bionic 6 nhân\nRAM:	4 GB\nBộ nhớ trong:	256 GB\nThẻ SIM:\n1 Nano SIM & 1 eSIM, Hỗ trợ 4G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	3110 mAh, có sạc nhanh', 0, '2020-11-27 10:00:00'),
(6, 'Laptop HP 348 G7 i3 8130U/4GB/512GB/Win10', 2, 2, 11990000, 'hp-348-g7-i3-1a0z1pa-1-225549-600x600.png', 'CPU:	Intel Core i3 Coffee Lake, 8130U, 2.20 GHz\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\nMàn hình:	14 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\nCổng kết nối:	3 x USB 3.1, HDMI, LAN (RJ45), USB Type-C\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 19.9 mm, 1.5 kg\nThời điểm ra mắt:	2020', 0, '2020-11-27 10:00:00'),
(7, 'Laptop HP 15s fq1105TU i5 1035G1/8GB/512GB/Win10', 2, 2, 16490000, 'hp-15s-fq1105tu-i5-193p7pa-223682-1-600x600.png', 'CPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\nRAM:	8 GB, DDR4 (2 khe), 2666 MHz\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\nCổng kết nối:	HDMI 1.4, 2 x USB 3.1, USB Type-C\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 18 mm, 1.69 kg\nThời điểm ra mắt:	2019', 0, '2020-11-27 10:00:00'),
(8, 'Laptop HP Pavilion 15 cs2056TX i5 8265U/4GB/1TB/2GB MX130/Win10', 2, 2, 16490000, 'hp-pavilion-15-cs2056tx-i5-8265u-4gb-1tb-2gb-mx130-18-204638-600x600.png', 'CPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX130, 2GB\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB Type-C\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\nKích thước:	Dày 17.9 mm, 1.82 kg\nThời điểm ra mắt:	2019', 1, '2020-11-27 10:00:00'),
(9, 'Laptop HP Envy 13 aq1057TX i7 10510U/8GB/512GB/2GB', 2, 2, 29990000, 'hp-envy-13-i7-8xs68pa-220503-220503-600x600.png', 'CPU:	Intel Core i7 Comet Lake, 10510U, 1.80 GHz\nRAM:	8 GB, DDR4 (On board), 2400 MHz\nỔ cứng:	SSD 512 GB M.2 PCIe\nMàn hình:	13.3 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce MX250 2GB\nCổng kết nối:	2 x USB 3.1, USB Type-C\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\nKích thước:	Dày 14.7 mm, 1.17 kg\nThời điểm ra mắt:	2019', 1, '2020-11-27 10:00:00'),
(10, 'Laptop HP 15 da1033TX i7 8565U/4GB/1TB/2GB MX130/Win10', 2, 2, 17890000, 'hp-15-da1033tx-i7-8565u-4gb-1tb-mx130-5nk26pa-33397-thumb-1-195382-600x600.png', 'CPU:	Intel Core i7 Coffee Lake, 8565U, 1.80 GHz\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2 PCIe\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX130, 2GB\nCổng kết nối:	2 x USB 3.0, HDMI, USB 2.0\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 22.5 mm, 2.07 kg\nThời điểm ra mắt:	2019', 1, '2020-11-27 10:00:00'),
(11, 'Máy tính bảng iPad Pro 11 inch Wifi 128GB', 3, 3, 21490000, 'ipad-pro-11-inch-2020-xam-400x460-fix-400x460.png', 'Màn hình:	Liquid Retina, 11\"\nHệ điều hành:	iPadOS 13\nCPU:	Apple A12Z Bionic, 4 nhân 2.5 GHz & 4 nhân 1.6 GHz\nRAM:	6 GB\nBộ nhớ trong:	128 GB\nCamera sau:	Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR\nCamera trước:	7 MP\nĐàm thoại:	FaceTime\nTrọng lượng:	471 g\nMức năng lượng tiêu thụ	28.65 Wh (Khoảng 7600 mAh)', 0, '2020-11-27 10:00:00'),
(12, 'Máy tính bảng iPad Pro 12.9 inch Wifi 128GB', 3, 3, 27490000, 'ipad-pro-12-9-inch-wifi-128gb-2020-bac-400x460-400x460.png', 'Màn hình:	Liquid Retina, 12.9\"\nHệ điều hành:	iPadOS 13\nCPU:	Apple A12Z Bionic, 4 nhân 2.5 GHz & 4 nhân 1.6 GHz\nRAM:	6 GB\nBộ nhớ trong:	128 GB\nCamera sau:	Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR\nCamera trước:	7 MP\nĐàm thoại:	FaceTime\nTrọng lượng:	471 g\nMức năng lượng tiêu thụ	36.71 Wh (Khoảng 9720 mAh)', 0, '2020-11-27 10:00:00'),
(13, 'Máy tính bảng iPad Air 4 Wifi Cellular 256GB', 3, 3, 24990000, 'ipad-air-4-wifi-cellular-256gb-2020-183220-063218-400x460.png', 'Màn hình:	Liquid Retina, 10.9\"\nHệ điều hành:	iPadOS 14\nCPU:	Apple A14 Bionic 6 nhân\nRAM:	4 GB\nBộ nhớ trong:	256 GB\nCamera sau:	12 MP\nCamera trước:	7 MP\nKết nối mạng:	Hỗ trợ 4G\nHỗ trợ SIM:\n1 Nano SIM hoặc 1 eSIM\nHOTSIM VNMB Siêu sim (5GB/ngày)\nĐàm thoại:	FaceTime', 1, '2020-11-27 10:00:00'),
(14, 'Máy tính bảng iPad Air 4 Wifi Cellular 64GB', 3, 3, 20990000, 'ipad-air-4-wifi-cellular-64gb-2020-183120-063100-400x460.png', 'Màn hình:	Liquid Retina, 10.9\"\nHệ điều hành:	iPadOS 14\nCPU:	Apple A14 Bionic 6 nhân\nRAM:	4 GB\nBộ nhớ trong:	64 GB\nCamera sau:	12 MP\nCamera trước:	7 MP\nKết nối mạng:	Hỗ trợ 4G\nHỗ trợ SIM:\n1 Nano SIM hoặc 1 eSIM\nHOTSIM VNMB Siêu sim (5GB/ngày)\nĐàm thoại:	FaceTime', 1, '2020-11-27 10:00:00'),
(15, 'Máy tính bảng iPad 10.2 inch Wifi 128GB', 3, 3, 11490000, 'ipad-10-2-inch-wifi-128gb-2019-silver-400x460.png', 'Màn hình:	IPS LCD, 10.2\"\nHệ điều hành:	iPadOS 13\nCPU:	Apple A10 Fusion 4 nhân, 2.34 GHz\nRAM:	3 GB\nBộ nhớ trong:	128 GB\nCamera sau:	8 MP\nCamera trước:	1.2 MP\nĐàm thoại:	FaceTime\nTrọng lượng:	483 g\nMức năng lượng tiêu thụ	32.4 Wh (Khoảng 8600 mAh)', 1, '2020-11-27 10:00:00'),
(16, 'Tai nghe nhét tai Sony MDR-E9LP', 4, 4, 139000, 'tai-nghe-ep-sony-mdr-e9lp-bc-e-hong-2-4-600x600.png', 'Tương thích:	AndroidWindowsiOS (iPhone)Windows Phone\nJack cắm:	3.5 mm\nKết nối cùng lúc:	1 thiết bị\nThương hiệu của:	Nhật Bản\nSản xuất tại:	Trung Quốc', 0, '2020-11-27 10:00:00'),
(17, 'Tai nghe nhét tai EP Sony MDR-EX155AP', 4, 4, 360000, 'tai-nghe-ep-sony-mdr-ex155ap-xanh-ngoc-1-600x600.png', 'Tương thích:	AndroidWindowsiOS (iPhone)Windows Phone\nJack cắm:	3.5 mm\nKết nối cùng lúc:	1 thiết bị\nPhím điều khiển:	Mic thoạiNghe/nhận cuộc gọi\nĐộ dài dây	1.2 m\nThương hiệu của:	Nhật Bản\nSản xuất tại:	Trung Quốc', 0, '2020-11-27 10:00:00'),
(18, 'Tai nghe chụp tai Sony MDR - ZX110AP', 4, 4, 490000, 'tai-nghe-sony-mdr-zx110ap-302720-092714-600x600.png', 'Tương thích:	AndroidWindowsiOS (iPhone)Windows Phone\nJack cắm:	3.5 mm\nKết nối cùng lúc:	1 thiết bị\nPhím điều khiển:	Mic thoạiNghe/nhận cuộc gọiPhát/dừng chơi nhạcChuyển bài hát\nĐộ dài dây	1.2 m\nTrọng lượng:	120 g\nThương hiệu của:	Nhật Bản\nSản xuất tại:	Trung Quốc', 1, '2020-11-27 10:00:00'),
(19, 'Tai nghe Bluetooth Sony WI-C200 Đen', 4, 4, 840000, 'tai-nghe-bluetooth-sony-wi-c200-bc-e-den-add-600x600-1-600x600.png', 'Tương thích:	AndroidWindowsiOS (iPhone)Windows Phone\nCổng sạc:	Type-C\nThời gian sử dụng:	15 giờ\nThời gian sạc đầy:	3 giờ\nKết nối cùng lúc:	1 thiết bị\nHỗ trợ kết nối:	10m (Bluetooth 5.0)\nPhím điều khiển:	Mic thoạiNghe/nhận cuộc gọiPhát/dừng chơi nhạcChuyển bài hátTăng/giảm âm lượng\nTrọng lượng:	19 g\nThương hiệu của:	Nhật Bản\nSản xuất tại:	Trung Quốc', 1, '2020-11-27 10:00:00'),
(20, 'Tai nghe Bluetooth Sony Extra Bass True Wireless WF-XB700', 4, 4, 2790000, 'tai-nghe-bluetooth-true-wireless-sony-wf-xb700-den-1-600x600-1-600x600.png', 'Tương thích:	Android, iOS (iPhone, iPad), Windows\nCổng sạc:	Type-C\nCông nghệ âm thanh:	Extra Bass\nThời gian sử dụng:	5 giờ\nThời gian sạc đầy:	2.5 giờ\nKết nối cùng lúc:	1 thiết bị\nTrọng lượng:	8g/ tai nghe, 46g/ hộp sạc\nThương hiệu của:	Nhật Bản\nSản xuất tại:	Việt Nam', 1, '2020-11-27 10:00:00'),
(21, 'Loa vi tính 2.1 Enkor E50 Đen', 5, 5, 390000, 'loa-vi-tinh-21-enkor-e50-den-ava-600x600.png', 'Loại loa:	Loa vi tính\nTổng công suất:	20 W\nKết nối khác:	Jack 3.5 mm\nPhím điều khiển:	Nút nguồnTăng/giảm âm lượngChỉnh Bass\nThương hiệu của:	Trung Quốc', 0, '2020-11-27 10:00:00'),
(22, 'Loa vi tính 2.1 Enkor S2880 Đen', 5, 5, 1007000, 'loa-vi-tinh-21-enkor-s2880-den-1-2-600x600-1-600x600.png', 'Loại loa:	Loa vi tính\nTương thích:	AndroidWindowsiOS (iPhone)\nTổng công suất:	60 W\nKết nối không dây:	Bluetooth\nKết nối khác:	Thẻ nhớ Micro SDJack 3.5 mmUSBJack 3.5mm ra 2 đầu RCA\nTiện ích:	Nghe được FM RadioCó remote\nPhím điều khiển:	Nút nguồnTăng/giảm âm lượngChuyển bài hátPhát/dừng chơi nhạcChuyển chế độ\nThương hiệu của:	Trung Quốc', 1, '2020-11-27 10:00:00'),
(23, 'Loa vi tính 2.1 Enkor S2850 Nâu', 5, 5, 877000, 'loa-vi-tinh-21-enkor-s2850-nau-add-600x600-1-600x600.png', 'Loại loa:	Loa vi tính\nTương thích:	AndroidWindowsiOS (iPhone)\nTổng công suất:	50 W\nKết nối không dây:	Bluetooth\nKết nối khác:	Thẻ nhớ Micro SDJack 3.5 mmUSB\nPhím điều khiển:	Chỉnh TrebleNút nguồnTăng/giảm âm lượngChỉnh BassPhát/dừng chơi nhạc\nThương hiệu của:	Trung Quốc', 1, '2020-11-27 10:00:00'),
(24, 'Loa vi tính Enkor 2.1 R228', 5, 5, 520000, 'loa-vi-tinh-enkor-21-r228-avatar-600x600.png', 'Loại loa:	Loa vi tính\nTương thích:	AndroidWindowsiOS (iPhone)\nTổng công suất:	30 W\nKết nối không dây:	Bluetooth\nKết nối khác:	Jack 3.5 mmUSB\nTiện ích:	Nghe được FM Radio\nPhím điều khiển:	Nút nguồnTăng/giảm âm lượngChuyển bài hátPhát/dừng chơi nhạcChuyển chế độ\nThương hiệu của:	Trung Quốc', 1, '2020-11-27 10:00:00'),
(25, 'Loa vi tính Bluetooth Enkor F200', 5, 5, 715000, 'loa-vi-tinh-enkor-f200-avatar-2-600x600.png', 'Loại loa:	Loa vi tính\nTương thích:	AndroidWindowsiOS (iPhone)\nTổng công suất:	60 W\nKết nối không dây:	Bluetooth\nKết nối khác:	Jack 3.5 mmUSBThẻ nhớ SD\nTiện ích:	Nghe được FM Radio\nPhím điều khiển:	Chỉnh TrebleChỉnh BassChuyển bài hátPhát/dừng chơi nhạcChuyển chế độNghe/nhận cuộc gọi\nThương hiệu của:	Trung Quốc', 0, '2020-11-27 11:00:00'),
(26, 'Điện thoại Samsung Galaxy Note 20 Ultra', 7, 1, 25990000, 'samsung-galaxy-note-20-ultra-vangdong-600x600-600x600.jpg', 'cmt', 0, '2020-11-27 10:00:00'),
(27, 'Điện thoại Samsung Galaxy M51', 7, 1, 9490000, 'samsung-galaxy-m51-trang-new-600x600-600x600.jpg', 'Màn hình:	Super AMOLED Plus, 6.7\", Full HD+\nHệ điều hành:	Android 10\nCamera sau:	Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP\nCamera trước:	32 MP\nCPU:	Snapdragon 730 8 nhân\nRAM:	8 GB\nBộ nhớ trong:	128 GB\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\nThẻ SIM:\n2 Nano SIM, Hỗ trợ 4G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	7000 mAh, có sạc nhanh', 0, '2020-11-27 10:00:00'),
(28, 'Điện thoại Samsung Galaxy Z Fold2 5G', 7, 1, 50000000, 'samsung-galaxy-z-fold-2-vang-dong-600x600.jpg', 'Màn hình:	Chính: Dynamic AMOLED, Phụ: Super AMOLED, Chính 7.59\" & Phụ 6.23\", Full HD+\nHệ điều hành:	Android 10\nCamera sau:	3 camera 12 MP\nCamera trước:	10 MP\nCPU:	Snapdragon 865+ 8 nhân\nRAM:	12 GB\nBộ nhớ trong:	256 GB\nThẻ SIM:\n1 Nano SIM & 1 eSIM, Hỗ trợ 5G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	4500 mAh, có sạc nhanh', 0, '2020-11-27 10:00:00'),
(29, 'Điện thoại Samsung Galaxy Z Flip', 7, 1, 36000000, 'samsung-galaxy-z-flip-600x600-1-600x600.jpg', 'Màn hình:	Chính: Dynamic AMOLED, Phụ: Super AMOLED, 6.7\", Quad HD (2K)\nHệ điều hành:	Android 10\nCamera sau:	2 camera 12 MP\nCamera trước:	10 MP\nCPU:	Snapdragon 855+ 8 nhân\nRAM:	8 GB\nBộ nhớ trong:	256 GB\nThẻ SIM:\n1 Nano SIM & 1 eSIM, Hỗ trợ 4G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	3300 mAh, có sạc nhanh', 0, '2020-11-27 10:00:00'),
(30, 'Điện thoại Samsung Galaxy Note 20 Ultra 5G Trắng', 7, 1, 28990000, 'samsunggalaxynote20ultratrangnew-600x600-600x600.jpg', 'Màn hình:	Dynamic AMOLED 2X, 6.9\", Quad HD+ (2K+)\nHệ điều hành:	Android 10\nCamera sau:	Chính 108 MP & Phụ 12 MP, 12 MP, cảm biến Laser AF\nCamera trước:	10 MP\nCPU:	Exynos 990 8 nhân\nRAM:	12 GB\nBộ nhớ trong:	256 GB\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 TB\nThẻ SIM:\n2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G\nHOTSIM VNMB Siêu sim (5GB/ngày)\nDung lượng pin:	4500 mAh, có sạc nhanh', 0, '2020-11-27 10:00:00'),
(31, 'Laptop Dell Inspiron 5593 i5 1035G1/8GB/256GB/2GB', 6, 2, 17990000, 'dell-inspiron-5593-i5-1035g1-8gb-256gb-2gb-mx230-w-213570-600x600.jpg', 'CPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\nRAM:	8 GB, DDR4 (2 khe), 2666 MHz\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce MX230 2GB\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, USB Type-C\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 19.90 mm, 2.05 kg\nThời điểm ra mắt:	2019', 0, '2020-11-27 10:00:00'),
(32, 'Laptop Dell Vostro 3590 i7 10510U/8GB/256GB/2GB 610R5/Win10', 6, 2, 20990000, 'dell-vostro-3590-i7-grmgk2-220718-220718-600x600.jpg', 'CPU:	Intel Core i7 Comet Lake, 10510U, 1.80 GHz\nRAM:	8 GB, DDR4 (On board +1 khe), 2666 MHz\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa rời, AMD Radeon 610R5, 2GB\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 19.8 mm, 1.99 kg\nThời điểm ra mắt:	2019', 0, '2020-11-27 10:00:00'),
(33, 'Laptop Dell Inspiron 5593 i5 1035G1/8GB/512GB/Win10', 6, 2, 17990000, 'dell-inspiron-5593-i5-7wgnv1-213535-600x600.jpg', 'CPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\nRAM:	8 GB, DDR4 (On board +1 khe), 2666 MHz\nỔ cứng:	SSD 512 GB M.2 PCIe\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 19.9 mm, 1.83 kg\nThời điểm ra mắt:	2019', 0, '2020-11-27 10:00:00'),
(34, 'Laptop Dell Vostro 3491 i3 1005G1/4GB/256GB/Win10', 6, 2, 10990000, 'dell-vostro-3491-i3-70223127-103120-103142-600x600.jpg', 'CPU:	Intel Core i3 Ice Lake, 1005G1, 1.20 GHz\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\nỔ cứng:	SSD 256GB NVMe PCIe\nMàn hình:	14 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0\nHệ điều hành:	Windows 10 Home SL\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 21 mm, 1.66 kg\nThời điểm ra mắt:	2020', 0, '2020-11-27 10:00:00'),
(35, 'Laptop Dell Vostro 5581 i5 8265U/4GB/1TB/Office365/Win10', 6, 2, 12790000, 'dell-vostro-5581-i5-8265u-4gb-1tb-office365-win10-1-2-203138-600x600.jpg', 'CPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, USB Type-C\nHệ điều hành:	Windows 10 + Office 365 1 năm\nThiết kế:	Vỏ nhựa, PIN liền\nKích thước:	Dày 20.3 mm, 1.9 kg\nThời điểm ra mắt:	2018', 0, '2020-11-27 10:00:00'),
(36, 'Máy tính bảng Samsung Galaxy Tab A7', 7, 3, 7990000, 'samsung-galaxy-tab-a7-2020-vangdong-600x600.jpg', 'Màn hình:	TFT LCD, 10.4\"\nHệ điều hành:	Android 10\nCPU:	Snapdragon 662 8 nhân\nRAM:	3 GB\nBộ nhớ trong:	64 GB\nCamera sau:	8 MP\nCamera trước:	5 MP\nKết nối mạng:	Hỗ trợ 4G\nHỗ trợ SIM:\n1 Nano SIM\nHOTSIM VNMB Siêu sim (5GB/ngày)\nĐàm thoại:	Có', 0, '2020-11-27 10:00:00'),
(37, 'Máy tính bảng Samsung Galaxy Tab A8 8\" T295', 7, 3, 3690000, 'samsung-galaxy-tab-a8-t295-2019-silver-600x600-1-600x600.jpg', 'Màn hình:	TFT LCD, 8\"\nHệ điều hành:	Android 10\nCPU:	Snapdragon 429 8 nhân\nRAM:	2 GB\nBộ nhớ trong:	32 GB\nCamera sau:	8 MP\nCamera trước:	2 MP\nKết nối mạng:	Hỗ trợ 4G\nHỗ trợ SIM:\n1 Nano SIM\nHOTSIM VNMB Siêu sim (5GB/ngày)\nĐàm thoại:	Có', 0, '2020-11-27 10:00:00'),
(38, 'Máy tính bảng Samsung Galaxy Tab S7', 7, 3, 18990000, 'samsung-galaxy-tab-s7-gold-new-600x600.jpg', 'Màn hình:	LTPS IPS LCD, 11\"\nHệ điều hành:	Android 10\nCPU:	Snapdragon 865+ 8 nhân\nRAM:	6 GB\nBộ nhớ trong:	128 GB\nCamera sau:	Chính 13 MP & Phụ 5 MP\nCamera trước:	8 MP\nKết nối mạng:	Hỗ trợ 4G\nHỗ trợ SIM:\n1 Nano SIM (chung thẻ nhớ)\nHOTSIM VNMB Siêu sim (5GB/ngày)\nĐàm thoại:	Có', 0, '2020-11-27 10:00:00'),
(39, 'Máy tính bảng Samsung Galaxy Tab S6', 7, 3, 18490000, 'samsung-galaxy-tab-s6-600x600-1-600x600.jpg', 'Màn hình:	Super AMOLED, 10.5\"\nHệ điều hành:	Android 9\nCPU:	Snapdragon 855 8 nhân\nRAM:	6 GB\nBộ nhớ trong:	128 GB\nCamera sau:	Chính 13 MP & Phụ 5 MP\nCamera trước:	8 MP\nKết nối mạng:	Hỗ trợ 4G\nHỗ trợ SIM:\n1 Nano SIM\nHOTSIM VNMB Siêu sim (5GB/ngày)\nĐàm thoại:	Có', 0, '2020-11-27 10:00:00'),
(40, 'Máy tính bảng Samsung Galaxy Tab S6 Lite', 7, 3, 9990000, 'samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', 'Màn hình:	PLS LCD, 10.4\"\nHệ điều hành:	Android 10\nCPU:	Exynos 9611 8 nhân\nRAM:	4 GB\nBộ nhớ trong:	64 GB\nCamera sau:	8 MP\nCamera trước:	5 MP\nKết nối mạng:	Hỗ trợ 4G\nHỗ trợ SIM:\n1 Nano SIM\nHOTSIM VNMB Siêu sim (5GB/ngày)\nĐàm thoại:	Có', 0, '2020-11-27 10:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Phone'),
(2, 'Computer'),
(3, 'Tablet'),
(4, 'Headphone'),
(5, 'Speak');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `power` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `power`) VALUES
(1, 'Doan', '123', 'admin'),
(2, 'Hoang', '123', 'user');
--
-- Cơ sở dữ liệu: `nhom9`
--
CREATE DATABASE IF NOT EXISTS `nhom9` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `nhom9`;

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
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `cate_id`, `price`, `image`, `description`, `hot`, `sale`) VALUES
(53, 'Laptop Acer Aspire 5 A514 54 33WY i3 1115G4/4GB/256GB/Win10 (NX.A23SV.00J)\r\n\r\n\r\n', 1, 1, 13590000, 'acer-aspire-5-a514-54-33wy-i3-nxa23sv00j-021220-101200-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Tiger Lake, 1115G4, 3.00 GHz\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2666 MHz\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	3 x USB 3.2, HDMI, LAN (RJ45), USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.95 mm, 1.46 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(54, 'Laptop Acer Swift 3 SF315 51 54H0 i5 8250U/4GB/1TB/Win10 (NX.GSKSV.004)\r\n\r\n\r\n', 1, 1, 11890000, 'acer-sf315-51-54h0-i5-8250u-4gb-1tb-win107-201769-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (On board), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 18.9 mm, 1.7 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(55, 'Laptop Acer Swift 3 SF314 57 52GB i5 1035G1/8GB/512GB/Win10 (NX.HJFSV.001)\r\n\r\n\r\n', 1, 1, 18490000, 'acer-swift-3-sf314-nx-hjfsv-0018-217351-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, LPDDR4 (On board), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	USB 3.1, HDMI, USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Nhôm - Magie, PIN liền\r\nKích thước:	Dày 15.95 mm, 1.19 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(56, 'Laptop Acer Swift 3S SF314 57G 53T1 i5 1035G1/8GB/512GB/2GB MX250/Win10 (NX.HJESV.001)\r\n\r\n\r\n', 1, 1, 19490000, 'acer-swift-3s-sf314-57g-53t1-i5-1035g1-8gb-512gb-2-9-213849-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, LPDDR4 (On board), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Không hỗ trợ khe cắm HDD\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce MX250 2GB\r\nCổng kết nối:	Thunderbolt 3, USB 3.1, HDMI, USB 2.0\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Nhôm - Magie, PIN liền\r\nKích thước:	Dày 15.95 mm, 1.19kg\r\nThời điểm ra mắt:	2019', 1, 0),
(57, 'Laptop Acer Aspire A315 54 558R i5 8265U/4GB/1TB/Win10 (NX.HEFSV.005)\r\n\r\n', 1, 1, 11490000, 'acer-aspire-a315-54-558r-i5-8265u-4gb-1tb-win10-n3-209143-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, LAN (RJ45)\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 17.95 mm, 1.7 Kg\r\nThời điểm ra mắt:	2019', 1, 0),
(58, 'Laptop Acer Swift 3 SF314 56 38UE i3 8145U/4GB/256GB/Win10 (NX.H4CSV.005)\r\n\r\n', 1, 1, 14190000, 'acer-swift-sf314-56-38ue-i3-8145u-4gb-256gb-win10-202267-202267-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Coffee Lake, 8145U, 2.10 GHz\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 17.95 mm, 1.45 kg\r\nThời điểm ra mắt:	2018', 1, 0),
(59, 'Laptop Acer Aspire A514 53 5921 i5 1035G1/8GB/512GB/Win10 (NX.HUPSV.001)\r\n\r\n', 1, 1, 16490000, 'acer-aspire-a514-53-5921-i5-nxhupsv001-223657-1-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.95 mm, 1.5kg\r\nThời điểm ra mắt:	2020', 1, 0),
(60, 'Laptop Acer Swift 5 SF514 53T 51EX i5 8265U/8GB/256GB/Touch/Win10 (NX.H7KSV.001)\r\n', 1, 1, 23490000, 'acer-swift-sf5-i5-8265u-8gb-256gb-win10-13-201236-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	8 GB, DDR4 (On board), 2400 MHz\r\nỔ cứng:	SSD 256GB NVMe PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Nhôm - Magie, PIN liền\r\nKích thước:	Dày 14.9 mm,', 1, 0),
(61, 'Laptop Asus VivoBook X409JA i5 1035G1/8GB/512GB/Win10 (EK052T)', 1, 1, 15490000, 'asus-vivobook-x409ja-i5-ek052t-220976-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Không hỗ trợ khe cắm HDD\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.9 mm, 1.47 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(62, 'Laptop Asus VivoBook X509JA i3 1005G1/4GB/256GB/Win10 (EJ480T)\r\n', 1, 1, 10890000, 'asus-vivobook-x509ja-i3-ej480t-225608-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Ice Lake, 1005G1, 1.20 GHz\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2666 MHz\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.9 mm, 1.73 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(63, 'Laptop Asus VivoBook A515EA i3 1115G4/8GB/512GB/Win10 (BQ497T)\r\n', 2, 1, 14690000, 'asus-vivobook-a515ea-i3-bq497t-062220-092221-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Tiger Lake, 1115G4, 3.00 GHz\r\nRAM:	8 GB, DDR4 (On board +1 khe), 3200 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	1 x USB 3.2, 2 x USB 2.0, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.8 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(64, 'Laptop Asus VivoBook X409JA i3 1005G1/4GB/512GB/Win10 (EK015T)', 2, 1, 11590000, 'asus-x409ja-i3-ek015t.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Tiger Lake, 1115G4, 3.00 GHz\r\nRAM:	8 GB, DDR4 (On board +1 khe), 3200 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	1 x USB 3.2, 2 x USB 2.0, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.8 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(65, 'Laptop Asus VivoBook A415EA i3 1115G4/4GB/512GB/Win10 (EB317T)\r\n', 2, 1, 13690000, 'asus-vivobook-a415ea-i3-eb317t-062420-092402-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Tiger Lake, 1115G4, 3.00 GHz\r\nRAM:	4 GB, DDR4 (On board), 3200 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.4 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(66, 'Laptop Asus VivoBook X509MA N5030/4GB/512GB/Win10 (EJ256T)\r\n', 2, 1, 8890000, 'asus-vivobook-x509ma-n5030-ej256t-171120-051158-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Pentium, N5030, 1.10 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 605\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB 3.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.9 mm, 1.9 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(67, 'Laptop Asus VivoBook A415EA i3 1115G4/4GB/32GB+512GB/Win10 (EB353T)\r\n\r\n', 1, 1, 14190000, 'asus-vivobook-a415ea-i3-eb353t-062320-092323-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i3 Tiger Lake, 1115G4, 3.00 GHz\r\nRAM:	4 GB, DDR4 (On board), 3200 MHz\r\nỔ cứng:	Intel Optane 32GB (H10), SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.4 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(68, 'Laptop Asus VivoBook X509JP i5 1035G1/8GB/512GB/2GB MX330/Win10 (EJ023T)', 1, 1, 17190000, 'asus-vivobook-x509jp-i5-ej023t-2gb-221617-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce MX330, 2GB\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.9 mm, 1.73 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(69, 'Laptop Asus VivoBook X509JP i5 1035G1/8GB/512GB/2GB MX330/Win10 (EJ023T)\r\n', 1, 1, 17190000, 'asus-vivobook-x509jp-i5-ej023t-2gb-221617-600x600 (1).jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce MX330, 2GB\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 22.9 mm, 1.73 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(70, 'Laptop Asus VivoBook A415EA i5 1135G7/8GB/32GB+512GB/Win10 (EB355T)\r\n', 1, 1, 17590000, 'asus-vivobook-a415ea-i5-eb355t-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Tiger Lake, 1135G7, 2.40 GHz\r\nRAM:	8 GB, DDR4 (On board), 3200 MHz\r\nỔ cứng:	Intel Optane 32GB (H10), SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® Iris® Xe Graphics\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.4 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(71, 'Laptop Asus VivoBook X515MA N5030/4GB/512GB/Win10 (EJ120T)\r\n', 1, 1, 8890000, 'asus-vivobook-x515ma-n5030-ej120t-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Pentium, N5030, 1.10 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 605\r\nCổng kết nối:	1 x USB 3.2, 2 x USB 2.0, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 19.9 mm, 1.8 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(72, 'Laptop Asus VivoBook A412F i5 10210U/8GB/32GB+512GB/Win10 (EK739T)', 1, 1, 16490000, 'asus-vivobook-a412f-i510210u-8gb-32gb-512gb-win10-kg-218865-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Comet Lake, 10210U, 1.60 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	Intel Optane 32GB (H10), SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics\r\nCổng kết nối:	USB 3.1, HDMI, USB 2.0, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 19.5 mm, 1.406 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(73, 'Laptop Asus VivoBook X509JA i7 1065G7/8GB/512GB/Office H&S2019/Win10 (EJ232TS)\r\n', 1, 1, 19490000, 'asus-vivobook-x509ja-i7-ej232ts-vântay-220576-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Ice Lake, 1065G7, 1.30 GHz\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB Type-C, USB 3.0', 1, 0),
(74, 'Laptop Asus VivoBook A415EA i5 1135G7/8GB/512GB/Win10 (EB354T)\r\n', 1, 1, 17290000, 'asus-vivobook-a415ea-i5-eb354t-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Tiger Lake, 1135G7, 2.40 GHz\r\nRAM:	8 GB, DDR4 (On board), 3200 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	14 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® Iris® Xe Graphics\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 17.9 mm, 1.4 kg\r\nThời điểm ra mắt:	2020', 1, 0),
(76, 'Laptop Asus VivoBook S530FN i5 8265U/4GB/1TB/2GB MX150/Win10 (BQ128T)', 1, 1, 14290000, 'asus-vivobook-a415ea-i5-eb354t-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX150, 2GB\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền\r\nKích thước:	Dày 18 mm, 1.76 kg\r\nThời điểm ra mắt:	2018', 1, 0),
(77, 'Điện thoại Vivo Y12s (3GB/32GB)\r\n', 1, 1, 3290000, 'vivo-y12s-xanh-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.51\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 2 MP\r\nCamera trước:	8 MP', 1, 0),
(78, 'Điện thoại Vivo X50 Pro', 0, 1, 17990000, 'vivo-x50-pro-14-600x600.jpg', '\r\nThông số kỹ thuật\r\nMàn hình:	AMOLED, 6.56\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 13 MP, 8 MP, 8 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 765G 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 5G', 1, 0),
(79, 'Điện thoại Vivo V19', 1, 1, 7490000, 'vivo-v19-xanh-new-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.44\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	Chính 32 MP & Phụ 8 MP\r\nCPU:	Snapdragon 712 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(80, 'Điện thoại Vivo V20', 1, 1, 7990000, 'vivo-v20-(4).jpg', 'Thông số kỹ thuật\r\nMàn hình:	AMOLED, 6.44\", Full HD+\r\nHệ điều hành:	Android 11\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 2 MP\r\nCamera trước:	44 MP\r\nCPU:	Snapdragon 720G 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(81, 'Điện thoại Vivo V19 Neo', 1, 1, 6990000, 'vivo-v19-neo-den-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.44\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 675 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(82, 'Điện thoại Vivo V20 SE\r\n', 1, 1, 6790000, 'vivo-v20-se-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	AMOLED, 6.44\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 665 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 TB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(83, 'Điện thoại Vivo Y50', 1, 1, 5590000, 'vivo-y50-xanh-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.53\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	16 MP\r\nCPU:	Snapdragon 665 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(84, 'Điện thoại Vivo S1 Pro', 1, 1, 5490000, 'vivo-s1-pro-white-1-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.38\", Full HD+\r\nHệ điều hành:	Android 9 (Pie)\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 665 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(85, 'Điện thoại Vivo Y19', 1, 1, 4590000, 'vivo-y19-white-1-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.53\", Full HD+\r\nHệ điều hành:	Android 9 (Pie)\r\nCamera sau:	Chính 16 MP & Phụ 8 MP, 2 MP\r\nCamera trước:	16 MP\r\nCPU:	MediaTek MT6768 8 nhân (Helio P65)\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(86, 'Điện thoại Vivo Y20s', 1, 1, 4990000, 'vivo-y20s-xanh-1-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.51\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 2 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	Snapdragon 460 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(87, 'Điện thoại Vivo Y30', 1, 1, 4090000, 'vivo-y30-xanh-new-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.47\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	MediaTek Helio P35 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(88, 'Điện thoại Vivo Y12s (4GB/128GB)\r\n', 1, 1, 4290000, 'vivo-y12s-den-new-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.51\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 2 MP\r\nCamera trước:	8 MP\r\nCPU:	MediaTek Helio P35 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(89, 'Điện thoại Vivo Y20', 1, 1, 3990000, 'vivo-y20-white-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.51\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 2 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	Snapdragon 460 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 1, 0),
(90, 'Điện thoại Vivo U10', 1, 1, 3590000, 'vivo-u10-xanh-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.35\", HD+\r\nHệ điều hành:	Android 9 (Pie)\r\nCamera sau:	Chính 13 MP & Phụ 8 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	Snapdragon 665 AIE 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ ', 1, 0);

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
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
