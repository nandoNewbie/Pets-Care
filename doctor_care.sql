-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 08:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `channelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL,
  `jam` varchar(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channelno`, `doctorname`, `patientname`, `roomno`, `date`, `jam`, `log_id`, `status`) VALUES
('CH001', 'DC001', 'PS001', 1, '2024-01-03', '09:00', 6, 'Accept'),
('CH002', 'DC001', 'PS002', 2, '2024-01-03', '10:00', 7, 'Reject'),
('CH003', 'DC001', 'PS001', 0, '2024-01-03', '11:00', 6, 'pending'),
('CH005', 'DC002', 'PS004', 2, '2024-01-07', '10:00', 6, 'Accept'),
('CH006', 'DC002', 'PS004', 0, '2024-01-07', '09:00', 6, 'pending'),
('CH007', 'DC002', 'PS004', 0, '2024-01-07', '12:00', 6, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `spesialisasi` varchar(255) NOT NULL,
  `sertifikasi` varchar(255) NOT NULL,
  `Biaya` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `usia` int(11) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `nama`, `spesialisasi`, `sertifikasi`, `Biaya`, `status`, `usia`, `log_id`) VALUES
('DC001', 'Alexander Wicaksana ', 'THT ', 'ISAC - USA', 150000, 'Deactive', 27, 1),
('DC002', 'Rendra ', 'Forensik Veteriner', 'ECFMG - Euro', 750000, 'Active', 20, 3),
('DC003', 'Bella Marcelina', 'Umum', 'ISS - Jakarta', 50000, 'Active', 18, 2),
('DC004', 'Evelyn Wahyu Callista', 'Bedah', 'MIC - Surabaya', 250000, 'Active', 20, 9),
('DC005', 'Farhan', 'Umum', 'UDSC ', 100000, 'Deactive', 25, 4);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Nopatient` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nohp` int(15) NOT NULL,
  `nama_hewan` varchar(255) NOT NULL,
  `Jenis_hewan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Nopatient`, `nama_pemilik`, `email`, `nohp`, `nama_hewan`, `Jenis_hewan`, `alamat`, `log_id`) VALUES
('PS001', 'Pasien1', 'pasien1@gmail.com', 8123141, 'Rahel', 'kucing', 'New Dallas', 6),
('PS002', 'Pasien2', 'Pasien2@gmail.com', 1327911, 'Garfield', 'Anjing', 'Washington D.C', 7),
('PS003', 'pasien3', 'aassa@gmail.com', 32243243, 'hewan', 'skhadh', 'efwfew', 6),
('PS004', 'baru', 'baru@gmail.com', 12345678, 'fedf', 'efe', 'rumah', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userrname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `userrname`, `password`, `Role`) VALUES
(1, 'Alexander Wicaksana', 'alexander', 'alexander', 'Doctor'),
(2, 'Bella Marcelina', 'bella', 'bella', 'Doctor'),
(3, 'Rendra Prasetyo', 'rendra', 'rendra', 'Doctor'),
(4, 'Farhan', 'farhan', 'farhan', 'Doctor'),
(5, 'Margareth Nyoto Wijaya', 'margaretha', 'margaretha', 'Doctor'),
(6, 'pasien1', 'pasien1', 'pasien1', 'Patient'),
(7, 'pasien2', 'pasien2', 'pasien2', 'Patient'),
(8, 'admin', 'admin', 'admin', 'Admin'),
(9, 'Evelyn Wahyu Callista', 'evelyn', 'evelyn', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channelno`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Nopatient`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
