-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 04:07 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Chimdi Vio', 'admin', 8765398765, 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-03-10 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbldirectory`
--

CREATE TABLE `tbldirectory` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Profession` varchar(120) DEFAULT NULL,
  `Email` varchar(120) NOT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` varchar(250) NOT NULL,
  `City` varchar(250) NOT NULL,
  `Status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldirectory`
--

INSERT INTO `tbldirectory` (`ID`, `FullName`, `Profession`, `Email`, `MobileNumber`, `Address`, `City`, `Status`) VALUES
(1, 'Obinna', 'Accountant', 'obinna@gmail.com', 9876509632, 'Enugu', 'Nigeria', '0'),
(2, 'Angelica', 'Chief Executive Officer (CEO)', 'angel@gmail.com', 4577890655, '78/780, Aroma, Awka', 'Anambra', '1'),
(3, 'Okoye Fred', 'Junior Technical Author', 'okoye@gmail.com', 4577890690, '67/50, address near Address', 'Enugu', '0'),
(4, 'Obinna', 'Accountant', 'obinna@gmail.com', 4577890655, '123 Okota Abia', 'Enugu', '1'),
(5, 'Joy', 'Software Engineer', 'joy@gmail.com', 6787655433, '123, Okota', 'Okota', '1'),
(6, 'John Doe', 'HR', 'john@gmail.com', 6877955435, ' Data complete, Aroma. Awka', 'Awka', '0'),
(7, 'Francis', 'Pre-Sales Support', 'francis@gmail.com', 9063735686, 'Near works road, Abia', 'Enugu', '0'),
(8, 'David Sunny', 'Senior Javascript Developer', 'sunny@gmail.com', 5764324679, 'New work area', 'Awka', '0'),
(9, 'Shaun Okoye', 'Team Leader', 'shaun@gmail.com', 9807531479, 'Ago palace way, Okota', 'Okota', '1'),
(10, 'Misha', 'Support Engineer', 'misha@gmail.com', 9876578965, 'Near Aroma works', 'Awka', '0'),
(11, 'Taiwo John', '	Office Manager', 'taiwo@gmail.com', 8098765654, 'Aroma, works road', 'Enugu', '1'),
(12, 'Dave', 'HR Executive', 'test@gmail.com', 7867564645, 'gjhgjkjhuyhkjuj', 'Enugu', '0'),
(13, 'Dave', 'HR Executive', 'test@gmail.com', 7867564645, 'gjhgjkjhuyhkjuj', 'Enugu', '1'),
(14, 'Manchi', 'CEO', 'manchi@gmail.com', 7865564534, 'hjyuklsdsdd', 'Enugu', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldirectory`
--
ALTER TABLE `tbldirectory`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldirectory`
--
ALTER TABLE `tbldirectory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
