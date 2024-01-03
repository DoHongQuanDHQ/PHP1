-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2022 lúc 05:38 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `da1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(199) NOT NULL,
  `avatar` varchar(299) DEFAULT NULL,
  `total_product` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `total_product`, `status`, `created_at`) VALUES
(13, 'Quần áo đá bóng nam', '638a106d6eb8cdanhmuc1.jpg', 8, 0, '2022-12-08 06:55:25'),
(14, 'Quần áo cầu lông', '638a294d851a2banner-cl.png', 7, 0, '2022-12-07 08:52:55'),
(15, 'Áo thun thể thao', '638a35024809ebanner_thun.png', 9, 0, '2022-12-08 16:57:47'),
(16, 'Quẩn thể thao - quần nỉ', '638a420ec7607', 7, 0, '2022-12-08 16:57:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments_product`
--

CREATE TABLE `comments_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `rating_products` tinyint(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments_product`
--

INSERT INTO `comments_product` (`id`, `product_id`, `user_id`, `content`, `rating_products`, `created_at`) VALUES
(15, 106, 17, 'Áo đẹp', 3, '2022-12-06 06:20:53'),
(27, 106, 17, 'áo đẹp', 5, '2022-12-08 05:48:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `viewAccess` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `counter`
--

INSERT INTO `counter` (`viewAccess`) VALUES
(740);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment` tinyint(2) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `total_price` int(11) NOT NULL,
  `note` varchar(199) DEFAULT NULL,
  `address` varchar(199) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment`, `status`, `total_price`, `note`, `address`, `created_at`) VALUES
(65, 17, 0, 6, 1218600, '', 'Nam định', '2022-12-02 10:03:13'),
(68, 24, 2, 6, 6701000, '', 'Hà Nội', '2022-12-03 08:07:11'),
(70, 17, 0, 6, 1349000, '', 'Nam định', '2022-12-05 12:51:20'),
(71, 25, 2, 6, 2106000, '', 'Hà Nội', '2022-12-05 12:56:49'),
(72, 17, 0, 6, 2634000, '', 'Hà Nội', '2022-12-05 10:04:45'),
(73, 17, 0, 6, 612000, '', 'Nam định', '2022-12-05 10:11:10'),
(74, 16, 0, 6, 665000, '', 'Nam định', '2022-12-06 12:24:04'),
(80, 16, 0, 6, 1368000, '', 'Nam định', '2022-12-06 12:49:48'),
(93, 16, 0, 1, 2740000, '', 'Nam định', '2022-12-08 06:06:20'),
(94, 28, 2, 6, 230000, '', '', '2022-12-08 06:20:56'),
(95, 29, 2, 6, 2825600, '', 'Nam định', '2022-12-08 09:53:07'),
(96, 30, 2, 6, 1863000, '', 'Hà Nội', '2022-12-08 10:20:52'),
(97, 31, 2, 6, 2592000, '', 'Khánh Hòa', '2022-12-08 10:32:47'),
(98, 32, 2, 6, 609300, '', '', '2022-12-08 10:44:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_product` int(11) NOT NULL,
  `size` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `product_id`, `quantity`, `price_product`, `size`) VALUES
(151, 65, 91, 2, 609300, ''),
(166, 68, 118, 4, 729000, ''),
(167, 68, 99, 5, 640000, ''),
(168, 68, 92, 1, 585000, ''),
(169, 70, 105, 2, 674500, ''),
(173, 72, 126, 2, 405000, ''),
(174, 72, 117, 3, 608000, ''),
(175, 73, 106, 2, 306000, ''),
(176, 74, 96, 1, 665000, ''),
(183, 80, 98, 3, 456000, ''),
(195, 71, 114, 6, 351000, ''),
(204, 93, 93, 2, 675000, 'XL'),
(205, 93, 93, 2, 675000, 'S'),
(208, 94, 111, 1, 230000, ''),
(215, 95, 119, 2, 486000, 'S'),
(216, 95, 91, 2, 609300, '2XL'),
(217, 95, 126, 1, 405000, 'XL'),
(218, 95, 111, 1, 230000, 'L'),
(219, 96, 126, 1, 405000, 'L'),
(220, 96, 120, 2, 486000, 'M'),
(221, 96, 120, 1, 486000, 'S'),
(225, 97, 126, 2, 405000, 'S'),
(226, 97, 126, 2, 405000, '2XL'),
(227, 97, 120, 2, 486000, 'XL'),
(231, 98, 91, 1, 609300, 'L');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(199) NOT NULL,
  `category_id` int(11) NOT NULL,
  `avatar` varchar(199) NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `hot_product` tinyint(2) NOT NULL DEFAULT 0,
  `comment_total` int(11) DEFAULT NULL,
  `rating_total` int(11) DEFAULT NULL,
  `amount_views` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `avatar`, `description`, `quantity`, `price`, `discount`, `status`, `hot_product`, `comment_total`, `rating_total`, `amount_views`, `created_at`, `updated_at`) VALUES
