-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 06:41 PM
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
-- Database: `webbanquanao`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE DATABASE webbanquanao;
USE webbanquanao;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `total_price`) VALUES
(0, 0),
(1, 500000),
(2, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(50) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `cart_id`, `password`, `fullname`, `phone`, `address`) VALUES
('admin', 0, '$2a$10$utEVZWEeGmjZzaWZqv4CI.e73uIF3/LC.b2r2o2iJ/HnP6/3H6.pG', '', '', ''),
('nguyenvana', 1, '$2a$10$u3AL7eyp4gqqy61eH7Yx9eJx0ykz5xW7N.nHkgRdkyCyaO6cV/CoK', 'Nguyễn Văn A', '0909000000', 'Hà Nội'),
('nguyenvanb', 2, '$2a$10$zAcmnqKkM1ist0wZ8r9AIuXgMWJsz8lWUprGZ3wAdcwgaYHAkvbYq', 'Nguyễn Văn B', '0909000111', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `username`, `total_price`, `date`, `status`) VALUES
('21112023000000', 'nguyenvana', 100000, '21/11/2023 00:00:00', 'Hoàn thành'),
('21112023111111', 'nguyenvanb', 200000, '21/11/2023 11:11:11', 'Hoàn thành');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `catalog` varchar(50) NOT NULL,
  `deleted` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `color`, `description`, `price`, `image`, `brand`, `catalog`, `deleted`, `quantity`) VALUES
(1, 'Áo thun mẫu 1', 'Nâu', 'Áo thun thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo thun của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 100000, 'tshirt1.jpg', 'Yame', 'Áo thun', 0, 10),
(2, 'Áo thun mẫu 2', 'Xám', 'Áo thun thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo thun của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 200000, 'tshirt2.jpg', 'Yame', 'Áo thun', 0, 10),
(3, 'Áo thun mẫu 3', 'Đen', 'Áo thun thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo thun của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 300000, 'tshirt3.jpg', 'Yame', 'Áo thun', 0, 10),
(4, 'Áo khoác mẫu 1', 'Đen', 'Áo khoác thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo khoác của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 100000, 'coat1.jpg', 'Yame', 'Áo khoác', 0, 10),
(5, 'Áo khoác mẫu 2', 'Xanh', 'Áo khoác thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo khoác của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 200000, 'coat2.jpg', 'Yame', 'Áo khoác', 0, 10),
(6, 'Áo khoác mẫu 3', 'Rêu', 'Áo khoác thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo khoác của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 300000, 'coat3.jpg', 'Yame', 'Áo khoác', 0, 10),
(7, 'Áo sơ mi mẫu 1', 'Xám', 'Áo sơ mi thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo sơ mi của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 100000, 'shirt1.jpg', 'Yame', 'Áo sơ mi', 0, 10),
(8, 'Áo sơ mi mẫu 2', 'Trắng', 'Áo sơ mi thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo sơ mi của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 200000, 'shirt2.jpg', 'Yame', 'Áo sơ mi', 0, 10),
(9, 'Áo sơ mi mẫu 3', 'Ghi', 'Áo sơ mi thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, áo sơ mi của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 300000, 'shirt3.jpg', 'Yame', 'Áo sơ mi', 0, 10),
(10, 'Quần jean mẫu 1', 'Đen', 'Quần jean thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần jean của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 100000, 'jean1.jpg', 'Yame', 'Quần jean', 0, 10),
(11, 'Quần jean mẫu 2', 'Xanh', 'Quần jean thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần jean của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 200000, 'jean2.jpg', 'Yame', 'Quần jean', 0, 10),
(12, 'Quần jean mẫu 3', 'Xanh', 'Quần jean thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần jean của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 300000, 'jean3.jpg', 'Yame', 'Quần jean', 0, 10),
(13, 'Quần kaki mẫu 1', 'Đen', 'Quần kaki thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần kaki của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 100000, 'kaki1.jpg', 'Yame', 'Quần kaki', 0, 10),
(14, 'Quần kaki mẫu 2', 'Xám', 'Quần kaki thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần kaki của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 200000, 'kaki2.jpg', 'Yame', 'Quần kaki', 0, 10),
(15, 'Quần kaki mẫu 3', 'Đen', 'Quần kaki thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần kaki của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 300000, 'kaki3.jpg', 'Yame', 'Quần kaki', 0, 10),
(16, 'Quần short mẫu 1', 'Nâu', 'Quần short thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần short của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 100000, 'short1.jpg', 'Yame', 'Quần short', 0, 10),
(17, 'Quần short mẫu 2', 'Xám', 'Quần short thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần short của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 200000, 'short2.jpg', 'Yame', 'Quần short', 0, 10),
(18, 'Quần short mẫu 3', 'Trắng', 'Quần short thoáng khí và thoải mái, với chất liệu cotton mềm mại. Thiết kế đơn giản nhưng thời trang, Quần short của chúng tôi là sự kết hợp hoàn hảo giữa phong cách và sự thoải mái', 300000, 'short3.jpg', 'Yame', 'Quần short', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `productcart`
--

CREATE TABLE `productcart` (
  `product_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productcart`
--

INSERT INTO `productcart` (`product_id`, `cart_id`, `size`, `quantity`) VALUES
(1, 1, 'XXL', 1),
(1, 2, 'XXL', 1),
(2, 1, 'M', 1),
(2, 2, 'M', 1),
(5, 2, 'XL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `productorder`
--

CREATE TABLE `productorder` (
  `product_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productorder`
--

INSERT INTO `productorder` (`product_id`, `order_id`, `size`, `quantity`) VALUES
(1, '21112023000000', 'M', 1),
(2, '21112023111111', 'M', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcart`
--
ALTER TABLE `productcart`
  ADD PRIMARY KEY (`product_id`,`cart_id`,`size`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `productorder`
--
ALTER TABLE `productorder`
  ADD PRIMARY KEY (`product_id`,`order_id`,`size`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`username`);

--
-- Constraints for table `productcart`
--
ALTER TABLE `productcart`
  ADD CONSTRAINT `productcart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `productcart_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);

--
-- Constraints for table `productorder`
--
ALTER TABLE `productorder`
  ADD CONSTRAINT `productorder_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `productorder_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
