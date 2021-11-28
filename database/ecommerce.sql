-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 07:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Aatif Nayeem', 'nayeemaatif123@gmail.com', 'Aatif1234'),
(3, 'Amreen Jahan', 'jahanamreen321@gmail.com', 'Amreen4321');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(164, 1, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Cbse'),
(2, 'Entrance Book'),
(3, 'Comics'),
(4, 'Novel'),
(5, 'Higher Education');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(2, 26, 'Aatif Nayeem', 'abbdsdcn@gmail.com', 'cpr', 'cpr', 'bhr', 841301, 'Aatif', '9876456312340987', '10/28', 1, 3500, 0),
(3, 26, 'Aatif Nayeem', 'abbdsdcn@gmail.com', 'Chhota Telpa', 'Chhapra', 'Bihar', 841301, 'Aatif', '2345678909872345', '10/21', 1, 3500, 123),
(4, 26, 'Aatif Nayeem', 'abbdsdcn@gmail.com', 'Chhota Telpa', 'Chhapra', 'Bihar', 841301, 'Aatif', '2540456321854896', '10/25', 2, 3899, 123),
(6, 27, 'Aatif Nayeem', 'aatifnayeem3@gmail.com', 'Chhota Telpa', 'Chhapra', 'Bihar', 841301, 'Aatif', '5412 3652 9856 7854', '10/28', 1, 399, 123),
(7, 27, 'Aatif Nayeem', 'aatifnayeem3@gmail.com', 'Chhota Telpa', 'Chhapra', 'Bihar', 841301, 'Aatif', '5412 6523 9856 7854', '12/28', 1, 399, 123);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_publisher` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_old_price` int(100) NOT NULL,
  `product_image` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_publisher`, `product_title`, `product_price`, `product_old_price`, `product_image`, `product_desc`, `product_keywords`) VALUES
(1, 1, 5, 'Beehive-9', 69, 99, '1621365461_beehive_english_9.jpg', 'a textbook of english for class 9 students', 'beehive-english-9'),
(2, 1, 5, 'moments-9', 33, 52, '1621365569_moments_english_9.jpg', 'a textbook of english for class 9 students', 'moments-english-9'),
(3, 1, 5, 'Democratic Politics - I', 103, 135, '1621365738_civics_9.jpg', 'a textbook of democratic politics(civics) for class 9 student', 'civics-9'),
(4, 1, 5, 'Economics - 9', 50, 65, '1621365844_economics_9.jpg', 'a textbook of economics for class 9 students', 'economics-9'),
(5, 1, 5, 'Contemporary India - I', 51, 67, '1621365923_geography_9.jpg', 'a textbook of Contemporary India - I (geography) for class 9 students', 'geography-9'),
(6, 1, 5, 'India and the Contemporary World - I', 114, 148, '1621366008_history_9.jpg', 'a textbook of India and the Contemporary World - I (history) for class 9 students', 'history-9'),
(7, 1, 5, 'Mathematics - 9', 119, 152, '1621366080_maths_9.jpg', 'a textbook of mathematics for class 9 students', 'maths-9'),
(8, 1, 5, 'Science - 9', 113, 147, '1621366132_science_9.jpg', 'a textbook of science for class 9 students', 'science-9'),
(16, 2, 2, 'BITSAT Prep Guide', 543, 699, '1621406209_bitsat_arihant.jpg', 'an entrance preparation book for Bits ', 'bitsat_arihant'),
(17, 2, 2, 'Computer Awareness', 135, 170, '1621406357_computerawarenes_sarihant.jpg', 'a book for awaring people towards computer', 'computerawareness_arihant'),
(18, 2, 2, 'General Nursing', 342, 450, '1621406518_generalnursing_arihant.jpg', 'a general nursing book for B.Sc nrsing student', 'generalnursing_arihant'),
(19, 2, 2, 'General Knowledge 2021', 195, 275, '1621406632_gk2021_arihant.jpeg', 'latest general knowledge book (2021)', 'gk2021_arihant'),
(20, 2, 2, 'IAS Mains 2020~1997', 305, 450, '1621406704_iasmains_arihant.jpeg', 'a entrance preparation book for ias mains and upsc students', 'iasmains_arihant'),
(21, 2, 1, 'IIT Foundation class - VII', 325, 410, '1621406785_iitfoundation8_chand.jpg', 'a book for IIT preparation for class 8 students', 'iitfoundation8_chand'),
(22, 2, 1, 'Mathematics for MBA', 309, 460, '1621406868_mathsformba_chand.jpg', 'a book of mathematics for MBA students', 'mathsformba_chand'),
(23, 2, 2, 'Mechanics Volume - 2', 369, 550, '1621406995_mechanicsv2_arihant.jpg', 'a mechanics book for engineering students', 'mechanicsv2_arihant'),
(24, 2, 1, 'Objective Mathematics', 175, 250, '1621407132_objectivemathematics_chand.jpg', 'a mathematics book for engineering students', 'objectivemathematics_chand'),
(25, 2, 2, 'Test of Reasoning', 160, 220, '1621407268_resoning_arihant.jpg', 'a book of reasoning for entrance preparation', 'reasoning_arihant'),
(26, 3, 6, '101 Panchantantra Stories', 101, 131, '1621408317_101panchatantrastories_om.jpg', 'an interesting comics book', '101panchantantrastories_om'),
(27, 3, 4, 'Children of India', 133, 179, '1621408450_childrenofindia_rupa.jpg', 'a story book written by Ruskin Bond', 'childrenofindia_rupa'),
(28, 3, 6, 'My first book of Zoo', 235, 349, '1621408560_myfirstbookofzoo_om.jpg', 'a beutiful story book', 'myfirstbookofzoo_om'),
(29, 4, 6, 'A Tale of Two Cities', 130, 179, '1621409023_ataleoftwocities_om.jpg', 'a beutifu book written by charles dekins', 'ataleoftwocities_om'),
(30, 4, 4, 'One Indian Girl', 129, 178, '1621409185_oneindiangirl_rupa.jpg', 'a book written by chetan bhagat ', 'oneindiangirl_rupa'),
(31, 4, 4, 'Petals on The Ganga', 133, 182, '1621409307_petalsontheganga_rupa.jpg', 'a story written by Ruskin Bond', 'petalsontheganga_rupa'),
(32, 4, 6, 'Treasure Island', 149, 225, '1621409431_treasureisland_om.jpg', 'a story written by Stevenson Robert Louis', 'treasureisland_om'),
(33, 5, 3, 'Basic Chemistry - 12', 185, 299, '1621409994_basichemistry12_bhartibhawan.jpg', 'a textbook of chemistry for class 12 students', 'basicchemistry12_bhartibhawan'),
(34, 5, 1, 'Biology - 11', 399, 549, '1621410097_biology11_chand.jpg', 'a texbook of biology for class 11 students', 'biology11_chand'),
(35, 5, 3, 'BSc Practical Chemistry', 195, 284, '1621410320_bscpracticalchemistry_bhartibhawan.jpg', 'a practicalbook of chemistry for BSc students', 'bscpracticalchemistry_bhartibhawan'),
(36, 5, 1, 'Civil Engineering', 399, 549, '1621410431_civilengineering_chand.jpg', 'a textbook for civil engineers', 'civilengineering_chand'),
(37, 5, 3, 'Mathematics - 12', 585, 799, '1621410567_maths12_bhartibhawan.jpg', 'a mathematics book written by RS Agarwal', 'maths12_bhartibhawan'),
(38, 5, 1, 'Maths - 12 Volume - 1', 475, 649, '1621410683_maths12v1_chand.jpg', 'a mathematics book for class 12 student volume 1', 'maths12v1_chand'),
(39, 5, 1, 'Principles of Physics - 11', 899, 1249, '1621410819_physics11_chand.jpg', 'a textbook of Physics for class 11 student', 'physics11_chand');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` int(100) NOT NULL,
  `publisher_title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_title`) VALUES
(1, 'Chand'),
(2, 'Arihant'),
(3, 'Bharti Bhawan'),
(4, 'Rupa'),
(5, 'Ncert'),
(6, 'Om Books');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(26, 'Aatif', 'Nayeem', 'abbdsdcn@gmail.com', 'Abc@2003Nayeem', '9876543210', 'cpr', 'cpr'),
(27, 'Aatif', 'Nayeem', 'aatifnayeem3@gmail.com', 'Abc@2003Nayeem', '9876543210', 'Chhota Telpa', 'cpr');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
