-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2018 at 08:57 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sephora_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('9f2jsqpkfifmclih273r8lvkfm0fh34c', '127.0.0.1', 1522910051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323930393830303b),
('4c73ljip69vtibo1ra3ohds7oi6ed0a6', '127.0.0.1', 1522910227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931303131323b),
('inmrusmqltj147ejtbf89nerum0nuh1d', '127.0.0.1', 1522910766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931303437313b),
('85ptlqiijf9pfitbdcfpqrv6g1d5dhki', '127.0.0.1', 1522911040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931303837393b),
('1lvupu8cmfnstu254cerjol33g0cvh6m', '127.0.0.1', 1522912945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931323934323b),
('48g2osdsak2lhg44gju1ci58psoh261k', '127.0.0.1', 1522913488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931333332343b),
('si9iumptk6pja23hh1s6g7shpb1djb60', '127.0.0.1', 1522914185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931333934353b),
('4eer38vd094a6bg8q786lke7l160nl8s', '127.0.0.1', 1522914327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931343238373b),
('ksrs1gcpn83ho72v16bs111h25p97q3t', '127.0.0.1', 1522915666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931353233373b),
('iorrtcqffi0tam0rj49qqsg9bhttpaii', '127.0.0.1', 1522915889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931353639333b),
('mkc2n609d42vrb94iuk4i32agbqv73j0', '127.0.0.1', 1522916888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931363630373b),
('i6bccq93r05ggsd5shi8j7ighflogin9', '127.0.0.1', 1522917093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931363932303b),
('r1qul6d2n1ln95rgq6fchvlt944mhcqq', '127.0.0.1', 1522917413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931373233303b),
('lnho5j1bm7ph7poeme5b89tjp0bj8494', '127.0.0.1', 1522918564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931383237333b),
('il9igroil82931l8qvd9du6eoresfisf', '127.0.0.1', 1522918745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931383632333b),
('eeblvhf6arec68qmtsogk89u8ujmcq0j', '127.0.0.1', 1522919477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323931393237333b),
('11cv3klqk2mnavnp8e49m3glcadq6m2o', '127.0.0.1', 1522920579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323932303333313b),
('hms80kjfnrujtd0560t9ik6van8f58u6', '127.0.0.1', 1522920789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323932303637333b),
('isqk8nh4c4num6ht1sd4oa1j6gpf07ef', '127.0.0.1', 1522921411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323932313135313b),
('akhd22948nfc32sdr3nob27dc3hsd8n0', '127.0.0.1', 1522921952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323932313930393b),
('n9fbh2972hqnb11veqp2gr38f21d6iir', '127.0.0.1', 1522922667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323932323438313b),
('29v483i91fcrsekdnet82245ounc4fd4', '127.0.0.1', 1522984342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323938343333393b),
('lctqsr7k33inja9d3of4nf675f6qqfc3', '127.0.0.1', 1522989809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323938393435383b),
('j1l8t3nsl301ehrelnh2vsuco90tdtr1', '127.0.0.1', 1522990135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323938393833333b),
('1dbe3paejdpt6ase4ce7sichtodkdek7', '127.0.0.1', 1522990608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323939303233343b),
('kcau68gn8hv4bfl7f7cld7iskndcl8rm', '127.0.0.1', 1522990930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323939303636303b),
('35rg1078kubsk1dhqotr7onkb134uccu', '127.0.0.1', 1522991032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323939313032363b),
('4rlt2lg5f5vk65ur842nep2o2l1no67t', '127.0.0.1', 1522991391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323939313338343b);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sold_out` tinyint(1) NOT NULL,
  `category` varchar(255) NOT NULL,
  `under_sale` tinyint(1) NOT NULL,
  `price` int(10) NOT NULL,
  `sale_price` int(10) NOT NULL,
  `sale_text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `rating`, `image`, `sold_out`, `category`, `under_sale`, `price`, `sale_price`, `sale_text`) VALUES
(1, 'KAT VON D', 'Lock-It Foundation', '5.0', 'images/product/s1398858mainLhero.jpg', 0, 'makeup', 0, 5800, 5800, 'N.A.'),
(2, 'Fresh', 'Nourishing Naturals Lip Duo', '4.2', 'images/product/Fresh_Web.jpg', 1, 'makeup', 0, 4300, 4300, 'N.A.'),
(3, 'FARSALI', 'Glow On The Go Kit', '3.7', 'images/product/Farsali_WEB.jpg', 0, 'skincare', 0, 7900, 7900, 'N.A.'),
(4, 'RMS BEAUTY', 'Bronzer', '4.0', 'images/product/Bronzer_Buriti_WEB.jpg', 0, 'makeup', 0, 3800, 3800, 'N.A.'),
(5, 'BENEFIT COSMETICS', 'Blush Bar "Cheeks on Pointe', '4.2', 'images/product/BenefitCosmetics_WEB.jpg', 0, 'makeup', 0, 10200, 10200, 'N.A.'),
(6, 'TOO FACED', 'Unicorn Tears Holographic Bronzer', '3.5', 'images/product/TooFacedCosmetics_WEB.jpg', 0, 'skincare', 0, 4500, 4500, 'N.A.'),
(7, 'BY TERRY', 'Glow-Expert Duo Stick', '5.0', 'images/product/N3PeachyPetal_WEB.jpg', 0, 'makeup', 0, 6800, 6800, 'N.A.'),
(8, 'TARTE', 'Rainforest Of The Sea Lip Facial Lip ', '4.2', 'images/product/Tarte_RainforestOfTheSeaLipFacialLipScrub_WEB.jpg', 1, 'makeup', 0, 2500, 2500, 'N.A.'),
(9, 'HERBIVORE BOTANICALS', 'Coco Rose - Lip Polish', '3.7', 'images/product/Herbivore_Web.jpg', 0, 'skincare', 0, 2800, 2800, 'N.A.'),
(10, 'SKIN INC', 'Pure UV Protect⁺ 30ml', '5.0', 'images/product/SkinInc_PureUVProtect.jpg', 0, 'makeup', 0, 7200, 7200, 'N.A.'),
(11, 'DRGL', 'DrGL Sun Protection Mist 60ml', '4.2', 'images/product/DRGL_WEB.jpg', 1, 'makeup', 0, 8800, 8800, 'N.A.'),
(12, 'SEPHORA COLLECTION', 'Colorful Eyeshadow ', '3.7', 'images/product/SephoraCollection_WEB.jpg', 0, 'skincare', 1, 1700, 1100, '30%'),
(13, 'BUTTER LONDON', 'Trend Lacquer', '5.0', 'images/product/ButterLondon_WEB.jpg', 0, 'makeup', 1, 1800, 1000, '40%'),
(14, 'RITA HAZAN', 'True Color Ultimate Shine Gloss', '4.2', 'images/product/RitaHazan_WEB.jpg', 1, 'hair', 0, 3800, 3800, 'N.A.');
