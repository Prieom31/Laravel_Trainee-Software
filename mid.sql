-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 03:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mid`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL DEFAULT '1999-11-03',
  `picture` text NOT NULL DEFAULT 'user.jpg',
  `mobile` varchar(15) DEFAULT '01797910423'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `gender`, `dob`, `picture`, `mobile`) VALUES
(1, 'Farabi Shahriar', 'farabi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'male', '1999-11-03', 'user.jpg', '01797910423'),
(2, 'Fahim', 'fahim@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'male', '1999-11-03', 'user.jpg', '01797910423'),
(3, 'Laboni', 'laboni@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'female', '1999-11-03', 'user.jpg', '01797910423'),
(4, 'Huraiya', 'huraiya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'female', '1999-11-03', 'user.jpg', '01797910423'),
(5, 'Fahad Hossain', 'fahad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'male', '1999-11-03', 'user.jpg', '01797910423'),
(6, 'Tusi', 'tusi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'female', '1999-11-03', 'user.jpg', '01797910423'),
(10, 'Far Shahriar', 'farabi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'male', '1999-11-03', 'user.png', '01797910423');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `p_id`, `c_id`) VALUES
(1, 15, 1),
(2, 15, 2),
(3, 15, 3),
(4, 15, 4),
(5, 16, 1),
(6, 16, 5),
(7, 17, 2),
(8, 17, 4),
(9, 18, 5),
(10, 19, 6),
(11, 20, 6),
(12, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `p_category` varchar(50) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_price` varchar(50) NOT NULL,
  `p_quantity` varchar(50) NOT NULL,
  `p_picture` text NOT NULL,
  `s_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_category`, `p_name`, `p_price`, `p_quantity`, `p_picture`, `s_id`) VALUES
(4, 'Cooking', 'Miniket Rice', 'Tk.1309 (25 kg)', '1000', 'Miniket Rice.jpg', 17),
(10, 'Cooking', 'Miniket Rice', 'Tk.1309 (25 kg)', '1000', 'Miniket Rice.jpg', 1),
(14, 'Meat & Fish', 'Broiler Chicken', '259', '120', 'Broiler Chicken.jpeg', 1),
(15, 'Fruits & Vegetables', 'Banana', '10', '1000', 'banana.jpg', 1),
(16, 'Fruits & Vegetables', 'Green Coconut', '75', '1000', 'Green Coconut.jpg', 1),
(17, 'Beverages', 'Coca-Cola', '40', '500', 'Coca-Cola.jpg', 1),
(18, 'Beverages', 'Brooke Bond Taaza Black Tea', '100', '77', 'Brooke Bond Taaza Black Tea.jpg', 2),
(19, 'Beverages', 'Ispahani Mirzapore Best Leaf Tea', '190', '120', 'Ispahani Mirzapore Best Leaf Tea.jpg', 2),
(20, 'Beverages', 'Kazi & Kazi Green Tea 60 gm', '170', '55', 'Kazi & Kazi Green Tea 60 gm.jpg', 2),
(21, 'Beverages', 'Nestea Iced Tea Lemon', '345', '45', 'Nestea Iced Tea Lemon.jpg', 2),
(22, 'Beverages', 'Coca-Cola', '40', '1000', 'Coca-Cola.jpg', 2),
(23, 'Beverages', 'Mountain Dew', '50', '1000', 'Mountain Dew.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop_registrations`
--

CREATE TABLE `shop_registrations` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `shop_name` varchar(50) NOT NULL,
  `shop_address` varchar(100) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_registrations`
--

INSERT INTO `shop_registrations` (`id`, `email`, `name`, `password`, `phone`, `shop_name`, `shop_address`, `picture`) VALUES
(2, 'fahad@gmail.com', 'Fahad Hossain', 'e10adc3949ba59abbe56e057f20f883e', '01911385896', 'fahad glow', 'Block d, Road 04, House 155, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(3, 'fahad76@gmail.com', 'Fahad', 'e10adc3949ba59abbe56e057f20f883e', '01522385896', 'fahad gallery', 'Block c, Road 05, House 245, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(4, 'fahad766@gmail.com', 'Fahad Hasan', 'e10adc3949ba59abbe56e057f20f883e', '01522385896', 'fahad gallery', 'Block c, Road 05, House 245, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(5, 'hossainfahad6@gmail.com', 'Md. Fahad Hossain', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'fahad', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(6, 'laboni@gmail.com', 'Laboni', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'fahad shop', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(7, 'huraiya@gmail.com', 'HURAIYA AFROSE', '2f6574067cb8ee464234272540780ceb', '01773427013', 'huraiya gloc', 'Block C, Road 06, House 136, Bashundhara R/A, Dhaka, Bangladesh', 'Md. Fahad Hossain, Strategic Member.jpg'),
(8, 'huraiya123456@gmail.com', 'Huraiya Afrose', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'fahad glow', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(9, 'myeem@gmail.com', 'Myeem', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'myeem\'s', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(10, 'topu@gmail.com', 'Topu', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'fahad glow', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(11, 'topuhasan@gmail.com', 'Topu Hasan', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'tope gallary', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(12, 'shafin@gmail.com', 'Shafin', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'shafin shop', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(13, 'mehjabin@gmail.com', 'Mehjabin', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'mehjabin shop', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(14, 'toma76@gmail.com', 'Toma', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'toma shop', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(15, 'sanjida@gmail.com', 'Sanjida', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'sanjida\'s gallery', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(16, 'fatema@gmail.com', 'Fatema', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'fatema glow', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(17, 'tozammel@gmail.com', 'Md. Tozammel Hoque', 'e35cf7b66449df565f93c607d5a81d09', '0171603666', 'tozammel gallery', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(18, 'shovon@gmail.com', 'Shovon', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'Shovon glow', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(19, 'laboni76@gmail.com', 'Laboni', '2f6574067cb8ee464234272540780ceb', '01773427013', 'Laboni Grocery', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', '6fynssping571.jpg'),
(20, 'fah@gmail.com', 'Fahad Hossain', 'e10adc3949ba59abbe56e057f20f883e', '01911385896', 'fahad glow', 'Block d, Road 04, House 155, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(21, 'lolo@gmail.com', 'LOLO', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'LOLOGAL', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(22, 'lolo123@gmail.com', 'LOLO', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'LOLOGAL', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(23, 'dhus@gmail.com', 'Dhus', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'Dhus ss', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(36, 'dhus@gmail.com', 'Dhus', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'Dhus ss', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png'),
(37, 'hossainfahad76@gmail.com', 'Md. Fahad Hossain', 'e10adc3949ba59abbe56e057f20f883e', '01797910423', 'fahad ss', 'Block F, Road 02, House 235, Bashundhara R/A, Dhaka, Bangladesh', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_registrations`
--
ALTER TABLE `shop_registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shop_registrations`
--
ALTER TABLE `shop_registrations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
