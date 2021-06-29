-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 26, 2021 lúc 12:57 AM
-- Phiên bản máy phục vụ: 8.0.21
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sinhvien_nhom8`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'iPhone'),
(2, 'Samsung'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Asus'),
(6, 'Dell');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int NOT NULL,
  `type_id` int NOT NULL,
  `price` int NOT NULL,
  `pro_image` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`) VALUES
(82, 'Xiaomi Mi 10T Pro 5G', 4, 1, 12990000, 'xiaomi-mi-10t-pro.jpg', 'Mi 10T Pro 5G mẫu smartphone cao cấp của Xiaomi trong năm 2020 cuối cùng cũng được trình làng với loạt những thông số gây “choáng ngợp”: màn hình tần số quét 144 Hz, vi xử lý Snapdragon 865 và cụm camera khủng 108 MP kèm theo đó là một mức giá dễ chịu cho người dùng.', 0),
(78, 'OPPO A93', 3, 1, 7490000, 'oppo-a93.jpg', 'Tháng 9/2020, OPPO tiếp tục cho ra mắt dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 với nhiều điểm được nâng cấp như hiệu năng, hệ thống camera cùng khả năng sạc nhanh 18W với tên gọi OPPO A93.', 0),
(76, 'Samsung Galaxy Note 10 Lite', 2, 1, 11490000, 'samsung-galaxy-note-10-lite.jpg', 'Sau bao đồn đoán và trông ngóng thì cuối cùng \"người em út\" trong series Note 10 cũng đã chính thức trình làng với tên gọi Samsung Galaxy Note 10 Lite với những thay đổi nhất định về ngoại hình.', 0),
(77, 'OPPO Find X2', 3, 1, 19990000, 'oppo-find-x2.jpg', 'Tiếp nối thành công vang dội của thế hệ Find X, OPPO chính thức ra mắt Find X2 với những đường nét thanh lịch từ thiết kế phần cứng cho đến trải nghiệm phần mềm, hứa hẹn một vẻ đẹp hoàn hảo, một sức mạnh xứng tầm.', 1),
(75, 'Samsung Galaxy S20 FE', 2, 1, 15990000, 'samsung-galaxy-s20-fan-edition.jpg', 'Trong sự kiện Samsung Unpacked, Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 0),
(74, 'Samsung Galaxy Note 10+', 2, 1, 16490000, '\r\nsamsung-galaxy-note-10-plus.jpg', 'Trông ngoại hình khá giống nhau, tuy nhiên Samsung Galaxy Note 10+ sở hữu khá nhiều điểm khác biệt so với Galaxy Note 10 và đây được xem là một trong những chiếc máy đáng mua nhất trong năm 2019, đặc biệt dành cho những người thích một chiếc máy màn hình lớn, camera chất lượng hàng đầu.', 1),
(73, 'Samsung Galaxy S20+', 2, 1, 23990000, 'samsung-galaxy-s20-plus.jpg', 'Chiếc điện thoại Samsung Galaxy S20 Plus - Siêu phẩm với thiết kế màn hình tràn viền, hiệu năng đỉnh cao kết hợp cùng nhiều đột phá về công nghệ dẫn đầu thế giới smartphone.', 1),
(71, 'Samsung Galaxy Note 20 Ultra 5G Trắng', 2, 1, 26990000, 'samsung-galaxy-note-20-ultra-5g-trang.jpg', 'Samsung Galaxy Note 20 Ultra 5G Trắng mẫu flagship hàng đầu của Samsung hoàn hảo về mọi mặt, từ thiết kế sang trọng đẳng cấp cho đến hiệu năng cực khủng ẩn chứa bên trong. Đặc biệt hơn cả là chiếc bút S Pen đầy “quyền năng” của dòng Note giờ đây cũng đã được nâng lên một tầm cao mới.', 1),
(70, 'Samsung Galaxy Note 20 Ultra 5G', 2, 1, 29990000, 'samsung-galaxy-note-20-ultra-5g.jpg', 'Samsung Galaxy Note 20 Ultra 5G, mẫu điện thoại flagship cao cấp thuộc dòng Note của Samsung, ra mắt tháng 8/2020 với diện mạo thay đổi cùng những nâng cấp đột phá, đây chắc chắn sẽ là sản phẩm được săn lùng từ những người dùng yêu thích công nghệ cũng như yêu thích smartphone Samsung.', 0),
(69, 'iPhone Xs 64GB', 1, 1, 17490000, '\r\niphone-xs-64gb.jpg', 'iPhone Xs 64 GB với những nâng cấp mạnh mẽ về phần cứng đến hiệu năng, màn hình cùng hàng loạt các trang bị cao cấp khác. ', 0),
(72, 'Samsung Galaxy Note 20', 2, 1, 20990000, 'samsung-galaxy-note-20.jpg', 'Tháng 8/2020, Samsung Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với việc sử dụng vi xử lý Exynos 990 cao cấp của chính Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.', 0),
(67, 'iPhone 11 Pro Max 512GB', 1, 1, 35990000, 'iphone-11-pro-max-512gb.jpg', 'Để tìm kiếm một chiếc smartphone có hiệu năng mạnh mẽ và có thể sử dụng mượt mà trong 2-3 năm tới thì không có chiếc máy nào xứng đang hơn chiếc iPhone 11 Pro Max 512GB mới ra mắt trong năm 2019 của Apple.', 1),
(68, 'iPhone 7 128GB', 1, 1, 8990000, 'iphone-7-128gb.jpg', 'iPhone 7 là chiếc smartphone có thiết kế kim loại nguyên khối cuối cùng của Apple, nhưng đồng thời lại sở hữu “hàng tá” tính năng mới xuất hiện lần đầu như: nút home cảm ứng lực, khả năng kháng bụi nước, âm thanh stereo 2 kênh. Và đặc biệt, hiệu năng từ con chip A10 Fusion vẫn tỏ ra rất ổn định ở thời điểm hiện tại.', 0),
(66, 'iPhone 12 Pro Max 512GB', 1, 1, 42990000, '\r\niphone-12-pro-max-512gb.jpg', 'iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc iPhone tiền nhiệm nào có được.', 0),
(83, 'Xiaomi Redmi Note 8 Pro (6GB/128GB)', 4, 1, 5990000, 'xiaomi-redmi-note-8-pro-6gb-128gb.jpg', 'Là phiên bản nâng cấp của chiếc Xiaomi Redmi Note 7 Pro đã \"làm mưa làm gió\" trên thị trường trước đó, chiếc Xiaomi Redmi Note 8 Pro (6GB/128GB) sẽ là sự lựa chọn hàng đầu dành cho người dùng quan tâm nhiều về hiệu năng và camera của một chiếc điện thoại tầm trung.', 0),
(84, 'Asus Gaming Rog Strix G512 i7 10750H/8GB/512GB/144Hz/4GB GTX1650Ti/Win10 (IAL001T)', 5, 2, 28990000, 'asus-gaming-rog-strix-g512-i7-ial001t.jpg', 'Asus Gaming Rog Strix G512 i7 10750H/8GB/512GB/144Hz/4GB GTX1650Ti/Win10 (IAL001T).\r\n<br>\r\nLaptop Asus Gaming Rog Strix G512 i7 (IAL001T) là chiếc laptop gaming có cấu hình mạnh mẽ và thiết kế hầm hố đậm chất gaming. Máy được trang bị chip Intel Core i7 thế hệ mới nhất cùng với màn hình cao cấp chuẩn gaming giúp bạn thỏa sức chiến những tựa game cực đỉnh.', 1),
(85, 'Asus Pro Max', 5, 2, 21, 'asus-zenbook-ux425ea-i5-bm069t.jpg', 'Laptop Asus ZenBook UX425EA i5 1135G7/8GB/512GB/Cáp/Túi/Win10 (BM069T)\r\n<br>\r\nSiêu phẩm Asus ZenBook UX425EA i5 (BM069T) vừa ra mắt đến từ nhà Asus sở hữu thiết kế đẹp tinh tế, di động tối ưu cùng độ bền chuẩn quân đội. Đặc biệt, chiếc máy này sở hữu con chip Intel thế hệ 11 mới nhất đến thời điểm hiện tại đem đến những tính năng hiện đại và tân tiến nhất.', 0),
(88, 'Samsung Galaxy Z Fold2 5G', 2, 1, 50000000, 'samsung-galaxy-z-fold-2.jpg', 'Samsung Galaxy Z Fold 2 là tên gọi chính thức của điện thoại màn hình gập cao cấp nhất của Samsung. Với nhiều nâng cấp tiên phong về thiết kế, hiệu năng và camera, hứa hẹn đây sẽ là một siêu phẩm thành công tiếp theo đến từ “ông trùm” sản xuất điện thoại lớn nhất thế giới. ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Smartphone'),
(2, 'Laptop'),
(3, 'Tablet'),
(4, 'SmartWatch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
CREATE TABLE IF NOT EXISTS `sinhvien` (
  `mssv` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` tinyint NOT NULL,
  PRIMARY KEY (`mssv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(4, 'user3', '33333', 'User'),
(3, 'user2', '22222', 'User'),
(2, 'admin1', '11111', 'Admin'),
(1, 'user1', '11111', 'User'),
(5, 'User5', '55555', 'User');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
