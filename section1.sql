-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2015 at 06:45 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chikankari`
--

-- --------------------------------------------------------

--
-- Table structure for table `section1`
--

CREATE TABLE IF NOT EXISTS `section1` (
  `qid` int(5) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `question` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `questionimage` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `opta` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `optb` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `optc` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `optd` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `correctopt` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section1`
--

INSERT INTO `section1` (`qid`, `category`, `question`, `questionimage`, `opta`, `optb`, `optc`, `optd`, `correctopt`) VALUES
(5, 'text', '४५ + ६९ ?', '', '१०४', '११४', '११५', '१०५', 2),
(6, 'text', '३७४ - १९९? ', '', '२८५', '१८५', '१७६', '१७५', 4),
(7, 'text', 'एक परिवार के पास १५ गाय है| उसमेसे ५ मर जाते है और २ गायों के दो बच्चे हो जाते है | कितने गाय जीवित है?', '', '१२', '१४', '१३', '१५', 2),
(8, 'text', 'नीचे दिए गए विकल्पों में से कौनसा अलग है?', '', 'रेशम ', 'कपास', 'सोना', 'लिनन', 3),
(9, 'text', 'रवि ने एक महिला की ओर इशारा करते हुए कहा-वह मेरी बहन के भाई के पिता की इकलौती बेटी है। कैसे वह रवि से संबंधित है?', '', 'माँ', 'बुआ', 'बहन', 'मामी', 3),
(10, 'textimage', 'नीचे दिए गए चित्र का पानी छवि क्या है?', '/chikankari_images/q10.png', '1', '2', '3', '4', 4),
(11, 'textimage', 'नीचे दिए गए विकल्पों में से कौनसा यह पैटर्न को पूरा करती है?', '/chikankari_images/q11.png', '1', '2', '3', '4', 4),
(12, 'textimage', 'नीचे दिए गए विकल्पों में से कौनसा सही जवाब है?', '/chikankari_images/q12.png', '1', '2', '3', '4', 2),
(13, 'text', 'एक संघर्ष में शामिल किसी से बात करते वक़्त,', '', 'अन्य लोगों के सामने उसे या उससे बात करो', 'उन्हें नीचा दिखाने के लिए प्रयास करें', 'आप संदेशों का उपयोग', 'सम्मान के साथ व्यवहार करे', 4),
(14, 'text', 'भागीदारी बढ़ाने के लिए कौनसा विकल्प उचित है?', '', 'बैठकों की योजना पहले से करे', 'सिर्फ समूह के नेता को बैठक चलाने बोले', 'लोगों को अपनी बात पूरी करने ना दे', 'सबको किसी का हावी व्यवहार दिखाना', 1),
(15, 'text', 'शब्दों को पुनर्व्यवस्थित करे-बल,संकल्प,है,ही,मनुष्य,का', '', 'बल संकल्प है ही मनुष्य का', 'मनुष्य का बल संकल्प ही है', 'है ही मनुष्य का बल संकल्प', 'संकल्प का बल है ही मनुष्य', 2),
(16, 'textimage', 'नीचे दिए गए कंप्यूटर के संबंधित चीज़ को पहचानिये', '/chikankari_images/q16.jpg', 'माउस', 'कीबोर्ड', 'प्रिंटर', 'स्कैनर', 1),
(17, 'image', 'नीचे दिए गए विकल्पों में से कौनसा प्रिंटिंग के लिए इस्तेमाल किया जाता है?', '', '/chikankari_images/q17-1.jpg', '/chikankari_images/q17-2.png', '/chikankari_images/q17-3.png', '/chikankari_images/q17-4.jpg', 2),
(18, 'textimage', 'आप प्रदर्शन प्लेट पर क्या नंबर देख सकते हो?', '/chikankari_images/q18.jpg', '१', '६', '१६', 'कुछ नहीं', 3),
(19, 'textimage', 'आप प्रदर्शन प्लेट पर क्या नंबर देख सकते हो?', '/chikankari_images/q19.png', '५', '१५', '५५', 'कुछ नहीं', 1),
(20, 'textimage', 'आपके हिसाब से यह कौनसा रंग है?', '/chikankari_images/q20.png', 'पीला', 'नारंगी ', 'लाल', 'गुलाबी', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
