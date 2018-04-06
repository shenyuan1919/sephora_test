-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 06:19 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sephora_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8m38pvqmftjtbjtgqk21ljagitfgcs4h', '127.0.0.1', 1522651854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323635313735383b),
('7lr5f61s7jglljfcfik34skpauamsv1g', '127.0.0.1', 1522654773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323635343534323b),
('ith695nujco63ofuen0ogm8t5cuin3ok', '127.0.0.1', 1522656879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323635363732373b),
('67as5q4rej9gk1vs2m6ad8sdra85mfag', '127.0.0.1', 1522660025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323636303032313b),
('4h3uqthqro739meq22bsc3q05h5mqbkb', '127.0.0.1', 1522660346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323636303334343b),
('tmrneeenekcr6iks05hrdosu77r3387b', '127.0.0.1', 1522661234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323636303935313b),
('hhvhflc5k4pmo7a14jl3svsioi5r6msq', '127.0.0.1', 1522661474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323636313235353b),
('8da2ah5oi9t109o21k1eaqkd4eiv28c5', '127.0.0.1', 1522663155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323636323836313b),
('ak83g3d5m0oqbi5c2s6gikhn1k94r268', '::1', 1522678950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323637383935303b),
('u6cook50j0uh2ea7hrmsgg82pifs57ls', '::1', 1522680308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638303330383b),
('sr48bvu1l8088vvacbtggq798h8ja0vl', '::1', 1522681106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638313130363b),
('33om3h7r1tfirhsdn2tl8gua3b3k8jbk', '::1', 1522681789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638313738393b),
('r3hg3msi1r8jdfj6s8efpl5gl2k5pdvg', '::1', 1522682174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638323137343b),
('fiv0rknhq9ao3tvh4mbufccaals4pq2o', '::1', 1522682719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638323731393b),
('8s6o0jsdqaa7d10s9goqih5e85c6t10f', '::1', 1522683062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638333036323b),
('v41jkuci9m5kiht12d0adgefp2uouc6v', '::1', 1522683373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638333337333b),
('9smhor5o4m5b4ksjj2rrrpjnrceqlvp6', '::1', 1522683734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638333733343b),
('c9rtvklvb50o4ps5pgkhcdd4d6e27jkc', '::1', 1522684356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638343335363b),
('mcfptbajsnb8t9kl0gg24qa18i5po6re', '::1', 1522684448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323638343335363b);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sold_out` tinyint(1) NOT NULL,
  `category` varchar(255) NOT NULL,
  `under_sale` tinyint(1) NOT NULL,
  `price` int(10) NOT NULL,
  `sale_price` int(10) NOT NULL,
  `sale_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `rating`, `image`, `sold_out`, `category`, `under_sale`, `price`, `sale_price`, `sale_text`) VALUES
(1, 'KAT VON D', 'Lock-It Foundation', '5.0', 'http://localhost/sephora_app/images/product/s1398858-main-Lhero.jpg', 0, 'makeup', 0, 5800, 5800, 'N.A.'),
(2, 'Fresh', 'Sugar Lip Treatment Advanced Therapy', '4.2', 'http://localhost/sephora_app/images/product/s1398858-main-Lhero.jpg', 1, 'makeup', 0, 5800, 5800, 'N.A.'),
(3, 'DRUNK ELEPHANT', '', '3.7', 'http://localhost/sephora_app/images/product/s1398858-main-Lhero.jpg', 0, 'skincare', 0, 6400, 6400, 'N.A.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
