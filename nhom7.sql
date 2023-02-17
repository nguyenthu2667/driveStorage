-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 08, 2021 lúc 02:06 PM
-- Phiên bản máy phục vụ: 8.0.21
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Oppo'),
(2, 'Apple'),
(3, 'SamSung'),
(4, 'Vsmart'),
(5, 'Vivo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manu_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `price` int NOT NULL,
  `pro_image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`) VALUES
(1, 'iphone 6s', 2, 1, 70000000, 'img1.jpg\r\n', 'Màn hình:	LED-backlit IPS LCD, 4.7\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	12 MP\r\nCamera trước:	5 MP\r\nCPU:	Apple A9 2 nhân\r\nRAM:	2 GB\r\nBộ nhớ trong:	16 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	1715 mAh', 1),
(2, 'iphone7', 2, 1, 120000000, 'img2.jpg\r\n', 'Màn hình:	OLED, 4.7\"\r\nHệ điều hành:	iOS 10\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	CPU 4 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G', 0),
(3, 'iphone8 plus', 2, 1, 1540000000, 'img3.jpg', 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 13\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	2691 mAh, có sạc nhanh', 1),
(4, 'iphone x', 2, 1, 1780000000, 'img5.jpg', 'Mặt kính cảm ứng:\r\nKính oleophobic (ion cường lực)\r\nĐộ phân giải:\r\n1125 x 2436 pixels\r\nMàn hình rộng:\r\n5.8 inches\r\nCamera sau:\r\n12MP + 12MP (2 camera)\r\nQuay Phim:\r\nQuay phim 4K 2160p@30fps\r\nHệ điều hành:\r\nIOS 11\r\nChipset:\r\nApple A11 Bionic (10 nm)\r\nRAM:\r\n3 GB\r\nBộ nhớ trong ( Rom):\r\n64 GB\r\nDung lượng pin:\r\n2716 mAh', 0),
(5, 'iphone 11', 2, 1, 1980000000, 'img4.jpg', 'Màn hình:	5.8\" Super Retina XDR\r\nCamera trước:	12 MP\r\nCamera sau:	12 MP + 12 MP + 12 MP\r\nChipset:	Apple A13 Bionic 6 nhân (7nm+)\r\nRAM:	4 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ Sim:	Nano-Sim\r\nDung lượng pin:	3190 mAh\r\nHệ điều hành:	iOS', 0),
(6, 'iphone 5', 2, 1, 13312039, 'img6.jpg', 'Màn hình:	LED-backlit IPS LCD, 4\", DVGA\r\nCamera sau:	8 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Apple A6 2 nhân\r\nRAM:	1 GB\r\nBộ nhớ trong:	16 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	1440 mAh', 0),
(7, 'Điện thoại Samsung Galaxy A21s', 3, 1, 70000000, 'img7.jpg', 'Model:	A21s\r\nMàu sắc:	Xanh\r\nNhà sản xuất:	Samsung\r\nXuất xứ:	Việt Nam\r\nNăm ra mắt :	2020\r\nThời gian bảo hành:	12 tháng\r\nĐịa điểm bảo hành:	Nguyễn Kim\r\nHệ điều hành:	Android 10, One IU 2\r\nChipset:	Exynos 850 8 nhân\r\nRAM:	3 GB', 1),
(8, 'Điện thoại Samsung Galaxy Z Fold2 5G\r\n', 3, 1, 80000000, 'img8.jpg', 'Màn hình	Màn hình trước: 6.2\", Màn hình chính: 7.6\", HD+, Chính: Dynamic AMOLED 2X, phụ: Super AMOLED, 1768 x 2208 Pixel\r\nCamera sau	12.0 MP, 12.0 MP, 12.0 MP\r\nCamera Selfie	10.0 MP\r\nRAM 	12 GB\r\nBộ nhớ trong	256 GB\r\nCPU Model	Snapdragon 865+\r\nGPU	Adreno 650\r\nDung lượng pin	4500 mAh\r\nThẻ sim	1, Nano SIM\r\nHệ điều hành	Android 10.0\r\nXuất xứ	Việt Nam', 1),
(9, 'Điện thoại Samsung Galaxy Z Flip\r\n', 3, 1, 78880000, 'img9.jpg', 'Điện thoại Samsung Galaxy Z Flip - thế hệ smartphone màn hình gập tiếp theo của Samsung trong năm 2020. Thiết kế tinh tế, thanh lịch và nhỏ gọn với hình dáng gập vỏ sò, màn hình 6.7 inch, camera kép cực đỉnh. RAM 8GB bộ nhớ trong 256GB mang đến khả năng đa nhiệm ấn tượng cho thiết bị.', 1),
(11, 'Điện thoại Vivo X50 Pro\r\n', 5, 1, 78880000, 'img11.jpg', 'Màn hình:	AMOLED, 6.56\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 13 MP, 8 MP, 8 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 765G 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 5G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	4315 mAh', 0),
(12, 'Điện thoại Vivo X50\r\n', 5, 1, 78880000, 'img11.jpg', 'Màn hình:	AMOLED, 6.56\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 13 MP, 8 MP, 5 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 730 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	4200 mAh, có sạc nhanh', 1),
(13, 'Điện thoại Vivo Y12s', 5, 1, 78880000, 'img9.jpg', 'Màn hình:	IPS LCD, 6.51\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 13 MP & Phụ 2 MP\r\nCamera trước:	8 MP\r\nCPU:	MediaTek Helio P35 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	5000 mAh', 0),
(14, 'Cảm ứng Vivo Y15', 5, 1, 78880000, 'img9.jpg', 'Cảm ứng Vivo Y15 (trắng) - Mặt kính bị vỡ nhưng không ảnh hưởng tới hiển thị, không hiện các vệt đen trên màn hình nghĩa là điện thoại chỉ bị hỏng mặt kính cảm ứng, màn hình không bị ảnh hưởng. Bạn chỉ cần mua mặt kính cảm ứng mới là được. Mặt kính cảm ứng giá rẻ xuất kho, cùng nhiều ưu đãi càng thêm rẻ tới bất ngờ', 0),
(15, 'Điện thoại Vivo V20 SE', 5, 1, 78880000, 'img9.jpg', 'Màn hình:	AMOLED, 6.44\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 665 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 TB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	4100 mAh, có sạc nhanh', 0),
(16, 'Điện thoại Vivo S1 Pro', 5, 1, 78880000, 'img9.jpg', 'Màn hình:	Super AMOLED, 6.38\", Full HD+\r\nHệ điều hành:	Android 9 (Pie)\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 665 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	4500 mAh', 0),
(17, 'Oppo A37', 1, 1, 72880000, 'img21.jpg', 'OPPO A37 là phiên bản nâng cấp của A33 với băng tần 4G LTE Cat6 cao hơn giúp người dùng sử dụng 4G với tốc độ nhanh hơn, A37fw còn được người dùng yêu thích với camera selfie ảo diệu cùng mức giá bán phải chăng.', 0),
(18, 'Oppo A33', 1, 1, 72880000, 'img22.jpg', 'OPPO A37fw là phiên bản nâng cấp của A37 với băng tần 4G LTE Cat6 cao hơn giúp người dùng sử dụng 4G với tốc độ nhanh hơn, A37fw còn được người dùng yêu thích với camera selfie ảo diệu cùng mức giá bán phải chăng.', 0),
(19, 'Oppo A93', 1, 1, 72880000, 'img23.jpg', 'Màn hình:AMOLED, 6.43\", Full HD+\r\nHệ điều hành:Android 10\r\nCamera sau:Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:Chính 16 MP & Phụ 2 MP\r\nCPU:MediaTek Helio P95 8 nhân\r\nRAM:8 GB\r\nBộ nhớ trong:128 GB\r\nThẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:2 Nano SIM, Hỗ trợ 4G,HOTSim Vietnamobile siêu sim (5GB/ngày)', 0),
(20, 'Oppo A53', 1, 1, 72880000, 'img24.jpg', 'Màn hình:IPS LCD, 6.5\", HD+\r\nHệ điều hành:Android 10\r\nCamera sau:Chính 13 MP & Phụ 2 MP, 2 MP\r\nCamera trước:16 MP\r\nCPU:Snapdragon 460 8 nhân\r\nRAM:4 GB\r\nBộ nhớ trong:128 GB\r\nThẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:2 Nano SIM, Hỗ trợ 4G,HOTSim Vietnamobile siêu sim (5GB/ngày)\r\nDung lượng pin:5000 mAh, có sạc nhanh', 0),
(21, 'Vsmart  Aris pro', 4, 1, 15880000, 'img16.jpg', 'Màn hình:	AMOLED, 6.39\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 8 MP, 2 MP\r\nCamera trước:	20 MP\r\nCPU:	Snapdragon 730 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 0),
(22, 'Điện thoại Vsmart Live 4', 4, 1, 3880000, 'img17.jpg', 'Màn hình:	LTPS IPS LCD, 6.5\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP\r\nCamera trước:	13 MP\r\nCPU:	Snapdragon 675 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	5000 mAh, có sạc nhanh', 0),
(23, 'Vsmart  Joy 4', 4, 1, 5680000, 'img18.jpg', 'Màn hình:	LTPS IPS LCD, 6.53\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 16 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	13 MP\r\nCPU:	Snapdragon 665 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	5000 mAh, có sạc nhanh', 0),
(24, 'Vsmart  Star 4', 4, 1, 5680000, 'img19.jpg', 'Màn hình:	IPS LCD, 6.09\", HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 8 MP & Phụ 5 MP\r\nCamera trước:	8 MP\r\nCPU:	MediaTek Helio P35 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB\r\nThẻ SIM:\r\n2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	3500 mAh', 0),
(25, 'Vsmart  Aris', 4, 1, 24880000, 'img20.jpg', 'Màn hình:	AMOLED, 6.39\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 8 MP, 2 MP\r\nCamera trước:	20 MP\r\nCPU:	Snapdragon 730 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM VNMB Siêu sim (5GB/ngày)\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 0),
(26, 'Điện thoại Samsung Galaxy Note 20 Ultra', 7, 7, 24990000, 'img7.jpg', '525gp', 7),
(27, 'SURFACE PRO 7', 0, 2, 37000000, 'img26.jpg', 'CPUIntel® Core™ i5-1035 with vPro™ (1,1GHz, up to 3.7GHz )\r\nRAM8GB LPDDR4x\r\nỔ cứng256 GB M2 PCIe', 1),
(29, 'SURFACE PRO 5', 0, 2, 33000000, 'img27.jpg', 'CPUIntel Core i7-7660U 2.50GHz up to 4.0GHz 4MB Cache\r\nRAM8GB LPDDR3 1866MHz\r\nỔ cứng256 GB M2 Pcie', 1),
(31, 'Loa Thanh Soundbar The Platinum PTSB-80W', 0, 3, 1200000, 'img28.jpg', 'Loa có thể giúp tái tạo, giả lập các dải âm thanh đa dạng phục vụ cho nhiều mục đích khác nhau như nghe nhạc, xem phim, ...\r\nChiều dài 0.9m phù hợp với nhiều TV\r\nKết hợp 4 củ loa, tổng công suất 80W cho âm thanh trung thực chi tiết\r\nĐi kèm remote tiện lợi, có thể điều chỉnh EQ, Bass, Treble, ...\r\nNhiều kết nối: Bluetooth, LINE, AUX, USB phù hợp đa dạng nhu cầu\r\nNhập khẩu và phân phối chính thức tại Việt Nam: Công ty CP Phụ Kiện Số Hoá', 0),
(33, 'LOA JBL PULSE 4 - ĐEN', 0, 3, 1700000, 'img29.jpg', 'Model\r\nPulse 4\r\nXuất xứ\r\nUSA\r\nSản xuất\r\nTrung Quốc\r\nCông xuất\r\n20W\r\nMicro đàm thoại\r\nCó\r\nCổng AUX (3.5mm)\r\nKhông\r\nBluetooth\r\n4.2\r\nChống nước\r\nIPX7\r\nDung lượng pin\r\n7260 mAh\r\nKết nối nhiều loa\r\nConnect +\r\nThời lượng pin\r\n12-20 Tiếng\r\nThời gian sạc\r\n3.5 tiếng\r\nTrong lượng\r\n1.26 (Kg)\r\nKích thước\r\n207 x 960 x 960 (mm)\r\nPhụ kiện đi kèm\r\n- 1 x Cáp type C.\r\n- 1 x Hướng dẫn sử dụng.\r\n- 1 x Giấy bảo hành.', 0),
(35, 'Microphone Boya BY-MM1', 0, 4, 800000, 'img30.jpg', '- Tần số: 35Hz - 18kHz\r\n- Độ nhạy: -42dB +/- 1dB\r\n- Hướng thu cardioid cho phép tái tạo âm thanh hoàn chỉnh\r\n- Thiết kế thuận tiện cho việc quay phim, ghi hình cơ động\r\n- Tương thích với điện thoại thông minh iPhone và Android, máy ảnh DSLR, Máy quay video người dùng, máy tính cá nhân,...', 1),
(37, 'Micro không dây Sennheiser SKM 500-935 G3', 0, 4, 1400000, 'img31.jpg', 'Sennheiser SKM 500-935 G3 là Sản phẩm của Thương hiệu Sennheiser thuộc dòng Seri SKM, được nhập khẩu và phân phối chính hãng bởi ennheiservietnam.vn tại Việt Nam . Micro / cardio chất lượng cao. Evolution micro series 900 với âm thanh mạnh mẽ, vượt trội. Từ chối phản hồi cao nhất. Chức năng Khóa tự động tránh thay đổi cài đặt ngẫu nhiên.', 0),
(39, 'DELL EMC POWEREDGE T40', 0, 5, 15000000, 'img32.jpg', 'Dell PowerEdge T40 là một thiết kế nhỏ gọn với kích thước 176,6 mm (6,95 inch) x 335 mm (13,18 inch) x 359,5 mm (14,15 inch). Cùng với khả năng hoạt động êm ái, thì đây là một lựa chọn tuyệt vời cho các doanh nghiệp đặt máy chủ ngay tại văn phòng làm việc của mình.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop '),
(3, 'Loa\r\n'),
(4, 'micro'),
(5, 'cpu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `user_name`, `password`, `role`) VALUES
(1, 'thu', 'thu2684', 'Admin'),
(2, 'yen', 'yen0212', 'Admin'),
(3, 'vi', 'vi0602', '7');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
