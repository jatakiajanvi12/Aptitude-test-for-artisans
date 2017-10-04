-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2016 at 05:26 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `section2`
--

CREATE TABLE IF NOT EXISTS `section2` (
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
-- Dumping data for table `section2`
--

INSERT INTO `section2` (`qid`, `type`, `category`, `question`, `questionimage`, `opta`, `optb`, `optc`, `optd`, `correctopt`) VALUES
(1, 1, 'textimage', 'यह धागा किस प्रकार का है?', '/chikankari_images/question1.jpg', 'रेशम का धागा', 'कसाब धागा', 'कच्चा धागा', 'कपास एंकर धागा', 2),
(2, 1, 'textimage', 'यह कौनसे प्रकार का कपडा है ?', '/chikankari_images/question2.jpg', 'लिनन', 'जार्जट', 'चंदेरी', 'कपास', 3),
(3, 1, 'text', 'इन में से कौनसा कपडा अपनी बुनाई से उत्पन्न वर्ग पैटर्न है?', '', 'कोटा', 'शिफॉन', 'चंदेरी', 'रेशम', 1),
(4, 1, 'text', 'कौनसा धागा रंगे नहीं किया जा सकता?', '', 'कसाब धागा', 'पॉलिएस्टर धागे', 'रेशम का धागा', 'कच्चा धागा', 2),
(5, 1, 'text', 'कौनसी सुई जाली काम के लिए प्रयोग की जाती है?', '', '१०', '७', '९', '८', 1),
(6, 1, 'text', 'कौनसा फ्रेम काम करने के लिए सबसे अच्छा है?', '', 'बड़ा', 'अधिक छोटा', 'अधिक बड़ा', 'छोटा', 4),
(7, 1, 'text', 'आम फ्रेम क्या सामग्री से बना होता है?', '', 'गिलास', 'कपड़े', 'प्लास्टिक', 'धातु', 3),
(8, 1, 'text', 'कितने प्रकार के टांके होते है?', '', '२९', '३२', '२७', '३८', 2),
(9, 1, 'text', 'इन ताको में से कौनसा सबसे कठिन है?', '', 'घास पट्टी', 'पेचनी', 'मुर्री', 'कंगन', 3),
(10, 1, 'image', 'इनमें से कौन सा एक आकृति(मोटिफ) नहीं है?', '', '/chikankari_images/question10-1.jpg', '/chikankari_images/question10-2.jpg', '/chikankari_images/question10-3.jpg', '/chikankari_images/question10-4.jpg', 2),
(11, 1, 'textimage', 'यह मोटिफ का नाम क्या है?', '/chikankari_images/question11.jpg', 'कैरी', 'कमल', 'मछली', 'तुरनज', 1),
(12, 1, 'textimage', 'यह मोटिफ का नाम क्या है?', '/chikankari_images/question12.jpg', 'कैरी', 'मछली', 'कमल', 'चाँद', 4),
(13, 1, 'textimage', 'यह कौनसे प्रकार का कपडा है?', '/chikankari_images/question13.jpg', 'रेशम', 'लिनन', 'वॉयल', 'शिफॉन', 3),
(14, 1, 'text', 'कौनसा धागा चिकनकारी में सबसे प्रामाणिक है?', '', 'कसाब धागा', 'कच्चा धागा', 'कपास धागा', 'रेशम का धागा', 2),
(15, 1, 'textimage', 'यह धागा किस प्रकार का है', '/chikankari_images/question15.jpg', 'कसाब धागा', 'रेशम का धागा', 'कपास एंकर धागा', 'कच्चा धागा', 2),
(16, 2, 'text', 'उनमें से कौनसा एक प्राथमिक रंग नहीं है?', '', 'लाल', 'नीला', 'पीला', 'हरा', 4),
(17, 2, 'text', 'उनमें से कौनसा एक बेहद विषम संयोजन (कंट्रास्टिंग कॉम्बिनेशन) है?', '', 'नीला-बैंगनी', 'पीला-हरा', 'पीला-बैंगनी', 'लाल-नारंगी', 3),
(18, 2, 'text', 'रंग योजना बनाने के लिए कौनसा रंग मिलाया जाता है ?', '', 'काला', 'सफेद', 'दोनों', 'कोई भी नहीं ', 1),
(19, 2, 'text', 'पहिया पर 3 आसन्न रंग का उपयोग क्यों करते है?', '', 'सामान्य', 'विषम', 'सुखदायक', 'अद्वितीय', 3),
(20, 2, 'text', 'कच्चा धागा कौनसे कपडे के लिए नहीं उपयोग किया जाता ?', '', 'पॉलिएस्टर ', 'रेशम ', 'शिफॉन', 'लिनन', 2),
(21, 2, 'text', 'कौनसे धागे का उपयोग कोई भी प्रकार के कपडे  पे किया जा सकता है ?', '', 'पॉलिएस्टर धागा', 'कच्चा धागा', 'कसाब धागा', 'एंकर धागा', 4),
(22, 2, 'text', 'कौनसा धागा नाज़ुक कपडे के लिए उपयोगी होता है ?', '', 'पॉलिएस्टर धागा', 'कच्चा धागा', 'एंकर धागा', 'कसाब धागा', 4),
(24, 2, 'text', 'आम फ्रेम कौनसे कपड़े के लिए इस्तेमाल नहीं किया जाता है?', '', 'टेरीवॉयल', 'शिफॉन', 'ऊन', 'कपास', 2),
(25, 2, 'text', 'धोने के बाद कौनसे धागे की चमक बढ़ती है?', '', 'कच्चा धागा', 'एंकर धागा', 'पॉलिएस्टर धागा', 'कसाब धागा', 1),
(26, 3, 'text', 'कौनसी चीज़ का उपयोग धुलाई के मसाले में नहीं किया जाता ?', '', 'कॉस्टिक सोडा (कटू सोडियम)', 'HCl', 'डिटर्जेंट पाउडर', 'H2SO4', 4),
(27, 3, 'text', 'सफ़ेद कपड़ो की धुलाई के लिए किस चीज़ का इस्तेमाल किया जाता है ?', '', 'नील', 'HCl', 'कॉस्टिक सोडा (कटू सोडियम)', 'धुलाई का सोडा', 1),
(28, 3, 'text', 'इनमें से कौनसा पैकेजिंग के लिए एक कारण नहीं है?', '', 'सुरक्षा', 'गुणवत्ता की जांच', 'आकर्षक स्वरूप', 'उत्पाद की प्रामाणिकता', 2),
(29, 3, 'text', 'कौनसी पैकेजिंग में जिम्मेदारियां हैं?', '', 'पैकेजिंग विशिष्टताओं की तैयारी', 'डिजाइन पैकेजिंग', 'पैकेज परीक्षण', 'ऊपर के सभी', 4),
(30, 3, 'text', 'निम्न में से कौन आमतौर पर गुणवत्ता की जांच करता है ?', '', 'विक्रेता', 'ठेकेदार(कांट्रेक्टर )', 'दोनों', 'कोई भी नहीं', 3),
(31, 3, 'text', 'घरेलू बाजार और अंतरराष्ट्रीय बाजार के लिए गुणवत्ता की जांच के बीच क्या अंतर है?', '', 'गुणवत्ता की जांच की संख्या', 'गुणवत्ता की जांच के प्रकार', 'दोनों', 'कोई भी नहीं', 1),
(32, 3, 'text', 'चिकन उद्योग में कितने पैकेजिंग इकाई(यूनिट) है?', '', '१', '२', '३', 'शून्य', 4),
(33, 3, 'text', 'निम्न में से क्या पारंपरिक रूप से कपड़े धोने के लिए इस्तेमाल किया गया था?', '', 'HCl', 'डिटर्जेंट पाउडर', 'बेकिंग पाउडर', 'घोड़ा / गाय के गोबर', 4),
(34, 3, 'text', 'आकार टैग और वॉश केयर टैग कपड़ों पर कब डाले जाते है?', '', 'बिक्री से पहले', 'सिलाई के बाद', 'पैकेजिंग के बाद', 'धोने से पहले', 4),
(35, 3, 'text', 'इनमें से क्या ब्लॉक प्रिंटिंग के लिए इंडिगो मिश्रण बनाने में इस्तेमाल नहीं करते?', '', 'पेड़ गम', 'पानी', 'तेल', 'नील', 3);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `age` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `caste` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `occupation` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `score1` float DEFAULT NULL,
  `score21` float DEFAULT NULL,
  `score22` int(5) DEFAULT NULL,
  `score23` int(5) DEFAULT NULL,
  `score31` int(5) DEFAULT NULL,
  `score32` int(5) DEFAULT NULL,
  `score33` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `age`, `caste`, `occupation`, `username`, `password`, `score1`, `score21`, `score22`, `score23`, `score31`, `score32`, `score33`) VALUES
('ीिु', '15', 'Open', 'Artisan', 'root', 'varsha', 0, 0, 0, 0, 0, 0, 0),
('ाीुि', '15', 'Open', 'Labourer', 'root1', 'varsha', 12.5, 6.66667, 0, 0, 0, 0, 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
