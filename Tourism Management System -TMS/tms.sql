-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2021 at 09:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'webdeveloper   ', 'f925916e2754e5e03f75dd58a5733251', '2021-03-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 4, 'vrrajput_b19@ce.vjti.ac.in', '2021-03-23', '2021-03-26', 'xyz', '2021-03-20 07:53:17', 1, NULL, '2021-03-25 05:05:45'),
(2, 1, 'vrrajput_b19@ce.vjti.ac.in', '2021-03-24', '2021-03-26', 'xyz', '2021-03-20 07:59:07', 1, NULL, '2021-03-25 05:05:53'),
(3, 1, 'vrrajput_b19@ce.vjti.ac.in', '2021-03-24', '2021-03-28', 'Aurangabad', '2021-03-24 16:34:51', 1, NULL, '2021-03-25 05:05:59'),
(4, 1, 'vrrajput_b19@ce.vjti.ac.in', '2021-03-24', '2021-03-28', 'Aurangabad', '2021-03-24 16:46:46', 2, 'admin', '2021-03-25 05:06:34'),
(5, 6, 'ushireharshal@gmail.com', '2021-03-24', '2021-03-29', 'Malegaon', '2021-03-24 16:58:06', 1, NULL, '2021-03-25 05:06:09'),
(6, 1, 'vrrajput_b19@ce.vjti.ac.in', '2021-03-24', '2021-03-30', 'Nagpur', '2021-03-24 17:27:11', 1, NULL, '2021-03-25 05:06:14'),
(18, 5, 'ajinkya@gmail.com', '2021-03-25', '2021-03-29', 'A', '2021-03-25 07:45:41', 1, NULL, '2021-03-25 07:47:46'),
(19, 1, 'ajinkya@gmail.com', '2021-03-26', '2021-03-30', 'Mumbai', '2021-03-25 07:58:51', 1, NULL, '2021-03-25 08:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Vivek', 'vrrajput_b19@ce.vjti.ac.in', '9011076419', 'Refund problem', 'I want my refund', '2021-03-24 15:59:58', 1),
(2, 'Patil Utkarsh', 'utpatil@gmail.com', '9155526594', 'Issue with login', 'I am not able to login to my account.', '2021-03-24 17:15:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, 'vrrajput_b19@ce.vjti.ac.in', 'Booking Issues', 'booking related problem', '2021-03-24 17:07:57', 'Sorry !!', '2021-03-25 05:05:18'),
(2, 'vrrajput_b19@ce.vjti.ac.in', 'Other', 'i have issue related to package', '2021-03-24 17:09:38', 'we will improve it ASAP!!', '2021-03-25 05:05:24'),
(3, 'vrrajput_b19@ce.vjti.ac.in', 'Cancellation', 'xyz', '2021-03-24 17:30:00', 'ok', '2021-03-25 05:05:29'),
(17, NULL, NULL, NULL, '2021-03-25 07:41:51', NULL, NULL),
(18, 'ajinkya@gmail.com', 'Booking Issues', 'booking related problem', '2021-03-25 07:51:21', 'sorry', '2021-03-25 07:51:57'),
(19, 'ajinkya@gmail.com', 'Other', 'xyz', '2021-03-25 08:04:59', 'abc', '2021-03-25 08:41:51'),
(20, 'ajinkya@gmail.com', 'Refund', 'xyz', '2021-03-25 08:37:35', 'abc', '2021-03-25 08:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'privacy', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Test</span></div>'),
(3, 'aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">This is college project</span></div>'),
(4, 'contact', '										<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(32, 33, 36); font-family: Roboto, arial, sans-serif; font-size: 13px; white-space: pre-wrap;\">Email:<span style=\"font-weight: 700; text-decoration-line: underline;\"> webdeveloper@gmail.com</span></span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Manali Trip', 'Holiday', 'Kullu Manali India', 20000, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', 'Manali is one of the most frequented hill stations in India and during its peak season it is mostly occupied with tourists from different parts of the country. Thus with a flourishing tourism in Manali, the mighty hill station is well connected by road to different parts of the state and Kalka Railway Station that connects different parts of the country through broad gauge tracks is the closest railway station. Whereas encircling Manali one can even hop to the nearby hill stations like Shimla, Dalhousie, Manikaran, Dharamsala and Kasauli. Amongst the unexplored destinations one can even drive up to Keylong that falls on the Manali-Leh highway, which connects one to Ladakh. The distance from Manali to Leh-Ladakh is approximately 453kms.', 'manali.jfif', '2021-03-24 15:03:18', '2021-03-24 15:04:03'),
(2, 'Kerla', 'Family and Couple', 'Kerlal', 20000, 'Hotel+food, visiting various places,free wifi in travel', 'Kerala, in south India, is often referred to as \"God\'s Own Country\" for its unspoiled tropical beauty. This coastal state has a destination for everyone— whether it\'s the beach, mountains, adventure, wildlife, heritage or culture you\'re interested in. The pace of life is slow, making it the perfect place for a leisurely vacation. Don\'t miss these top places to visit in Kerala.\r\nFort Kochi, Muziris and many more...\r\n', 'images.jpg', '2021-03-13 14:23:44', '2021-03-24 17:06:16'),
(3, 'Coorg : Tour Packages', 'General', 'Coorg', 15000, 'Hotel+food, visiting various places,free wifi in travel', 'Coorg hill station/Coorg (Madikeri)\r\nCoorg lies 1525m above sea level in the Western Ghats. It is one of the most well-known hill stations in Karnataka, and a preferred summer retreat in the south. Referred to as \'the Scotland of India\', beyond its natural landscape, it is also known for its coffee', 'coorg-hill-station1.jpg', '2021-03-13 14:23:44', '2021-03-24 17:06:28'),
(4, 'Indonesia', 'Family', 'Indonesia', 5000, 'Hotel+food, visiting various places,free wifi in travel', ' Indonesia, spread over 17,508 volcanic islands, is the largest archipelago in the world! A paradise for nature and adventure lovers, pristine beaches and colorful underwater worlds meet unique landscapes, volcanoes and wildlife-rich jungles in Indonesia.', 'indonesia.jpg', '2021-03-13 14:23:44', '2021-03-25 04:46:43'),
(5, 'Goa', 'Couple', 'Goa (India)', 30000, 'Hotel+food, visiting various places,free wifi in travel', 'Goa, the best tourist place for India offers several tourist attractions. Beaches and churches are the key tourist attractions in Goa. Christian Pilgrimage tours and Goan Carnival attract numerous visitors. ... Calangute, Baga, Candolim, Colva are dominated by package tourism.', 'goa.png', '2021-03-24 17:05:31', '2021-03-24 17:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Patil Utkarsh', '9546972641', 'patil123@gmail.com', '7c34ac3b522253bcfab633a854806790', '2021-03-18 04:11:44', '2021-03-25 04:48:36'),
(2, 'Vivek Rajput', '9876543210', 'vivek@gmail.com', '1f739b99a7b0e3d5dfdfeb7c27b6eafa', '2021-03-18 08:17:20', '2021-03-25 04:48:44'),
(3, 'Vivek Rajput', '9011076419', 'vrrajput_b19@ce.vjti.ac.in', '1f739b99a7b0e3d5dfdfeb7c27b6eafa', '2021-03-20 07:52:04', '2021-03-25 04:48:52'),
(4, 'Arya', '9065329592', 'utkarsh84patil@gmail.com', '11ccf244e7bc3ddf92a459245b2ab9f1', '2021-03-24 13:33:23', '2021-03-25 04:49:00'),
(5, 'Harshal Ushire', '9014123924', 'ushireharshal@gmail.com', '4a5d280db1a44987c8d7592dae5357a8', '2021-03-24 16:56:29', '2021-03-25 04:49:07'),
(21, 'Ajinkya', '8013265953', 'ajinkya@gmail.com', 'b16af2f13385a1546df33de4b292b9c8', '2021-03-25 07:41:51', NULL),
(22, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2021-03-25 07:51:21', NULL),
(23, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2021-03-25 08:04:59', NULL),
(24, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2021-03-25 08:37:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
