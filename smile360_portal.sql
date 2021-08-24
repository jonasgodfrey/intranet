-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2021 at 11:29 AM
-- Server version: 5.7.35-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smile360_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogid` int(11) NOT NULL,
  `blogtitle` text NOT NULL,
  `blogdescription` text NOT NULL,
  `blogattach` varchar(100) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedon` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctorsprofile`
--

CREATE TABLE `doctorsprofile` (
  `id` int(11) NOT NULL,
  `drname` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `practice` text NOT NULL,
  `address` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `dr_id` int(11) NOT NULL,
  `p_fname` varchar(20) NOT NULL,
  `p_lname` varchar(20) NOT NULL,
  `p_mname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `ship_address` text NOT NULL,
  `dob` date NOT NULL,
  `clinical_conditions` varchar(700) NOT NULL,
  `other` text NOT NULL,
  `notes` text NOT NULL,
  `treatment_option` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `p_potrait` varchar(400) DEFAULT NULL,
  `image1` varchar(400) DEFAULT NULL,
  `image2` varchar(400) DEFAULT NULL,
  `image3` varchar(400) DEFAULT NULL,
  `image4` varchar(400) DEFAULT NULL,
  `image5` varchar(400) DEFAULT NULL,
  `image6` varchar(400) DEFAULT NULL,
  `image7` varchar(400) DEFAULT NULL,
  `image8` varchar(400) DEFAULT NULL,
  `image9` varchar(400) DEFAULT NULL,
  `scan1` varchar(400) DEFAULT NULL,
  `scan2` varchar(400) DEFAULT NULL,
  `startdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `dr_id`, `p_fname`, `p_lname`, `p_mname`, `gender`, `ship_address`, `dob`, `clinical_conditions`, `other`, `notes`, `treatment_option`, `status`, `p_potrait`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `scan1`, `scan2`, `startdate`) VALUES
(1, 2, 'Godfrey', 'Jonas', 'Enangha', 'Female', 'Smile 360 Dental Clinic                                   (40A Cameron Road Ikoyi, Lagos Nigeria) - Dr. Apara Sanmi', '2020-12-15', 'Crowding', 'Nothing Mores', 'More details coming soon', 'Lite Package', 'Send Additional Info', 'staff_images/WiIwTD2dY97RoW8OfpDpMNYjW5B3pK.JPG', 'staff_images/PCDeLgx4SiFsVlLM6zTlHiP2uL94nr.jpg', 'staff_images/OJ7kwFRXE6IAEsarz8BmCLqhXGK3sl.png', 'staff_images/do-elegant-album-cover-art-single-or-cd-cover-design.jpg', 'staff_images/Fh0jk9E03YSuRyhGESstbT6zWTq0tq.jpeg', 'staff_images/RynOeS4znFv4FsScUvL0EdmgwyCmcH.jpg', 'staff_images/yhFLj1AwymXvw0SMOD6qKxgxqa95wC.jpg', 'staff_images/Y2EiJTDag2WXvvJKcOs9eOW1iXqGhr.jpg', 'staff_images/tmW57VjITLfnkxUMAAZv2rprTchDJX.jpg', 'staff_images/W9ZEeIRKgD1OrrCGUGlQJccjsATVTD.jpg', 'staff_images/7YMYTfrj8ebbaomaYLwqWxneM1OPob.png', 'staff_images/eVNL45HzgY0DgWKdnvNJo8eUDMaAUt.jpg', '2020-12-16 08:32:11'),
(2, 0, 'Godfrey', 'dasda', 'sdsa', 'Female', 'Dr. Amaka Nwadiani-Umolu (Smile 360 Dental Practice)', '0000-00-00', 'Crowding', 'saasd', 'eewe', 'Lite Package', 'Awaiting', 'staff_images/Orc2bx2AER2Tnler4QcrVBkmRhm0nz.jpg', '', '', '', '', '', '', '', '', '', '', '', '2020-12-16 11:47:59'),
(3, 0, 'Godfrey', 'Stephen', 'Nkechi', 'Male', 'Dr. Amy Shumbusho (Smile 360 Dental Clinic)', '2020-12-10', 'Crowding', 'Ohmar needs an urgent check up', 'eww', 'Lite Package', 'Awaiting', 'staff_images/qT0CK8OpATtWPuMmdtrKKhoxlW3FgW.jpg', '', '', '', '', '', '', '', '', '', '', '', '2020-12-16 11:49:18'),
(4, 2, 'Test ', 'Jonas', 'Stev', 'Male', 'Smile 360 Dental Clinic                                   (40A Cameron Road Ikoyi, Lagos Nigeria) - Dr. Amy Shumbusho', '2020-12-02', 'Crowding', 'sdds', 'dssdsd', 'Lite Package', 'Awaiting', 'staff_images/5P9OgXM49iD3hfKb6GimPuQd9ZSKNm.jpg', '', '', '', '', '', '', '', '', '', '', '', '2020-12-16 11:55:00'),
(5, 2, 'Godfrey', 'Jay', 'Enangha', 'Male', 'Smile 360 Dental Clinic                                   (40A Cameron Road Ikoyi, Lagos Nigeria) - Dr. Amy Shumbusho', '2020-12-10', 'Crowding,Spacing,Class II div 1', 'trggrt', 'rthrhrrh', 'Lite Package', 'Awaiting', 'staff_images/6PRGnd28ncEGuwoObjkXFIX6Ws6U1J.jpg', '', '', '', '', '', '', '', '', '', '', '', '2020-12-16 12:03:37'),
(6, 2, 'Godfrey', 'Okeowo', 'Nkechi', 'Male', 'Smile 360 Dental Clinic                                   (40A Cameron Road Ikoyi, Lagos Nigeria) - Dr. Amy Shumbusho', '2020-12-17', 'Crowding, Spacing, Class II div 1, Class II div 2, Class III, Open Bite, Anterior Crossbite', 'Ohmar needs an urgent check up', '', 'Comprehensive', 'Awaiting', 'staff_images/afyJoVJQNpKg1BVEh3iLjzUkLcyp10.jpeg', '', '', '', '', '', '', '', '', '', '', '', '2020-12-16 12:05:56'),
(7, 2, 'Godfrey', 'Jonas', 'Enangha', 'Male', 'Smile 360 Dental Clinic                                   (40A Cameron Road Ikoyi, Lagos Nigeria) - Dr. Amy Shumbusho', '2020-12-17', 'Crowding, Spacing, Class II div 1, Class II div 2, Class III, Open Bite, Anterior Crossbite, Posterior Crossbite, Deep bite, Narrow Arch, Flared Teeth, Overjet, Misshapen Teeth', 'lknkl', 'ndkfvdfvnkdf', 'Lite Package', 'Awaiting', 'staff_images/lpY6FFnmEK97D23BnLxQsjTKohWUvm.jpg', '', '', '', '', '', '', '', '', '', '', '', '2020-12-16 12:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `headline` text NOT NULL,
  `News` text NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `headline`, `News`, `datecreated`, `filename`) VALUES
(1, 'Welcome to Smile 360s HR Portal', 'Hello, \r\n\r\nWelcome to the Human Resources Portal for Smile360. \r\n\r\nOn this portal, you will find news and updates on all people issues. This is also where you will find links to all online forms and tools. \r\n\r\nHave a great week ahead!\r\n\r\n', '2021-03-07 22:28:37', ''),
(2, 'Smile 360 Practice Scorecard  2021', '', '2021-03-23 16:19:52', '20210323161952_Smile 360 Scorecard.xlsx - 2021 Scorecard.pdf'),
(3, 'Q1 Appraisal List', 'This document outlines who appraises each member of staff. \r\n\r\nAll team members are expected to have a conversation with their appraiser. \r\n\r\nYou are to come up with a list of things you should START, STOP & CONTINUE doing to improve your performance. \r\n\r\nWe hope these conversations help you grow. ', '2021-05-04 11:53:05', '20210504115305_Smile 360 Appraisal List.pdf'),
(4, 'Smile 360 Organogram', 'Kindly find the organogram for the organization as at the end of Q1', '2021-05-04 13:01:46', '20210504130146_Smile 360 OrgChart.pdf'),
(5, 'May Staff Roaster ', '', '2021-05-06 05:41:29', '20210506054129_May Roaster.xlsx'),
(6, 'Handover Note Template ', 'Kindly fill this document for the individual who is going to fill or you while you are away. ', '2021-05-17 11:33:31', '20210517113331_Handover Note Template.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `staffprofile`
--

CREATE TABLE `staffprofile` (
  `id` int(11) NOT NULL,
  `drname` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffprofile`
