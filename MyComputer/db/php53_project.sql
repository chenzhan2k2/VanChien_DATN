-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2024 lúc 09:39 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php53_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `displayhomepage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `displayhomepage`) VALUES
(5, 0, 'Phụ Kiện', 1),
(26, 0, 'Card màn hình', 0),
(27, 0, 'Nguồn máy tính', 0),
(28, 0, 'Bộ nhớ trong', 0),
(29, 0, 'HDD - Ổ cứng', 0),
(31, 0, 'Bàn phím - Chuột', 0),
(32, 0, 'SSD - Ổ cứng ', 0),
(33, 0, 'CPU', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`name`, `email`, `address`, `phone`, `password`, `id`) VALUES
('Nguyễn Văn A', 'nva@gmail.com', 'Hà Nội', '123456', '19d40526d4f412f467b7e06be025b921', 2),
('test', 'test@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70', 3),
('Nguyễn Văn E@', 'nve@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70', 4),
('nguyenvana', 'abc1@gmail.com', '123123', '123123', '53e6086284353cb73d4979f08537d950', 35);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(6, 'Một mình bạn cũng có thể đẩy xe khi có sự cố: Đây là cách làm hiệu quả nhất', '<p>Khi di chuyển bằng &ocirc; t&ocirc;, &iacute;t nhiều sẽ c&oacute; trường hợp bạn gặp phải c&aacute;c t&igrave;nh huống rắc rối, thậm ch&iacute; nguy cấp. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao bạn n&ecirc;n trang bị những kiến thức v&agrave; phụ kiện cứu hộ cần thiết. Video dưới đ&acirc;y l&agrave; một mẹo nhỏ sẽ gi&uacute;p bạn trong một v&agrave;i trường hợp</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:434.594px; top:53px\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>\r\n', '<p>Chiếc xe đầu ti&ecirc;n bị ch&aacute;y v&agrave;o th&aacute;ng 9-2018, nhưng do t&igrave;nh trạng huỷ hoại nặng của xe n&ecirc;n h&atilde;ng kh&ocirc;ng thể t&igrave;m ra manh m&ocirc;i n&agrave;o.</p>\r\n\r\n<p>T&igrave;nh trạng n&agrave;y diễn ra li&ecirc;n tục sau đ&oacute; nhưng việc t&igrave;m kiếm mọi đầu mối nguy&ecirc;n nh&acirc;n vẫn thất bại. Đến đầu năm 2020, Hyundai buộc phải thu&ecirc; b&ecirc;n thứ 3 để t&igrave;m lỗi v&agrave; cuối c&ugrave;ng nguy&ecirc;n nh&acirc;n được x&aacute;c định do chập điện.</p>\r\n\r\n<p>Theo đ&oacute;, dầu phanh ABS bị r&ograve; rỉ, rớt v&agrave;o bộ điều khiển điện tử ECU, dẫn đến ăn m&ograve;n bảng mạch in của ECU g&acirc;y chập điện.</p>\r\n\r\n<p>Dầu thuỷ lực cũng chảy tr&agrave;n l&ecirc;n vỏ động cơ, n&ecirc;n Hyundai đưa ra cảnh b&aacute;o chủ xe Santa Fe n&ecirc;n để &yacute; đến m&ugrave;i kh&eacute;t, kh&oacute;i từ động cơ bốc ra, v&agrave; kết hợp c&aacute;c cảnh b&aacute;o đ&egrave;n trong xe để nhanh ch&oacute;ng đưa xe đến đại l&yacute; sửa chữa.</p>\r\n\r\n<p>Bắt đầu v&agrave;o cuối th&aacute;ng 10 đến, Hyundai y&ecirc;u cầu c&aacute;c xe Santa Fe đời 2013-2015 đến c&aacute;c đại l&yacute; để thay thế cụm thắng ABS bị lỗi.</p>\r\n\r\n<p><strong>Theo Phương Minh (Ph&aacute;p Luật TPHCM)</strong></p>\r\n', 1, '1651765243_block.jpg'),
(7, 'Siêu xe McLaren 720S màu tím độc nhất Việt Nam được nâng cấp gói độ Novitec N-Largo phiên bản giới hạn.', '<p>Tại Việt Nam, McLaren 720S l&agrave; một trong những d&ograve;ng si&ecirc;u xe phổ biến nhất với số lượng hơn 10 chiếc, cả bản Coupe v&agrave; Spider. Đặc biệt nhất l&agrave; chiếc 720S Coupe của đại gia Vũng T&agrave;u với m&agrave;u t&iacute;m Lantana Purple độc nhất Việt Nam.</p>\r\n', '<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-1.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" /></p>\r\n\r\n<p>Vẫn chưa h&agrave;i l&ograve;ng với m&agrave;u sơn đặc biệt, đại gia n&agrave;y đ&atilde; chi khoản tiền khủng để lột x&aacute;c ho&agrave;n to&agrave;n chiếc si&ecirc;u xe. Cụ thể, chiếc 720S được n&acirc;ng cấp g&oacute;i độ N-Largo của Novitec.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-2.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" /></p>\r\n\r\n<p>Nếu c&aacute;c g&oacute;i độ kh&aacute;c chỉ lắp đặt v&agrave;i chi tiết tăng t&iacute;nh kh&iacute; động học th&igrave; g&oacute;i độ N-Largo thay đổi gần như to&agrave;n bộ ngoại thất xe. Phần th&acirc;n vỏ mới được l&agrave;m bằng carbon, vừa tăng t&iacute;nh thẩm mỹ vừa giảm khối lượng cho xe.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-3.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" /></p>\r\n\r\n<p>Sau khi n&acirc;ng cấp bodykit mới, chiều rộng th&acirc;n xe tăng đ&ocirc;i ch&uacute;t. Cụ thể, v&ograve;m b&aacute;nh trước rộng hơn 60 mm v&agrave; v&ograve;m b&aacute;nh sau rộng hơn 130 mm. Sự thay đổi n&agrave;y vừa tăng vẻ hầm hố cho xe, vừa cung cấp th&ecirc;m kh&ocirc;ng gian để bổ sung c&aacute;c chi tiết kh&iacute; động học.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-4.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" /></p>\r\n\r\n<p>Do si&ecirc;u xe mang m&agrave;u Lantana Purple độc quyền của bộ phận MSO, chủ nh&acirc;n phải đặt h&agrave;ng m&agrave;u sơn n&agrave;y từ McLaren để phủ l&ecirc;n bodykit mới. D&ugrave; kh&ocirc;ng tiết lộ, mức gi&aacute; cho những hộp sơn từ bộ phận MSO kh&aacute; đắt đỏ.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-5.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" /></p>\r\n\r\n<p>Điểm thay đổi nhiều nhất l&agrave; nửa th&acirc;n trước của xe. Nhờ bộ kit mới, phần đầu xe trở n&ecirc;n hầm hố hơn với cảm hứng từ đ&agrave;n anh Senna. V&ograve;m b&aacute;nh xe được bổ sung khe gi&oacute; kh&iacute; động học mới.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-6.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" /></p>\r\n\r\n<p>Bộ m&acirc;m nguy&ecirc;n bản được thay bằng la-zăng đa chấu của Vossen với k&iacute;ch thước 20 inch ở ph&iacute;a trước v&agrave; 21 inch ở ph&iacute;a sau.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-7.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" /></p>\r\n\r\n<p>Để tạo điểm nhấn cho ngoại thất, một số chi tiết được phủ m&agrave;u v&agrave;ng như viền cản trước/sau, viền ốp h&ocirc;ng, khe gi&oacute; tr&ecirc;n v&ograve;m b&aacute;nh trước, kh&oacute;a t&acirc;m b&aacute;nh xe v&agrave; kẹp phanh.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-8.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" /></p>\r\n\r\n<p>Ở ph&iacute;a sau, xe được trang bị c&aacute;nh gi&oacute; mới l&agrave;m bằng carbon. Hệ thống ống xả cũng được n&acirc;ng cấp l&ecirc;n thương hiệu FI Exhaust. Hệ thống ống xả n&agrave;y thuộc d&ograve;ng Signature Titanium, được l&agrave;m từ titanium m&agrave;u v&agrave;ng v&agrave; phần chụp ống xả bằng carbon.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-9.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" /></p>\r\n\r\n<p>Đ&aacute;ng tiếc l&agrave; si&ecirc;u xe n&agrave;y kh&ocirc;ng được n&acirc;ng cấp động cơ. Cung cấp sức mạnh cho 720S vẫn l&agrave; động cơ tăng &aacute;p k&eacute;p V8 4.0L cho c&ocirc;ng suất tối đa 720 m&atilde; lực v&agrave; m&ocirc;-men xoắn 770 Nm. Nhờ sức mạnh n&agrave;y, 720S c&oacute; thể tăng tốc 0-100 km/h chỉ trong 2,9 gi&acirc;y. Nếu được n&acirc;ng cấp hiệu suất theo cấu h&igrave;nh N-Largo, 720S sẽ cho ra c&ocirc;ng suất hơn 800 m&atilde; lực.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-10.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" /></p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh n&acirc;ng cấp g&oacute;i độ N-Largo cho 720S được thực hiện trong khoảng 1 th&aacute;ng với chi ph&iacute; kh&ocirc;ng được tiết lộ. Novitec chỉ sản xuất 15 bộ bodykit N-Largo cho McLaren 720S. Với độ đặc biệt n&agrave;y, chi ph&iacute; cho g&oacute;i độ N-Largo kh&ocirc;ng thấp hơn con số 1 tỷ đồng.</p>\r\n', 1, '1651765255_block.jpg'),
(8, 'Sự phát triển của công nghệ blockchain', '<p>Blockchain, thường được gọi l&agrave; chuỗi khối hay sổ c&aacute;i ph&acirc;n t&aacute;n, l&agrave; nền tảng c&ocirc;ng nghệ ng&agrave;y c&agrave;ng được ứng dụng nhiều trong c&aacute;c lĩnh vực như tiền điện tử, chuỗi cung ứng, quản l&yacute; hồ sơ&hellip; Tuy nhi&ecirc;n, việc h&agrave;ng tỷ USD bị đ&aacute;nh cắp, m&agrave; mới nhất l&agrave; vụ Ronin Network bị tiến c&ocirc;ng v&agrave; lấy đi hơn 600 triệu USD, cho thấy blockchain c&ograve;n nhiều điểm yếu cần khắc phục.&nbsp;</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1286.36px; top:28px\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>\r\n', '<p><strong>C&aacute;c ứng dụng phổ biến</strong></p>\r\n\r\n<p>Theo Investopedia, c&ocirc;ng nghệ chuỗi khối lần đầu ti&ecirc;n được ph&aacute;c thảo năm 1991 bởi Stuart Haber v&agrave; W.Scott Stornetta, hai nh&agrave; nghi&ecirc;n cứu muốn triển khai một hệ thống cơ sở dữ liệu kh&ocirc;ng thể bị giả mạo. Nhưng phải đến gần hai thập ni&ecirc;n sau với sự ra mắt của đồng tiền ảo bitcoin năm 2009, blockchain mới c&oacute; ứng dụng thực tế đầu ti&ecirc;n.&nbsp;</p>\r\n\r\n<p>Một nh&acirc;n vật hoặc c&oacute; thể l&agrave; một nh&oacute;m người vẫn chưa x&aacute;c định được danh t&iacute;nh thực, dưới mật danh Satoshi Nakamoto, được coi l&agrave; &ldquo;cha đẻ&rdquo; của Bitcoin. Bitcoin được m&ocirc; tả l&agrave; một hệ thống tiền điện tử mới, mọi giao dịch đều được ghi lại tr&ecirc;n từng khối (block) v&agrave; được li&ecirc;n kết với nhau th&agrave;nh chuỗi (chain) một c&aacute;ch c&ocirc;ng khai, minh bạch, được x&aacute;c thực bởi h&agrave;ng ngh&igrave;n m&aacute;y t&iacute;nh v&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng thể đảo ngược hay chỉnh sửa.</p>\r\n\r\n<p>Với cơ chế hoạt động tương tự, blockchain c&oacute; thể được sử dụng để ghi lại bất kỳ dữ liệu n&agrave;o ở dạng c&aacute;c giao dịch, phiếu bầu cử, kiểm k&ecirc; sản phẩm, th&ocirc;ng tin nhận dạng, giấy chứng nhận quyền sở hữu&hellip; H&agrave;ng chục ngh&igrave;n dự &aacute;n đang t&igrave;m c&aacute;ch triển khai c&aacute;c blockchain theo nhiều c&aacute;ch kh&aacute;c nhau, ngo&agrave;i việc ghi lại c&aacute;c giao dịch tiền điện tử đơn thuần, chẳng hạn như ph&aacute;t triển hệ thống bỏ phiếu an to&agrave;n trong c&aacute;c cuộc bầu cử. Th&iacute; dụ, một hệ thống bỏ phiếu c&oacute; thể hoạt động sao cho mỗi c&ocirc;ng d&acirc;n sẽ được ph&aacute;t một loại tiền điện tử hoặc token, c&ograve;n gọi l&agrave; m&atilde; th&ocirc;ng b&aacute;o duy nhất. Sau đ&oacute;, mỗi ứng cử vi&ecirc;n sẽ được cấp một địa chỉ v&iacute; cụ thể v&agrave; những người bỏ phiếu sẽ gửi m&atilde; th&ocirc;ng b&aacute;o hoặc tiền điện tử của họ đến địa chỉ v&iacute; của bất kỳ ứng cử vi&ecirc;n n&agrave;o m&agrave; họ muốn bỏ phiếu. Bản chất minh bạch v&agrave; c&oacute; thể truy nguy&ecirc;n của blockchain sẽ loại bỏ cả c&ocirc;ng việc kiểm phiếu cồng kềnh của con người v&agrave; khả năng giả mạo l&aacute; phiếu thực.</p>\r\n\r\n<p>Theo trang thống k&ecirc; Coingecko, hiện c&oacute; hơn 13.000 dự &aacute;n tiền điện tử được ph&aacute;t triển dựa tr&ecirc;n c&ocirc;ng nghệ blockchain. Tuy nhi&ecirc;n, b&ecirc;n cạnh ứng dụng trong lĩnh vực tiền m&atilde; h&oacute;a, blockchain c&ograve;n xuất hiện trong nhiều lĩnh vực kh&aacute;c của đời sống. Một số c&ocirc;ng ty, tập đo&agrave;n lớn tr&ecirc;n thế giới đ&atilde; kết hợp blockchain v&agrave;o quy tr&igrave;nh vận h&agrave;nh của m&igrave;nh như Walmart, Pfizer, AIG, Siemens, Unilever&hellip; v&agrave; một loạt c&aacute;c c&ocirc;ng ty kh&aacute;c.&nbsp;</p>\r\n\r\n<p>Ng&agrave;nh c&ocirc;ng nghiệp thực phẩm đ&atilde; chứng kiến ​​v&ocirc; số đợt b&ugrave;ng ph&aacute;t vi khuẩn chết người, cũng như c&aacute;c chất độc hại v&ocirc; t&igrave;nh được đưa v&agrave;o thực phẩm. Trong qu&aacute; khứ, người ta đ&atilde; mất hằng tuần để t&igrave;m ra nguồn gốc của những đợt b&ugrave;ng ph&aacute;t n&agrave;y hoặc nguy&ecirc;n nh&acirc;n g&acirc;y bệnh. Forbes cho biết, Tập đo&agrave;n c&ocirc;ng nghệ m&aacute;y t&iacute;nh IBM của Mỹ đ&atilde; tạo ra chuỗi khối Food Trust để theo d&otilde;i nguồn gốc v&agrave; h&agrave;nh tr&igrave;nh của c&aacute;c sản phẩm thực phẩm, qua đ&oacute; dễ d&agrave;ng truy xuất qua từng điểm dừng cũng như đưa ra c&aacute;c dự b&aacute;o sớm hơn về khả năng nhiễm bệnh.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, c&aacute;c nh&agrave; cung cấp dịch vụ chăm s&oacute;c sức khỏe cũng c&oacute; thể tận dụng blockchain để lưu trữ hồ sơ y tế của bệnh nh&acirc;n một c&aacute;ch an to&agrave;n. Khi một hồ sơ y tế được tạo ra v&agrave; được ghi v&agrave;o chuỗi khối, n&oacute; cung cấp cho bệnh nh&acirc;n bằng chứng v&agrave; sự tin tưởng rằng hồ sơ kh&ocirc;ng thể bị thay đổi. C&aacute;c hồ sơ sức khỏe c&aacute; nh&acirc;n n&agrave;y c&oacute; thể được m&atilde; h&oacute;a v&agrave; lưu trữ tr&ecirc;n blockchain bằng kh&oacute;a ri&ecirc;ng tư m&agrave; chỉ một số c&aacute; nh&acirc;n nhất định mới c&oacute; thể truy cập được, do đ&oacute; bảo đảm quyền ri&ecirc;ng tư.</p>\r\n\r\n<p><strong>Ưu v&agrave; nhược điểm</strong></p>\r\n\r\n<p>Với nhiều ưu điểm như cải thiện độ ch&iacute;nh x&aacute;c của dữ liệu, kh&oacute; l&agrave;m giả, minh bạch, độ bảo mật cao&hellip;, blockchain ng&agrave;y c&agrave;ng nhận được sự kỳ vọng trong việc ph&aacute;t triển như một h&igrave;nh thức lưu trữ hồ sơ phi tập trung.</p>\r\n\r\n<p>C&aacute;c giao dịch tr&ecirc;n mạng blockchain được chấp thuận bởi một mạng lưới h&agrave;ng ngh&igrave;n m&aacute;y t&iacute;nh. Điều n&agrave;y loại bỏ hầu như tất cả sự tham gia của con người v&agrave;o qu&aacute; tr&igrave;nh x&aacute;c minh, dẫn đến &iacute;t sai s&oacute;t của con người hơn. Ngay cả khi một m&aacute;y t&iacute;nh tr&ecirc;n mạng mắc lỗi t&iacute;nh to&aacute;n, lỗi sẽ chỉ xảy ra với một bản sao của chuỗi khối. Theo trang Coindesk, để lỗi đ&oacute; c&oacute; thể l&acirc;y lan sang phần c&ograve;n lại của chuỗi khối, n&oacute; sẽ phải diễn ra ở &iacute;t nhất 51% m&aacute;y t&iacute;nh của mạng, một điều gần như kh&ocirc;ng thể xảy ra đối với một mạng lớn v&agrave; đang ph&aacute;t triển c&oacute; k&iacute;ch thước như Bitcoin.</p>\r\n\r\n<p>Blockchain kh&ocirc;ng lưu trữ bất kỳ th&ocirc;ng tin n&agrave;o ở một m&aacute;y chủ duy nhất, thay v&agrave;o đ&oacute;, ch&uacute;ng được sao ch&eacute;p v&agrave; trải rộng tr&ecirc;n một mạng m&aacute;y t&iacute;nh. Bất cứ khi n&agrave;o một khối mới được th&ecirc;m v&agrave;o blockchain, mọi m&aacute;y t&iacute;nh tr&ecirc;n mạng đều được cập nhật sự thay đổi. Nếu một bản sao của blockchain rơi v&agrave;o tay của tin tặc, th&igrave; chỉ một bản sao th&ocirc;ng tin, thay v&igrave; to&agrave;n bộ mạng sẽ bị x&acirc;m phạm.</p>\r\n\r\n<p>Hầu hết c&aacute;c blockchain ho&agrave;n to&agrave;n l&agrave; phần mềm m&atilde; nguồn mở. Điều n&agrave;y c&oacute; nghĩa l&agrave; bất kỳ c&aacute; nh&acirc;n n&agrave;o cũng đều c&oacute; thể xem m&atilde; của n&oacute;. Kh&ocirc;ng ai thực sự kiểm so&aacute;t m&atilde; nguồn của Bitcoin hoặc c&aacute;ch n&oacute; được chỉnh sửa. Nếu phần lớn người trong mạng lưới đồng &yacute; rằng phi&ecirc;n bản m&atilde; mới với bản n&acirc;ng cấp l&agrave; hợp l&yacute; v&agrave; đ&aacute;ng gi&aacute;, th&igrave; Bitcoin c&oacute; thể được cập nhật.</p>\r\n\r\n<p>Theo Ng&acirc;n h&agrave;ng Thế giới (WB), ước t&iacute;nh c&oacute; khoảng 1,7 tỷ người trưởng th&agrave;nh kh&ocirc;ng c&oacute; t&agrave;i khoản ng&acirc;n h&agrave;ng hoặc bất kỳ phương tiện lưu trữ tiền hoặc của cải n&agrave;o. Gần như tất cả những người n&agrave;y sống ở c&aacute;c nước đang ph&aacute;t triển, nơi nền kinh tế c&ograve;n sơ khai v&agrave; ho&agrave;n to&agrave;n phụ thuộc v&agrave;o tiền mặt. Họ phải cất giữ số tiền mặt n&agrave;y ở những vị tr&iacute; ẩn trong nh&agrave; hoặc những nơi sinh sống kh&aacute;c, khiến họ c&oacute; thể bị cướp hoặc bạo lực. Theo Investopedia, những người ủng hộ tiền điện tử cho rằng, ch&igrave;a kh&oacute;a của một v&iacute; Bitcoin c&oacute; thể được lưu trữ tr&ecirc;n một mảnh giấy, một chiếc điện thoại di động rẻ tiền hoặc thậm ch&iacute; được ghi nhớ nếu cần thiết sẽ lựa chọn tốt hơn rất nhiều so việc giấu tiền mặt dưới nệm&hellip;</p>\r\n\r\n<p>Mặc d&ugrave; blockchain c&oacute; thể gi&uacute;p người d&ugrave;ng tiết kiệm ph&iacute; giao dịch, song việc vận h&agrave;nh c&ocirc;ng nghệ n&agrave;y kh&ocirc;ng hề miễn ph&iacute;. Theo một nghi&ecirc;n cứu của Đại học Cambridge (Anh), lượng điện năng hằng năm để vận h&agrave;nh hệ thống m&agrave; mạng Bitcoin sử dụng để x&aacute;c thực c&aacute;c giao dịch lớn hơn lượng điện ti&ecirc;u thụ hằng năm của Na Uy hay Ukraine. Hiện, một số giải ph&aacute;p cho vấn đề n&agrave;y đang bắt đầu được th&uacute;c đẩy, như c&aacute;c trang trại khai th&aacute;c Bitcoin sử dụng năng lượng mặt trời, kh&iacute; đốt tự nhi&ecirc;n dư thừa từ c&aacute;c địa điểm khai th&aacute;c mỏ hoặc năng lượng từ c&aacute;c trang trại gi&oacute;.</p>\r\n\r\n<p>Tốc độ giao dịch của một số hệ thống blockchain vẫn c&ograve;n k&eacute;m hiệu quả, như Bitcoin mất khoảng 10 ph&uacute;t để th&ecirc;m một khối mới v&agrave;o blockchain. Với tốc độ đ&oacute;, người ta ước t&iacute;nh rằng mạng blockchain chỉ c&oacute; thể quản l&yacute; khoảng bảy giao dịch mỗi gi&acirc;y. Trong khi đ&oacute;, c&aacute;c dịch vụ t&agrave;i ch&iacute;nh truyền thống hơn như Visa c&oacute; thể xử l&yacute; tới 65.000 giao dịch mỗi gi&acirc;y. Thời gian gần đ&acirc;y xuất hiện những dự &aacute;n blockchain tuy&ecirc;n bố c&oacute; thể xử l&yacute; h&agrave;ng chục ngh&igrave;n giao dịch mỗi gi&acirc;y. Tuy nhi&ecirc;n, khi tốc độ giao dịch được đẩy l&ecirc;n, nhiều dự &aacute;n lại đối mặt vấn đề về khả năng mở rộng cũng như bảo mật.</p>\r\n\r\n<p>Với sự ph&aacute;t triển mạnh mẽ của tiền điện tử, ng&agrave;y c&agrave;ng nhiều người tr&ecirc;n thế giới xem lĩnh vực n&agrave;y l&agrave; cơ hội đầu tư kiếm lời. C&ugrave;ng với đ&oacute;, tiền điện tử lại trở th&agrave;nh mục ti&ecirc;u của c&aacute;c tin tặc. C&ocirc;ng ty ph&acirc;n t&iacute;ch dữ liệu Chainalysis thống k&ecirc;, trong tổng số 11 tỷ USD tiền điện tử m&agrave; tội phạm mạng nắm giữ năm 2021, 93% trong số đ&oacute; c&oacute; được th&ocirc;ng qua việc trộm cắp.&nbsp;</p>\r\n\r\n<p>Mạng Blockchain Ronin Network được C&ocirc;ng ty Sky Mavis ph&aacute;t triển để phục vụ cho tựa game blockchain Axie Infinity h&ocirc;m 29/3 th&ocirc;ng b&aacute;o bị tin tặc tiến c&ocirc;ng v&agrave; lấy đi số tiền điện tử trị gi&aacute; tương đương 615 triệu USD. Đ&acirc;y l&agrave; vụ trộm tiền điện tử lớn nhất từ trước tới nay. Hồi th&aacute;ng 2, Wormhole-một cầu nối phổ biến giữa blockchain Ethereum v&agrave; Solana bị đ&aacute;nh cắp khoản tiền điện tử trị gi&aacute; 320 triệu USD. Trước đ&oacute;, th&aacute;ng 8/2021, nền tảng giao dịch xuy&ecirc;n chuỗi Poly Network bị tin tặc lợi dụng lỗ hổng trong hệ thống blockchain v&agrave; lấy cắp số tiền m&atilde; h&oacute;a trị gi&aacute; khoảng 611 triệu USD.&nbsp;</p>\r\n\r\n<p>Với ng&agrave;y c&agrave;ng nhiều ứng dụng thực tế đ&atilde; được triển khai v&agrave; kh&aacute;m ph&aacute;, trong đ&oacute; nổi bật nhất l&agrave; Bitcoin v&agrave; tiền điện tử, blockchain dần tạo n&ecirc;n vị thế của m&igrave;nh trong th&uacute;c đẩy hoạt động lưu trữ, giao dịch ch&iacute;nh x&aacute;c, &iacute;t kh&acirc;u trung gian hơn. Song, những vụ tin tặc đ&aacute;nh cắp tới h&agrave;ng triệu USD cho thấy r&otilde; r&agrave;ng bảo mật vẫn l&agrave; th&aacute;ch thức lớn đối với tiền điện tử n&oacute;i ri&ecirc;ng v&agrave; c&ocirc;ng nghệ mới như blockchain n&oacute;i chung.</p>\r\n', 1, '1651764951_block.jpg'),
(11, 'Sự phát triển của công nghệ', '<p>Trong một v&agrave;i năm qua, việc mua &ocirc;t&ocirc; chạy dịch vụ trở n&ecirc;n phổ biến ở Việt Nam nhờ sự ph&aacute;t triển của c&aacute;c h&igrave;nh thức gọi xe c&ocirc;ng nghệ. B&ecirc;n cạnh xe đ&ocirc; thị tầm gi&aacute; 400 triệu đồng, &ocirc;t&ocirc; 600 triệu đồng cũng l&agrave; ph&acirc;n kh&uacute;c được nhiều người d&ugrave;ng chọn lựa để đầu tư, với c&aacute;c điểm cộng về kh&ocirc;ng gian rộng r&atilde;i, trang bị v&agrave; an to&agrave;n. Đ&oacute; l&agrave; vấn đề được đề cập nhiều trong những ng&agrave;y h&ocirc;m nay</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1259.75px; top:4px\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1259.75px; top:85px\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>\r\n', '<p>Ba c&aacute;i t&ecirc;n đ&aacute;ng ch&uacute; &yacute; đại diện cho nh&oacute;m xe dịch vụ tầm 600 triệu đồng hiện nay c&oacute; thể kể đến Toyota Vios, Kia Cerato v&agrave; Suzuki Ertiga.</p>\r\n\r\n<p><strong>Toyota Vios - 470-570 triệu đồng</strong></p>\r\n\r\n<p>Từ l&acirc;u, Toyota Vios lu&ocirc;n l&agrave; c&aacute;i t&ecirc;n được nhắc đến đầu khi c&acirc;n nhắc mua xe hạng B. Kh&ocirc;ng chỉ c&oacute; chi ph&iacute; sử dụng hợp l&yacute; v&agrave; thuận tiện trong việc bảo tr&igrave; bảo dưỡng, Vios c&ograve;n mang thương hiệu Toyota với t&iacute;nh thanh khoản cao. C&aacute;c yếu tố n&agrave;y gi&uacute;p người d&ugrave;ng Vios tối ưu được hiệu quả đầu tư.</p>\r\n\r\n<p>Đầu năm nay, Toyota Việt Nam ra mắt c&aacute;c phi&ecirc;n bản n&acirc;ng cấp 2020 của Vios trước sức &eacute;p cạnh tranh doanh số từ 2 mẫu xe H&agrave;n Quốc l&agrave; Hyundai Accent (426-542 triệu đồng) v&agrave; Kia Soluto (369-469 triệu đồng).</p>\r\n\r\n<p>H&atilde;ng xe Nhật Bản bổ sung trang bị cho c&aacute;c model mới, đồng thời cung cấp th&ecirc;m t&ugrave;y chọn 3 t&uacute;i kh&iacute; hoặc 7 t&uacute;i kh&iacute; cho bản E MT v&agrave; E CVT. Điều n&agrave;y nhằm giảm mức gi&aacute; khởi điểm 20 triệu đồng v&agrave; tiếp cận th&ecirc;m nh&oacute;m kh&aacute;ch h&agrave;ng mua xe chạy dịch vụ. Cụ thể, 5 biến thể Toyota Vios hiện c&oacute; gi&aacute; đề xuất dao động từ 470 đến 570 triệu đồng.</p>\r\n\r\n<p>Những t&iacute;nh năng mới gi&uacute;p Vios bớt phần thua thiệt so với Hyundai Accent hay Honda City (559-599 triệu đồng) về mặt trang bị, gồm c&oacute; hệ thống giải tr&iacute; hỗ trợ kết nối Apple CarPlay/Android Auto, ga tự động, camera l&ugrave;i v&agrave; cảm biến l&ugrave;i. Tuy vậy, thiết kế nội ngoại thất trung t&iacute;nh của Toyota Vios được giữ nguy&ecirc;n. Ưu điểm của Vios l&agrave; kh&ocirc;ng gian cabin rộng r&atilde;i v&agrave; thoải m&aacute;i cho h&agrave;nh kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ\" /></p>\r\n\r\n<p>Toyota Vios vẫn trang bị động cơ xăng I4 1.5L c&oacute; van biến thi&ecirc;n Dual i-VVT, c&ocirc;ng suất đạt 107 m&atilde; lực c&ugrave;ng m&ocirc;-men xoắn 140 Nm. Đi k&egrave;m với đ&oacute; l&agrave; t&ugrave;y chọn hộp số v&ocirc; cấp CVT hoặc hộp số s&agrave;n 5 cấp. Mức ti&ecirc;u thụ nhi&ecirc;n liệu ở điều kiện kết hợp theo nh&agrave; sản xuất c&ocirc;ng bố tương ứng l&agrave; 5,7-5,8 l&iacute;t/100 km.</p>\r\n\r\n<p><iframe scrolling=\"no\"></iframe>X</p>\r\n\r\n<p>T&iacute;nh từ đầu năm đến nay, Toyota Vios vẫn l&agrave; d&ograve;ng xe b&aacute;n tốt nhất tại thị trường Việt Nam. Tổng cộng đ&atilde; c&oacute; hơn 14.055 model Vios được b&aacute;n ra đến hết th&aacute;ng 7, doanh số trung b&igrave;nh 2.000 xe mỗi th&aacute;ng. Trong khi đ&oacute;, doanh số của Accent, City c&ugrave;ng Soluto l&agrave; 9.568, 4.915 v&agrave; 3.606 chiếc.</p>\r\n\r\n<p><strong>Kia Cerato - 529-665 triệu đồng</strong></p>\r\n\r\n<p>Với mức gi&aacute; khởi điểm tương đương một v&agrave;i mẫu xe hạng B, Kia Cerato trội hơn về kh&ocirc;ng gian cũng như c&oacute; khung gầm vững chắc hơn. Ngo&agrave;i ra, t&iacute;nh năng trang bị ở mức kh&aacute; tốt để phục vụ h&agrave;nh kh&aacute;ch gi&uacute;p mẫu sedan H&agrave;n Quốc được chọn lựa để sử dụng l&agrave;m xe dịch vụ.</p>\r\n\r\n<p>Trong c&ugrave;ng nh&oacute;m xe hạng C, Cerato c&oacute; lợi thế về gi&aacute; b&aacute;n cạnh tranh hơn Mazda3 sedan (669-869 triệu đồng), Hyundai Elantra (580-769 triệu đồng), Honda Civic (729-934 triệu đồng) v&agrave; Toyota Corolla Altis (733-763 triệu đồng).</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-1.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 1\" /></p>\r\n\r\n<p>Hiện tại, bản Cerato 1.6 MT ti&ecirc;u chuẩn c&oacute; gi&aacute; 529 triệu đồng, trong khi model 2.0 Premium cao cấp c&oacute; gi&aacute; 665 triệu đồng. B&ecirc;n cạnh đ&oacute;, Cerato c&oacute; thiết kế trẻ trung, c&aacute; t&iacute;nh ở cả ngoại thất lẫn khoang l&aacute;i.</p>\r\n\r\n<p>C&aacute;c trang bị đ&aacute;ng ch&uacute; &yacute; ở bản Cerato 2.0 AT Premium c&oacute; thể kể đến như m&agrave;n h&igrave;nh trung t&acirc;m 8 inch, dẫn đường tiếng Việt, sạc điện thoại kh&ocirc;ng d&acirc;y, cửa sổ trời, đ&egrave;n chiếu s&aacute;ng LED&hellip; Tuy nhi&ecirc;n, Kia Cerato ra mắt từ 2018 đến nay chưa c&oacute; đợt n&acirc;ng cấp n&agrave;o n&ecirc;n c&oacute; phần thua thiệt về mặt c&ocirc;ng nghệ an to&agrave;n so với c&aacute;c đối thủ.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-2.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 2\" /></p>\r\n\r\n<p>Kia Cerato c&oacute; 2 t&ugrave;y chọn động cơ xăng, gồm động cơ Gamma 1.6L MPI (128 m&atilde; lực v&agrave; 157 Nm) v&agrave; động cơ Nu 2.0L MPI (159 m&atilde; lực v&agrave; 194 Nm). Đi c&ugrave;ng với đ&oacute; l&agrave; hộp số s&agrave;n 6 cấp ở bản ti&ecirc;u chuẩn v&agrave; hộp số tự động 6 cấp ở 3 phi&ecirc;n bản AT.</p>\r\n\r\n<p>T&iacute;nh đến cuối th&aacute;ng 7/2020, Kia Cerato đang l&agrave; c&aacute;i t&ecirc;n đứng đầu nh&oacute;m xe hạng C, xếp tr&ecirc;n một mẫu xe kh&aacute;c cũng được Thaco lắp r&aacute;p v&agrave; ph&acirc;n phối l&agrave; Mazda3. Cụ thể, Cerato b&aacute;n được 4.815 chiếc, nhỉnh hơn Mazda3 với 4.675 xe (382 chiếc hatchback v&agrave; 4.293 mẫu sedan). Xếp sau c&ograve;n c&oacute; Hyundai Elantra (2.141 chiếc), Honda Civic (1.464 chiếc) v&agrave; Toyota Corolla Altis (1.037 chiếc).</p>\r\n\r\n<p><strong>Suzuki Ertiga - 499-559 triệu đồng</strong></p>\r\n\r\n<p>Ởph&acirc;n kh&uacute;c MPV 7 chỗ cỡ nhỏ, Suzuki Ertiga l&agrave; c&aacute;i t&ecirc;n s&aacute;ng gi&aacute; cho mục đ&iacute;ch sử dụng l&agrave;m xe dịch vụ khi c&oacute; gi&aacute; b&aacute;n thấp hơn c&aacute;c đối thủ. Cụ thể, Suzuki hiện b&aacute;n 3 model l&agrave; Ertiga GL, Limited v&agrave; Sport, với mức gi&aacute; lần lượt 499, 555 v&agrave; 559 triệu đồng.</p>\r\n\r\n<p>Trong khi đ&oacute;, mức gi&aacute; của Toyota Avanza l&agrave; 544-612 triệu đồng, Kia Rondo c&oacute; gi&aacute; dao động 559-655 triệu đồng v&agrave; Mitsubishi Xpander được b&aacute;n với gi&aacute; đề xuất 555-630 triệu đồng.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-3.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 3\" /></p>\r\n\r\n<p>So với mẫu xe đang b&aacute;n chạy nhất ph&acirc;n kh&uacute;c l&agrave; Mitsubishi Xpander, Ertiga c&oacute; thiết kế trung t&iacute;nh hơn. Trong khi đ&oacute;, t&iacute;nh đa dụng l&agrave; tương đương, với cabin thiết kế kiểu 5+2 c&oacute; thể đ&aacute;p được được nhiều nhu cầu di chuyển kh&aacute;c nhau.</p>\r\n\r\n<p>Ở đợt n&acirc;ng cấp th&aacute;ng 6/2020, Suzuki trang bị cho Ertiga 2 chức năng an to&agrave;n l&agrave; hệ thống c&acirc;n bằng điện tử v&agrave; hỗ trợ khởi h&agrave;nh ngang dốc. B&ecirc;n cạnh đ&oacute;, Ertiga 2020 c&oacute; cụm giải tr&iacute; nổi bật với m&agrave;n h&igrave;nh 10 inch lớn nhất ph&acirc;n kh&uacute;c v&agrave; hỗ trợ kết nối Apple CarPlay/Android Auto. Điểm hạn chế của Suzuki Ertiga l&agrave; vẫn chưa c&oacute; t&iacute;nh năng ga tự động v&agrave; ghế bọc da như Xpander.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-4.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 4\" /></p>\r\n\r\n<p>Suzuki trang bị cho Ertiga động cơ xăng I4 dung t&iacute;ch 1.5L, c&ocirc;ng suất tối đa 103 m&atilde; lực v&agrave; m&ocirc;-men xoắn cực đại 138 Nm. Đi c&ugrave;ng với đ&oacute; l&agrave; hộp số tự động 4 cấp hoặc số s&agrave;n 5 cấp. So với c&aacute;c đối thủ, Ertiga c&oacute; mức ti&ecirc;u thụ nhi&ecirc;n liệu tốt hơn, đạt 5,95 l&iacute;t/100 km ở điều kiện hỗn hợp theo c&ocirc;ng bố của nh&agrave; sản xuất.</p>\r\n\r\n<p>Doanh số t&iacute;nh đến hết th&aacute;ng 7/2020 của Suzuki Ertiga l&agrave; 1.651 xe, &iacute;t hơn Mitsubishi Xpander với 7.493 chiếc. Xếp sau mẫu MPV của Suzuki l&agrave; Kia Rondo (640 chiếc) v&agrave; Toyota Avanza (185 chiếc).</p>\r\n\r\n<p><strong>Theo Ho&agrave;ng Phạm (Tri Thức Trực Tuyến)</strong></p>\r\n', 0, '1651765167_block.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `number`, `price`) VALUES
(26, 11, 19, 1, 4000000),
(27, 12, 18, 1, 9000000),
(28, 13, 19, 1, 4000000),
(29, 14, 18, 2, 9000000),
(30, 15, 18, 2, 9000000),
(31, 16, 11, 1, 5000000),
(32, 16, 6, 1, 8000000),
(33, 16, 16, 1, 7000000),
(34, 16, 13, 1, 7000000),
(49, 17, 18, 5, 9000000),
(50, 17, 14, 1, 5000000),
(51, 18, 15, 1, 6000000),
(62, 19, 35, 1, 9000),
(63, 20, 33, 2, 10000),
(64, 21, 33, 1, 10000),
(65, 22, 30, 1, 12220),
(66, 22, 42, 1, 1222),
(67, 23, 33, 2, 10000),
(68, 24, 35, 1, 9000),
(69, 24, 30, 2, 12220),
(77, 26, 35, 1, 9000),
(78, 27, 15, 3, 6000000),
(79, 28, 16, 3, 7000000),
(80, 28, 28, 1, 1234),
(81, 29, 30, 1, 12220),
(82, 30, 30, 2, 12220),
(83, 31, 44, 3, 18999),
(84, 32, 51, 1, 214545),
(85, 33, 18, 1, 9000000),
(86, 34, 60, 1, 799000),
(87, 34, 55, 1, 2500000),
(88, 35, 69, 2, 559000),
(89, 35, 61, 1, 2839000),
(90, 36, 55, 4, 2500000),
(91, 37, 76, 1, 990000),
(92, 38, 92, 1, 880000),
(93, 39, 55, 1, 2500000),
(94, 40, 55, 1, 2500000),
(95, 41, 54, 2, 2999000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `create_at`, `status`) VALUES
(32, 33, '2022-04-19', 0),
(33, 33, '2022-04-19', 0),
(34, 2, '2022-05-07', 1),
(35, 2, '2022-05-08', 0),
(36, 35, '2024-05-11', 0),
(37, 35, '2024-05-11', 0),
(38, 35, '2024-05-11', 0),
(39, 35, '2024-05-11', 0),
(40, 35, '2024-05-11', 0),
(41, 35, '2024-05-11', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL,
  `photo2` varchar(1000) NOT NULL,
  `photo3` varchar(1000) NOT NULL,
  `photo4` varchar(1000) NOT NULL,
  `photo5` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `soluong`, `hot`, `photo`, `photo2`, `photo3`, `photo4`, `photo5`, `price`, `discount`, `category_id`) VALUES
(54, 'Bàn phím cơ Razer Blackwidow Ultimate', '<p>Khi n&oacute;i đến&nbsp;<a href=\"https://www.anphatpc.com.vn/ban-phim-co-choi-game.html\">b&agrave;n ph&iacute;m cơ gaming</a>, chắc hẳn ch&uacute;ng ta đ&atilde; kh&ocirc;ng c&ograve;n xa lạ g&igrave; với Blackwidow Series từ Razer, được định hướng trong ph&acirc;n kh&uacute;c Hi-end, sở hữu thiết kế gaming ấn tượng c&ugrave;ng trải nghiệm sử dụng tuyệt đỉnh, thương hiệu gaming gear tới từ Mỹ n&agrave;y lu&ocirc;n thấu hiểu nhất những g&igrave; một game thủ cần ở sản phẩm của họ.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1263.75px; top:-16px\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>\r\n', '<p>Tiếp nối th&agrave;nh c&ocirc;ng từ những phi&ecirc;n bản trước v&agrave; mong muốn mang lại trải nghiệm tuyệt vời nhất, Razer đ&atilde; cho ra mắt chiếc b&agrave;n ph&iacute;m cơ&nbsp;<strong>Razer Blackwidow Ultimate 2019 Green switch</strong>. Định nghĩa lại ti&ecirc;u chuẩn Hi-end Gaming Keyboard.</p>\r\n', 47, 1, '1651648773_banphim1.jpg', '', '', '', '', 2999000, 10, 31),
(55, 'Chuột Logitech G Pro X Superlight Wireless', '<p>Chuột Logitech G Pro X Superlight Wireless</p>\r\n\r\n<p>Chuột gaming kh&ocirc;ng d&acirc;y nhẹ nhất thế giới, chỉ 60 gram</p>\r\n\r\n<p>Cảm biến HERO mới với DPI l&ecirc;n tới 25.600</p>\r\n\r\n<p>Gia tốc tối đa: 40G</p>\r\n\r\n<p>Tốc độ tối đa: &gt;300IPSThời lượng pin l&ecirc;n tới 70 giờ</p>\r\n', '<p>Kh&ocirc;ng đ&egrave;n LED RGB, cũng kh&ocirc;ng c&oacute; những n&eacute;t cắt g&oacute;c cạnh, hầm hố,<strong>&nbsp;Logitech G Pro X Superlight Wireless</strong>&nbsp;sở hữu những đường n&eacute;t tinh tế m&agrave; kh&oacute; c&oacute; thể t&igrave;m thấy tr&ecirc;n bất cứ sản phầm n&agrave;o kh&aacute;c tr&ecirc;n thị trường. Thiết kế đối xứng c&ocirc;ng th&aacute;i học vừa thoải m&aacute;i khi cầm, vừa hỗ trợ tốt khi sử dụng với cả người thuận tay phải v&agrave; tay tr&aacute;i. Logo Logitech với thiết kế tinh tế v&agrave; tốt giản, được đặt ở mặt tr&ecirc;n tạo điểm nhấn cho mẫu chuột. V&agrave; tr&ecirc;n phi&ecirc;n bản đặc biệt n&agrave;y, ch&uacute;ng ta sẽ c&oacute; d&ograve;ng chữ đặt b&ecirc;n cạnh phải chuột đại diện cho d&ograve;ng sản phẩm mới nhất, Superlight.</p>\r\n\r\n<p><strong>Logitech G Pro X Superlight Wireless</strong>&nbsp;hướng tới ph&acirc;n kh&uacute;c của một sản phẩm hi end cao cấp điển h&igrave;nh. Mẫu chuột gi&uacute;p c&aacute;c bạn c&oacute; thể vượt qua hết mọi chướng ngại tr&ecirc;n chặng đường gi&agrave;nh chiến thắng. Sở hữu trọng lượng chỉ chưa tới 63 gram,&nbsp;<strong>G Pro X Superlight Wireless</strong>&nbsp;cho khả năng di chuyển nhanh nhất c&ugrave;ng với đ&oacute; l&agrave; độ ch&iacute;nh x&aacute;c vượt trội nhờ việc loại bỏ gần như ho&agrave;n to&agrave;n lực ma s&aacute;t khi trượt. Mang đến một li&ecirc;n kết thuần khiết nhất giữa gamer v&agrave; tựa game đang trải nghiệm.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1276.59px; top:-58px\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>\r\n', 49, 1, '1651651097_chuot1.jpg', '', '', '', '', 2500000, 15, 31),
(56, 'Bàn phím cơ Fuhlen D (Destroyer)', '<table border=\"1\" cellpadding=\"10\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>M&ocirc; tả chi tiết</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>\r\n			<p><strong><a href=\"https://www.anphatpc.com.vn/ban-phim-fuhlen_dm1493.html\">B&agrave;n ph&iacute;m cơ Fuhlen</a></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chủng loại</p>\r\n			</td>\r\n			<td><strong>B&agrave;n ph&iacute;m&nbsp;cơ Fuhlen Destroyer</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuẩn&nbsp;b&agrave;n ph&iacute;m</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; d&acirc;y</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuẩn giao tiếp</p>\r\n			</td>\r\n			<td>\r\n			<p>USB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ ph&iacute;m</p>\r\n			</td>\r\n			<td>\r\n			<p>B&agrave;n ph&iacute;m cơ,&nbsp;Fuhlen Optical switch</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;u</p>\r\n			</td>\r\n			<td>\r\n			<p>N&acirc;u</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đ&egrave;n&nbsp;b&agrave;n ph&iacute;m</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;,&nbsp;7 m&agrave;u bố tr&iacute; theo hiệu ứng Rainbow (cầu vồng)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&aacute;c chứng năng đặc biệt</p>\r\n			</td>\r\n			<td>\r\n			<p><strong><a href=\"https://www.anphatpc.com.vn/ban-phim-co-gia-re_dm1494.html\">B&agrave;n ph&iacute;m cơ gi&aacute; rẻ</a></strong>&nbsp;sử dụng c&ocirc;ng tắc quang học Fuhlen Optical, vỏ l&agrave;m bằng kim loại đẹp v&agrave; led nhiều m&agrave;u đẹp mắt</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:877.031px; top:524px\"><img src=\"chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png\" /></div>\r\n', '', 0, 0, '1651654346_banphim2.jpg', '', '', '', '', 880000, 12, 31),
(57, 'Chuột Logitech G502 Cảm Biến HERO', '<table border=\"1\" cellpadding=\"10\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>\r\n			<p><strong><a href=\"https://www.anphatpc.com.vn/chuot-cac-hang-khac_dm1377.html\">Chuột Logitech</a></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chủng loại</p>\r\n			</td>\r\n			<td><strong>Chuột Logitech G502 HERO</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuẩn&nbsp;chuột</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; d&acirc;y</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuẩn giao tiếp</p>\r\n			</td>\r\n			<td>\r\n			<p>USB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Độ ph&acirc;n giải</p>\r\n			</td>\r\n			<td>\r\n			<p>25.600DPI</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;u</p>\r\n			</td>\r\n			<td>\r\n			<p>Đen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đ&egrave;n chuột</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;, 16.8 Triệu m&agrave;u</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&aacute;c chứng năng đặc biệt</p>\r\n			</td>\r\n			<td>\r\n			<p>Phi&ecirc;n bản mới nhất với cảm biến HERO c&ocirc;ng nghệ cao, cho độ ch&iacute;nh x&aacute;c vượt trội.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>G502 l&agrave; d&ograve;ng&nbsp;<strong><a href=\"https://www.anphatpc.com.vn/chuot-choi-game_dm1256.html\">chuột gaming</a></strong>&nbsp;th&agrave;nh c&ocirc;ng nhất trong lịch sử của Logitech. Ngay từ khi ra mắt phi&ecirc;n bản đầu ti&ecirc;n (c&aacute;ch đ&acirc;y 5 năm), chuột Logitech G502 được coi l&agrave; bước đột ph&aacute; về cả c&ocirc;ng nghệ v&agrave; thiết kế, v&agrave; được coi l&agrave; chuột chơi game ho&agrave;n hảo nhất, c&oacute; độ ch&iacute;nh x&aacute;c cao nhất v&agrave; vượt trội so với mọi loại chuột game thời bấy giờ. Năm 2018 n&agrave;y, Logitech G502 HERO ch&iacute;nh thức được giới thiệu như một bước tiến mới. Những c&ocirc;ng nghệ được ứng dụng cho Logitech G502 HERO ch&uacute;ng t&ocirc;i xin được giới thiệu ngay dưới đ&acirc;y.</p>\r\n\r\n<p>Cảm biến quang học thế hệ mới mang t&ecirc;n HERO được trang bị cho Logitech G502 HERO. Đ&acirc;y l&agrave; loại cảm biến c&oacute; độ ch&iacute;nh x&aacute;c cao nhất từ trước tới nay, với DPI tối đa 25.600 (d&ugrave;ng phần mềm Logitech HUB G), tốc độ lướt tối đa tr&ecirc;n 400IPS v&agrave; gia tốc chịu đựng tối đa l&ecirc;n tới tr&ecirc;n 40G, đặc biệt cảm biến c&oacute; gia tốc = 0 cho ph&eacute;p c&aacute;c c&uacute; r&ecirc; chuột, c&aacute;c c&uacute; &quot;vẩy&quot; chuột trong game FPS như CS:GO hay PUBG sẽ ch&iacute;nh x&aacute;c nhất.</p>\r\n', 0, 0, '1651655098_chuot2.jpg', '', '', '', '', 1049000, 7, 31),
(58, 'Bàn phím cơ DareU EK884 RGB Red switch', '<ul>\r\n	<li>Thương hiệu: DareU</li>\r\n	<li>T&ecirc;n sản phẩm: b&agrave;n ph&iacute;m cơ<strong>&nbsp;DareU EK884 RGB Red switch</strong></li>\r\n	<li>Danh mục:&nbsp;<a href=\"https://www.anphatpc.com.vn/linh-kien-may-tinh.html\" target=\"_blank\">Linh kiện m&aacute;y t&iacute;nh</a></li>\r\n	<li>Trọng lượng: N/A</li>\r\n	<li>K&iacute;ch thước ti&ecirc;u chuẩn: 84 ph&iacute;m</li>\r\n	<li>M&agrave;u: đen</li>\r\n	<li>Kết nối: cổng USB</li>\r\n	<li>Loại b&agrave;n ph&iacute;m: b&agrave;n ph&iacute;m cơ</li>\r\n	<li>Loại LED: RGB 16.8 triệu m&agrave;u</li>\r\n	<li>Switch &ldquo;D&rdquo;: Blue, Brown, Red</li>\r\n	<li>Độ bền: 50 triệu lần bấm</li>\r\n	<li>Chất liệu Keycaps: ABS Laser Carving keycaps</li>\r\n	<li>Anti-ghosting: N-key rollover</li>\r\n	<li>D&acirc;y: Type C Power Cable</li>\r\n</ul>\r\n', '<p>B&agrave;n ph&iacute;m EK884 với số lượng 84 ph&iacute;m được thiết kế tinh tế đem lại độ nhạy v&agrave; cảm gi&aacute;c g&otilde; tốt nhất cho người d&ugrave;ng. Thiết bị hỗ trợ cả kết nối c&oacute; d&acirc;y USB. Với bề mặt s&aacute;ng b&oacute;ng sau thời gian d&agrave;i sử dụng, b&agrave;n ph&iacute;m mang m&agrave;u đen mạnh mẽ v&agrave; đặc trưng. C&aacute;c k&yacute; tự chống phai, chống m&agrave;i m&ograve;n cao hơn nhiều so với keycaps ABS th&ocirc;ng thường. Switch &ldquo;D&rdquo; đem lại cảm gi&aacute;c nhấn tay rất tốt, c&ocirc;ng tắc vật l&yacute; cũng được sử dụng để chuyển đổi thiết bị, trực quan hơn v&agrave; nhanh nhạy hơn</p>\r\n\r\n<p>Ngo&agrave;i ra, đ&egrave;n led RGB đem đến trải nghiệm &aacute;nh s&aacute;ng tinh tế, ph&ugrave; hợp với những v&aacute;n game kịch t&iacute;nh trong thời gian d&agrave;i cho c&aacute;c game thủ. Đặc biệt, kh&ocirc;ng giới hạn lần nhấn ph&iacute;m đồng thời với N-key Rollover. Chạm đến độ nhận diện nhạy b&eacute;n v&agrave; đầy đủ, để c&aacute;c game thủ thoải m&aacute;i trong &ldquo;trận đấu&rdquo; của m&igrave;nh.</p>\r\n', 0, 0, '1651655730_banphim3.jpg', '', '', '', '', 999000, 20, 31),
(59, 'Bàn phím cơ FL-Esports FL680SAM Night Black Wireless', '<p>- 3 chế độ kết nối: USB/2.4/Bluetooth&nbsp;</p>\r\n\r\n<p>- FSA Keycap&nbsp;- T&iacute;nh năng Hot Swap thay switch dễ d&agrave;ng&nbsp;</p>\r\n\r\n<p>- Led RGB&nbsp;</p>\r\n\r\n<p>- Pin 2000 mAh&nbsp;</p>\r\n\r\n<p>- Trang bị sẵn đệm ti&ecirc;u &acirc;m&nbsp;</p>\r\n\r\n<p>- Phụ kiện: 1 c&aacute;p USB A-C&nbsp;</p>\r\n\r\n<p>- Switch Gateron Cap: White, Yellow, Brown, Silver</p>\r\n\r\n<p>- Hỗ trợ hệ điều h&agrave;nh: Windows, MacOS</p>\r\n', '<p><strong><a href=\"https://www.anphatpc.com.vn/ban-phim-fl-esports_dm2329.html\">FL-Esports</a></strong>&nbsp;<strong>FL680SAM</strong>&nbsp;l&agrave; d&ograve;ng ph&iacute;m mini (65%) với thiết kế mạch&nbsp;<strong>kết nối 3 chế độ bao gồm: 2 chế độ kh&ocirc;ng d&acirc;y 2.4Ghz (c&oacute; đầu nhận USB) v&agrave; Bluetooth, cộng th&ecirc;m một chế độ kết nối c&oacute; d&acirc;y (k&egrave;m chức năng sạc pin)</strong>. Ch&iacute;nh v&igrave; vậy l&agrave;&nbsp;<strong>FL680</strong>&nbsp;thực sự rất tiện lợi, v&agrave; tương th&iacute;ch ho&agrave;n to&agrave;n với tất cả c&aacute;c thiết bị, từ m&aacute;y t&iacute;nh b&agrave;n cho tới laptop, điện thoại hay m&aacute;y t&iacute;nh bảng.&nbsp;<strong>FL680SAM</strong>&nbsp;rất ph&ugrave; hợp với người thường xuy&ecirc;n di chuyển v&agrave; sửa dụng qua lại nhiều thiết bị.</p>\r\n\r\n<p><strong>Stab kiểu plate mount (gắt l&ecirc;n tr&ecirc;n tấm Plate) v&agrave; đặc biệt l&agrave; được lube v&agrave; c&acirc;n chỉnh sẵn từ nh&agrave; sản xuất</strong>, đem lai cảm gi&aacute;c g&otilde; thực sự vượt trội. Stab rất rất c&acirc;n, kh&ocirc;ng c&oacute; bất cứ tiếng ồn kh&ocirc;ng mong muốn n&agrave;o. C&oacute; thể n&oacute;i,&nbsp;<strong>kh&ocirc;ng c&oacute; loại ph&iacute;m cơ stock n&agrave;o (kh&ocirc;ng phải ph&iacute;m cơ custom) c&oacute; thể so s&aacute;nh được với FL-Esports về chất lượng stab</strong>.</p>\r\n', 0, 0, '1651656229_banphim4.jpg', '', '', '', '', 2299000, 12, 31),
(60, 'Bàn phím cơ E-DRA EK3104 Huano Blue switch Version 2021', '<p>N&Acirc;NG CẤP VỚI D&Acirc;Y RỜI, ĐẦU NỐI VỚI PH&Iacute;M USB TYPE C</p>\r\n\r\n<p>N&Acirc;NG CẤP SWITCH HUANO SI&Ecirc;U BỀN</p>\r\n\r\n<p>Thiết kế 104 ph&iacute;m chuẩn ANSI</p>\r\n\r\n<p>LED Rainbow si&ecirc;u đẹp</p>\r\n\r\n<p>Keycaps ABS Double shot</p>\r\n', '<p>Chiếc ph&iacute;m cơ đ&igrave;nh đ&aacute;m EK387 đ&atilde; ch&iacute;nh thức c&oacute; phi&ecirc;n bản đầy đủ mang t&ecirc;n EK3104 với full 104 ph&iacute;m ti&ecirc;u chuẩn ANSI. Giờ đ&acirc;y mọi game thủ đ&atilde; c&oacute; thể sở hữu được chiếc&nbsp;<strong><a href=\"https://www.anphatpc.com.vn/ban-phim-co-gia-re_dm1494.html\">b&agrave;n ph&iacute;m cơ gi&aacute; rẻ</a>&nbsp;c&oacute; thể n&oacute;i l&agrave; tốt nhất trong ph&acirc;n kh&uacute;c dưới 1 triệu</strong>. Về kế cấu b&agrave;n ph&iacute;m của E-Dra EK3104 kh&ocirc;ng c&oacute; g&igrave; kh&aacute;c biệt so với phi&ecirc;n bản cũ ngoại trừ việc th&ecirc;m d&atilde; ph&iacute;m số b&ecirc;n phải. Dưới d&acirc;y l&agrave; một số đặc điểm ch&iacute;nh.</p>\r\n\r\n<p>Trong ph&acirc;n kh&uacute;c ph&iacute;m cơ dưới 1 triệu, ch&uacute;ng t&ocirc;i tin chắc rặng kh&ocirc;ng c&oacute; mẫu ph&iacute;m cơ n&agrave;o c&oacute; thể vượt qua được E-Dra EK3104 về chất lượng build (độ chắc chắn) với&nbsp;<strong>bộ khung vỏ ph&iacute;m si&ecirc;u d&agrave;y được l&agrave;m bằng nhựa cứng c&oacute; bề mặt nh&aacute;m</strong>. Lớp vỏ n&agrave;y si&ecirc;u chắc v&agrave; tr&ocirc;ng cực kỳ lỳ lợm.&nbsp;<strong>Chất lượng vỏ ph&iacute;m ho&agrave;n to&agrave;n vượt xa c&aacute;c loại ph&iacute;m cơ kh&aacute;c trong tầm tiền</strong>&nbsp;v&agrave; đạt tới độ bền chắc ngang h&agrave;ng IKBC (ph&acirc;n kh&uacute;c gần 2 triệu).</p>\r\n', 0, 0, '1651656673_banphim5.jpg', '', '', '', '', 799000, 9, 31),
(61, 'CPU Intel Core i3-10100 ', '<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sản phẩm</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/cpu-desktop_dm1025.html\">B&ocirc;̣ vi xử lý CPU</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/cpu-intel_dm1307.html\">Intel</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/cpu-intel-core-i3_dm1659.html\">Core i3</a>-10100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Socket</p>\r\n			</td>\r\n			<td>FCLGA1200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&ocirc;́c đ&ocirc;̣ cơ bản</p>\r\n			</td>\r\n			<td>3.6GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cache</p>\r\n			</td>\r\n			<td>\r\n			<p>6MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nh&acirc;n CPU</p>\r\n			</td>\r\n			<td>\r\n			<p>4 Nh&acirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Lu&ocirc;̀ng CPU</p>\r\n			</td>\r\n			<td>\r\n			<p>8 Luồng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>VXL đ&ocirc;̀ họa</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel&reg; UHD Graphics 630</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ hỗ trợ</p>\r\n			</td>\r\n			<td>Tối đa 128GB, DDR4-2666Mhz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>D&acirc;y chuy&ecirc;̀n c&ocirc;ng ngh&ecirc;̣</p>\r\n			</td>\r\n			<td>\r\n			<p>14nm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đi&ecirc;̣n áp ti&ecirc;u thụ t&ocirc;́i đa</p>\r\n			</td>\r\n			<td>\r\n			<p>65 W</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhiệt độ tối đa</p>\r\n			</td>\r\n			<td>\r\n			<p>100 độ C</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tính năng</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel&reg; Virtualization Technology (VT-x)</p>\r\n\r\n			<p>Intel&reg; VT-x with Extended Page Tables (EPT)</p>\r\n\r\n			<p>Intel&reg; 64</p>\r\n\r\n			<p>Instruction Set Extensions:&nbsp;Intel&reg; SSE4.1, Intel&reg; SSE4.2, Intel&reg; AVX2</p>\r\n\r\n			<p>Enhanced Intel SpeedStep&reg; Technology</p>\r\n\r\n			<p>Intel&reg; Identity Protection Technology</p>\r\n\r\n			<p>Intel&reg; Optane&trade; Memory Supported&nbsp;</p>\r\n\r\n			<p>Intel&reg; Turbo Boost Technology: 2.0</p>\r\n\r\n			<p>Intel&reg; Hyper-Threading Technology</p>\r\n\r\n			<p>Intel&reg; Virtualization Technology for Directed I/O (VT-d)</p>\r\n\r\n			<p>Instruction Set: 64-bit</p>\r\n\r\n			<p>Idle States&nbsp;</p>\r\n\r\n			<p>Thermal Monitoring Technologies</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 0, 0, '1651657621_cpu1.jpg', '', '', '', '', 2839000, 11, 33),
(62, 'CPU Intel Core i7-10700F FCLGA1200', '<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sản phẩm</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/cpu-desktop_dm1025.html\">B&ocirc;̣ vi xử lý CPU</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/cpu-intel_dm1307.html\">Intel</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/cpu-intel-core-i3_dm1659.html\">Core i</a>7-10700F</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Socket</p>\r\n			</td>\r\n			<td>\r\n			<p>FCLGA1200</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&ocirc;́c đ&ocirc;̣ cơ bản</p>\r\n			</td>\r\n			<td>\r\n			<p>2.90GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cache</p>\r\n			</td>\r\n			<td>\r\n			<p>16MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nh&acirc;n CPU</p>\r\n			</td>\r\n			<td>\r\n			<p>8 Nh&acirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Lu&ocirc;̀ng CPU</p>\r\n			</td>\r\n			<td>\r\n			<p>16&nbsp;Luồng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>VXL đ&ocirc;̀ họa</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ hỗ trợ</p>\r\n			</td>\r\n			<td>\r\n			<p>Tối đa 128GB DDR4-2933</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>D&acirc;y chuy&ecirc;̀n c&ocirc;ng ngh&ecirc;̣</p>\r\n			</td>\r\n			<td>\r\n			<p>14nm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đi&ecirc;̣n áp ti&ecirc;u thụ t&ocirc;́i đa</p>\r\n			</td>\r\n			<td>\r\n			<p>65W</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhiệt độ tối đa</p>\r\n			</td>\r\n			<td>\r\n			<p>100 độ C</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tính năng</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel&reg; Thermal Velocity Boost</p>\r\n\r\n			<p>Intel&reg; Turbo Boost Max Technology 3.0</p>\r\n\r\n			<p>Intel&reg; Turbo Boost Technology: 2.0</p>\r\n\r\n			<p>Intel&reg; Hyper-Threading Technology</p>\r\n\r\n			<p>Intel&reg; Virtualization Technology (VT-x)</p>\r\n\r\n			<p>Intel&reg; Virtualization Technology for Directed I/O (VT-d)</p>\r\n\r\n			<p>Intel&reg; VT-x with Extended Page Tables (EPT)</p>\r\n\r\n			<p>Intel&reg; 64</p>\r\n\r\n			<p>Instruction Set: 64-bit</p>\r\n\r\n			<p>Instruction Set Extensions:&nbsp;Intel&reg; SSE4.1, Intel&reg; SSE4.2, Intel&reg; AVX2</p>\r\n\r\n			<p>Idle States</p>\r\n\r\n			<p>Enhanced Intel SpeedStep&reg; Technology</p>\r\n\r\n			<p>Thermal Monitoring Technologies</p>\r\n\r\n			<p>Intel&reg; Identity Protection Technology</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>CPU Core-10700F con chip thuộc bộ xử l&iacute; thế hệ thứ 10 của Intel. Con chip n&agrave;y được thiết kế ra nhằm hướng đến c&aacute;c đối tượng l&agrave; game thủ v&igrave; hiệu năng, sức mạnh n&oacute; mang lại rất lớn v&agrave; lại rất ph&ugrave; hợp với kinh tế của mọi người.</p>\r\n\r\n<p><a href=\"https://www.anphatpc.com.vn/cpu-desktop.html\">CPU</a>&nbsp;n&agrave;y c&oacute; thiết kế 8 nh&acirc;n 16 luồng, tần số xử l&iacute; cơ bản l&agrave; 2.90 GHz v&agrave; l&ecirc;n cao nhất l&agrave; 4.80 GHz nhờ v&agrave;o c&ocirc;ng nghệ&nbsp;Intel&reg; Turbo Boost Max 3.0, c&oacute; hỗ trợ DDR4 gi&uacute;p&nbsp;Core i7-10700F hiệu năng cao hơn hẳn so với c&aacute;c thế hệ trước. Cụ thể như n&oacute; hơn so với thế hệ thứ 9 l&agrave; 2,5 lần n&ecirc;n c&oacute; thể tối đa h&oacute;a về hiệu xất cũng như dự đo&aacute;n khối lượng c&ocirc;ng việc.</p>\r\n', 0, 1, '1651657943_cpu2.jpg', '', '', '', '', 6989000, 15, 33),
(63, 'CPU Intel Core i9-12900K', '<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sản phẩm</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/cpu-desktop_dm1025.html\">B&ocirc;̣ vi xử lý CPU</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p>i9-12900K</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Socket</p>\r\n			</td>\r\n			<td>\r\n			<p>FCLGA1700</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&ocirc;́c đ&ocirc;̣ cơ bản</p>\r\n			</td>\r\n			<td>\r\n			<p>Tần Số C&ocirc;ng Nghệ Intel&reg; Turbo Boost Max 3.0:&nbsp;5.20 GHz</p>\r\n\r\n			<p>Performance-core Max Turbo Frequency:&nbsp;5.10 GHz</p>\r\n\r\n			<p>Efficient-core Max Turbo Frequency:&nbsp;3.90 GHz</p>\r\n\r\n			<p>Performance-core Base Frequency:&nbsp;3.20 GHz</p>\r\n\r\n			<p>Efficient-core Base Frequency:&nbsp;2.40 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cache</p>\r\n			</td>\r\n			<td>\r\n			<p>Bộ nhớ đệm:&nbsp;30 MB&nbsp;</p>\r\n\r\n			<p>Total L2 Cache:&nbsp;14 MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nh&acirc;n CPU</p>\r\n			</td>\r\n			<td>\r\n			<p>16</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Lu&ocirc;̀ng CPU</p>\r\n			</td>\r\n			<td>24</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>VXL đ&ocirc;̀ họa</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel&reg; UHD Graphics 770</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ hỗ trợ</p>\r\n			</td>\r\n			<td>\r\n			<p>Tối đa&nbsp;128 GB</p>\r\n\r\n			<p>C&aacute;c loại bộ nhớ:&nbsp;Up to DDR5 4800 MT/s, Up to DDR4 3200 MT/s</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>D&acirc;y chuy&ecirc;̀n c&ocirc;ng ngh&ecirc;̣</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đi&ecirc;̣n áp ti&ecirc;u thụ t&ocirc;́i đa</p>\r\n			</td>\r\n			<td>\r\n			<p>Processor Base Power: 125 W</p>\r\n\r\n			<p>Maximum Turbo Power:&nbsp;241 W</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhiệt độ tối đa</p>\r\n			</td>\r\n			<td>\r\n			<p>100&deg;C</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 0, 0, '1651658210_cpu3.jpg', '', '', '', '', 15489000, 20, 33),
(64, 'CPU Intel Core i3-10100', '', '', 0, 0, '1651658972_cpu1.jpg', '', '', '', '', 200000, 10, 33),
(65, 'CPU Intel Core i3-10100', '', '', 0, 0, '1651659012_cpu1.jpg', '', '', '', '', 3200000, 12, 33),
(66, 'CPU Intel Core i3-10100', '', '', 0, 0, '1651659033_cpu1.jpg', '', '', '', '', 200000, 13, 33),
(67, 'CPU Intel Core i3-10100', '', '', 0, 0, '1651659053_cpu1.jpg', '', '', '', '', 200000, 14, 33),
(68, 'CPU Intel Core i3-10100', '', '', 0, 0, '1651659077_cpu1.jpg', '', '', '', '', 2999000, 13, 33),
(69, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '<table border=\"1\" cellpadding=\"5\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">H&atilde;ng sản xuất</td>\r\n			<td style=\"vertical-align:top\">Kingmax</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Model</td>\r\n			<td style=\"vertical-align:top\"><strong><a href=\"https://www.anphatpc.com.vn/o-cung-ssd-kingmax-120gb-sme35_id14883.html\">120GB&nbsp;</a>SMV32</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">K&iacute;ch Thước</td>\r\n			<td style=\"vertical-align:top\">99.7 x 69.75 x 7mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Tốc độ đọc tối đa</td>\r\n			<td style=\"vertical-align:top\">l&ecirc;n tới 500MB/ gi&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Tốc độ ghi tối đa</td>\r\n			<td style=\"vertical-align:top\">l&ecirc;n tới 350MB / gi&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">Hỗ trợ</td>\r\n			<td style=\"vertical-align:top\">M&atilde; ho&aacute; AES-256, Thuật to&aacute;n wear leveling để tăng tuổi thọ sản phẩm, Cơ chế sửa lỗi cao cấp BCH ECC, Gi&aacute;m s&aacute;t S.M.A.R.T, Chống rung v&agrave; sốc</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Ổ Cứng SSD KINGMAX 120GB SMV32</strong>&nbsp;được trang bị chuẩn giao tiếp SATA III cho tốc độ truyền dữ liệu 6Gb/s. Với tốc độ n&agrave;y m&aacute;y t&iacute;nh của bạn sẽ được vận h&agrave;nh một c&aacute;ch nhanh ch&oacute;ng nhất.</p>\r\n\r\n<p>&Ocirc;̉ cứng mang đến cho bạn tốc độ đọc l&ecirc;n tới 500MBps v&agrave; tốc độ ghi l&ecirc;n tới 350MBps, nhờ đ&oacute; bạn sẽ xử l&yacute; c&ocirc;ng việc nhanh ch&oacute;ng hơn, mang đến khả năng xử l&yacute; c&ocirc;ng việc nhanh ch&oacute;ng, tiết kiệm thời gian. Ngo&agrave;i ra, tốc độ truyền dữ liệu cao c&ograve;n gi&uacute;p bạn dễ d&agrave;ng chơi game, ph&aacute;t lại phương tiện truyền th&ocirc;ng HD hoặc phần mềm s&aacute;ng tạo.</p>\r\n\r\n<p>&Ocirc;̉ cứng c&oacute; k&iacute;ch thước nhỏ gọn, cấu tạo bền bỉ, chống va đập, cho thời gian sử dụng l&acirc;u d&agrave;i. Đặc biệt, ổ cứng SSD sẽ gi&uacute;p m&aacute;y tiết kiệm năng lượng v&agrave; khởi động nhanh hơn.</p>\r\n', 0, 1, '1651659827_ssd1.jpg', '', '', '', '', 559000, 10, 32),
(70, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '', '', 0, 0, '1651659883_ssd1.jpg', '', '', '', '', 1000000, 20, 32),
(71, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '', '', 0, 0, '1651659905_ssd1.jpg', '', '', '', '', 300000, 5, 32),
(72, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '', '', 0, 0, '1651659930_ssd1.jpg', '', '', '', '', 230000, 2, 32),
(73, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '', '', 0, 0, '1651659947_ssd1.jpg', '', '', '', '', 560000, 3, 32),
(74, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '', '', 0, 0, '1651659966_ssd1.jpg', '', '', '', '', 880000, 5, 32),
(75, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '', '', 0, 0, '1651659985_ssd1.jpg', '', '', '', '', 750000, 6, 32),
(76, 'Ổ Cứng SSD KINGMAX 120GB SMV32', '', '', 0, 0, '1651660001_ssd1.jpg', '', '', '', '', 990000, 7, 32),
(77, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>Western Digital</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<h4>WD20EFZX</h4>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chủng loại</p>\r\n			</td>\r\n			<td>\r\n			<p><strong><a href=\"https://www.anphatpc.com.vn/o-cung-desktop_dm1047.html\">Ổ cứng HDD</a></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng</p>\r\n			</td>\r\n			<td>\r\n			<p>2TB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chuẩn cắm</p>\r\n			</td>\r\n			<td>\r\n			<p>SATA3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ đệm</p>\r\n			</td>\r\n			<td>\r\n			<p>128MB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ v&ograve;ng quay</p>\r\n			</td>\r\n			<td>\r\n			<p>5400rpm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tốc độ truyền dữ liệu</p>\r\n			</td>\r\n			<td>\r\n			<p>6Gb/s</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Điện&nbsp;năng ti&ecirc;u thụ</p>\r\n			</td>\r\n			<td>4.8W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Loại ổ cứng</p>\r\n			</td>\r\n			<td>\r\n			<p>Cơ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>D&ugrave;ng cho</p>\r\n			</td>\r\n			<td>\r\n			<p>PC</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước</p>\r\n			</td>\r\n			<td>\r\n			<p>3.5&quot;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>&nbsp;<strong><a href=\"https://www.anphatpc.com.vn/o-cung-western-digital-red-plus-2tb-3.5-inch-128mb-cache-5400rpm-wd20efzx_id38443.html\">Ổ cứng Western Digital Red Plus 2TB (WD20EFZX0)</a>&nbsp;</strong>l&agrave; loại ổ cứng được chế tạo d&agrave;nh ri&ecirc;ng cho&nbsp;hệ thống NAS trong gia đ&igrave;nh v&agrave; doanh nghiệp với quy m&ocirc; lớn v&agrave; vừa. N&oacute; kh&ocirc;ng những được thiết kế để c&oacute; thể xử l&yacute; được khối lượng l&agrave;m việc cao m&agrave; n&oacute; c&ograve;n c&oacute; thể hoạt động được trong thời gian rất d&agrave;i (<strong>24/7</strong>). Kh&ocirc;ng những thế, n&oacute; c&ograve;n sở hữu c&ocirc;ng nghệ&nbsp;<strong>NASware 3.0</strong>, cho ph&eacute;p dễ d&agrave;ng t&iacute;ch hợp v&agrave;o NAS để l&agrave;m tăng hiệu năng v&agrave; giảm thời gian chết của ổ cứng. Hơn nữa, c&ocirc;ng nghệ&nbsp;<strong>3D Active Balance Plus</strong>&nbsp;của n&oacute; c&ograve;n gi&uacute;p c&acirc;n bằng v&agrave; kiểm so&aacute;t to&agrave;n bộ hiệu suất hoạt động, gi&uacute;p cho ổ cứng c&oacute; được tuổi thọ bền l&acirc;u trong nhiều năm sử dụng.</p>\r\n\r\n<p><strong>&nbsp;Ổ cứng Western Digital Red Plus 2TB (WD20EFZX0)</strong>&nbsp;được lắp r&aacute;p cực kỳ chắn chắn theo ti&ecirc;u chuẩn định dạng (Form Factors)&nbsp;<strong>3.5 inch</strong>&nbsp;với k&iacute;ch thước 2 chiều bao gồm chiều d&agrave;i&nbsp;<strong>14.7 cm (mm)</strong>, chiều rộng&nbsp;<strong>10.1 cm (mm)</strong>&nbsp;c&ugrave;ng với bề d&agrave;y l&ecirc;n đến&nbsp;<strong>2.6 cm (mm)</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 0, '1651660643_hdd1.jpg', '', '', '', '', 1550000, 12, 29),
(78, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '', '', 0, 0, '1651660680_hdd1.jpg', '', '', '', '', 1230000, 10, 29),
(79, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '', '', 0, 0, '1651660697_hdd1.jpg', '', '', '', '', 980000, 6, 29),
(80, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '', '', 0, 0, '1651660723_hdd1.jpg', '', '', '', '', 580000, 7, 29),
(81, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '', '', 0, 0, '1651660742_hdd1.jpg', '', '', '', '', 200000, 5, 29),
(82, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '', '', 0, 0, '1651660761_hdd1.jpg', '', '', '', '', 2999000, 13, 29),
(83, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '', '', 0, 0, '1651660785_hdd1.jpg', '', '', '', '', 760000, 8, 29),
(84, 'Ổ cứng Western Digital Red Plus 2TB WD20EFZX', '', '', 0, 0, '1651660802_hdd1.jpg', '', '', '', '', 880000, 9, 29),
(85, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sản Phẩm</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/bo-nho-trong_dm1234.html\">B&ocirc;̣ nhớ trong RAM</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>\r\n			<p>G.Skill&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model</p>\r\n			</td>\r\n			<td>\r\n			<p>F4-3600C18D-32GTZN</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Loại RAM</p>\r\n			</td>\r\n			<td>\r\n			<p><a href=\"https://www.anphatpc.com.vn/bo-nho-trong_dm1234.html?filter=%2C1790%2C\">DDR4</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng</p>\r\n			</td>\r\n			<td>\r\n			<p>32GB (2x16GB)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bus</p>\r\n			</td>\r\n			<td>\r\n			<p>3600MHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đ&ocirc;̣ tr&ecirc;̃</p>\r\n			</td>\r\n			<td>18-22-22-42</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Đi&ecirc;̣n áp</p>\r\n			</td>\r\n			<td>\r\n			<p>1.35V</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tản nhi&ecirc;̣t</p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><strong>&nbsp;RAM G.Skill TRIDENT Z Neo RGB 32GB (2x16GB)</strong>&nbsp;l&agrave; sản phẩn được thiết kế v&agrave; tối ưu h&oacute;a để tương th&iacute;ch với c&aacute;c&nbsp;nền tảng AMD Ryzen mới nhất. Sản phẩm n&agrave;y đen đến một hiệu năng vượt trội v&agrave; c&ugrave;ng hệ thống led RGB mang đến sự sống động cho d&agrave;n m&aacute;y PC của bạn, gi&uacute;p n&acirc;ng cấp v&ecirc; mặt trải nghiện hiệu suất, t&iacute;nh c&aacute; nh&acirc;n h&oacute;a cho bộ PC c&ugrave;a người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;Được chế tạo với c&aacute;c IC nhớ được s&agrave;ng lọc thủ c&ocirc;ng v&agrave; PCB 10 lớp t&ugrave;y chỉnh, mỗi v&agrave; mọi m&ocirc;-đun đều được tạo ra để duy tr&igrave; t&iacute;nh to&agrave;n vẹn của t&iacute;n hiệu tốt nhất nhằm đạt được hiệu suất &eacute;p xung nhanh ch&oacute;ng.</p>\r\n\r\n<p>&nbsp;RAM G.Skill TRIDENT Z Neo đ&atilde; được thử nghiệm tr&ecirc;n nhiều loại bo mạch chủ theo c&aacute;c ti&ecirc;u chuẩn, chất lượng cưc k&igrave; nghi&ecirc;m ngặt, bộ nhớ Trident Z Neo được x&acirc;y dựng để đảm bảo độ tin cậy, ổn định v&agrave; khả năng tương th&iacute;ch vơi c&aacute;c hệ thồng m&aacute;y chủ hiện nay.</p>\r\n', 0, 0, '1651661159_ram1.jpg', '', '', '', '', 890000, 12, 28),
(86, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '', '', 0, 0, '1651661187_ram1.jpg', '', '', '', '', 200000, 2, 28),
(87, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '', '', 0, 0, '1651661203_ram1.jpg', '', '', '', '', 2999000, 13, 28),
(88, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '', '', 0, 0, '1651661221_ram1.jpg', '', '', '', '', 880000, 20, 28),
(89, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '', '', 0, 0, '1651661244_ram1.jpg', '', '', '', '', 2500000, 12, 28),
(90, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '', '', 0, 0, '1651661264_ram1.jpg', '', '', '', '', 1049000, 12, 28),
(91, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '', '', 0, 0, '1651661279_ram1.jpg', '', '', '', '', 200000, 13, 28),
(92, 'RAM G.Skill TRIDENT Z Neo RGB 32GB  DDR4', '', '', 50, 0, '1651661299_ram1.jpg', '', '', '', '', 880000, 15, 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(19, 11, 4),
(20, 11, 5),
(21, 11, 5),
(22, 11, 5),
(23, 12, 5),
(24, 12, 5),
(25, 20, 5),
(26, 18, 1),
(27, 12, 3),
(28, 19, 3),
(29, 12, 3),
(30, 11, 5),
(31, 11, 5),
(32, 10, 2),
(33, 10, 3),
(34, 12, 5),
(35, 11, 4),
(36, 11, 2),
(37, 12, 4),
(38, 12, 2),
(39, 12, 4),
(40, 11, 1),
(41, 12, 5),
(42, 13, 3),
(43, 34, 3),
(44, 35, 3),
(45, 42, 1),
(46, 42, 5),
(47, 42, 5),
(48, 42, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyen Van A', 'nva@gmail.com', '19d40526d4f412f467b7e06be025b921'),
(18, 'Hà Văn Chiến', 'hvc@gmail.com', 'dca0e315e04d328c8ada9495b1a59bf6');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
