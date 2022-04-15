-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 09:52 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kcc`
--

-- --------------------------------------------------------

--
-- Table structure for table `competitiondetails`
--

CREATE TABLE `competitiondetails` (
  `index123` int(11) NOT NULL,
  `competitionname` varchar(50) DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `time1` time DEFAULT NULL,
  `time2` time DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `applicantno` int(3) DEFAULT NULL,
  `venue` varchar(50) DEFAULT NULL,
  `organizer` varchar(30) DEFAULT NULL,
  `sponsor1` varchar(30) DEFAULT NULL,
  `sponsor2` varchar(30) DEFAULT NULL,
  `sponsor3` varchar(30) DEFAULT NULL,
  `sponsor4` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `competitiondetails`
--

INSERT INTO `competitiondetails` (`index123`, `competitionname`, `date1`, `time1`, `time2`, `theme`, `applicantno`, `venue`, `organizer`, `sponsor1`, `sponsor2`, `sponsor3`, `sponsor4`) VALUES
(55, '1 Malaysia', '2021-06-30', '14:43:00', '14:43:00', '1 Malaysia', 10, 'JYP Hotel', 'JYP Entertainment', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contestant`
--

CREATE TABLE `contestant` (
  `serialNo` int(11) NOT NULL,
  `index_Dummy` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Parent_Name` varchar(100) DEFAULT NULL,
  `Contact_Number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contestant`
--

INSERT INTO `contestant` (`serialNo`, `index_Dummy`, `Name`, `Age`, `Gender`, `DOB`, `Parent_Name`, `Contact_Number`) VALUES
(1, 0, 'Nur Athirah Binti BadrulHisham', 5, 'female', '2016-06-21', 'Siti Mariam Binti Yunos', '0123698753'),
(2, 0, 'Mohd Aiman Bin Omar', 6, 'male', '2015-05-12', 'Omar Bin Mohd', '0145687923'),
(3, 0, 'Mohd Hizami Bin Azmi', 4, 'male', '2017-08-23', 'Azmi Bin Aziz', '0199570468'),
(4, 0, 'Mohd Amirul Alif Bin Muahmad', 6, 'male', '2015-03-15', 'Muahmad Bin Muhammad', '0178945631'),
(5, 0, 'Siti Nadhirah Binti Rizal', 6, 'female', '2015-09-15', 'Rizal Bin Wahab', '0185642136'),
(6, 0, 'Nur Nadhirah Binti Mahaniza', 5, 'female', '2016-07-08', 'Rokiah Bin Awang', '01119978456'),
(7, 0, 'Nur Shaqirah Binti Shamre', 5, 'female', '2016-05-17', 'Shamre Bin Zainal', '0132335467'),
(8, 0, 'Aisyah Humairah Binti Mohd Razis', 6, 'female', '2015-07-27', 'Mohd Razis Bin Nawi', '01127724810'),
(9, 0, 'Khairul Naim Bin Nizam', 4, 'male', '2017-01-25', 'Nizam Bin Zakaria', '0147852369'),
(10, 0, 'Nasha Binti Che Mohamad', 6, 'female', '2015-03-29', 'Che Mohamad', '0123654789'),
(11, 0, 'Nasuha Bin Razali', 5, 'female', '2016-03-23', 'Razali Bin Ghazali', '0123654781'),
(12, 0, 'Haqiem Bin Rusli', 4, 'male', '2017-06-25', 'Rusli Bin Mohd', '01123654178'),
(13, 0, 'Nur Farhana Binti Rohaizad', 6, 'female', '2015-07-12', 'Rohaizad Bin Yahya', '0145879654'),
(14, 0, 'Syifa Athirah Binti Zainal', 5, 'female', '2016-01-24', 'Zainail Bin Abidin', '0165478932'),
(15, 0, 'Amreel Nuqman Bin Anuar', 5, 'male', '2016-12-24', 'Anuar Bin Mohamed', '0174895763'),
(16, 0, 'Hasif Iskandar Bin Luqman', 4, 'male', '2017-11-04', 'Luqman Bin Hakim', '0198745621'),
(17, 0, 'Hasif Iskandar Bin Luqman', 4, 'male', '2017-11-04', 'Luqman Bin Hakim', '0198745621'),
(18, 0, 'Iman Fitri Bin Rohaizad', 5, 'male', '2016-01-14', 'Rohaizad Bin Yahya', '014587');

-- --------------------------------------------------------

--
-- Table structure for table `prizedetails`
--

CREATE TABLE `prizedetails` (
  `prizeID` int(11) NOT NULL,
  `prize1` varchar(50) NOT NULL,
  `prize2` varchar(50) DEFAULT NULL,
  `prize3` varchar(50) DEFAULT NULL,
  `prize4` varchar(50) DEFAULT NULL,
  `prize5` varchar(50) DEFAULT NULL,
  `allContesters` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prizedetails`
--

INSERT INTO `prizedetails` (`prizeID`, `prize1`, `prize2`, `prize3`, `prize4`, `prize5`, `allContesters`) VALUES
(385, 'TeddyBear', 'Lamboghini', 'Porsche', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `ranking` int(11) NOT NULL,
  `serialNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scoring`
--

CREATE TABLE `scoring` (
  `serialNo` int(11) NOT NULL,
  `Marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scoring`
--

INSERT INTO `scoring` (`serialNo`, `Marks`) VALUES
(3, 4),
(3, 4),
(3, 4),
(3, 4),
(3, 4),
(3, 7),
(3, 4),
(3, 7),
(4, 6),
(3, 7),
(4, 6),
(3, 7),
(4, 6),
(3, 7),
(4, 6),
(3, 7),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `viewscoring`
--

CREATE TABLE `viewscoring` (
  `vs_index` int(11) NOT NULL,
  `serialNo` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `marks` int(11) NOT NULL,
  `tableName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewscoring`
--

INSERT INTO `viewscoring` (`vs_index`, `serialNo`, `name`, `marks`, `tableName`) VALUES
(1233, 1, 'Nur Athirah Binti BadrulHisham', 0, NULL),
(1234, 2, 'Mohd Aiman Bin Omar', 14, NULL),
(1235, 3, 'Mohd Hizami Bin Azmi', 19, NULL),
(1236, 4, 'Mohd Amirul Alif Bin Muahmad', 10, NULL),
(1237, 5, 'Siti Nadhirah Binti Rizal', 6, NULL),
(1318, 6, 'Nur Nadhirah Binti Mahaniza', 0, NULL),
(1319, 7, 'Nur Shaqirah Binti Shamre', 0, NULL),
(1320, 8, 'Aisyah Humairah Binti Mohd Razis', 0, NULL),
(1321, 9, 'Khairul Naim Bin Nizam', 0, NULL),
(1322, 10, 'Nasha Binti Che Mohamad', 0, NULL),
(1323, 11, 'Nasuha Bin Razali', 0, NULL),
(1324, 12, 'Haqiem Bin Rusli', 0, NULL),
(1325, 13, 'Nur Farhana Binti Rohaizad', 0, NULL),
(1326, 14, 'Syifa Athirah Binti Zainal', 0, NULL),
(1327, 15, 'Amreel Nuqman Bin Anuar', 0, NULL),
(1328, 16, 'Hasif Iskandar Bin Luqman', 0, NULL),
(1329, 17, 'Hasif Iskandar Bin Luqman', 0, NULL),
(1330, 18, 'Iman Fitri Bin Rohaizad', 0, NULL),
(2245, 19, 'Hasif bin Hasan', 20, 'contestant'),
(5548, 20, 'Ahmad bin Jamaah', 10, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competitiondetails`
--
ALTER TABLE `competitiondetails`
  ADD PRIMARY KEY (`index123`);

--
-- Indexes for table `contestant`
--
ALTER TABLE `contestant`
  ADD PRIMARY KEY (`serialNo`);

--
-- Indexes for table `prizedetails`
--
ALTER TABLE `prizedetails`
  ADD PRIMARY KEY (`prizeID`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`ranking`),
  ADD KEY `fk_serialNo_results` (`serialNo`);

--
-- Indexes for table `scoring`
--
ALTER TABLE `scoring`
  ADD KEY `fk_serialNo` (`serialNo`);

--
-- Indexes for table `viewscoring`
--
ALTER TABLE `viewscoring`
  ADD PRIMARY KEY (`vs_index`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competitiondetails`
--
ALTER TABLE `competitiondetails`
  MODIFY `index123` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `contestant`
--
ALTER TABLE `contestant`
  MODIFY `serialNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `ranking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `viewscoring`
--
ALTER TABLE `viewscoring`
  MODIFY `vs_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5549;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_serialNo_results` FOREIGN KEY (`serialNo`) REFERENCES `user` (`serialNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
