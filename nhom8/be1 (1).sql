-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 29, 2021 lúc 06:35 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(40, 'Máy tính bảng Samsung Galaxy Tab S6 Lite', 7, 3, 9990000, 'samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', 'Màn hình:	PLS LCD, 10.4\"\r\nHệ điều hành:	Android 10\r\nCPU:	Exynos 9611 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nCamera sau:	8 MP\r\nCamera trước:	5 MP\r\nKết nối mạng:	Hỗ trợ 4G\r\nHỗ trợ SIM:\r\n1 Nano SIM\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nĐàm thoại:	Có', 0, '2020-11-27 10:00:00'),
(43, 'iphon 11 pro max', 1, 1, 32423423, 'thumb_694526497374699.jpg', 'sfdsfsdf', 1, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `power`) VALUES
(1, 'Doan', '123', 'admin'),
(2, 'Hoang', '123', 'user'),
(9, 'An', '123', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
