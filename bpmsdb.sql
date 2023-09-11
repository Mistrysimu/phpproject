-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 12:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(2, 7, 767068476, '2022-05-14', '09:00:00', 'fghfshdgfahgrfgh', '2022-05-12 18:30:00', 'Sorry your appointment has been cancelled', 'Rejected', '2022-05-13 06:14:39'),
(5, 10, 284544154, '2022-05-18', '15:40:00', 'NA', '2022-05-15 05:04:13', NULL, NULL, NULL),
(9, 11, 985654240, '2022-05-29', '13:10:00', 'NA', '2022-05-29 07:34:47', 'Your appointment is confirmed', 'Selected', '2022-05-29 07:35:36'),
(10, 12, 432035813, '2023-07-28', '22:10:00', 'please ', '2023-07-27 16:38:54', NULL, NULL, NULL),
(11, 13, 711917453, '2023-08-29', '20:39:00', 'dssdf', '2023-08-24 12:09:40', 'no', 'Rejected', '2023-08-31 16:02:33'),
(13, 13, 353652157, '2023-09-02', '13:29:00', 'ddddd', '2023-08-26 05:59:29', NULL, NULL, NULL),
(15, 13, 773431647, '2023-08-08', '13:32:00', 'eee', '2023-08-26 08:01:02', NULL, NULL, NULL),
(16, 13, 724853478, '2023-08-26', '13:44:00', 'Book', '2023-08-26 08:14:45', NULL, NULL, NULL),
(17, 13, 894799845, '2023-08-27', '18:24:00', 'Book', '2023-08-27 12:54:18', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(5, 'Kajal', 'Sharma', 9879878798, 'kajal@gmail.com', 'guhgjhg', '2022-05-10 08:43:18', 1),
(6, 'Anuj', 'Kumar', 1234567890, 'ak@gmail.com', 'Need booking for marriage', '2022-06-01 01:05:47', 1),
(7, 'Mistry', 'Vijaykumar', 9313459828, 'simran2312mistry@gmail.com', 'good', '2023-08-25 17:25:48', NULL),
(8, 'Mistry', 'Vijaykumar', 9313459828, 'simran2312mistry@gmail.com', 'Very Good Service', '2023-08-26 04:22:15', NULL),
(9, 'Mistry', 'Vijaykumar', 9313459828, 'simran2312mistry@gmail.com', 'good experience', '2023-08-26 14:37:18', NULL),
(10, 'Mistry', 'Vijaykumar', 9313459828, 'simran2312mistry@gmail.com', 'good', '2023-08-27 06:57:02', NULL),
(11, 'Mistry', 'Vijaykumar', 9313459828, 'simran2312mistry@gmail.com', 'good', '2023-08-28 13:35:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(4, 7, 4, 138889283, '2022-05-13 11:42:21'),
(5, 7, 9, 138889283, '2022-05-13 11:42:21'),
(6, 7, 16, 138889283, '2022-05-13 11:42:21'),
(7, 8, 3, 555850701, '2022-05-13 11:42:51'),
(8, 8, 6, 555850701, '2022-05-13 11:42:51'),
(9, 8, 9, 555850701, '2022-05-13 11:42:51'),
(10, 8, 11, 555850701, '2022-05-13 11:42:51'),
(13, 10, 1, 330026346, '2022-05-28 08:51:42'),
(14, 10, 2, 330026346, '2022-05-28 08:51:42'),
(15, 11, 2, 379060040, '2022-05-29 07:36:17'),
(16, 11, 5, 379060040, '2022-05-29 07:36:18'),
(17, 11, 6, 379060040, '2022-05-29 07:36:18'),
(18, 11, 12, 379060040, '2022-05-29 07:36:18'),
(19, 11, 3, 460087279, '2022-06-01 01:03:58'),
(20, 10, 1, 842732976, '2023-07-27 16:42:34'),
(21, 5, 6, 589826055, '2023-09-08 04:01:31'),
(22, 5, 6, 389435189, '2023-09-09 06:18:59'),
(23, 6, 6, 522991286, '2023-09-09 06:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '                        Yoga is a meditative process of self-discovery and liberation. It is a diverse collection of practices that aims to control the mind, recognize a detached witness consciousness, and free oneself from the cycle of birth and death. It teaches us to see ourselves clearly, to understand what is true about who we are, and to let go of anything that does not serve us. It helps us to become aware of our thoughts, feelings, and beliefs. Yes....', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '        B-101 , Sai Pujan Residency , Jahangirpura , Surat', 'simranmistry56@gmail.com', 9638249081, NULL, '8:00am');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(6, 'Advance Yoga', 'Breathwork in yoga can have physical and mental benefits both on and off the mat. Certain types of pranayama such as Skull Shining Breath (Kapalabhati Pranayama) can also help clear the nasal passages (helpful for people with allergies), and Ujjayi Breath can help calm the nervous system.', 400, '', '0000-00-00 00:00:00'),
(7, 'Aasanas', 'Yoga asana is the physical practice and postures of yoga. The scientific research into yoga’s benefits is still somewhat preliminary, but much of the evidence so far supports what practitioners seem to have known for millennia: Yoga is incredibly beneficial to our overall well-being. Let’s look at 16 of the many benefits of yoga in greater depth.', 500, '', '0000-00-00 00:00:00'),
(8, 'Power Yoga', 'Power yoga classes will vary widely from teacher to teacher, but they usually include far more intense flowing yoga poses than chanting and meditation. They can be a vigorous workout that burns calories and can help keep you fit. Power yoga enthusiasts say it enhances stamina, flexibility, posture, and mental focus.', 450, '', '0000-00-00 00:00:00'),
(9, 'Meditation  and Relaxation', 'Meditation is the habitual process of training your mind to focus and redirect your thoughts. The popularity of meditation is increasing as more people discover its many health benefits. You can use it to increase awareness of yourself and your surroundings. Many people think of it as a way to reduce stress and develop concentration.', 480, '', '0000-00-00 00:00:00'),
(18, 'Hath Yoga', 'Yoga Expalin', 800, '2cc3663decc53df4367d8090dfee8a391693243648.png', '2023-08-28 17:27:28'),
(19, 'Hath Yoga', 'www', 800, '2cc3663decc53df4367d8090dfee8a391693243672.png', '2023-08-28 17:27:52'),
(20, 'Hath Yoga', 'www', 800, 'ae2f25bfd02cd32cf2e20f67fcc587061693243695.png', '2023-08-28 17:28:15'),
(21, 'Hath Yoga', 'Yoga Expalin', 800, '2cc3663decc53df4367d8090dfee8a391693243720.png', '2023-08-28 17:28:40'),
(23, 'raj yoga', 'knee', 850, '2cc3663decc53df4367d8090dfee8a391693244243.png', '2023-08-28 17:37:23'),
(24, 'karma yog', 'head', 900, '081b185f32ea3ed0b56039574d7281b21693244277.png', '2023-08-28 17:37:57'),
(25, 'Advance Aasanas', 'back pain', 1000, '2cc3663decc53df4367d8090dfee8a391693402481.png', '2023-08-30 13:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(6, 'ghhg', NULL, 8888888888, 'c@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-12-14 05:27:32'),
(7, 'Tina', 'Khan', 9789797987, 'tina@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-05-11 09:21:46'),
(8, 'Hima', 'Sharma', 8979798789, 'hima@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-05-11 09:23:16'),
(10, 'Anuj', 'Kumar', 1425362514, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-15 05:03:32'),
(11, 'John', 'Doe', 1452632541, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-29 07:33:58'),
(13, 'simran', 'Mistry', 9313459828, 'simran2312mistry@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-24 12:08:52'),
(14, 'Shilpa', 'Mistry', 9638249081, 'shilpamistry23@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-08-26 05:46:45'),
(15, 'Neel', 'Bhowmik', 9825028809, 'neelbhowmik1203@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-08-27 13:31:46'),
(17, 'Chiku', 'Mistry', 9898989898, 'chiku0204@gmail.com', '69dafe8b58066478aea48f3d0f384820', '2023-09-09 06:44:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