(91, 'Bộ quần áo bóng đá nam AATR035-2', 13, 'sp1-main.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aatr035-2__1__5dc593484b3a4af295b1cbeeef0e863c_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 12341, 677000, 10, 0, 1, 1, 5, NULL, '2022-12-08 15:56:23', NULL),
(92, 'Bộ quần áo bóng đá nam AATS031-1', 13, '1669997329-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats031-1__1__b9f9ca826fef4ebea345eba10119ec7b_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 1234, 650000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 16:11:39', NULL),
(93, 'Bộ quần áo bóng đá nam AATS031-2', 13, 'sp3-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats031-2_a_dc9cfce60f9e48b19403b57cf105f3d8_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 1230, 750000, 10, 0, 1, NULL, NULL, NULL, '2022-12-08 11:06:20', NULL),
(94, 'Bộ quần áo bóng đá nam AATS031-5', 13, 'sp4-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats031-5__1__805fff48e8cb4bdbb00014916b0ba43b_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 12314, 630000, 5, 0, 1, NULL, NULL, NULL, '2022-12-02 16:18:56', NULL),
(95, 'Bộ quần áo bóng đá nam AATS037-2', 13, 'sp5-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats037-2__1__53085c6410464a4cb932bd0fff1ea43a_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 12345, 775000, 20, 0, 1, NULL, NULL, NULL, '2022-12-02 16:22:24', NULL),
(96, 'Bộ quần áo bóng đá nam AATS037-3', 13, 'sp6-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats037-3__1__920e862f151146019e33c889eba96d54_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 1254, 700000, 5, 0, 1, NULL, NULL, NULL, '2022-12-08 11:00:40', NULL),
(97, 'Bộ quần áo bóng đá nam AATS037-7', 13, 'sp7-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aaps037-7__1__98dd9b40860c47ccbfcdae20ca9b1062_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 5678, 680000, 20, 0, 1, NULL, NULL, NULL, '2022-12-02 16:29:01', NULL),
(98, 'Bộ quần áo bóng đá nam AATS037-8', 13, 'sp8-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats037-8__1__b252df29d27b4af38898e9ecea4a967c_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 896, 480000, 5, 0, 1, NULL, NULL, NULL, '2022-12-02 16:32:12', NULL),
(99, 'Bộ quần áo cầu lông AATR045-123', 14, 'cl1-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aatr045-1_7f0b79023c7d4461879c6a7a79bf45eb_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 3245, 800000, 20, 0, 1, NULL, NULL, NULL, '2022-12-02 16:40:56', NULL),
(100, 'Bộ quần áo cầu lông nam AATR045-2', 14, 'cl2-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aatr045-2_a233d68923fc498690dc2d315f4625cd_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 4567, 560000, 20, 0, 1, NULL, NULL, NULL, '2022-12-02 16:48:51', NULL),
(101, 'Bộ quần áo cầu lông nam AATR045-3', 14, 'cl3-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aatr045-3_e260f139ec094970a4834748a306a3b7_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 453, 670000, 15, 0, 1, NULL, NULL, NULL, '2022-12-02 16:52:15', NULL),
(102, 'Bộ quần áo cầu lông nam AATS007-3', 14, 'cl4-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats007-3__1__8c6c40679a3c44ceb128847f2bdd026b_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 456, 560000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 16:55:16', NULL),
(103, 'Bộ quần áo cầu lông nam AATS007-4', 14, 'cl5-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats007-4-8_7d395c494fad4a61a6d14ba193462d65_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 2345, 830000, 20, 0, 1, NULL, NULL, NULL, '2022-12-02 17:03:54', NULL),
(104, 'Bộ quần áo cầu lông Unisex AATS093-1', 14, 'cl6-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats093-1-pei_bc788e70e03b4bd5a427bbe79239efbe_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 2345, 740000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 17:11:28', NULL),
(105, 'Bộ quần áo cầu lông Unisex AATS093-2', 14, 'cl7-1.png', '<p>C&ocirc;ng nghệ AT-Dry l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aats093-2__1__44f1ecb44d05484396f96c7a49b77ece_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_5e79956b0435408c9a82044ca3e5443a_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 2344, 710000, 5, 0, 1, 1, 3, NULL, '2022-12-05 06:09:03', NULL),
(106, 'Áo thun nam AAYS249-3 Yellow Light', 15, 'thun1-1.png', '<p><strong>&Aacute;o T-shirt&nbsp;nam AAYS249-3&nbsp;</strong>được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ, tho&aacute;t ẩm nhanh. Sản phẩm co gi&atilde;n tốt, bề mặt vải kh&ocirc;ng nhăn,&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aays249-3.arhs043-19__1__b7962ca71b7a48099f5e86547f4824b6_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 2324, 340000, 10, 0, 1, 2, 8, NULL, '2022-12-08 05:48:59', NULL),
(107, 'Áo T-shirt nam ATSR653-1 Black Light', 15, 'thun2-1.png', '<p><strong>&Aacute;o&nbsp;nam ATSR653-1&nbsp;</strong>được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ, thấm h&uacute;t mồ h&ocirc;i. Sản phẩm c&oacute;&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p>Li-Ning ứng dụng c&ocirc;ng nghệ AT Dry ưu việt trong sản phẩm &aacute;o tập d&agrave;nh cho nam với khả năng thấm h&uacute;t mồ h&ocirc;i ở mặt trong, tho&aacute;t hơi n&oacute;ng ra mặt ngo&agrave;i đồng thời ngăn hấp thụ nhiệt từ m&ocirc;i trường, duy tr&igrave; cảm gi&aacute;c tho&aacute;ng kh&iacute;, m&aacute;t mẻ v&agrave; thoải m&aacute;i trong suốt thời gian tập luyện.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/atsr653-1__1__70660955235c4b87b536aaa3e7363952_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_smu_1363b4af372e42068a928efca79d2a75_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p><br />\r\nNăm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 3456, 380000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 17:47:48', NULL),
(108, 'Áo T-shirt nam ATSR649-2 Training LM', 15, 'thun3-1.png', '', 1234, 350000, 0, 0, 1, NULL, NULL, NULL, '2022-12-02 17:50:11', NULL),
(109, 'Áo T-Shirt nam AAYR197-1 Black yellow', 15, 'thun4-2.png', '<p><strong>&Aacute;o tập luyện Li-Ning nam&nbsp;AAYR197-1&nbsp;</strong>được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ, tho&aacute;t ẩm nhanh. Sản phẩm co gi&atilde;n tốt, bề mặt vải kh&ocirc;ng nhăn,&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aayr197-1b_ac2103936211456289b897a19a8120af_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 12, 320000, 30, 0, 1, NULL, NULL, NULL, '2022-12-02 17:53:42', NULL),
(110, 'Áo T-Shirt nam ATSR001-1 Li-Ning A', 15, 'thun5-1.png', '<p><strong>&Aacute;o thun thể thao nam Li-ning ATSR001-1</strong>&nbsp;được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ. Sản phẩm co gi&atilde;n tốt, bề mặt vải kh&ocirc;ng nhăn,&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/atsr001-1-a_cfc498f6c4c241be960dcc85c8eaf744_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p><br />\r\nNăm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 1234, 540000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 17:56:25', NULL),
(111, 'Áo T-Shirt nam ATSN049-5 Red Li-Ning', 15, 'thun6-1.png', '<p><strong>&Aacute;o thun thể thao nam Li-ning ATSN049-5</strong>&nbsp;được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ, tho&aacute;t ẩm nhanh. Sản phẩm co gi&atilde;n tốt, bề mặt vải kh&ocirc;ng nhăn,&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/atsn049-5_058560bd23b344be8efe3442b9e973ae_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_smu_fd072bbfef554fb3bb6a201ee36712d1_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p><br />\r\nNăm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 121, 230000, 0, 0, 1, NULL, NULL, NULL, '2022-12-08 11:22:19', NULL),
(112, 'Áo T-Shirt nam AAYS249-2 Blue Li-Ning', 15, 'thun7-1.png', '<p><strong>&Aacute;o T-shirt&nbsp;nam AAYS249-2&nbsp;</strong>được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ, tho&aacute;t ẩm nhanh. Sản phẩm co gi&atilde;n tốt, bề mặt vải kh&ocirc;ng nhăn,&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aays249-2.aaps045-2l.ayszs016-1__1__0983ca6f95544dbd9657676046c88abd_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 1235, 340000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 18:02:26', NULL),
(113, 'Áo T-Shirt nam ATSS555-2 White', 15, 'thun8-1.png', '<p><strong>&Aacute;o thun thể thao nam ATSS555-2</strong>&nbsp;được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ, tho&aacute;t ẩm nhanh. Sản phẩm co gi&atilde;n tốt, bề mặt vải kh&ocirc;ng nhăn,&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><strong>C&ocirc;ng nghệ AT-Dry&nbsp;</strong>l&agrave; giải ph&aacute;p &quot;m&aacute;t lạnh&quot; gi&uacute;p sản phẩm c&oacute; khả năng l&agrave;m kh&ocirc; nhanh v&agrave; l&agrave;m m&aacute;t, gi&uacute;p mồ h&ocirc;i bay hơi nhanh ch&oacute;ng, cho bạn cảm gi&aacute;c kh&ocirc; r&aacute;o v&agrave; thoải m&aacute;i. Đồng thời c&ocirc;ng nghệ n&agrave;y c&ograve;n hỗ trợ chống b&aacute;m bẩn, tr&aacute;nh gi&oacute;, nước v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/atss555-2-a_459c87ec0e624b9ea0b4c7a2368489f1_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p><br />\r\nNăm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 890, 345000, 15, 0, 1, NULL, NULL, NULL, '2022-12-02 18:06:20', NULL),
(114, 'Áo T-Shirt nam AAYS073-1 Red Black LN', 15, 'thun9-1.png', '<p><strong>&Aacute;o T-shirt&nbsp;nam AAYS073-1&nbsp;</strong>được may từ chất liệu vải thể thao chuy&ecirc;n dụng&nbsp;với nhiều ưu điểm như bề mặt mềm, nhẹ, tho&aacute;t ẩm nhanh. Sản phẩm co gi&atilde;n tốt, bề mặt vải kh&ocirc;ng nhăn,&nbsp;đường chỉ may tỉ mỉ, tinh tế. Bạn ho&agrave;n to&agrave;n&nbsp;c&oacute; thể diện &aacute;o&nbsp;khi tập luyện hoặc phối c&ugrave;ng trang phục h&agrave;ng ng&agrave;y. Kh&eacute;o l&eacute;o&nbsp;kết hợp chắc chắn bạn sẽ c&oacute; những set đồ&nbsp;khỏe khoắn v&agrave; c&aacute; t&iacute;nh.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aays073-1__1__1a2c9a949175482d866be671f8cef89b_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng chọn size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n', 1254, 390000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 18:10:35', NULL),
(115, 'Quần nỉ nam AKLR011-4 Black Li-Ning', 16, 'ni1-1.png', '<p>Quần nỉ thể thao Li-Ning&nbsp;l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu cho team đam m&ecirc; tập luyện hoặc y&ecirc;u th&iacute;ch phong c&aacute;ch năng động. Mỗi thiết kế&nbsp;Quần nỉ đều đề cao lựa chọn chất liệu th&ocirc;ng tho&aacute;ng, si&ecirc;u nhẹ, thấm h&uacute;t mồ h&ocirc;i cho giờ tập luyện th&ecirc;m hiệu quả. Đường may trang phục kh&ocirc;ng những phải cẩn thận, tỉ mỉ m&agrave; cần đảm bảo bền chắc, chịu&nbsp;lực co gi&atilde;n, đ&agrave;n hồi tốt. Quần nỉ thể thao cũng l&agrave; một gợi &yacute; set đồ l&yacute; tưởng mỗi khi đi d&atilde; ngoại, đi chơi hay hẹn h&ograve;.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aklr011-4-_3__413343b41d6f44bfa20e9629ea99a689_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng check size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 1200, 360000, 10, 0, 1, NULL, NULL, NULL, '2022-12-02 18:41:11', NULL),
(116, 'Quần nỉ nam AKLRF73-1 3 Light Gray', 16, 'ni2-1.png', '<p>Quần nỉ thể thao Li-Ning&nbsp;l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu cho team đam m&ecirc; tập luyện hoặc y&ecirc;u th&iacute;ch phong c&aacute;ch năng động. Mỗi thiết kế&nbsp;Quần nỉ đều đề cao lựa chọn chất liệu th&ocirc;ng tho&aacute;ng, si&ecirc;u nhẹ, thấm h&uacute;t mồ h&ocirc;i cho giờ tập luyện th&ecirc;m hiệu quả. Đường may trang phục kh&ocirc;ng những phải cẩn thận, tỉ mỉ m&agrave; cần đảm bảo bền chắc, chịu&nbsp;lực co gi&atilde;n, đ&agrave;n hồi tốt. Quần nỉ thể thao cũng l&agrave; một gợi &yacute; set đồ l&yacute; tưởng mỗi khi đi d&atilde; ngoại, đi chơi hay hẹn h&ograve;.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aklrf73-1__1__ee6db2bbd77d4327ba4473392c1baa4d_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng check size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_smu_2a980bd4498c4bcda80ae5d6897baef9_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 4345, 560000, 10, 0, 1, NULL, NULL, NULL, '2022-12-08 11:00:40', NULL),
(117, 'Quần nỉ nam AKLRF73-3 Li-Ning White', 16, 'ni3-4.png', '<p>Quần nỉ thể thao Li-Ning&nbsp;l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu cho team đam m&ecirc; tập luyện hoặc y&ecirc;u th&iacute;ch phong c&aacute;ch năng động. Mỗi thiết kế&nbsp;Quần nỉ đều đề cao lựa chọn chất liệu th&ocirc;ng tho&aacute;ng, si&ecirc;u nhẹ, thấm h&uacute;t mồ h&ocirc;i cho giờ tập luyện th&ecirc;m hiệu quả. Đường may trang phục kh&ocirc;ng những phải cẩn thận, tỉ mỉ m&agrave; cần đảm bảo bền chắc, chịu&nbsp;lực co gi&atilde;n, đ&agrave;n hồi tốt. Quần nỉ thể thao cũng l&agrave; một gợi &yacute; set đồ l&yacute; tưởng mỗi khi đi d&atilde; ngoại, đi chơi hay hẹn h&ograve;.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aklrf73-3__1__782d2f1fd7c94fc996b3e708f4a47122_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng check size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_smu_2a980bd4498c4bcda80ae5d6897baef9_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 456, 760000, 20, 0, 1, NULL, NULL, NULL, '2022-12-03 09:46:13', NULL),
(118, 'Quần nỉ nam AKLS015-1 Li-Ning Black', 16, 'ni4-1.png', '<p>Quần nỉ thể thao Li-Ning&nbsp;l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu cho team đam m&ecirc; tập luyện hoặc y&ecirc;u th&iacute;ch phong c&aacute;ch năng động. Mỗi thiết kế&nbsp;Quần nỉ đều đề cao lựa chọn chất liệu th&ocirc;ng tho&aacute;ng, si&ecirc;u nhẹ, thấm h&uacute;t mồ h&ocirc;i cho giờ tập luyện th&ecirc;m hiệu quả. Đường may trang phục kh&ocirc;ng những phải cẩn thận, tỉ mỉ m&agrave; cần đảm bảo bền chắc, chịu&nbsp;lực co gi&atilde;n, đ&agrave;n hồi tốt. Quần nỉ thể thao cũng l&agrave; một gợi &yacute; set đồ l&yacute; tưởng mỗi khi đi d&atilde; ngoại, đi chơi hay hẹn h&ograve;.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/akls015-1__5__86674117938e4790a723695f544cfe31_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng check size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_fecac0b17b3e49a0b4d91f129cd93224_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 453, 810000, 10, 0, 1, NULL, NULL, NULL, '2022-12-03 09:46:04', NULL),
(119, 'Quần nỉ nam AKLS093-6 Gray Light', 16, 'ni5-1.png', '<p>Quần nỉ thể thao Li-Ning là món đồ không thể thiếu cho team đam mê tập luyện hoặc yêu thích phong cách năng động. Mỗi thiết kế Quần nỉ đều đề cao lựa chọn chất liệu thông thoáng, siêu nhẹ, thấm hút mồ hôi cho giờ tập luyện thêm hiệu quả. Đường may trang phục không những phải cẩn thận, tỉ mỉ mà cần đảm bảo bền chắc, chịu lực co giãn, đàn hồi tốt. Quần nỉ thể thao cũng là một gợi ý set đồ lý tưởng mỗi khi đi dã ngoại, đi chơi hay hẹn hò. </p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/akls093-6-a_625204f6328c4226919798b1ec67a14f_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng check size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_7ad2bd31f018491fbb311bd2b22ea803_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p> </p>\r\n\r\n<p>        Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>        Không sử dụng chất tẩy</p>\r\n\r\n<p>        Tránh phơi trực tiếp dưới ánh nắng gắt</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Thông tin thương hiệu</strong></p>\r\n\r\n<p> </p>\r\n\r\n<p>Năm 1990, tập đoàn sản xuất dụng cụ thể thao Li-ning Sports được thành lập bởi Li Ning - một trong những vận động viên xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu này đã nằm trong top những hãng thời trang thể thao hàng đầu thế giới. Hiện nay, với nỗ lực sáng tạo và đổi mới, Li-ning điều hành một “Trung tâm sáng tạo toàn cầu” tại Hongkong, là trung tâm thiết kế sản phẩm lớn nhất tại Châu Á nơi tập trung hàng trăm nhà thiết kế chuyên nghiệp đến từ Italia, Tây Ban Nha, Mỹ… Với khẩu hiệu “Make the change”, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong cách phù hợp từng môn thể thao và hoàn cảnh sử dụng. </p>\r\n', 543, 540000, 10, 0, 1, NULL, NULL, NULL, '2022-12-08 14:53:07', NULL),
(120, 'Quần nỉ nam AKLR315-2 Li-Ning POM', 16, 'ni6-1.png', '<p>Quần nỉ thể thao Li-Ning&nbsp;l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu cho team đam m&ecirc; tập luyện hoặc y&ecirc;u th&iacute;ch phong c&aacute;ch năng động. Mỗi thiết kế&nbsp;Quần nỉ đều đề cao lựa chọn chất liệu th&ocirc;ng tho&aacute;ng, si&ecirc;u nhẹ, thấm h&uacute;t mồ h&ocirc;i cho giờ tập luyện th&ecirc;m hiệu quả. Đường may trang phục kh&ocirc;ng những phải cẩn thận, tỉ mỉ m&agrave; cần đảm bảo bền chắc, chịu&nbsp;lực co gi&atilde;n, đ&agrave;n hồi tốt. Quần nỉ thể thao cũng l&agrave; một gợi &yacute; set đồ l&yacute; tưởng mỗi khi đi d&atilde; ngoại, đi chơi hay hẹn h&ograve;.&nbsp;</p>\r\n\r\n<p>C&ocirc;ng nghệ AT Proof Smart gi&uacute;p bề mặt vải c&oacute; khả năng chắn gi&oacute; v&agrave; chống nước, giữ cho cơ thể lu&ocirc;n kh&ocirc; r&aacute;o, ấm &aacute;p trong điều kiện thời tiết nhiều gi&oacute; v&agrave; mưa ph&ugrave;n.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aklr315-2__1__5124b981f5b741c3aef6eb82f6e25c4d_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng check size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_a7ae35f64ca247e6bee83020d535e895_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 2350, 540000, 10, 0, 1, NULL, NULL, NULL, '2022-12-08 15:38:24', NULL);
INSERT INTO `products` (`id`, `name`, `category_id`, `avatar`, `description`, `quantity`, `price`, `discount`, `status`, `hot_product`, `comment_total`, `rating_total`, `amount_views`, `created_at`, `updated_at`) VALUES
(126, 'Quần nỉ nam AKLSB85-1 Li-Ning co dãn', 16, 'nisp1.png', '<p>Quần nỉ thể thao Li-Ning&nbsp;l&agrave; m&oacute;n đồ kh&ocirc;ng thể thiếu cho team đam m&ecirc; tập luyện hoặc y&ecirc;u th&iacute;ch phong c&aacute;ch năng động. Mỗi thiết kế&nbsp;Quần nỉ đều đề cao lựa chọn chất liệu th&ocirc;ng tho&aacute;ng, si&ecirc;u nhẹ, thấm h&uacute;t mồ h&ocirc;i cho giờ tập luyện th&ecirc;m hiệu quả. Đường may trang phục kh&ocirc;ng những phải cẩn thận, tỉ mỉ m&agrave; cần đảm bảo bền chắc, chịu&nbsp;lực co gi&atilde;n, đ&agrave;n hồi tốt. Quần nỉ thể thao cũng l&agrave; một gợi &yacute; set đồ l&yacute; tưởng mỗi khi đi d&atilde; ngoại, đi chơi hay hẹn h&ograve;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/aklsb85-1__3__bd440abee0444d13973b986407a471df_grande.jpg\" /></p>\r\n\r\n<p><strong>Bảng check size cỡ</strong></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000312752/file/sz_main_b01b9b34b7bf48839ce7cb31633f9feb_grande.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giặt sạch vết bẩn ở nhiệt độ thường</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kh&ocirc;ng sử dụng chất tẩy</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng gắt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin thương hi&ecirc;̣u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 1990, tập đo&agrave;n sản xuất dụng cụ thể thao Li-ning Sports được th&agrave;nh lập bởi Li Ning - một trong những vận động vi&ecirc;n xuất sắc nhất thế kỷ 20. Chưa đầy 20 năm sau, thương hiệu n&agrave;y đ&atilde; nằm trong top những h&atilde;ng thời trang thể thao h&agrave;ng đầu thế giới. Hiện nay, với nỗ lực s&aacute;ng tạo v&agrave; đổi mới, Li-ning điều h&agrave;nh một&nbsp;&ldquo;Trung t&acirc;m s&aacute;ng tạo to&agrave;n cầu&rdquo;&nbsp;tại Hongkong, l&agrave; trung t&acirc;m thiết kế sản phẩm lớn nhất tại Ch&acirc;u &Aacute; nơi tập trung h&agrave;ng trăm nh&agrave; thiết kế chuy&ecirc;n nghiệp đến từ Italia, T&acirc;y Ban Nha, Mỹ&hellip; Với khẩu hiệu&nbsp;&ldquo;Make the change&rdquo;, Li-ning tự tin mang đến những sản phẩm ưu việt, thiết kế phong c&aacute;ch ph&ugrave; hợp từng m&ocirc;n thể thao v&agrave; ho&agrave;n cảnh sử dụng.&nbsp;</p>\r\n', 782, 450000, 10, 0, 1, NULL, NULL, NULL, '2022-12-08 15:38:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `images` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `images`) VALUES
(257, 91, '1669992959-sp1-clone2.png'),
(258, 91, '1669992959-sp1-clone3.png'),
(259, 91, '1669992959-sp1-clone4.png'),
(260, 91, '1669992959-sp1-clone5.png'),
(261, 91, '1669992959-sp1-main.png'),
(267, 92, '1669997319-1.png'),
(268, 92, '1669997319-2.png'),
(269, 92, '1669997319-3.png'),
(270, 92, '1669997319-4.png'),
(271, 92, '1669997319-5.png'),
(272, 93, 'sp3-1.png'),
(273, 93, 'sp3-2.png'),
(274, 93, 'sp3-3.png'),
(275, 93, 'sp3-4.png'),
(276, 93, 'sp3-5.png'),
(277, 94, 'sp4-1.png'),
(278, 94, 'sp4-2.png'),
(279, 94, 'sp4-3.png'),
(280, 94, 'sp4-4.png'),
(281, 94, 'sp4-5.png'),
(282, 95, 'sp5-1.png'),
(283, 95, 'sp5-2.png'),
(284, 95, 'sp5-3.png'),
(285, 95, 'sp5-4.png'),
(286, 95, 'sp5-5.png'),
(287, 96, 'sp6-1.png'),
(288, 96, 'sp6-2.png'),
(289, 96, 'sp6-3.png'),
(290, 96, 'sp6-4.png'),
(291, 96, 'sp6-5.png'),
(292, 97, 'sp7-1.png'),
(293, 97, 'sp7-2.png'),
(294, 97, 'sp7-3.png'),
(295, 97, 'sp7-4.png'),
(296, 97, 'sp7-5.png'),
(297, 98, 'sp8-1.png'),
(298, 98, 'sp8-2.png'),
(299, 98, 'sp8-3.png'),
(300, 98, 'sp8-4.png'),
(301, 98, 'sp8-5.png'),
(302, 99, 'cl1-1.png'),
(303, 99, 'cl1-2.png'),
(304, 99, 'cl1-3.png'),
(305, 99, 'cl1-4.png'),
(306, 99, 'cl1-5.png'),
(307, 100, 'cl2-1.png'),
(308, 100, 'cl2-2.png'),
(309, 100, 'cl2-3.png'),
(310, 100, 'cl2-4.png'),
(311, 100, 'cl2-5.png'),
(312, 101, 'cl3-1.png'),
(313, 101, 'cl3-2.png'),
(314, 101, 'cl3-3.png'),
(315, 101, 'cl3-4.png'),
(316, 101, 'cl3-5.png'),
(317, 102, 'cl4-1.png'),
(318, 102, 'cl4-2.png'),
(319, 102, 'cl4-3.png'),
(320, 102, 'cl4-4.png'),
(321, 102, 'cl4-5.png'),
(322, 103, 'cl5-1.png'),
(323, 103, 'cl5-2.png'),
(324, 103, 'cl5-3.png'),
(325, 103, 'cl5-4.png'),
(326, 103, 'cl5-5.png'),
(327, 104, 'cl6-1.png'),
(328, 104, 'cl6-2.png'),
(329, 104, 'cl6-3.png'),
(330, 104, 'cl6-4.png'),
(331, 104, 'cl6-5.png'),
(332, 104, 'cl6-6.png'),
(333, 104, 'cl6-7.png'),
(334, 104, 'cl6-8.png'),
(335, 105, 'cl7-1.png'),
(336, 105, 'cl7-2.png'),
(337, 105, 'cl7-3.png'),
(338, 105, 'cl7-4.png'),
(339, 105, 'cl7-5.png'),
(340, 105, 'cl7-6.png'),
(341, 106, 'thun1-1.png'),
(342, 106, 'thun1-2.png'),
(343, 106, 'thun1-3.png'),
(344, 107, 'thun2-1.png'),
(345, 107, 'thun2-2.png'),
(346, 107, 'thun2-3.png'),
(347, 107, 'thun2-4.png'),
(348, 108, 'thun3-1.png'),
(349, 108, 'thun3-2.png'),
(350, 108, 'thun3-3.png'),
(351, 109, 'thun4-1.png'),
(352, 109, 'thun4-2.png'),
(353, 109, 'thun4-3.png'),
(354, 109, 'thun4-4.png'),
(355, 110, 'thun5-1.png'),
(356, 110, 'thun5-2.png'),
(357, 110, 'thun5-3.png'),
(358, 110, 'thun5-4.png'),
(359, 111, 'thun6-1.png'),
(360, 111, 'thun6-2.png'),
(361, 111, 'thun6-3.png'),
(362, 111, 'thun6-4.png'),
(363, 112, 'thun7-1.png'),
(364, 112, 'thun7-2.png'),
(365, 112, 'thun7-3.png'),
(366, 112, 'thun7-4.png'),
(367, 113, 'thun8-1.png'),
(368, 113, 'thun8-2.png'),
(369, 113, 'thun8-3.png'),
(370, 113, 'thun8-4.png'),
(371, 113, 'thun8-5.png'),
(372, 113, 'thun8-6.png'),
(373, 114, 'thun9-1.png'),
(374, 114, 'thun9-2.png'),
(375, 114, 'thun9-3.png'),
(376, 114, 'thun9-4.png'),
(377, 115, 'ni1-1.png'),
(378, 115, 'ni1-2.png'),
(379, 115, 'ni1-3.png'),
(380, 115, 'ni1-4.png'),
(381, 116, 'ni2-1.png'),
(382, 116, 'ni2-2.png'),
(383, 116, 'ni2-3.png'),
(384, 116, 'ni2-4.png'),
(385, 117, 'ni3-4.png'),
(386, 117, 'ni3-5.png'),
(387, 117, 'ni3-6.png'),
(388, 117, 'ni3-7.png'),
(389, 118, 'ni4-1.png'),
(390, 118, 'ni4-2.png'),
(391, 118, 'ni4-3.png'),
(392, 118, 'ni4-4.png'),
(393, 118, 'ni4-5.png'),
(394, 119, 'ni5-1.png'),
(395, 119, 'ni5-2.png'),
(396, 119, 'ni5-3.png'),
(397, 119, 'ni5-4.png'),
(398, 119, 'ni5-5.png'),
(399, 119, 'ni5-6.png'),
(400, 119, 'ni5-7.png'),
(401, 119, 'ni5-8.png'),
(402, 120, 'ni6-1.png'),
(403, 120, 'ni6-2.png'),
(404, 120, 'ni6-3.png'),
(405, 120, 'ni6-4.png'),
(418, 126, 'nisp1.png'),
(419, 126, 'nisp2.png'),
(420, 126, 'nisp3.png'),
(421, 126, 'nisp4.png'),
(422, 126, 'nisp5.png'),
(423, 126, 'nisp6.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `unspecified_orders_detail`
--

CREATE TABLE `unspecified_orders_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_product` int(11) NOT NULL,
  `size` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `unspecified_orders_detail`
--

INSERT INTO `unspecified_orders_detail` (`id`, `order_id`, `product_id`, `quantity`, `price_product`, `size`) VALUES
(34, 83, 128, 2, 12, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `unspecified_products`
--

CREATE TABLE `unspecified_products` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `name_product` varchar(199) DEFAULT NULL,
  `avatar` varchar(199) DEFAULT NULL,
  `price_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `unspecified_products`
--

INSERT INTO `unspecified_products` (`id`, `id_product`, `name_product`, `avatar`, `price_product`, `id_category`) VALUES
(62, 127, 'sádasdasd', 'anh1.jpg', 120, 20),
(63, 128, 'kiều xinh gái', '.....png', 12, 20),
(64, 129, 'dfafdfsdf', '52f32ee7819944c71d88.jpg', 1, 16),
(65, 131, '1', 'anh1.jpg', 1, 16),
(66, 130, 'dd', '52f32ee7819944c71d88.jpg', 1, 16),
(67, 132, 'a', '.... - Copy.png', 1, 16),
(68, 135, 'rrrr', 'bai3.jpg', 6, 15),
(69, 134, '2222', 'anhlonhon2mb.png', 2, 14),
(70, 133, '2', 'anh1.jpg', 2, 16),
(71, 137, 'dđ', '52f32ee7819944c71d88.jpg', 2, 16),
(72, 136, 'đ', '3.jpg', 1, 16),
(73, 139, 'd', '3.jpg', 3, 15),
(74, 138, 'sss', 'anh1.jpg', 1, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(199) DEFAULT NULL,
  `email` varchar(199) DEFAULT NULL,
  `password` varchar(399) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(199) DEFAULT NULL,
  `image` varchar(199) DEFAULT NULL,
  `role` tinyint(2) NOT NULL,
  `status` varchar(199) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `image`, `role`, `status`, `created_at`) VALUES
(16, 'Hoàng Tuấn', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0868894724', 'Nam định', 'z2865098634298_f81f6c237617a253049c3463fe38351d.jpg', 1, '0', '2022-12-06 15:53:20'),
(17, 'trung kieu', 'admin2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '0', '2022-12-05 06:07:01'),
(24, 'nam', '', NULL, '0326514789', 'Hà Nội', NULL, 3, '3', '2022-12-03 13:12:39'),
(25, 'Ba', '123@gmail.com', NULL, '0632145987', 'Hà Nội', NULL, 3, '3', '2022-12-05 05:56:49'),
(26, 'tuan', 'admin23@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0968354123', 'Hà Nam', 'anh1.jpg', 0, '0', '2022-12-08 08:34:56'),
(27, 'tuan', 'tuan@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0123456789', 'á đù vãi cả', 'anhlonhon2mb.png', 0, '0', '2022-12-06 06:29:07'),
(28, '', '', NULL, '', '', NULL, 3, '3', '2022-12-08 11:20:56'),
(29, 'hung quang trieu', 'hung1234@gmail.com', NULL, '0986889575', 'Nam định', NULL, 3, '3', '2022-12-08 15:11:06'),
(30, 'Hoàng Mạnh Tú', 'tu@gmail.com', NULL, '0321456987', 'Hà Nội', NULL, 3, '3', '2022-12-08 15:20:52'),
(31, 'Long', 'longnert@gmail.com', NULL, '0321465987', 'Khánh Hòa', NULL, 3, '3', '2022-12-08 15:32:47'),
(32, '', '', NULL, '', '', NULL, 3, '3', '2022-12-08 15:44:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments_product`
--
ALTER TABLE `comments_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_id_cm` (`product_id`),
  ADD KEY `FK_user_id_cm` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_id_ord` (`user_id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_order_id_ord` (`order_id`),
  ADD KEY `FK_product_id_ordetail` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_categories` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_images` (`product_id`);

--
-- Chỉ mục cho bảng `unspecified_orders_detail`
--
ALTER TABLE `unspecified_orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `unspecified_products`
--
ALTER TABLE `unspecified_products`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments_product`
--
ALTER TABLE `comments_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT cho bảng `unspecified_orders_detail`
--
ALTER TABLE `unspecified_orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `unspecified_products`
--
ALTER TABLE `unspecified_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments_product`
--
ALTER TABLE `comments_product`
  ADD CONSTRAINT `FK_product_id_cm` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK_user_id_cm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_user_id_ord` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_order_id_ord` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK_product_id_ordetail` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_id_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `FK_product_images` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