--

INSERT INTO `staffprofile` (`id`, `drname`, `email`, `dob`, `password`, `CreatedAt`) VALUES
(3, 'quadry', 'itsupport@smile360ng.com', '09021980', 'Withsmile@360', '2021-03-08 11:48:38'),
(4, 'Sylvia Amede ', 'ehinetaamede@gmail.com', '22/08/87', '22^meDS!', '2021-03-09 09:29:21'),
(5, 'Fasasi faidat', 'faydathomoh@gmail.com', '28/10/92', 'omowunmi', '2021-03-09 11:48:17'),
(11, 'Helen Ugwu ', 'hellen.ugwu@smile360ng.com', '11th July', 'bBEzuNHEX?Ej', '2021-03-10 11:05:03'),
(12, 'Timothy', 'potalenumo@smile360ng.com', '08-11-93', 'o?jk6qkRi=f!', '2021-03-10 11:26:29'),
(14, 'Agbolade Adebukonla', 'bukonla@smile360ng.com', '6th June', 'taam2545', '2021-03-10 12:34:54'),
(15, 'Azeezat Rasaq', 'hazeezahtairu@smile360ng.com', '09th Dec', 'jKc0RjldXxzR', '2021-03-10 13:37:02'),
(17, 'Oluwafemi', 'oluwafemi@smile360ng.com', '25th-Aug', 'XGO}n)L4FDJo', '2021-03-11 09:51:08'),
(18, 'Fasasi faidat', 'faidat.fasasi@smile360ng.com', '28/10/92', '{[ETHG3E,ytZ', '2021-03-12 09:23:47'),
(19, 'Promise ologunleko ', 'promise@smile360ng.com', '3-10-1993', 'promise28', '2021-03-15 14:51:02'),
(20, 'Lawal omowunmi kafayat ', 'kafayat.lawal@smileng.com', 'January 29 1995', 'rrTqRcS=OWG=', '2021-03-15 15:33:15'),
(21, 'Adebayo Jimoh ', 'facility@smiles360ng.com', '10th December ', 'jimoh1012', '2021-03-16 07:48:49'),
(22, 'Fasasi faidat', 'faidat.fasasi@smile360ng.com', '28/10/92', '{[ETHG3E,ytZ', '2021-03-16 16:53:48'),
(23, 'Fasasi faidat', 'faidat.fasasi@smile360ng.com', '28/10/92', '{[ETHG3E,ytZ', '2021-03-16 16:53:48'),
(24, 'Feyisike', 'feyisike@Smile360ng.com', '1st July 1993', 'feyisike', '2021-03-16 17:36:51'),
(25, 'Olive Akunna', 'oliveakunna@gmail.com', '1st Dec', 'qbDIA0}3q-ju', '2021-03-19 06:39:00'),
(26, 'Olive Akunna', 'Oliveakunna@smile360ng.com', '1st Dec', 'qbDIA0}3q-ju', '2021-03-19 06:42:39'),
(27, 'Dr Amy', 'dramy@smile360ng.com', '23-01', 'Smile_360', '2021-03-30 11:52:14'),
(28, 'Dr Apara', 'drapara@smile360ng.com', '2nd-Aug', 'sanmex2g!', '2021-03-30 14:37:11'),
(29, 'dr sylvia amede', 'drsylvia@smile360ng.com', '22/08/87', '22^meDS!', '2021-03-31 13:15:17'),
(30, 'Olatunbi Obayemi', 'drtunbi@smile360ng.com', '9th Oct', '1234', '2021-03-31 15:33:36'),
(31, 'Latre', 'drlatrebakoshi@smile360ng.com', '12th-June', 'latre1', '2021-03-31 16:14:44'),
(32, 'Adebayo Jimoh', 'jimoh@smile360ng.com', '10th December', 'basit1508', '2021-04-01 09:26:27'),
(33, 'Adebayo Jimoh', 'jimoh@smile360ng.com', '10th December', 'basit1508', '2021-04-01 09:28:24'),
(34, 'Ebuka', 'ebuka.daniel@smile360ng.com', '30-08-90', 'ebukadaniel8', '2021-04-06 07:38:43'),
(35, 'Adekoya Daniel', 'daniel.adekoya@smile360ng.com', '30/Mar', 'opemiposi01', '2021-04-07 08:12:58'),
(36, 'Sanmi Apara ', 'drapara@smile360ng.com', '2nd-Aug', 'sanmex2g', '2021-04-27 13:50:14'),
(37, 'quadry', 'popoolaquadry@smile360ng.com', '', 'withsmile@360', '2021-04-30 14:08:09'),
(38, 'Ofoegbu Henry ', 'hc.ofoegbu@smile360ng.com', '1st-Apr', 'chukwuemeka1', '2021-05-04 06:44:53'),
(39, 'Akanbi hammed olanrewaju', 'akanbiolanrewaju89@gmail.com', '11th-Oct', 'Chelsea89', '2021-05-04 06:46:59'),
(40, 'Timothy', 'potalenumo@smile360ng.com', '08-11-93', 'bokun2020', '2021-05-04 06:47:42'),
(41, 'Damilola Ajewole ', 'ajewoledamilola94@gmail.com', '10th-March', 'Ajewole94 ', '2021-05-04 07:11:25'),
(42, 'Damilola Ajewole ', 'ajewoledamilola94@smile360ng.c', '10th-March', 'Ajewole94 ', '2021-05-04 07:14:46'),
(43, 'Ebuka', 'ebuka.daniel@smile360ng.come', '30-08-90', 'ebukadaniel8', '2021-05-04 07:42:28'),
(44, 'Adekunle Adefehinti', 'adekunle@smile360ng.com', '11th-Nov', 'smile360', '2021-05-04 07:44:21'),
(45, 'Chika ', 'chikachalokwu@smile360ng.com', '21st-sep', 'chika', '2021-05-04 07:59:51'),
(46, 'Damilola Isaac', 'drisaacdamilola@smile360ng.com', '15th-Dec', 'alolmoi89', '2021-05-04 08:07:30'),
(47, 'Faremi Abiola', 'abiolafaremi1982a@gmail.com', '16- Aug.', '1982', '2021-05-04 08:49:50'),
(48, 'Helena Usoro', 'lenausoro@smile360ng.com', '27th-Dec', 'MIGHTYGOD2020', '2021-05-05 10:12:16'),
(49, 'Alausa Latifat ', 'alausatifatadeola@gmail.com', 'March 5th ', '08188182954', '2021-05-05 16:47:28'),
(50, 'Alausa latifat', 'alausalatifatadeola@gmail.com', '5th- march', '08188182954', '2021-05-05 16:51:53'),
(51, 'Abiola Faremi', 'abiola@smile360.com', '16- Aug.', '1982', '2021-05-05 17:31:12'),
(52, 'Oluwaseun', 'oluwaseunakanji@smile360ng.com', '10th Oct', 'PoD(A8Jf4PIh', '2021-05-06 10:46:56'),
(53, 'Oluwaseun', 'oluwaseunakanji@smile360ng.com', '10th Oct', 'PoD(A8Jf4PIh', '2021-05-06 10:46:57'),
(54, 'Baderinwa Sunkanmi ', 'sunkanmi@smile360ng.com', '16th oct', 'mememe', '2021-05-11 09:48:52'),
(55, 'Maria Jones', 'mariaakwajie@smile360ng.com', '24th -Dec', 'maria@smile360', '2021-05-12 12:15:25'),
(56, 'Faidat fasasi', 'faidat.fasasi@smile360ng.com', '28/10/1992', 'omowunmi', '2021-05-17 16:23:40'),
(57, 'Umolu Amanda Nwamaka ', 'dramaka@smile360ng.com', '18th June', 'romeosluv', '2021-05-17 20:47:15'),
(58, 'Dr. Tunbi', 'drtunbi@smile360ng.com', '9th October ', '1234', '2021-05-29 12:46:53'),
(59, 'Latifat ', 'latifat.adeola@smile360ng.com', '12/5/1990', '08188182954', '2021-06-02 11:34:28'),
(60, 'Latifat ', 'latifat.adeola@smile360ng.com', '12/5/1990', '08188182954', '2021-06-04 21:11:55'),
(61, 'uyi Okankan Ayevbuomwan', 'uyiosahon24@gmail.com', '24th-NOV', 'uyiosa24', '2021-06-17 09:00:57'),
(62, 'Ajewole Damilola ', 'ajewoledamilola94@smile360ng.c', '15/3/94', 'Ajewole94', '2021-06-29 15:34:49'),
(63, 'Damilola ', 'ajewoledamilola94@smile360ng.c', '10/03/94', '08166614442', '2021-06-29 15:53:02'),
(64, 'Damilola Ajewole ', 'ajewoledamilola94@smile360ng.c', '12/3/94', 'ajewole', '2021-06-29 17:41:05'),
(65, 'Yetunde Fadeyi', 'yetunde@smile360ng.com', '20-4-1990', 'yetunde@89', '2021-07-05 12:07:03'),
(66, 'Yetunde Fadeyi', 'yetunde@smile360ng.com', '20-4-1990', 'yetunde@89', '2021-07-05 12:07:38'),
(67, 'Juliet', 'juliet@smile360.com', '11th Mar', 'modesola', '2021-07-16 01:11:21'),
(68, 'Zainab', 'drzainab@smileng.com', '', 'zee360', '2021-07-17 17:36:22'),
(69, 'Zainab', 'drzainab@smile360ng.com', '', 'zee360', '2021-07-17 17:39:34'),
(70, 'Olive', 'Oliveakunna@gmail.com', '1st Dec', 'laiceps1', '2021-07-27 11:54:50'),
(71, 'Lawal omowunmi kafayat ', 'kafayat.lawal@smileng.com', '', 'rrTqRcS=OWG=', '2021-08-02 12:01:03'),
(72, 'Oluwaseun Akanji', 'oluwaseunakanji@smile360ng.com', '10th-Oct', 'lushen00', '2021-08-06 14:29:48'),
(73, 'Oluchi', 'oluchi@smile360ng.com', '20-09-1989', 'smilemimi', '2021-08-16 17:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status`) VALUES
(1, 'Pending Rrequest'),
(2, 'In-Treatment'),
(3, 'Action Required'),
(4, 'Archived');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `email`, `role`, `password`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Indexes for table `doctorsprofile`
--
ALTER TABLE `doctorsprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffprofile`
--
ALTER TABLE `staffprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctorsprofile`
--
ALTER TABLE `doctorsprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staffprofile`
--
ALTER TABLE `staffprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
