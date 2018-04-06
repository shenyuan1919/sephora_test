-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2018 at 11:22 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
('4rlt2lg5f5vk65ur842nep2o2l1no67t', '127.0.0.1', 1522991391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323939313338343b),
('nb1vanqrdd6fkobkm3a4crsq8ba0s30k', '61.8.202.67', 1522999930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323939383338393b),
('qt3ig7isgqtn3v3de1dlb18jv5om1lnd', '61.8.202.67', 1523000389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323939393935313b),
('ovl0rd5utknm18lpumfpum800bmavo1k', '61.8.202.67', 1523000483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030303339313b),
('h6r359f37ni944macf82n4m4vfknb1of', '61.8.202.67', 1523000897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030303839373b),
('pac83mj6jk0cbrfql8slimio9oafh461', '61.8.202.67', 1523003413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030333131313b),
('mnchreaanqv17qqgtirplulecck2jp73', '61.8.202.67', 1523003958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030333437313b),
('gr6ufem0oo39rrn2ielu6vlooj2d57ph', '61.8.202.67', 1523003971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030333936363b),
('6jmef1ltgoibrcivj80oim4mmbqrih22', '61.8.202.67', 1523004581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030343338373b),
('f99104k4qkvv2ars90l3bicl4vptb070', '208.80.194.35', 1523006403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030363430323b),
('5oleq99gpdk0gtvdptok68v6qntr9qsj', '208.80.194.35', 1523007190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030373138393b),
('r0n47h5p9m0i243ucvpnjgj5m462ti5e', '61.8.202.67', 1523009702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030393631373b),
('lg4re2j5c80pcai495k8oui337q7n8ov', '111.65.45.163', 1523009688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333030393636313b),
('ei9iim7om4839cs10cq7tbrqg973ldfl', '61.8.202.67', 1523010213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031303031363b),
('37rkfqqcs1avi33brhasr6pbc7bi3ug2', '111.65.45.163', 1523010324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031303032343b),
('pmjq8da3odkgk9ade7aq0a4g9gs47kk7', '61.8.202.67', 1523010231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031303039343b),
('cdk0tk8qi9aulaf8er1ncdtpnokedfbc', '208.80.194.30', 1523010333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031303333333b),
('g08a4nvi8asdurfq5a5atudmbftb18d7', '61.8.202.67', 1523010345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031303333363b),
('lioqd1hpt4e9vjbunf4s7v1bkdjf8ed9', '111.65.45.163', 1523010895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031303632313b),
('1gttqap2tg2925puvgeu7jdkukbt3f9c', '61.8.202.67', 1523011191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031313031333b),
('13bplj6rqergb3f3aodbn8pro6tk5h90', '111.65.45.163', 1523011200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031313230303b),
('sehq6va1o25fghiuocuk8umnuq6lrlkm', '208.80.194.30', 1523012591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031323539303b),
('tc424nhj32sknb8108divos5audr6q1i', '111.65.45.163', 1523013045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031323732383b),
('6pht29oos3aipsnhuqofm3k3hhq985tq', '111.65.45.163', 1523013122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031333037383b),
('0bjg1rts7rq0g1cgg3ie9ep3j68910cq', '208.80.194.30', 1523014355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031343335343b),
('3qeejdbiro4hovomh2fv3e75un0avf4b', '208.80.194.35', 1523018046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333031383034363b),
('6s1bjbuvt7uku3id9bidbkk4dclfvsee', '138.75.95.234', 1523023239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032333233373b),
('b0eoqog1d9kab5r8mngi6glfp7j8bj5u', '138.75.95.234', 1523023600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032333233393b),
('bvt491o4qjmh1pc2gcecf3j1bf9ljlec', '138.75.95.234', 1523023565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032333536343b),
('t496hoc8bclcp4ukfvsmosn1vku7vsqj', '138.75.95.234', 1523023954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032333730393b),
('mr6i3s0us316t2qv8s8o3onkpr9o3ghm', '138.75.95.234', 1523023958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032333838393b),
('qbtds7oc5u0oj3b72da6p0muv4l9sk7l', '138.75.95.234', 1523024334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032343035303b),
('0slu2d2anup8fr9ju6hnf1jq5his7udr', '138.75.95.234', 1523024690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032343339313b),
('rtt2pfjp1fau156lot4pq0dlgenklese', '138.75.95.234', 1523024812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032343637353b),
('ipa0pg0dcp454eqnds7katmd1gbmovii', '138.75.95.234', 1523024992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032343732303b),
('gpilibmmin6s8sq9lvm4f0v9cj9hrr2b', '138.75.95.234', 1523025060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032343939383b),
('01m88tvv6lv8v5a69esuridh15ok0o5u', '138.75.95.234', 1523025593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032353139333b),
('gsb70gektf2i97f69hmnl8j34atope9d', '94.23.1.118', 1523025634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032353333353b),
('r8b1lo5ukvbcf3btliqg9besvn0pogvg', '138.75.95.234', 1523025616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032353631363b),
('sc2egkg5o7qk45f14l0ns9rnn23qbof4', '138.75.95.234', 1523025955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032353636343b),
('fcop3n6i7mhqp4h91dhunalbd7hl5tm1', '138.75.95.234', 1523026671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032363130393b),
('t1153emg2go34vrhqlmpq0fv7mniuacs', '138.75.95.234', 1523026488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032363138303b),
('stupape8448d9j543ham6q8v7502juhg', '138.75.95.234', 1523026754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032363439383b),
('3h1mfbbsio8c9up74oqnsv0jllb7db1t', '138.75.95.234', 1523026688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032363637353b),
('t3p8gvgs26bul6bh3tnm1ch558bn9e5t', '208.80.194.35', 1523026807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032363830373b),
('di5f6cansfb22tgrc7duiabbf0fdnjqb', '138.75.95.234', 1523027086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032363831323b),
('q6iphsv22o6d486nohuqfl3jqasvl3nc', '138.75.95.234', 1523027433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032373133353b),
('fts2jh86fmfvaj4sh0oh3m1ckf4u3jss', '138.75.95.234', 1523027723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032373436353b),
('trqut4qdm0vq07veob7dn9caimd64ud7', '138.75.95.234', 1523028063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032373737343b),
('8e1q0a355e8i6mqg1ns4j1e7icestm4e', '138.75.95.234', 1523028086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333032383038363b);

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
(2, 'Fresh', 'A pair of nourishing treatments that deliver a smooth, barely-there lip look. Get a smooth, barely-there lip look with these travel-size treatments. Sugar Cream Lip Treatment Buff is a creamy, cushiony formula that nourishes and smooths the lips while leaving a warm nude shimmer. Sugar Lip Treatment Sunscreen SPF 15 delivers a hydrating blend that smooths and protects while delivering up to six hours of luscious ', '4.2', 'images/product/Fresh_Web.jpg', 1, 'makeup', 0, 4300, 4300, 'N.A.'),
(3, 'FARSALI', 'A fast-absorbing dry oil infused with gold and made with rosehip that can be used as an effective daily moisturiser or with your makeup routine. FARSALI Rose Gold Elixir is a 24-karat, gold-infused beauty oil that is rich in vitamins, antioxidants, and essential fatty acids. It is formulated with ingredients that work together synergistically to provide the ultimate results by addressing all your skincare needs. Rosehip seed oil penetrates quickly to nourish your skin while visibly brightening and improving skin texture. It is packed with linoleic and linolenic acids, vitamin C, and vitamin A to help reduce the appearance of fine lines and discolouration. The pure 24k Gold flakes absorb right into your skin, leaving your skin naturally glowing and radiant.', '3.7', 'images/product/Farsali_WEB.jpg', 0, 'skincare', 0, 7900, 7900, 'N.A.'),
(4, 'RMS BEAUTY', 'A bronzer with either a creamy sunkissed finished or darker for contouring. Get a sunkissed glow or sculpted look with a bronzer from RMS Beauty. Buriti Bronzer creates the appearance of glowing, healthy skin with a creamy formula that works on all skin tones and doubles as a luminiser on darker skin tones. Contour Bronzer adds definition to your complexion with a warm, radiant bronze hue perfect for contouring.', '4.0', 'images/product/Bronzer_Buriti_WEB.jpg', 0, 'makeup', 0, 3800, 3800, 'N.A.'),
(5, 'BENEFIT COSMETICS', 'This limited edition bronzer and blush palette is tutu cheeky! Featuring NEW Gold Rushwarm golden-nectar blush, iconic Hoolamatte bronzer, bestselling Dandelion baby-pink powder and more, be sure to grab it while you can! What is more, it comes complete with Signature Tips & Tricks for you to try new looks that are on pointe!', '4.2', 'images/product/BenefitCosmetics_WEB.jpg', 0, 'makeup', 0, 10200, 10200, 'N.A.'),
(6, 'TOO FACED', 'A unique bronzer that creates a radiant shimmering effects. This bronzer combines the effects of the warm bronze of sunlight, the ethereal glow of moonlight and the twinkling effect of starlight together for a festival glow you have never seen before. Its unique blend of two shades is flattering to most skin tones. It is easy to wear and blendable and comes infused with our signature Unicorn scent.', '3.5', 'images/product/TooFacedCosmetics_WEB.jpg', 0, 'makeup', 0, 4500, 4500, 'N.A.'),
(7, 'BY TERRY', 'A two-in-one hybrid stick to sculpt and illuminate. Inspired by the contouring and strobing technique of integrated blending, this dual-sided stick features blush, bronzer, and highlighter, plus a brush, for a perfectly colour-kissed sculpted look. Enriched with glow-reflecting prisms and light-correcting microspheres, it enhances your features and boost radiance.', '5.0', 'images/product/N3PeachyPetal_WEB.jpg', 0, 'makeup', 0, 6800, 6800, 'N.A.'),
(8, 'TARTE', 'A long-wearing and moisture rich, full coverage lipstick in an array of creamy shades. Discover long wearing lip colour powered by water with this full coverage, hydrating lipstick. The ultra creamy formula pairs intense pigments and buttery smooth conditioners for comfortable colour that locks in place without feathering or bleeding. Each sea-inspired shade is infused with regenerative lip quenchers and tarte antioxidant Rainforest of the Sea complex to help smooth the look of lip lines.', '4.2', 'images/product/Tarte_RainforestOfTheSeaLipFacialLipScrub_WEB.jpg', 1, 'makeup', 0, 2500, 2500, 'N.A.'),
(9, 'HERBIVORE BOTANICALS', 'It has all the same deeply moisturising, conditioning and nourishing properties of the other beloved Coco Rose lip treatments, but with a little added rosy coral colour. Herbivore uses only the finest ingredients to create 100% all-natural products with an emphasis on plant-based and organic. Each ingredient has a therapeutic purpose; all oils are cold-pressed or steam-distilled; and every product is made in small batches to guarantee premium quality.', '3.7', 'images/product/Herbivore_Web.jpg', 0, 'skincare', 0, 2800, 2800, 'N.A.'),
(10, 'SKIN INC', 'Detox bubbling oxygen deeply cleanses and re energises the skin with a tingling, sparkling sensation so you know it is working. Formulated with Skin Inc award-winning smart peel technology, it lifts away dead, dull skin cells to reveal a clearer, brighter complexion in minutes. A soothing blend of natural antioxidants including rosemary, green tea, citrus, and aloe help banish the effects of environmental pollution, giving your skin a firmer, healthier look you can see and feel.', '5.0', 'images/product/SkinInc_PureUVProtect.jpg', 0, 'skincare', 0, 7200, 7200, 'N.A.'),
(11, 'DRGL', 'The DrGL Sun Protection Mist is a convenient sunscreen packed in a sleek spray bottle. It dispenses a fine, quick-drying mist which makes it easy for application and reapplication, even on hard-to-reach areas such as the back. This unique formula includes extracts from Scutellaria baicalensis root and Paeonia suffruticosa root to help fight free radicals. On the surface, redness and pigmentation are also diminished with the skin brightening properties of Licorice and Arbutin. Colourless and with a refreshing texture, this product is ideal for oily, acne-prone skin, humid weather and sports.', '4.2', 'images/product/DRGL_WEB.jpg', 1, 'skincare', 0, 8800, 8800, 'N.A.'),
(12, 'SEPHORA COLLECTION', 'This eyeshadow delivers excellent colour payoff for up to 10 hours. Its unique formula allows you to apply the shadows easily. Upon application, you will find that it leaves a smooth and blendable texture. As an added benefit, it provides antioxidant protection from pollution and sun caused ageing.', '3.7', 'images/product/SephoraCollection_WEB.jpg', 0, 'makeup', 1, 1700, 1100, '30% OFF'),
(13, 'BUTTER LONDON', 'Nail-strengthening lacquer in a stunning array of highly pigmented colours. Butter London nail lacquers promote strong and healthy nails with a formula enriched with nail-nourishing vitamins and rich pigment. Choose from countless colours and finishes for every mood and occasion.', '5.0', 'images/product/ButterLondon_WEB.jpg', 0, 'nail', 1, 1800, 1200, '33% OFF'),
(14, 'RITA HAZAN', 'A clinical anti-breakage repairing complex specially formulated for coloured-damaged hair, repairing it instantly while preventing future breakage. True Color Ultimate Shine Gloss. Take control of your colour with the travel-friendly Root Concealer Touch-Up Spray Temporary Gray Coverage. This water-proof, transfer-proof spray formula features a pinpoint actuator to cover grays exactly where you need it. Rita custom blended dyes are buildable to work on every hair colour.', '4.2', 'images/product/RitaHazan_WEB.jpg', 1, 'hair', 0, 3800, 3800, 'N.A.');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
