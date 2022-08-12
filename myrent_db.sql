-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2021 at 03:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myrent_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bicycles`
--

CREATE TABLE `bicycles` (
  `bicyclename` varchar(150) NOT NULL,
  `Type` varchar(150) NOT NULL,
  `Rent` varchar(150) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bicycles`
--

INSERT INTO `bicycles` (`bicyclename`, `Type`, `Rent`, `ID`) VALUES
('Trek', 'Sports', 'gg', 1),
('rrttrtr', 'normal', '100', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE `bikes` (
  `bikename` varchar(150) NOT NULL,
  `Type` varchar(150) NOT NULL,
  `Rent` varchar(150) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`bikename`, `Type`, `Rent`, `ID`) VALUES
('Kawasaki', 'Sports', 'gg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `car` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL,
  `pickdate` varchar(500) NOT NULL,
  `returndate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookingBicycle`
--

CREATE TABLE `bookingBicycle` (
  `bookID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `bicycle` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL,
  `pickdate` varchar(500) NOT NULL,
  `returndate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookingBike`
--

CREATE TABLE `bookingBike` (
  `bookID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `bike` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL,
  `pickdate` varchar(500) NOT NULL,
  `returndate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookingLorry`
--

CREATE TABLE `bookingLorry` (
  `bookID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `lorry` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL,
  `pickdate` varchar(500) NOT NULL,
  `returndate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `carname` varchar(150) NOT NULL,
  `Type` varchar(150) NOT NULL,
  `Rent` varchar(150) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`carname`, `Type`, `Rent`, `ID`) VALUES
('Volvo', 'Sports', 'gg', 1),
('Rambo', 'normal', '100', 2),
('Rambo', 'normal', '100', 3),
('ppppp', 'normal', '100', 4);

-- --------------------------------------------------------

--
-- Table structure for table `lorries`
--

CREATE TABLE `lorries` (
  `lorryname` varchar(150) NOT NULL,
  `Type` varchar(150) NOT NULL,
  `Rent` varchar(150) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lorries`
--

INSERT INTO `lorries` (`lorryname`, `Type`, `Rent`, `ID`) VALUES
('Scania', 'Sports', 'gg', 1),
('ppppp', 'normal', '100', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pnum` int(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `mess` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Fullname`, `email`, `pnum`, `subject`, `mess`) VALUES
('aef', 'eaf@gmail.com', 0, 'afaef', 'hi welcome'),
('aaf', 'thar@gmail.com', 1231, 'eefsvsrvr', 'hola');

-- --------------------------------------------------------

--
-- Table structure for table `pendingVehicle`
--

CREATE TABLE `pendingVehicle` (
  `ID` int(11) NOT NULL,
  `vehicleName` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `rent` varchar(50) NOT NULL,
  `vehicleType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `pnum` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Admin` int(11) NOT NULL DEFAULT 1,
  `verified` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Firstname`, `Lastname`, `pnum`, `Email`, `username`, `password`, `Admin`, `verified`) VALUES
('Rentolo', 'rentolo', '', '', 'admin', '1234', 1, 1),
('david', '', '', '', 'david', '1234', 0, 1),
('AHMED', 'HASAN', '111111111', 'hasan@email.com', 'hasan', '1234', 0, 1),
('hola', 'mama', '', '', 'hola', '1234', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bicycles`
--
ALTER TABLE `bicycles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `bookingBicycle`
--
ALTER TABLE `bookingBicycle`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `bookingBike`
--
ALTER TABLE `bookingBike`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `bookingLorry`
--
ALTER TABLE `bookingLorry`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lorries`
--
ALTER TABLE `lorries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pendingVehicle`
--
ALTER TABLE `pendingVehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bicycles`
--
ALTER TABLE `bicycles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bikes`
--
ALTER TABLE `bikes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `bookingBicycle`
--
ALTER TABLE `bookingBicycle`
  MODIFY `bookID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookingBike`
--
ALTER TABLE `bookingBike`
  MODIFY `bookID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookingLorry`
--
ALTER TABLE `bookingLorry`
  MODIFY `bookID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lorries`
--
ALTER TABLE `lorries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendingVehicle`
--
ALTER TABLE `pendingVehicle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
