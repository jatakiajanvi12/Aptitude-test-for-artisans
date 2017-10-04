-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2015 at 07:01 AM
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
-- Table structure for table `section3`
--

CREATE TABLE IF NOT EXISTS `section3` (
  `qid` int(5) DEFAULT NULL,
  `type` int(5) DEFAULT NULL,
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
-- Dumping data for table `section3`
--

INSERT INTO `section3` (`qid`, `type`, `category`, `question`, `questionimage`, `opta`, `optb`, `optc`, `optd`, `correctopt`) VALUES
(1, 1, 'text', 'जॉर्जेट कपडे का प्रति वर्ग मीटर ग्राम की मूल्य क्या है?', '', '५० ग्राम', '६० ग्राम', '७० ग्राम', '९० ग्राम', 2),
(2, 1, 'text', 'वॉयल कपडे की धागा गिनती कितनी है?', '', '८६-९५', '७०-६८', '४०-४५', '९२-८८', 3),
(3, 1, 'text', 'इन में से कौन चिकनकारी उद्योग के हितदायक नहीं है ?', '', 'कारीगर', 'ग्राहक', 'उत्पादक', 'संगतराश', 4),
(4, 1, 'text', 'जिस कपडे पे चिकनकारी होती है, वो इन में से कौन बनाता है?', '', 'उत्पादक', 'कारीगर', 'निर्यातक', 'बैंक', 1),
(5, 2, 'text', 'इन में से कौन चिकनकारी साड़ी पहनते है?', '', 'लड़का', 'औरते', 'लड़की', 'मर्द', 2),
(6, 2, 'text', 'आप के पास एक ग्राहक आये है, जो एक १० साल की लड़की के लिए कुछ खरीदना चाहते है. आप उन्हें इन में से क्या दिखाएँ गे ?', '', 'लेहंगा', 'साडी', 'चादर', 'कुर्ती', 4),
(7, 2, 'text', 'इन् में से कोनसा कपडा सबसे महंगा मिलता है?', '', 'जॉर्जेट', 'प्यूर सिल्क', 'शिफॉन', 'कॉटन', 2),
(8, 2, 'text', 'इन में से कोनसा शेहेर चिकनकारी के लिए जाना जाता है?', '', 'दिल्ही', 'सूरत', 'लखनऊ', 'मुंबई', 3),
(9, 2, 'text', 'इन में से कोनसा चिकनकारी पहनावा सबसे महंगा है?', '', 'साड़ी', 'कुर्ती', 'स्टोल', 'कमीज़', 1),
(10, 2, 'text', 'आप के अंदाज़े में, इन में से कोनसे कारको आपके उत्पाद की कीमत तय करने में उपयोग किये जाते है?', '', 'काम खत्म करने के लिए लिया गया समय', 'कोनसा कपडा इस्तेमाल किया गया है', 'ऊपर के सब विकल्प', 'टांके के प्रकार', 4),
(11, 3, 'text', 'एक कैशबुक में इन् में से क्या नहीं होता?', '', 'संघ के खाते में से लिए गए उधार', 'झुरमाना', 'कारीगरूँ का वेतन', 'संघ की बचत', 3),
(12, 3, 'text', '१४१ / ३ ?', '', '४४', '४७', '४६', '४५', 2),
(13, 3, 'text', '१४१ - ९९?', '', '४५', '४४', '४३', '४२', 4),
(14, 3, 'text', '२३ * ९?', '', '२०७', '३०७', '१९७', '२३४', 1),
(15, 3, 'text', 'संघ का बैंक खाता किसके नाम में होना चाहिए?', '', 'ऊपर के दोनों विकल्प', 'संघ के नाम में', 'किसी एक व्यक्ति के नाम पे', 'इन् में से एक भी नहीं', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
