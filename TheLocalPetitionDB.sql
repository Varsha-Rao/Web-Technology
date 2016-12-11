-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2016 at 06:17 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TheLocalPetitionDBDuplicate`
--

-- --------------------------------------------------------

--
-- Table structure for table `authoritiesTable`
--

CREATE TABLE `authoritiesTable` (
  `authorityID` int(11) NOT NULL,
  `authority` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authoritiesTable`
--

INSERT INTO `authoritiesTable` (`authorityID`, `authority`) VALUES
(1, 'Police'),
(2, 'Hospital'),
(3, 'BWSSB'),
(4, 'BDA'),
(5, 'BESCOM');

-- --------------------------------------------------------

--
-- Table structure for table `globalNewsfeedTable`
--

CREATE TABLE `globalNewsfeedTable` (
  `postID` int(11) NOT NULL,
  `userIDFrom` int(11) NOT NULL,
  `userIDTo` int(11) NOT NULL,
  `authorityIDTo` int(11) NOT NULL,
  `authorityIDFrom` int(11) NOT NULL,
  `localityID` int(11) NOT NULL,
  `postTitle` text NOT NULL,
  `postText` text NOT NULL,
  `postType` text NOT NULL,
  `numberOfSupports` int(11) NOT NULL,
  `numberOfReposts` int(11) NOT NULL,
  `numberOfRemarks` int(11) NOT NULL,
  `userIDsOfRemarkers` text NOT NULL,
  `stringOfRemarks` text NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `petitionClosed` tinyint(1) NOT NULL,
  `eventWhere` text NOT NULL,
  `eventStart` datetime NOT NULL,
  `eventEnd` datetime NOT NULL,
  `postPicture` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `globalUserTable`
--

CREATE TABLE `globalUserTable` (
  `userID` int(11) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `myEmail` varchar(250) NOT NULL,
  `myLocality` text NOT NULL,
  `myCity` text NOT NULL,
  `myState` text NOT NULL,
  `myCountry` text NOT NULL,
  `myPhoneNumber` bigint(20) NOT NULL,
  `myPassword` varchar(64) NOT NULL,
  `myFollowing` text NOT NULL,
  `myFollowers` text NOT NULL,
  `myLocalities` text NOT NULL,
  `myProfilePicture` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locationsTable`
--

CREATE TABLE `locationsTable` (
  `locationID` int(11) NOT NULL,
  `locality` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locationsTable`
--

INSERT INTO `locationsTable` (`locationID`, `locality`) VALUES
(1, 'Airport Area'),
(2, 'Airport Road'),
(3, 'Banashankari'),
(4, 'Banaswadi'),
(5, 'Bannerghatta Road'),
(6, 'Basavanagudi'),
(7, 'Basaveshwaranagar'),
(8, 'Bommanahalli'),
(9, 'BTM Layout'),
(10, 'C V Raman Nagar'),
(11, 'Chamarajpet'),
(12, 'Chikkajala'),
(13, 'Cox Town'),
(14, 'Devanahalli'),
(15, 'Domlur'),
(16, 'Electronic City'),
(17, 'Hanumanth Nagar'),
(18, 'Hebbal'),
(19, 'Hennur'),
(20, 'Horamavu'),
(21, 'Hoskote'),
(22, 'Hosur Road'),
(23, 'HSR Layout'),
(24, 'Indira Nagar'),
(25, 'Jakkur'),
(26, 'Jalahalli'),
(27, 'Jayanagar'),
(28, 'Jeevan Bima Nagar'),
(29, 'JP Nagar'),
(30, 'Kalyan Nagar'),
(31, 'Kanakapura Road'),
(32, 'Kengeri'),
(33, 'Koramangala'),
(34, 'KR Puram'),
(35, 'Kumaraswamy Layout'),
(36, 'Kundalahalli'),
(37, 'Madiwala'),
(38, 'Magadi Road'),
(39, 'Majestic'),
(40, 'Malleshwaram'),
(41, 'Marathahalli'),
(42, 'Mathikere'),
(43, 'MG Road'),
(44, 'Mysore Road'),
(45, 'Nagarbhavi'),
(46, 'Nagawara'),
(47, 'Old Airport Road'),
(48, 'OMBR Layout'),
(49, 'Padmanabhanagar'),
(50, 'Peenya'),
(51, 'Rajajinagar'),
(52, 'Rajarajeshwari Nagar'),
(53, 'Ramamurthy Nagar'),
(54, 'Richmond Road'),
(55, 'RT Nagar'),
(56, 'Sahakar Nagar'),
(57, 'Sanjay Nagar'),
(58, 'Sarjapur'),
(59, 'Shanti Nagar'),
(60, 'Thippasandra'),
(61, 'Tippasandra'),
(62, 'Ulsoor'),
(63, 'Uttarahalli'),
(64, 'Vidyanagar'),
(65, 'Vijaya Bank Layout'),
(66, 'Vijayanagar'),
(67, 'Whitefield'),
(68, 'Yelahanka'),
(69, 'Yeshwantpur');

-- --------------------------------------------------------

--
-- Table structure for table `userNewsfeed_Template`
--

CREATE TABLE `userNewsfeed_Template` (
  `postID` int(11) NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hasSupportedGlobal` tinyint(1) NOT NULL,
  `stringRepost` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userNotifications_Template`
--

CREATE TABLE `userNotifications_Template` (
  `postID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `notificationText` text NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authoritiesTable`
--
ALTER TABLE `authoritiesTable`
  ADD PRIMARY KEY (`authorityID`);

--
-- Indexes for table `globalNewsfeedTable`
--
ALTER TABLE `globalNewsfeedTable`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `globalUserTable`
--
ALTER TABLE `globalUserTable`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `locationsTable`
--
ALTER TABLE `locationsTable`
  ADD PRIMARY KEY (`locationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authoritiesTable`
--
ALTER TABLE `authoritiesTable`
  MODIFY `authorityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `globalNewsfeedTable`
--
ALTER TABLE `globalNewsfeedTable`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `globalUserTable`
--
ALTER TABLE `globalUserTable`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locationsTable`
--
ALTER TABLE `locationsTable`
  MODIFY `locationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
