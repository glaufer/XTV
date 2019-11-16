-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 11:20 PM
-- Server version: 8.0.17
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dm2517`
--

-- --------------------------------------------------------

--
-- Table structure for table `broadcasts`
--

CREATE TABLE `broadcasts` (
  `id` varchar(5) NOT NULL,
  `channelID` varchar(3) NOT NULL,
  `episodeID` varchar(5) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `outsideSE` varchar(1) NOT NULL,
  `live` varchar(1) NOT NULL,
  `reprise` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `broadcasts`
--

INSERT INTO `broadcasts` (`id`, `channelID`, `episodeID`, `start`, `end`, `outsideSE`, `live`, `reprise`) VALUES
('b0001', 'c1', 'e043', '2019-11-11 05:15:00', '2019-11-11 06:00:00', 'Y', 'N', 'N'),
('b0002', 'c1', 'e068', '2019-11-11 06:00:00', '2019-11-11 09:10:00', 'Y', 'Y', 'N'),
('b0003', 'c1', 'e073', '2019-11-11 09:10:00', '2019-11-11 10:10:00', 'N', 'N', 'N'),
('b0004', 'c1', 'e043', '2019-11-11 10:10:00', '2019-11-11 10:55:00', 'Y', 'N', 'Y'),
('b0005', 'c1', 'e120', '2019-11-11 10:55:00', '2019-11-11 11:25:00', 'Y', 'Y', 'N'),
('b0006', 'c1', 'e012', '2019-11-11 11:25:00', '2019-11-11 12:25:00', 'Y', 'Y', 'N'),
('b0007', 'c1', 'e001', '2019-11-11 12:25:00', '2019-11-11 13:25:00', 'N', 'N', 'N'),
('b0008', 'c1', 'e124', '2019-11-11 13:25:00', '2019-11-11 13:55:00', 'Y', 'N', 'N'),
('b0009', 'c1', 'e110', '2019-11-11 13:55:00', '2019-11-11 14:55:00', 'N', 'N', 'N'),
('b0010', 'c1', 'e014', '2019-11-11 14:55:00', '2019-11-11 15:05:00', 'Y', 'N', 'N'),
('b0011', 'c1', 'e063', '2019-11-11 15:05:00', '2019-11-11 16:40:00', 'N', 'N', 'N'),
('b0012', 'c1', 'e029', '2019-11-11 16:40:00', '2019-11-11 17:30:00', 'N', 'N', 'N'),
('b0013', 'c1', 'e126', '2019-11-11 17:30:00', '2019-11-11 18:00:00', 'Y', 'Y', 'N'),
('b0014', 'c1', 'e080', '2019-11-11 18:00:00', '2019-11-11 18:15:00', 'Y', 'Y', 'N'),
('b0015', 'c1', 'e036', '2019-11-11 18:15:00', '2019-11-11 18:28:00', 'Y', 'Y', 'N'),
('b0016', 'c1', 'e112', '2019-11-11 18:28:00', '2019-11-11 18:33:00', 'Y', 'Y', 'N'),
('b0017', 'c1', 'e045', '2019-11-11 18:33:00', '2019-11-11 18:45:00', 'Y', 'N', 'N'),
('b0018', 'c1', 'e020', '2019-11-11 18:45:00', '2019-11-11 19:30:00', 'Y', 'Y', 'N'),
('b0019', 'c1', 'e081', '2019-11-11 19:30:00', '2019-11-11 19:55:00', 'Y', 'Y', 'N'),
('b0020', 'c1', 'e046', '2019-11-11 19:55:00', '2019-11-11 20:00:00', 'Y', 'N', 'N'),
('b0021', 'c1', 'e139', '2019-11-11 20:00:00', '2019-11-11 21:00:00', 'N', 'N', 'N'),
('b0022', 'c1', 'e104', '2019-11-11 21:00:00', '2019-11-11 21:30:00', 'N', 'N', 'N'),
('b0023', 'c1', 'e021', '2019-11-11 21:30:00', '2019-11-11 22:00:00', 'N', 'N', 'N'),
('b0024', 'c1', 'e133', '2019-11-11 22:00:00', '2019-11-11 22:50:00', 'N', 'N', 'N'),
('b0025', 'c1', 'e082', '2019-11-11 22:50:00', '2019-11-11 22:55:00', 'Y', 'Y', 'N'),
('b0026', 'c1', 'e075', '2019-11-11 22:55:00', '2019-11-12 00:35:00', 'N', 'N', 'N'),
('b0027', 'c1', 'e029', '2019-11-12 00:35:00', '2019-11-12 01:20:00', 'N', 'N', 'Y'),
('b0028', 'c1', 'e124', '2019-11-12 01:20:00', '2019-11-12 01:50:00', 'Y', 'N', 'Y'),
('b0029', 'c1', 'e027', '2019-11-12 01:50:00', '2019-11-12 02:20:00', 'N', 'N', 'N'),
('b0030', 'c1', 'e126', '2019-11-12 04:45:00', '2019-11-12 05:15:00', 'Y', 'N', 'Y'),
('b0031', 'c1', 'e020', '2019-11-12 05:15:00', '2019-11-12 06:00:00', 'Y', 'N', 'Y'),
('b0032', 'c1', 'e069', '2019-11-12 06:00:00', '2019-11-12 09:10:00', 'Y', 'Y', 'N'),
('b0033', 'c1', 'e137', '2019-11-12 09:10:00', '2019-11-12 09:55:00', 'Y', 'N', 'N'),
('b0034', 'c1', 'e020', '2019-11-12 09:55:00', '2019-11-12 10:40:00', 'Y', 'N', 'Y'),
('b0035', 'c1', 'e122', '2019-11-12 10:40:00', '2019-11-12 11:10:00', 'N', 'N', 'N'),
('b0036', 'c1', 'e019', '2019-11-12 11:10:00', '2019-11-12 11:40:00', 'N', 'N', 'N'),
('b0037', 'c1', 'e058', '2019-11-12 11:40:00', '2019-11-12 11:55:00', 'N', 'N', 'N'),
('b0038', 'c1', 'e065', '2019-11-12 11:55:00', '2019-11-12 12:00:00', 'N', 'N', 'N'),
('b0039', 'c1', 'e066', '2019-11-12 12:00:00', '2019-11-12 12:10:00', 'N', 'N', 'N'),
('b0040', 'c1', 'e131', '2019-11-12 12:10:00', '2019-11-12 12:40:00', 'N', 'N', 'N'),
('b0041', 'c1', 'e106', '2019-11-12 12:40:00', '2019-11-12 13:30:00', 'N', 'N', 'N'),
('b0042', 'c1', 'e102', '2019-11-12 13:30:00', '2019-11-12 14:00:00', 'N', 'Y', 'N'),
('b0043', 'c1', 'e015', '2019-11-12 14:00:00', '2019-11-12 15:00:00', 'N', 'N', 'N'),
('b0044', 'c1', 'e062', '2019-11-12 15:00:00', '2019-11-12 16:45:00', 'N', 'N', 'N'),
('b0045', 'c1', 'e030', '2019-11-12 16:45:00', '2019-11-12 17:30:00', 'N', 'N', 'N'),
('b0046', 'c1', 'e127', '2019-11-12 17:30:00', '2019-11-12 18:00:00', 'Y', 'Y', 'N'),
('b0047', 'c1', 'e083', '2019-11-12 18:00:00', '2019-11-12 18:15:00', 'Y', 'Y', 'N'),
('b0048', 'c1', 'e037', '2019-11-12 18:15:00', '2019-11-12 18:28:00', 'Y', 'Y', 'N'),
('b0049', 'c1', 'e113', '2019-11-12 18:28:00', '2019-11-12 18:33:00', 'Y', 'Y', 'N'),
('b0050', 'c1', 'e047', '2019-11-12 18:33:00', '2019-11-12 18:45:00', 'Y', 'N', 'N'),
('b0051', 'c1', 'e023', '2019-11-12 18:45:00', '2019-11-12 19:30:00', 'Y', 'Y', 'N'),
('b0052', 'c1', 'e084', '2019-11-12 19:30:00', '2019-11-12 19:55:00', 'Y', 'Y', 'N'),
('b0053', 'c1', 'e048', '2019-11-12 19:55:00', '2019-11-12 20:00:00', 'Y', 'N', 'N'),
('b0054', 'c1', 'e074', '2019-11-12 20:00:00', '2019-11-12 21:00:00', 'N', 'N', 'N'),
('b0055', 'c1', 'e010', '2019-11-12 21:00:00', '2019-11-12 22:00:00', 'Y', 'N', 'N'),
('b0056', 'c1', 'e079', '2019-11-12 22:00:00', '2019-11-12 22:30:00', 'Y', 'N', 'N'),
('b0057', 'c1', 'e022', '2019-11-12 22:30:00', '2019-11-12 23:00:00', 'N', 'N', 'N'),
('b0058', 'c1', 'e085', '2019-11-12 23:00:00', '2019-11-12 23:05:00', 'Y', 'Y', 'N'),
('b0059', 'c1', 'e030', '2019-11-12 23:05:00', '2019-11-12 23:50:00', 'N', 'N', 'Y'),
('b0060', 'c1', 'e001', '2019-11-12 23:50:00', '2019-11-13 00:50:00', 'N', 'N', 'Y'),
('b0061', 'c1', 'e108', '2019-11-13 00:50:00', '2019-11-13 01:10:00', 'N', 'N', 'N'),
('b0062', 'c1', 'e017', '2019-11-13 01:10:00', '2019-11-13 01:30:00', 'Y', 'N', 'N'),
('b0063', 'c1', 'e057', '2019-11-13 01:30:00', '2019-11-13 02:30:00', 'N', 'N', 'N'),
('b0064', 'c1', 'e127', '2019-11-13 04:45:00', '2019-11-13 05:15:00', 'Y', 'N', 'Y'),
('b0065', 'c1', 'e023', '2019-11-13 05:15:00', '2019-11-13 06:00:00', 'Y', 'N', 'Y'),
('b0066', 'c1', 'e070', '2019-11-13 06:00:00', '2019-11-13 09:10:00', 'Y', 'Y', 'N'),
('b0067', 'c1', 'e140', '2019-11-13 09:10:00', '2019-11-13 09:40:00', 'N', 'N', 'N'),
('b0068', 'c1', 'e023', '2019-11-13 09:40:00', '2019-11-13 10:25:00', 'Y', 'N', 'Y'),
('b0069', 'c1', 'e022', '2019-11-13 10:25:00', '2019-11-13 10:50:00', 'N', 'N', 'Y'),
('b0070', 'c1', 'e079', '2019-11-13 10:50:00', '2019-11-13 11:20:00', 'Y', 'N', 'Y'),
('b0071', 'c1', 'e104', '2019-11-13 11:20:00', '2019-11-13 11:50:00', 'N', 'N', 'Y'),
('b0072', 'c1', 'e010', '2019-11-13 11:50:00', '2019-11-13 12:50:00', 'Y', 'N', 'Y'),
('b0073', 'c1', 'e057', '2019-11-13 12:50:00', '2019-11-13 13:50:00', 'N', 'N', 'Y'),
('b0074', 'c1', 'e074', '2019-11-13 13:50:00', '2019-11-13 14:50:00', 'N', 'N', 'Y'),
('b0075', 'c1', 'e061', '2019-11-13 14:50:00', '2019-11-13 16:45:00', 'N', 'N', 'N'),
('b0076', 'c1', 'e031', '2019-11-13 16:45:00', '2019-11-13 17:30:00', 'N', 'N', 'N'),
('b0077', 'c1', 'e128', '2019-11-13 17:30:00', '2019-11-13 18:00:00', 'Y', 'Y', 'N'),
('b0078', 'c1', 'e086', '2019-11-13 18:00:00', '2019-11-13 18:15:00', 'Y', 'Y', 'N'),
('b0079', 'c1', 'e038', '2019-11-13 18:15:00', '2019-11-13 18:28:00', 'Y', 'Y', 'N'),
('b0080', 'c1', 'e114', '2019-11-13 18:28:00', '2019-11-13 18:33:00', 'Y', 'Y', 'N'),
('b0081', 'c1', 'e049', '2019-11-13 18:33:00', '2019-11-13 18:45:00', 'Y', 'N', 'N'),
('b0082', 'c1', 'e024', '2019-11-13 18:45:00', '2019-11-13 19:30:00', 'Y', 'Y', 'N'),
('b0083', 'c1', 'e087', '2019-11-13 19:30:00', '2019-11-13 19:55:00', 'Y', 'Y', 'N'),
('b0084', 'c1', 'e050', '2019-11-13 19:55:00', '2019-11-13 20:00:00', 'Y', 'N', 'N'),
('b0085', 'c1', 'e135', '2019-11-13 20:00:00', '2019-11-13 21:00:00', 'Y', 'N', 'N'),
('b0086', 'c1', 'e009', '2019-11-13 21:00:00', '2019-11-13 22:00:00', 'Y', 'N', 'N'),
('b0087', 'c1', 'e105', '2019-11-13 22:00:00', '2019-11-13 22:30:00', 'N', 'N', 'N'),
('b0088', 'c1', 'e059', '2019-11-13 22:30:00', '2019-11-13 22:45:00', 'N', 'N', 'N'),
('b0089', 'c1', 'e067', '2019-11-13 22:45:00', '2019-11-13 22:55:00', 'N', 'N', 'N'),
('b0090', 'c1', 'e109', '2019-11-13 22:55:00', '2019-11-13 23:15:00', 'N', 'N', 'N'),
('b0091', 'c1', 'e088', '2019-11-13 23:15:00', '2019-11-13 23:20:00', 'Y', 'Y', 'N'),
('b0092', 'c1', 'e031', '2019-11-13 23:20:00', '2019-11-14 00:05:00', 'N', 'N', 'Y'),
('b0093', 'c1', 'e140', '2019-11-14 00:05:00', '2019-11-14 00:35:00', 'N', 'N', 'Y'),
('b0094', 'c1', 'e104', '2019-11-14 00:35:00', '2019-11-14 01:35:00', 'N', 'N', 'Y'),
('b0095', 'c1', 'e021', '2019-11-14 01:35:00', '2019-11-14 02:05:00', 'N', 'N', 'Y'),
('b0096', 'c1', 'e041', '2019-11-14 02:05:00', '2019-11-14 02:20:00', 'N', 'N', 'N'),
('b0097', 'c1', 'e128', '2019-11-14 04:45:00', '2019-11-14 05:15:00', 'Y', 'N', 'Y'),
('b0098', 'c1', 'e024', '2019-11-14 05:15:00', '2019-11-14 06:00:00', 'Y', 'N', 'Y'),
('b0099', 'c1', 'e071', '2019-11-14 06:00:00', '2019-11-14 09:10:00', 'Y', 'Y', 'N'),
('b0100', 'c1', 'e141', '2019-11-14 09:10:00', '2019-11-14 09:40:00', 'N', 'N', 'N'),
('b0101', 'c1', 'e024', '2019-11-14 09:40:00', '2019-11-14 10:25:00', 'Y', 'N', 'Y'),
('b0102', 'c1', 'e012', '2019-11-14 10:25:00', '2019-11-14 11:25:00', 'Y', 'N', 'Y'),
('b0103', 'c1', 'e110', '2019-11-14 11:25:00', '2019-11-14 12:25:00', 'N', 'N', 'Y'),
('b0104', 'c1', 'e011', '2019-11-14 12:25:00', '2019-11-14 12:30:00', 'Y', 'N', 'N'),
('b0105', 'c1', 'e009', '2019-11-14 12:30:00', '2019-11-14 13:30:00', 'Y', 'N', 'Y'),
('b0106', 'c1', 'e124', '2019-11-14 13:30:00', '2019-11-14 14:00:00', 'Y', 'N', 'Y'),
('b0107', 'c1', 'e002', '2019-11-14 14:00:00', '2019-11-14 15:00:00', 'N', 'N', 'Y'),
('b0108', 'c1', 'e135', '2019-11-14 15:00:00', '2019-11-14 16:00:00', 'Y', 'N', 'Y'),
('b0109', 'c1', 'e139', '2019-11-14 16:00:00', '2019-11-14 17:00:00', 'N', 'N', 'Y'),
('b0110', 'c1', 'e123', '2019-11-14 17:00:00', '2019-11-14 17:30:00', 'N', 'N', 'N'),
('b0111', 'c1', 'e129', '2019-11-14 17:30:00', '2019-11-14 18:00:00', 'Y', 'Y', 'N'),
('b0112', 'c1', 'e089', '2019-11-14 18:00:00', '2019-11-14 18:15:00', 'Y', 'Y', 'N'),
('b0113', 'c1', 'e039', '2019-11-14 18:15:00', '2019-11-14 18:28:00', 'Y', 'Y', 'N'),
('b0114', 'c1', 'e115', '2019-11-14 18:28:00', '2019-11-14 18:33:00', 'Y', 'Y', 'N'),
('b0115', 'c1', 'e051', '2019-11-14 18:33:00', '2019-11-14 18:45:00', 'Y', 'N', 'N'),
('b0116', 'c1', 'e025', '2019-11-14 18:45:00', '2019-11-14 19:30:00', 'Y', 'Y', 'N'),
('b0117', 'c1', 'e090', '2019-11-14 19:30:00', '2019-11-14 19:55:00', 'Y', 'Y', 'N'),
('b0118', 'c1', 'e052', '2019-11-14 19:55:00', '2019-11-14 20:00:00', 'Y', 'N', 'N'),
('b0119', 'c1', 'e005', '2019-11-14 20:00:00', '2019-11-14 21:00:00', 'Y', 'N', 'N'),
('b0120', 'c1', 'e136', '2019-11-14 21:00:00', '2019-11-14 22:00:00', 'N', 'N', 'N'),
('b0121', 'c1', 'e078', '2019-11-14 22:00:00', '2019-11-14 22:45:00', 'Y', 'Y', 'Y'),
('b0122', 'c1', 'e035', '2019-11-14 22:45:00', '2019-11-14 23:15:00', 'Y', 'N', 'N'),
('b0123', 'c1', 'e091', '2019-11-14 23:15:00', '2019-11-14 23:20:00', 'Y', 'Y', 'N'),
('b0124', 'c1', 'e141', '2019-11-14 23:20:00', '2019-11-14 23:50:00', 'N', 'N', 'Y'),
('b0125', 'c1', 'e139', '2019-11-14 23:50:00', '2019-11-15 00:50:00', 'N', 'N', 'Y'),
('b0126', 'c1', 'e074', '2019-11-15 00:50:00', '2019-11-15 01:50:00', 'N', 'N', 'Y'),
('b0127', 'c1', 'e079', '2019-11-15 01:50:00', '2019-11-15 02:20:00', 'Y', 'N', 'Y'),
('b0128', 'c1', 'e129', '2019-11-15 04:45:00', '2019-11-15 05:15:00', 'Y', 'N', 'Y'),
('b0129', 'c1', 'e025', '2019-11-15 05:15:00', '2019-11-15 06:00:00', 'Y', 'N', 'Y'),
('b0130', 'c1', 'e072', '2019-11-15 06:00:00', '2019-11-15 09:10:00', 'Y', 'Y', 'N'),
('b0131', 'c1', 'e142', '2019-11-15 09:10:00', '2019-11-15 09:40:00', 'N', 'N', 'N'),
('b0132', 'c1', 'e025', '2019-11-15 09:40:00', '2019-11-15 10:25:00', 'Y', 'N', 'Y'),
('b0133', 'c1', 'e003', '2019-11-15 10:25:00', '2019-11-15 10:55:00', 'N', 'N', 'N'),
('b0134', 'c1', 'e106', '2019-11-15 10:55:00', '2019-11-15 11:45:00', 'N', 'N', 'Y'),
('b0135', 'c1', 'e005', '2019-11-15 11:45:00', '2019-11-15 12:45:00', 'Y', 'N', 'Y'),
('b0136', 'c1', 'e077', '2019-11-15 12:45:00', '2019-11-15 13:00:00', 'N', 'N', 'N'),
('b0137', 'c1', 'e010', '2019-11-15 13:00:00', '2019-11-15 14:00:00', 'Y', 'N', 'Y'),
('b0138', 'c1', 'e078', '2019-11-15 14:00:00', '2019-11-15 14:45:00', 'Y', 'Y', 'N'),
('b0139', 'c1', 'e104', '2019-11-15 14:45:00', '2019-11-15 15:15:00', 'N', 'N', 'Y'),
('b0140', 'c1', 'e021', '2019-11-15 15:15:00', '2019-11-15 15:45:00', 'N', 'N', 'Y'),
('b0141', 'c1', 'e137', '2019-11-15 15:45:00', '2019-11-15 16:30:00', 'Y', 'N', 'Y'),
('b0142', 'c1', 'e016', '2019-11-15 16:30:00', '2019-11-15 17:30:00', 'N', 'N', 'N'),
('b0143', 'c1', 'e130', '2019-11-15 17:30:00', '2019-11-15 18:00:00', 'Y', 'Y', 'N'),
('b0144', 'c1', 'e092', '2019-11-15 18:00:00', '2019-11-15 18:15:00', 'Y', 'Y', 'N'),
('b0145', 'c1', 'e040', '2019-11-15 18:15:00', '2019-11-15 18:28:00', 'Y', 'Y', 'N'),
('b0146', 'c1', 'e116', '2019-11-15 18:28:00', '2019-11-15 18:33:00', 'Y', 'Y', 'N'),
('b0147', 'c1', 'e053', '2019-11-15 18:33:00', '2019-11-15 18:45:00', 'Y', 'N', 'N'),
('b0148', 'c1', 'e026', '2019-11-15 18:45:00', '2019-11-15 19:30:00', 'Y', 'Y', 'N'),
('b0149', 'c1', 'e093', '2019-11-15 19:30:00', '2019-11-15 19:55:00', 'Y', 'Y', 'N'),
('b0150', 'c1', 'e054', '2019-11-15 19:55:00', '2019-11-15 20:00:00', 'Y', 'N', 'N'),
('b0151', 'c1', 'e013', '2019-11-15 20:00:00', '2019-11-15 21:00:00', 'Y', 'Y', 'N'),
('b0152', 'c1', 'e111', '2019-11-15 21:00:00', '2019-11-15 22:00:00', 'N', 'N', 'N'),
('b0153', 'c1', 'e125', '2019-11-15 22:00:00', '2019-11-15 22:30:00', 'N', 'N', 'N'),
('b0154', 'c1', 'e134', '2019-11-15 22:30:00', '2019-11-15 23:15:00', 'N', 'N', 'N'),
('b0155', 'c1', 'e042', '2019-11-15 23:15:00', '2019-11-15 23:30:00', 'N', 'N', 'N'),
('b0156', 'c1', 'e094', '2019-11-15 23:30:00', '2019-11-15 23:35:00', 'Y', 'Y', 'N'),
('b0157', 'c1', 'e142', '2019-11-15 23:35:00', '2019-11-16 00:05:00', 'N', 'N', 'Y'),
('b0158', 'c1', 'e032', '2019-11-16 00:05:00', '2019-11-16 01:05:00', 'N', 'N', 'N'),
('b0159', 'c1', 'e136', '2019-11-16 01:05:00', '2019-11-16 02:05:00', 'N', 'N', 'Y'),
('b0160', 'c1', 'e130', '2019-11-16 04:45:00', '2019-11-16 05:15:00', 'Y', 'N', 'Y'),
('b0161', 'c1', 'e026', '2019-11-16 05:15:00', '2019-11-16 06:00:00', 'Y', 'N', 'Y'),
('b0162', 'c1', 'e020', '2019-11-16 06:00:00', '2019-11-16 06:45:00', 'Y', 'N', 'Y'),
('b0163', 'c1', 'e078', '2019-11-16 06:45:00', '2019-11-16 07:30:00', 'Y', 'Y', 'N'),
('b0164', 'c1', 'e135', '2019-11-16 07:30:00', '2019-11-16 08:30:00', 'Y', 'N', 'Y'),
('b0165', 'c1', 'e079', '2019-11-16 08:30:00', '2019-11-16 09:00:00', 'Y', 'N', 'Y'),
('b0166', 'c1', 'e010', '2019-11-16 09:00:00', '2019-11-16 10:00:00', 'Y', 'N', 'Y'),
('b0167', 'c1', 'e013', '2019-11-16 10:00:00', '2019-11-16 11:00:00', 'Y', 'N', 'Y'),
('b0168', 'c1', 'e111', '2019-11-16 11:00:00', '2019-11-16 12:00:00', 'N', 'N', 'Y'),
('b0169', 'c1', 'e140', '2019-11-16 12:00:00', '2019-11-16 12:30:00', 'N', 'N', 'Y'),
('b0170', 'c1', 'e141', '2019-11-16 12:30:00', '2019-11-16 13:00:00', 'N', 'N', 'Y'),
('b0171', 'c1', 'e142', '2019-11-16 13:00:00', '2019-11-16 13:30:00', 'N', 'N', 'Y'),
('b0172', 'c1', 'e125', '2019-11-16 13:30:00', '2019-11-16 14:00:00', 'N', 'N', 'Y'),
('b0173', 'c1', 'e139', '2019-11-16 14:00:00', '2019-11-16 15:00:00', 'N', 'N', 'Y'),
('b0174', 'c1', 'e007', '2019-11-16 15:00:00', '2019-11-16 17:50:00', 'N', 'Y', 'N'),
('b0175', 'c1', 'e028', '2019-11-16 17:50:00', '2019-11-16 17:55:00', 'Y', 'N', 'N'),
('b0176', 'c1', 'e117', '2019-11-16 17:55:00', '2019-11-16 18:00:00', 'Y', 'Y', 'N'),
('b0177', 'c1', 'e095', '2019-11-16 18:00:00', '2019-11-16 18:15:00', 'Y', 'Y', 'N'),
('b0178', 'c1', 'e132', '2019-11-16 18:15:00', '2019-11-16 18:45:00', 'N', 'N', 'N'),
('b0179', 'c1', 'e138', '2019-11-16 18:45:00', '2019-11-16 19:30:00', 'Y', 'N', 'N'),
('b0180', 'c1', 'e096', '2019-11-16 19:30:00', '2019-11-16 19:45:00', 'Y', 'Y', 'N'),
('b0181', 'c1', 'e118', '2019-11-16 19:45:00', '2019-11-16 20:00:00', 'Y', 'Y', 'N'),
('b0182', 'c1', 'e103', '2019-11-16 20:00:00', '2019-11-16 20:30:00', 'N', 'Y', 'N'),
('b0183', 'c1', 'e004', '2019-11-16 20:30:00', '2019-11-16 21:00:00', 'N', 'N', 'N'),
('b0184', 'c1', 'e034', '2019-11-16 21:00:00', '2019-11-16 21:45:00', 'N', 'N', 'N'),
('b0185', 'c1', 'e018', '2019-11-16 21:45:00', '2019-11-16 22:05:00', 'Y', 'N', 'N'),
('b0186', 'c1', 'e097', '2019-11-16 22:05:00', '2019-11-16 22:10:00', 'Y', 'Y', 'N'),
('b0187', 'c1', 'e060', '2019-11-16 22:10:00', '2019-11-16 23:55:00', 'N', 'N', 'N'),
('b0188', 'c1', 'e076', '2019-11-16 23:55:00', '2019-11-17 01:55:00', 'N', 'N', 'N'),
('b0189', 'c1', 'e132', '2019-11-17 04:45:00', '2019-11-17 05:15:00', 'N', 'N', 'Y'),
('b0190', 'c1', 'e138', '2019-11-17 05:15:00', '2019-11-17 06:00:00', 'Y', 'N', 'Y'),
('b0191', 'c1', 'e132', '2019-11-17 06:00:00', '2019-11-17 06:30:00', 'N', 'N', 'Y'),
('b0192', 'c1', 'e074', '2019-11-17 06:30:00', '2019-11-17 07:30:00', 'N', 'N', 'Y'),
('b0193', 'c1', 'e005', '2019-11-17 07:30:00', '2019-11-17 08:30:00', 'Y', 'N', 'Y'),
('b0194', 'c1', 'e004', '2019-11-17 08:30:00', '2019-11-17 09:00:00', 'N', 'N', 'Y'),
('b0195', 'c1', 'e008', '2019-11-17 09:00:00', '2019-11-17 12:00:00', 'N', 'Y', 'N'),
('b0196', 'c1', 'e009', '2019-11-17 12:00:00', '2019-11-17 13:00:00', 'Y', 'N', 'Y'),
('b0197', 'c1', 'e103', '2019-11-17 13:00:00', '2019-11-17 13:30:00', 'N', 'N', 'Y'),
('b0198', 'c1', 'e106', '2019-11-17 13:30:00', '2019-11-17 14:20:00', 'N', 'N', 'Y'),
('b0199', 'c1', 'e104', '2019-11-17 14:20:00', '2019-11-17 14:50:00', 'N', 'N', 'Y'),
('b0200', 'c1', 'e006', '2019-11-17 14:50:00', '2019-11-17 17:00:00', 'N', 'Y', 'N'),
('b0201', 'c1', 'e101', '2019-11-17 17:00:00', '2019-11-17 17:55:00', 'N', 'Y', 'N'),
('b0202', 'c1', 'e119', '2019-11-17 17:55:00', '2019-11-17 18:00:00', 'Y', 'Y', 'N'),
('b0203', 'c1', 'e098', '2019-11-17 18:00:00', '2019-11-17 18:10:00', 'Y', 'Y', 'N'),
('b0204', 'c1', 'e055', '2019-11-17 18:10:00', '2019-11-17 18:15:00', 'Y', 'N', 'N'),
('b0205', 'c1', 'e044', '2019-11-17 18:15:00', '2019-11-17 19:00:00', 'Y', 'N', 'N'),
('b0206', 'c1', 'e121', '2019-11-17 19:00:00', '2019-11-17 19:30:00', 'Y', 'Y', 'N'),
('b0207', 'c1', 'e099', '2019-11-17 19:30:00', '2019-11-17 19:55:00', 'Y', 'Y', 'N'),
('b0208', 'c1', 'e056', '2019-11-17 19:55:00', '2019-11-17 20:00:00', 'Y', 'N', 'N'),
('b0209', 'c1', 'e002', '2019-11-17 20:00:00', '2019-11-17 21:00:00', 'N', 'N', 'N'),
('b0210', 'c1', 'e033', '2019-11-17 21:00:00', '2019-11-17 22:00:00', 'N', 'N', 'N'),
('b0211', 'c1', 'e064', '2019-11-17 22:00:00', '2019-11-17 22:30:00', 'N', 'N', 'N'),
('b0212', 'c1', 'e107', '2019-11-17 22:30:00', '2019-11-17 23:20:00', 'N', 'N', 'N'),
('b0213', 'c1', 'e100', '2019-11-17 23:20:00', '2019-11-17 23:25:00', 'Y', 'Y', 'N'),
('b0214', 'c1', 'e034', '2019-11-17 23:25:00', '2019-11-18 00:10:00', 'N', 'N', 'Y'),
('b0215', 'c1', 'e009', '2019-11-18 00:10:00', '2019-11-18 01:10:00', 'Y', 'N', 'Y'),
('b0216', 'c1', 'e134', '2019-11-18 01:10:00', '2019-11-18 01:55:00', 'N', 'N', 'Y'),
('b0217', 'c1', 'e064', '2019-11-18 04:45:00', '2019-11-18 05:15:00', 'N', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`) VALUES
('c1', 'xtv1'),
('c2', 'xtv2'),
('c3', 'xtv3');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` varchar(5) NOT NULL,
  `programID` varchar(5) NOT NULL,
  `season` int(3) NOT NULL,
  `epNumber` int(4) NOT NULL,
  `prodYear` int(4) NOT NULL,
  `duration` int(4) NOT NULL,
  `descriptionSE` text,
  `descriptionEN` text,
  `language` varchar(2) NOT NULL,
  `subtitles` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `programID`, `season`, `epNumber`, `prodYear`, `duration`, `descriptionSE`, `descriptionEN`, `language`, `subtitles`) VALUES
('e001', 'p001', 9, 3, 2019, 60, 'Deltagarna drar norrut, till Jämtland, där de flyttar in hos några familjer och får testa på livet i den svenska glesbygden. De bygger på dansbanan i Oviken, coachar barn i en fotbollsmatch och får veta att Jämtlands storkändis Storsjöodjuret förmodligen finns på riktigt. Brittany får veta att hennes förfader, som slogs i Karl XII:s armé, var från Oviken och att det var mycket nära att hennes familj aldrig hade blivit till. Programledare: Anders Lundin. Del 3 av 8.', 'The participants move north, to Jämtland, where they move in with some families and get to test on life in the Swedish sparsely populated area. They build on the dance track in Oviken, coach children in a football match and find out that Jämtland\'s great celebrity Storsjöodjuret is probably there for real. Brittany learns that her ancestor, who was killed in Karl XII\'s army, was from Oviken and that it was very close that her family had never been. Program Manager: Anders Lundin. Part 3 of 8.', 'EN', 'Y'),
('e002', 'p001', 9, 4, 2019, 60, 'Förlorarna av förra veckans tävling har ångest för att tvingas åka hem, särskilt den av dem som inte har fått sin dag med släkthistorien ännu. Men fram till tävling så har de alla en fantastisk tid när de får leva livet som svenska bönder. Kaytie som älskar djuren hon jobbat med, bestämmer sig för att bli vegetarian vid en grillmiddag på gården. Programledare: Anders Lundin. Del 4 av 8.', 'The losers of last week\'s competition have the anxiety of being forced to go home, especially that of those who haven\'t had their day with family history yet. But until the competition they all have a fantastic time when they get to live life as Swedish farmers. Kaytie, who loves the animals she worked with, decides to become a vegetarian at a barbecue dinner in the yard. Program Manager: Anders Lundin. Part 4 of 8.', 'EN', 'Y'),
('e003', 'p002', 2, 2, 2019, 30, 'Maddes gamla klass ska ha klassåterträff. Det är sportbutiksägaren, \"Norrbottens Donald Trump\" Evelina, som håller i det. Ida har tröttnat på allt tjat där hemma och har lyckats få flytta ut på prov. Hon ska nu bo med sin kille Fred i en husbil på Freds familjs tomt. Madde oroar sig för sin dotter och för den stundande klassåterträffen. Petter är hon dock inte orolig för, han är bedårande i sin nya livsuppgift. Han har gett sig på att leva ett autentiskt och nedkopplat liv, nära naturen. I rollerna: Sanna Sundqvist, Jakob Zetterberg, Mattias Fransson, Mikael Lindgren, Bert-Åke Varg, Lena T Hansson, William Spetz, Roger Pontare m.fl. Del 2 av 8.', 'Madde\'s old class should have a class reunion. It is the sports shop owner, \"Norrbotten\'s Donald Trump\" Evelina, who keeps it. Ida has grown tired of everything nagging at home and has managed to move out to the test. She will now live with her guy Fred in a camper van on the Fred family plot. Madde worries about her daughter and the impending class reunion. However, she is not worried about Petter, he is adorable in his new life assignment. He has gone on to live an authentic and disconnected life, close to nature. In the roles: Sanna Sundqvist, Jakob Zetterberg, Mattias Fransson, Mikael Lindgren, Bert-Åke Varg, Lena T Hansson, William Spetz, Roger Pontare and others. Part 2 of 8.', 'SE', 'Y'),
('e004', 'p002', 2, 3, 2019, 30, 'Tommy och Stisse som gifte sig i smyg förra säsongen ska nu ställa till med en stor bröllopsfest. Problemet är att Tommy har bjudit in sin och Maddes pappa. Det kan bara sluta i en katastrof tror Madde och gör vad hon kan för att Ingegerd och pappan ska ha så lite med varandra att göra. Petter ser bröllopsfesten som sin möjlighet att göra en specialöl till det nygifta paret. Han har nämligen startat sitt eget mikrobryggeri. Specialölen befinner sig dock i Kiruna och det är Adeel som ansvarar för att den ska komma till festen. I rollerna: Sanna Sundqvist, Jakob Zetterberg, Mattias Fransson, Mikael Lindgren, Bert-Åke Varg, Lena T Hansson, William Spetz, Roger Pontare m.fl. Del 3 av 8.', 'Tommy and Stisse who got married last season should now have a big wedding party. The problem is that Tommy has invited his and Madde\'s dad. It can only end in a disaster, Madde believes, and does what she can to make Ingegerd and his father have so little to do with each other. Petter sees the wedding party as his opportunity to make a special beer for the newlywed couple. He has started his own microbrewery. However, the specialty beer is located in Kiruna and it is Adeel who is responsible for it coming to the party. In the roles: Sanna Sundqvist, Jakob Zetterberg, Mattias Fransson, Mikael Lindgren, Bert-Åke Varg, Lena T Hansson, William Spetz, Roger Pontare and others. Part 3 of 8.', 'SE', 'Y'),
('e005', 'p003', 3, 1, 2019, 60, 'När Jan Mottl dör vill han ge allt han äger till hemlösa hundar, men någonstans finns två barn med rätt att ärva över en miljon efter sin pappa. Spåren leder till Tjeckien och Kattis Ahlström och Niklas Källner försöker förstå varför Jan valde hundar framför sin familj. Del 1 av 6.', 'When Jan Mottl dies, he wants to give everything he owns to homeless dogs, but somewhere there are two children with the right to inherit over a million after his father. The tracks lead to the Czech Republic and Kattis Ahlström and Niklas Källner try to understand why Jan chose dogs in front of his family. Part 1 of 6.', 'SE', 'Y'),
('e006', 'p004', 1, 1, 2019, 130, 'Direktsändning från damernas EM-kval i basket. Israel tar emot Sverige i Tel Aviv. Kommentator: Björn Becksmo.', 'Live broadcast from the women\'s European Championship qualifiers in basketball. Israel receives Sweden in Tel Aviv. Commentator: Björn Becksmo.', 'SE', 'N'),
('e007', 'p005', 1, 1, 2019, 170, 'Direktsändning av damernas match mellan Danmark och Sverige från curling-EM i Helsingborg. Kommentatorer: Niklas Nord och Eva Lund.', 'Live broadcast of the women\'s match between Denmark and Sweden from the curling European Championships in Helsingborg. Commentators: Niklas Nord and Eva Lund.', 'SE', 'N'),
('e008', 'p005', 1, 2, 2019, 180, 'Direktsändning av damernas match mellan Sverige och Schweiz från curling-EM i Helsingborg. Kommentatorer: Niklas Nord och Eva Lund.', 'Live broadcast of the women\'s match between Sweden and Switzerland from the Curling European Championships in Helsingborg. Commentators: Niklas Nord and Eva Lund.', 'SE', 'N'),
('e009', 'p006', 1, 5, 2019, 60, 'På 2000-talet är svenskar med och skriver om regelboken för hela musikvärlden, både hur musiken görs, sprids och hur vi lyssnar på den. För när Sverige blev ett av världens mest uppkopplade land, så skickade det skivbranschen in i sin djupaste kris någonsin och förvandlade det lilla landet i norr från mönsterelev till piratparadis. Men ur krisen och kaoset kom kreativitet och en helt ny generation pionjärer som skakade om musikvärlden. I del 5 berättar vi om Avicii, Robyn, Daniel Ek (Spotify), Basshunter, Icona Pop, Swedish House Mafia, Noonie Bao, Peter Bjorn and John, med flera. Del 5 av 6.', 'In the 2000s, Swedes participate in and write about the rule book for the entire music world, both how the music is made, spread and how we listen to it. Because when Sweden became one of the world\'s most connected countries, it sent the record industry into its deepest crisis ever and turned the small country to the north from pattern student to pirate paradise. But out of the crisis and chaos came creativity and a whole new generation of pioneers who shook the music world. In part 5 we talk about Avicii, Robyn, Daniel Ek (Spotify), Basshunter, Icona Pop, Swedish House Mafia, Noonie Bao, Peter Bjorn and John, and others. Part 5 of 6.', 'SE', 'Y'),
('e010', 'p007', 1, 2, 2019, 60, 'Undersökande dokumentär från 2019. En smuggelvalp kan bli en mardröm som familjehund. Men hur motstår man en blöt nos mot handen och två gyllenbruna ögon som ropar \"Köp mig!\"? Filmaren Jonny von Wallström tycker att han vet en hel del om hundar. Men när han ska hitta en hund till familjen så upptäcker han att de oseriösa hundförsäljarna har blivit väldigt skickliga. Snart dras han in i en härva av falska identiteter, korrupta veterinärer och hänsynslösa valpfabriker. Del 2 av 2: Stureplansligan.', 'Investigative documentary from 2019. A smug puppy can be a nightmare as a family dog. But how do you resist a wet nose to the hand and two golden brown eyes that shout \"Buy me!\" Filmmaker Jonny von Wallström thinks he knows a lot about dogs. But when he finds a dog for the family, he discovers that the rogue dog vendors have become very skilled. Soon he is drawn into a tangle of false identities, corrupt veterinarians and reckless puppy factories. Part 2 of 2: Stureplansligan.', 'SE', 'Y'),
('e011', 'p008', 1, 32, 2018, 5, 'Steve Angello om skivan som väckte hans musikintresse, Daft Punks \"Homework\".', 'Steve Angello about the record that aroused his musical interest, Daft Punk\'s \"Homework\".', 'SE', 'Y'),
('e012', 'p009', 1, 9, 2019, 60, 'I detta avsnitt tävlar Carina M Johansson och Eric Ericson mot Liv Mjönes och Henrik Johansson. Del 9 av 12.', 'In this section Carina M Johansson and Eric Ericson compete against Liv Mjönes and Henrik Johansson. Part 9 of 12.', 'SE', 'Y'),
('e013', 'p009', 1, 10, 2019, 60, 'I detta avsnitt tävlar Ida Hallquist och Johan Östling mot Sussie Eriksson och Björn Ling. Del 10 av 12.', 'In this section, Ida Hallquist and Johan Östling compete against Sussie Eriksson and Björn Ling. Part 10 of 12.', 'SE', 'Y'),
('e014', 'p010', 1, 6, 2015, 10, 'Detta avsnitt: Göteborg. Under flera hundra år försatte brännvinsdrickandet det svenska folket i olycka och misär. På 1800-talet började rösterna höjas för ett nyktrare leverne och år 1879 startades den första Godtemplarlogen i Göteborg. Initiativtagare var den dynamiske baptistpastorn Olof Bergström. Nykterhetsrörelsen spred sig över landet men Bergströms eget liv gick i en helt annan riktning.', 'This section: Gothenburg. For several hundred years, the drinking of spirits left the Swedish people in misfortune and misery. In the 19th century, the votes began to be raised for a sober liver and in 1879 the first Godtemplar Law was started in Gothenburg. The initiator was the dynamic Baptist pastor Olof Bergström. The sobriety movement spread across the country but Bergström\'s own life went in a completely different direction.', 'SE', 'Y'),
('e015', 'p011', 5, 10, 2013, 60, 'Fiona Bruce och experterna åker till Edinburgh och hittar intressanta skattgömmor på stadens konstmuseum. En liten elfenbensstaty från 1700-talet uppgrävd ur en åker, ett originalmanus av Robert Burns och en låda köpt för några hundralappar som kommer med en glad överraskning. Programledaren Fiona Bruce och antikexperterna åker runt Storbritannien på jakt efter gömda skatter i det populära faktaprogrammet som har fängslat den engelska publiken i mer än 30 år.', 'Fiona Bruce and the experts go to Edinburgh and find interesting treasure hides at the city\'s art museum. A small ivory statue from the 18th century excavated from a field, an original script by Robert Burns and a box purchased for a few hundred pieces that comes with a happy surprise. Programmer Fiona Bruce and the antique experts travel around the UK in search of hidden treasures in the popular facts program that has captivated the English public for more than 30 years.', 'EN', 'Y'),
('e016', 'p011', 5, 11, 2013, 60, 'Vad händer när kamerorna slutat filma? På allmän begäran har Engelska Antikrundan letat upp de mest spektakulära och minnesvärda fynden under året som gått och frågat deras ägare vad som hände sedan. Programledaren Fiona Bruce och antikexperterna åker runt Storbritannien på jakt efter gömda skatter i det populära faktaprogrammet som har fängslat den engelska publiken i mer än 30 år.', 'What happens when the cameras stop filming? At public request, the English Antiquities Round has found the most spectacular and memorable finds during the year that have gone by and asked their owners what happened next. Programmer Fiona Bruce and the antique experts travel around the UK in search of hidden treasures in the popular facts program that has captivated the English public for more than 30 years.', 'EN', 'Y'),
('e017', 'p012', 1, 2, 2019, 20, 'Relationen med Hugo har nått ett vägskäl och Filip berättar hur han känner. Mona råkar i ett försök att införa skärmregler för barnen ge Nils dödsångest.', 'The relationship with Hugo has reached a crossroads and Filip tells us how he feels. Mona happens to try to introduce screen rules for the children to give Nils death anxiety.', 'SE', 'Y'),
('e018', 'p012', 1, 3, 2019, 20, 'Svensk komediserie från 2019. Relationen med Hugo har nått ett vägskäl och Filip berättar hur han känner. Mona råkar i ett försök att införa skärmregler för barnen ge Nils dödsångest. I rollerna: William Spetz, Anna Granath, Alexander Salzberger, Tina Pour Davoy, Sara Jangfeldt, Peter Gardiner, Joel Lützow, Ludde Hagberg, Liv Östberg, Jona Östberg. Regi: Jens Östberg. Del 3 av 8.', 'Swedish comedy series from 2019. The relationship with Hugo has reached a crossroads and Filip tells how he feels. Mona happens to try to introduce screen rules for the children to give Nils death anxiety. In the roles: William Spetz, Anna Granath, Alexander Salzberger, Tina Pour Davoy, Sara Jangfeldt, Peter Gardiner, Joel Lützow, Ludde Hagberg, Liv Östberg, Jona Östberg. Directed by Jens Östberg. Part 3 of 8.', 'SE', 'Y'),
('e019', 'p013', 1, 1, 2018, 30, NULL, NULL, 'SE', 'Y'),
('e020', 'p014', 7, 13, 2019, 45, '\"Moviestar\"-stjärnan om hästsparken som förändrade livet.Mån 11 nov • 43 min. Publicerad Mån 11 nov 02:00. 43 min. Artisten Harpo som blev världskänd med låten Moviestar gästar Fråga doktorn för att bland annat berätta om hur en hästspark i huvudet kan påverka livet. Dessutom får vi veta mer om sorkfeber. Programledare: Suzanne Axell. Läkare: Karin Granberg.', '\"Moviestar\" star about the horse park that changed lives.Man 11 Nov • 43 min. Published Mon Nov 11 02:00. 43 min. Artist Harpo who became world famous with the song Moviestar guests Ask the Doctor to tell, among other things, how a horse kick in the head can affect life. In addition, we will learn more about sugarcane. Host: Suzanne Axell. Doctor: Karin Granberg.', 'SE', 'Y'),
('e021', 'p015', 3, 5, 2019, 30, 'Fredrik kom på sin pappa med att vara otrogen. Efter det har han och hans mamma varit oskiljaktiga och nu går de på dubbeldejt tillsammans. Tycker Fredriks dejt Jesper att det är okej att Fredrik går på dejt med sin mamma? Och Fredriks mamma Pia som tidigare fallit för bad boys ska träffa världens snällaste Micke, en familjär man som lärt sig av livet. Den hjärtekrossade ståuppkomikern Adam som är mer nervös att gå på dejt än att stå på scenen, får träffa den fnissiga globetrottern Anna. Kärlek sägs vara nyckeln till lycka, men hur hittar man den? Följ några av Sveriges alla singlar som går på blinddejt. Del 5 av 8.', 'Fredrik came to his father with being unfaithful. After that, he and his mother have been inseparable and now they go on a double date together. Does Fredrik\'s date Jesper think it\'s okay for Fredrik to go on a date with his mother? And Fredrik\'s mother Pia, who has previously fallen for bad boys, will meet the world\'s nicest Micke, a family man who has learned from life. The heartbroken stand-up comedian Adam, who is more nervous about going on a date than standing on stage, gets to meet the goofy globetrotter Anna. Love is said to be the key to happiness, but how to find it? Follow some of Sweden\'s singles that go blind-blind. Part 5 of 8.', 'SE', 'Y'),
('e022', 'p016', 1, 4, 2018, 30, 'Johannes och Zelina upplever att alla omkring dem har åsikter om deras förhållande. Nicolai och Julie är väldigt olika varandra. Hur är det att bli kär i någon som nästan är raka motsatsen till en själv? En serie om att vara varandras första stora kärlek. Del 4 av 4.', 'Johannes and Zelina feel that everyone around them has opinions about their relationship. Nicolai and Julie are very different from each other. What is it like to fall in love with someone who is almost the opposite of one\'s self? A series about being each other\'s first great love. Part 4 of 4.', 'DK', 'Y'),
('e023', 'p017', 23, 18, 2019, 45, 'Kvällens middagsvärd är skådespelaren Andreas T Olsson som är aktuell på Dramaten och just nu också spelar in en säsong till av Bröllop, begravning och dop. I Go\'kvällköket bakar Johanna Viberg en farsdagstårta. Programledare: Beppe Starbrink.', 'Tonight\'s dinner host is the actor Andreas T Olsson who is up to date on the Dramaten and is currently also recording another season of Weddings, Burial and Baptism. In Johanna\'s evening kitchen, Johanna Viberg bakes a Father\'s Day cake. Host: Beppe Starbrink.', 'SE', 'Y'),
('e024', 'p017', 23, 19, 2019, 45, 'Johannes Kuhnke berättar om sin roll i bioaktuella filmen \"Jag kommer hem igen till jul\". Veckans härliga bio- och streamingtips får vi av Göran Everdahl och Johan Lundström. I ett reportage får vi se Tone Norum som slog igenom som rockstjärna på 80-talet, men vad gör hon nu för tiden? Programledare: Beppe Starbrink.', 'Johannes Kuhnke talks about his role in the bio-current movie \"I\'ll be back home for Christmas\". Göran Everdahl and Johan Lundström provide wonderful bio and streaming tips this week. In a report we see Tone Norum breaking through as a rock star in the 80s, but what is she doing now? Host: Beppe Starbrink.', 'SE', 'Y'),
('e025', 'p017', 23, 20, 2019, 45, 'Sångaren, poeten och skribenten Tommie Sewón berättar om \"Anonyma Ensamma\". Där delar kvinnor och män erfarenheter, förhoppningar och styrka med varandra för att försöka lösa sitt gemensamma problem: ensamhet. Psykologen Per Höglund svarar på tittarnas frågor om just ensamhet. I Go\'kväll-köket är det Susanne Jonsson som lagar något gott, snabbt och enkelt. Vi följer med Linda Olofsson i hennes andra reportage om Inlandsbanan. Programledare: Beppe Starbrink.', 'Singer, poet and writer Tommie Sewón talks about \"Anonymous Alone\". There, women and men share experiences, hopes and strength with each other to try to solve their common problem: loneliness. Psychologist Per Höglund answers viewers\' questions about loneliness. In the Go\'kväll kitchen it is Susanne Jonsson who prepares something good, fast and simple. We follow Linda Olofsson in her second report on Inlandsbanan. Host: Beppe Starbrink.', 'SE', 'Y'),
('e026', 'p017', 23, 21, 2019, 45, 'Fotografen Thord Nilsson kommer och pratar om Dandora Dumpsite, som är Afrikas största soptipp. Där arbetar barn och vuxna med att sortera och sälja sopor för en liten dagsinkomst, för många den enda inkomst de kan få. Några har inget annat val än att bo och leva hela sitt liv på tippen. Men kan konst, musik och engagemang vara en väg ut ur en på förhand till synes omöjlig och livshotande tillvaro? Stylisten Monica Kitchau och frisören Sarah Åsard ger en tittare en ny stil. Denna gång är det lockigt hår som gäller. I en rad reportage får vi följa med vår stylist Rufus Kellman på modeveckan i Paris. I det första inslaget visar han sitt mode-Paris för vår designreporter Anita Färingö. Programledare: Pia Herrera.', 'Photographer Thord Nilsson comes and talks about Dandora Dumpsite, which is Africa\'s largest dump. There, children and adults work to sort and sell garbage for a small daily income, for many the only income they can get. Some have no choice but to live and live their entire lives on the tip. But can art, music and dedication be a way out of a seemingly impossible and life-threatening existence in advance? Stylist Monica Kitchau and hairdresser Sarah Åsard give the viewer a new style. This time it is curly hair that applies. In a series of reports we get to follow our stylist Rufus Kellman at the Fashion Week in Paris. In the first feature, he shows his fashion Paris for our design reporter Anita Färingö. Host: Pia Herrera.', 'SE', 'Y'),
('e027', 'p018', 1, 6, 2019, 30, 'När Gryningspyromanen kommer ut från sitt fängelsestraff för mordbranden i Ystad flyttar han till Köping. Han påbörjar en hovslagarutbildning och människor i hans närhet uppfattar honom som nöjd med tillvaron. Men efter en konflikt så vänder det. Gryningspyromanen uttalar allvarliga hot mot en handläggare på socialtjänsten och anlägger en brand på socialkontoret. Gryningspyromanen döms än en gång för försök till mordbrand. Påföljden blir fängelse i två år och tre månader - ett straff han fortfarande avtjänar. Del 6 av 6.', 'When the Dawn Pyroman comes out of his prison sentence for the murder in Ystad, he moves to Köping. He begins a blacksmith training and people in his vicinity perceive him as satisfied with his existence. But after a conflict, it turns. The dawn pyroman pronounces serious threats to a social services officer and sets fire to the social office. The Dawn Pyramid is once again sentenced for attempted murder. The penalty is imprisonment for two years and three months - a sentence he still deserves. Part 6 of 6.', 'SE', 'Y'),
('e028', 'p019', 1, 46, 2019, 5, 'Kyrkoherde Elinor Johansson talar om ett gudomligt möte mitt i vardagen.', 'Church Elder Elinor Johansson talks about a divine meeting in the middle of everyday life.', 'SE', 'Y'),
('e029', 'p020', 3, 4, 2016, 50, 'Säsong 3. Hugh måste åka tillbaka till Sydney; han har blivit stämd och ska försvara sig i rätten. Han tar med sig Matt till storstan, med föresatsen att de ska umgås och komma varandra närmare, men det blir inte som han tänkt sig. I rollerna: Rodger Corser, Nicole da Silva, Ryan Johnson, Tina Bursill, Hayley McElhinney m.fl. Del 4 av 10. Nu igen?', 'Season 3. Hugh has to go back to Sydney; he has been sued and will defend himself in court. He takes Matt to the big city, with the premise that they should socialize and get closer, but that is not what he intended. In the roles: Rodger Corser, Nicole da Silva, Ryan Johnson, Tina Bursill, Hayley McElhinney and others Part 4 of 10. Now again?', 'EN', 'Y'),
('e030', 'p020', 3, 5, 2016, 45, 'Säsong 3. Hugh och Penny inväntar en viktig person till sjukhuset medan Charlie och Matt kämpar med en ovälkommen gäst. I rollerna: Rodger Corser, Nicole da Silva, Ryan Johnson, Tina Bursill, Hayley McElhinney m.fl. Del 5 av 10: På kollisionskurs.', 'Season 3. Hugh and Penny await an important person to the hospital while Charlie and Matt fight with an unwelcome guest. In the roles: Rodger Corser, Nicole da Silva, Ryan Johnson, Tina Bursill, Hayley McElhinney and others Part 5 of 10: On collision course.', 'EN', 'Y'),
('e031', 'p020', 3, 6, 2016, 45, 'Säsong 3. Meryl verkar ha fått konkurrens på dejtingfronten, men hon vänder det snabbt till sin fördel. Penny plågas av något och det verkar få henne att tappa omdömet. I rollerna: Rodger Corser, Nicole da Silva, Ryan Johnson, Tina Bursill, Hayley McElhinney m.fl. Del 6 av 10: Ett ultimatum.', 'Season 3. Meryl seems to have gained competition on the dating front, but she quickly turns it to her advantage. Penny is tormented by something and it seems to make her lose her mind. In the roles: Rodger Corser, Nicole da Silva, Ryan Johnson, Tina Bursill, Hayley McElhinney and others Part 6 of 10: An ultimatum.', 'EN', 'Y'),
('e032', 'p021', 2, 5, 2019, 60, 'Säsong 2. Polisläckan Magnus är mördad, men varken Kretsen eller Mimicas tycks ligga bakom mordet. Det finns en tredje aktör. Vilka är de? Lena blir snart kontaktad. Jan har anat att han har ett barn med Hanna. De bestämmer sig för att mötas på tu man hand. Christian blir alltmer gränslös och balanserar snart på gränsen. Men han vägrar hoppa av innan de har alla namn i Kretsen. Och han är nära nu. Mimicas börjar ringa in Christian. Efter ett ödesdigert möte dras snaran åt. I huvudrollerna bl a Marie Richardson, Adam Pålsson, Magnus Krepper, Maria Sundbom Lörelius, Stefan Sauk, Jacob Ericksson, Rickard Forsgren, Malgorzata Pieczynska och Sandra Redlaff. Manus: Niklas Rockström. Regi: Kristian Petri. Del 5 av 8.', 'Season 2. The police leak Magnus is murdered, but neither Circuit nor Mimica seems to be behind the murder. There is a third player. Who are they? Lena will be contacted soon. Jan has assumed that he has a child with Hanna. They decide to meet on your hand. Christian becomes increasingly boundless and soon balances on the border. But he refuses to jump off before they have all the names in the circuit. And he\'s close now. Mimicas starts calling in Christian. After a fateful meeting, the snare is tightened. In the lead roles include Marie Richardson, Adam Pålsson, Magnus Krepper, Maria Sundbom Lörelius, Stefan Sauk, Jacob Ericksson, Rickard Forsgren, Malgorzata Pieczynska and Sandra Redlaff. Screenplay: Niklas Rockström. Directed by Kristian Petri. Part 5 of 8.', 'SE', 'Y'),
('e033', 'p021', 2, 6, 2019, 60, 'Säsong 2. Mimicas har hittat Christian och genomför en koordinerad attack mot honom, Hanna och Björn. Organisationen som nu styr Kretsen gör Lena smärtsamt medveten om att hon inte kan vägra order. Lena beordras att utföra ett attentat på en person i högt uppsatt position. Jan är omskakad. Han har fått reda på att han har en vuxen son med Hanna. Hannas lögner i det förflutna har startat en farlig kedjereaktion av känslor. I huvudrollerna bl.a. Marie Richardson, Adam Pålsson, Magnus Krepper, Maria Sundbom Lörelius, Stefan Sauk, Jacob Ericksson, Malgorzata Pieczynska och Sandra Redlaff. Manus: Gunnar Nilsson. Regi: Kristina Humle. Del 6 av 8.', 'Season 2. Mimicas has found Christian and is carrying out a coordinated attack on him, Hanna and Björn. The organization that now controls the circuit makes Lena painfully aware that she cannot refuse orders. Lena is ordered to carry out an assault on a person in a high position. Jan is shaken. He has learned that he has an adult son with Hanna. Hannah\'s lies in the past have started a dangerous chain reaction of emotions. In the lead roles include Marie Richardson, Adam Pålsson, Magnus Krepper, Maria Sundbom Lörelius, Stefan Sauk, Jacob Ericksson, Malgorzata Pieczynska and Sandra Redlaff. Screenplay: Gunnar Nilsson. Directed by Kristina Hops. Part 6 of 8.', 'SE', 'Y'),
('e034', 'p022', 1, 3, 2018, 45, 'Efter att ett mord inträffat i Berlin, reser Eve och Bill dit för att nysta i fallet. Men de anar inte hur farligt nära de kommer Villanelle. I rollerna: Sandra Oh, Jodie Comer, Kim Bodnia, Fiona Shaw m.fl. Del 3 av 8: Don\'t I know you?', 'After a murder occurred in Berlin, Eve and Bill travel there to innovate in the case. But they have no idea how dangerously close they are to Villanelle. In the roles: Sandra Oh, Jodie Comer, Kim Bodnia, Fiona Shaw and others Part 3 of 8: Don\'t I Know You?', 'EN', 'Y'),
('e035', 'p023', 8, 4, 2019, 30, 'Utrikesmagasin. Varje år slås nya försäljningsrekord i handeln. Vi rusar efter reor och hoppas hitta fyndet. Men vad händer om man gör tvärtom? Colin Wright var välbetald reklamare i Los Angeles. Nu ryms det han äger i några få väskor. Vi träffar också en av Kinas tio högst rankade influencers. Programledare: Bengt Norborg. Del 4 av 8.', 'Foreign Magazine. Every year new sales records are set in the trade. We rush for sales and hope to find the bargain. But what happens if you do the opposite? Colin Wright was a well-paid Los Angeles commercial. Now it holds what he owns in a few bags. We also meet one of China\'s top ten influencers. Program Manager: Bengt Norborg. Part 4 of 8.', 'SE', 'Y'),
('e036', 'p024', 35, 251, 2019, 13, NULL, NULL, 'SE', 'N'),
('e037', 'p024', 35, 252, 2019, 13, NULL, NULL, 'SE', 'N'),
('e038', 'p024', 35, 253, 2019, 13, NULL, NULL, 'SE', 'N'),
('e039', 'p024', 35, 254, 2019, 13, NULL, NULL, 'SE', 'N'),
('e040', 'p024', 35, 255, 2019, 13, NULL, NULL, 'SE', 'N'),
('e041', 'p025', 1, 2, 2019, 15, 'Maria är på clownkursen, exalterad över att träffa de övriga deltagarna. Men hon får svårt att sticka ut i en grupp av narcissister, ledda av en modern kulturman. Efter ett sexigt framträdande visar gruppen sina rätta färger. I rollerna: Evelyn Mok, Karin Franz Körlof, Hanna Dawit, Axel Dennie af Klinteberg, Amir Halim, Ulla Tylén m.fl. Manus: Joakim Granberg och Isabella Rodriguez. Regi: Isabella Rodriguez. Del 2 av 8.', 'Maria is on the clown course, excited to meet the other participants. But she finds it difficult to stand out in a group of narcissists, led by a modern cultural man. After a sexy appearance, the group shows their true colors. In the roles: Evelyn Mok, Karin Franz Körlof, Hanna Dawit, Axel Dennie of Klinteberg, Amir Halim, Ulla Tylén and others. Screenplay: Joakim Granberg and Isabella Rodriguez. Directed by Isabella Rodriguez. Part 2 of 8.', 'SE', 'Y'),
('e042', 'p025', 1, 3, 2019, 15, 'Maria gör sitt bästa för att vistelsen på kursen ska bli uthärdlig och plötsligt verkar det som att kursledaren Björn faktiskt fått upp ögonen för henne. I rollerna: Evelyn Mok, Pelle Hanæus, Karin Franz Körlof, Hanna Dawit, Axel Dennie af Klinteberg, Jonatan Unge m.fl. Manus: Joakim Granberg och Isabella Rodriguez. Regi: Isabella Rodriguez. Del 3 av 8.', 'Maria does her best to make the stay on the course bearable and suddenly it seems that the course leader Björn actually opened her eyes to her. In the roles: Evelyn Mok, Pelle Hanæus, Karin Franz Körlof, Hanna Dawit, Axel Dennie of Klinteberg, Jonathan Young and others. Screenplay: Joakim Granberg and Isabella Rodriguez. Directed by Isabella Rodriguez. Part 3 of 8.', 'SE', 'Y'),
('e043', 'p026', 2, 33, 2019, 45, 'Spännande och intressanta reportage från hela Sverige. Programledare: Henrik Kruusval.', 'Exciting and interesting reporting from all over Sweden. Program Manager: Henrik Kruusval.', 'SE', 'Y'),
('e044', 'p026', 2, 34, 2019, 45, 'Spännande och intressanta reportage från hela Sverige. Programledare: Henrik Kruusval.', 'Exciting and interesting reporting from all over Sweden. Program Manager: Henrik Kruusval.', 'SE', 'Y'),
('e045', 'p027', 44, 1244, 2019, 8, NULL, NULL, 'SE', 'N'),
('e046', 'p027', 44, 1245, 2019, 5, NULL, NULL, 'SE', 'N'),
('e047', 'p027', 44, 1246, 2019, 8, NULL, NULL, 'SE', 'N'),
('e048', 'p027', 44, 1247, 2019, 5, NULL, NULL, 'SE', 'N'),
('e049', 'p027', 44, 1248, 2019, 8, NULL, NULL, 'SE', 'N'),
('e050', 'p027', 44, 1249, 2019, 5, NULL, NULL, 'SE', 'N'),
('e051', 'p027', 44, 1250, 2019, 8, NULL, NULL, 'SE', 'N'),
('e052', 'p027', 44, 1251, 2019, 5, NULL, NULL, 'SE', 'N'),
('e053', 'p027', 44, 1252, 2019, 8, NULL, NULL, 'SE', 'N'),
('e054', 'p027', 44, 1253, 2019, 5, NULL, NULL, 'SE', 'N'),
('e055', 'p027', 44, 1254, 2019, 5, NULL, NULL, 'SE', 'N'),
('e056', 'p027', 44, 1255, 2019, 5, NULL, NULL, 'SE', 'N'),
('e057', 'p028', 1, 5, 2019, 60, 'I sista avsnittet får deltagarna till slut veta om de lyckats förändra sina liv. Katrin utmanar Tareq och hans största rädsla. Fia visar att naturen kan vara räddningen för en stressig tillvaro. Och deltagarna inser att den sista dagen av Lyckomaten också är den första dagen på deras nya liv. Kocken Tareq Taylor och hälsocoachen Sofia Ståhl hjälper fem deltagare i olika åldrar att förändra sina liv. Är det möjligt att göra det på 50 dagar? Del 5 av 5.', 'In the last section, the participants finally know if they have succeeded in changing their lives. Katrin challenges Tareq and his greatest fears. Fia shows that nature can be the salvation of a stressful life. And the participants realize that the last day of the Lucky Food is also the first day of their new life. Chef Tareq Taylor and health coach Sofia Ståhl help five participants of different ages change their lives. Is it possible to do it in 50 days? Part 5 of 5.', 'SE', 'Y'),
('e058', 'p029', 1, 9, 2019, 15, 'Hur skapar man bra grupparbete som lärare? Vad är det som avgör om ett grupparbete blir lyckat eller inte? Forskning visar att grupparbeten utvecklar viktiga förmågor, men de skapar ofta svårigheter när det gäller samarbete och bedömning. Del 9 av 10. UR.', 'How do you create good group work as a teacher? What determines whether or not a teamwork is successful? Research shows that group work develops important abilities, but they often create difficulties when it comes to collaboration and assessment. Part 9 of 10. UR.', 'SE', 'Y'),
('e059', 'p029', 1, 10, 2019, 15, 'Differentierad undervisning för att utmana alla elever. Många elever behöver större utmaningar i undervisningen för att inte gå miste om det lärande och den utveckling de har rätt till. Men hur kan man utmana alla elever i en klass, oberoende av vilka förutsättningar de har? Del 10 av 10. UR.', 'Differentiated teaching to challenge all students. Many students need greater challenges in teaching so as not to lose sight of the learning and development they are entitled to. But how can you challenge all students in one class, regardless of their conditions? Part 10 of 10. UR.', 'SE', 'Y'),
('e060', 'p030', 1, 1, 1999, 105, NULL, NULL, 'EN', 'Y'),
('e061', 'p031', 1, 1, 1950, 115, NULL, NULL, 'EN', 'Y'),
('e062', 'p032', 1, 1, 1956, 105, NULL, NULL, 'SE', 'Y'),
('e063', 'p033', 1, 1, 1949, 95, NULL, NULL, 'SE', 'Y'),
('e064', 'p034', 1, 1, 2019, 30, 'Den 16 september 1991 begås ett inbrott i en av Försvarets vapenkassuner i Botkyrka utanför Stockholm. Bytet blir över tvåhundra kulsprutepistoler, automatkarbiner och flera tunga kulsprutor modell KSP 58. Vad man omöjligen kunde ana var att detta var starten på en rånvåg utan motsvarighet i svensk kriminalhistoria. Ligans brutala tillvägagångsätt och, vad som uppfattades, militära precision gav dem namnet \"Militärligan\". I den här dokumentärserien får vi möta dem som hamnade i ligans väg och höra deras berättelser. Det är också en berättelse om ett Sverige i ett uppvaknande och om polisens svåra arbete med att identifiera och gripa personerna bakom maskerna. Del 1 av 6.', 'On September 16, 1991, a burglary was committed in one of the Swedish Armed Forces\' weapon trunks in Botkyrka outside Stockholm. The exchange will be over two hundred bullet guns, automatic carbines and several heavy ball guns model KSP 58. What you could not possibly imagine was that this was the start of a robbery wave with no equivalent in Swedish criminal history. The league\'s brutal approach and, what was perceived, military precision gave them the name \"Military League\". In this documentary series, we get to meet those who got in the way of the league and hear their stories. It is also a story about a Sweden in awakening and about the police\'s difficult work in identifying and arresting the people behind the masks. Part 1 of 6.', 'SE', 'Y'),
('e065', 'p035', 1, 1, 2019, 5, 'Anna och mänskliga rättigheter. Seriestart. 15-åriga Anna är engagerad i Amnesty International. Det är mycket att göra under praktiken på huvudkontoret i Stockholm - som att samla all utrustning som behövs under en aktion. Denna gång handlar aktionen om att protestera mot behandlingen av homosexuella i Tjetjenien. Del 1 av 8. UR.', 'Anna and human rights. Series Start. 15-year-old Anna is involved in Amnesty International. There is a lot to do during practice at the headquarters in Stockholm - such as collecting all the equipment needed during a campaign. This time around, the campaign is about protesting against the treatment of homosexuals in Chechnya. Part 1 of 8. UR.', 'SE', 'Y'),
('e066', 'p035', 1, 2, 2019, 10, 'Emils personliga resa. 13-årige Emil är uppvuxen i en familj där det förekom missbruk och kriminalitet. Det ledde till att han själv började missbruka i väldigt unga år. Emils räddning blev föreningen Unga Kris - Kriminellas revansch i samhället. Del 2 av 8. UR.', 'Emil\'s personal journey. 13-year-old Emil grew up in a family where there was abuse and crime. As a result, he began to abuse himself at a very young age. Emil\'s rescue became the Young Crisis - Criminals\' Revenge in society. Part 2 of 8. UR.', 'SE', 'Y'),
('e067', 'p035', 1, 3, 2019, 10, 'Tindras klimatkamp. Tindra är 13 år och klimataktivist. Redan veckan efter att Greta Thunberg inlett sin sittstrejk på Mynttorget anslöt hon sig, och sedan dess har hon klimatstrejkat varje fredag under skoltid. Del 3 av 8. UR.', 'Tindra\'s climate fight. Tindra is 13 years old and a climate activist. Already the week after Greta Thunberg began her sitting strike on Mynttorget, she joined, and since then she has had a climate strike every Friday during school hours. Part 3 of 8. UR.', 'SE', 'Y'),
('e068', 'p036', 18, 212, 2019, 190, 'Dagens viktigaste nyheter och analyser med täta uppdateringar. Vi sänder direkt inrikes- och utrikesnyheter inklusive sport, kultur och nöje. Dessutom intervjuer med aktuella gäster. Nyhetssammanfattningar varje hel- och halvtimme med start kl 06.00. Lokala nyheter från kl 07.05. Väder kvart i och kvart över.', 'Today\'s most important news and analysis with frequent updates. We broadcast domestic and international news, including sports, culture and entertainment. In addition, interviews with current guests. News summaries every full and half hour starting at 6am. Local news from 07.05. Weather quarter in and quarter over.', 'SE', 'N'),
('e069', 'p036', 18, 213, 2019, 190, 'Dagens viktigaste nyheter och analyser med täta uppdateringar. Vi sänder direkt inrikes- och utrikesnyheter inklusive sport, kultur och nöje. Dessutom intervjuer med aktuella gäster. Nyhetssammanfattningar varje hel- och halvtimme med start kl 06.00. Lokala nyheter från kl 07.05. Väder kvart i och kvart över.', 'Today\'s most important news and analysis with frequent updates. We broadcast domestic and international news, including sports, culture and entertainment. In addition, interviews with current guests. News summaries every full and half hour starting at 6am. Local news from 07.05. Weather quarter in and quarter over.', 'SE', 'N'),
('e070', 'p036', 18, 214, 2019, 190, 'Dagens viktigaste nyheter och analyser med täta uppdateringar. Vi sänder direkt inrikes- och utrikesnyheter inklusive sport, kultur och nöje. Dessutom intervjuer med aktuella gäster. Nyhetssammanfattningar varje hel- och halvtimme med start kl 06.00. Lokala nyheter från kl 07.05. Väder kvart i och kvart över.', 'Today\'s most important news and analysis with frequent updates. We broadcast domestic and international news, including sports, culture and entertainment. In addition, interviews with current guests. News summaries every full and half hour starting at 6am. Local news from 07.05. Weather quarter in and quarter over.', 'SE', 'N'),
('e071', 'p036', 18, 215, 2019, 190, 'Dagens viktigaste nyheter och analyser med täta uppdateringar. Vi sänder direkt inrikes- och utrikesnyheter inklusive sport, kultur och nöje. Dessutom intervjuer med aktuella gäster. Nyhetssammanfattningar varje hel- och halvtimme med start kl 06.00. Lokala nyheter från kl 07.05. Väder kvart i och kvart över.', 'Today\'s most important news and analysis with frequent updates. We broadcast domestic and international news, including sports, culture and entertainment. In addition, interviews with current guests. News summaries every full and half hour starting at 6am. Local news from 07.05. Weather quarter in and quarter over.', 'SE', 'N'),
('e072', 'p036', 18, 216, 2019, 190, 'Dagens viktigaste nyheter och analyser med täta uppdateringar. Vi sänder direkt inrikes- och utrikesnyheter inklusive sport, kultur och nöje. Dessutom intervjuer med aktuella gäster. Nyhetssammanfattningar varje hel- och halvtimme med start kl 06.00. Lokala nyheter från kl 07.05. Väder kvart i och kvart över.', 'Today\'s most important news and analysis with frequent updates. We broadcast domestic and international news, including sports, culture and entertainment. In addition, interviews with current guests. News summaries every full and half hour starting at 6am. Local news from 07.05. Weather quarter in and quarter over.', 'SE', 'N'),
('e073', 'p037', 1, 2, 2019, 60, 'Dagens hantverk är keramik och gästdomare är Nina Bergqvist, en av Sveriges mest meriterade keramiker med världsmästartitlar i drejning. Sju hantverkare tävlar om att bli nästa stora designstjärna. Deltagarna tävlar i fem olika hantverk: trä, keramik, papper, läder och smide. En efter en måste deltagarna lämna tävlingen. I sista programmet koras vinnaren - årets Mästerskapare. Programledare är Pernilla Månsson Colt och huvuddomare är Samir Alj Fält. Del 2 av 6.', 'Today\'s crafts are ceramics and guest judges are Nina Bergqvist, one of Sweden\'s most acclaimed potters with world champion titles in rotation. Seven craftsmen are competing to become the next big design star. Participants compete in five different crafts: wood, ceramics, paper, leather and forging. One by one, participants must leave the competition. In the last program, the winner - the Champion of the Year is announced. The program manager is Pernilla Månsson Colt and the main judge is Samir Alj Fält. Part 2 of 6.', 'SE', 'Y'),
('e074', 'p037', 1, 3, 2019, 60, 'Dagens hantverk är papper och gästdomare är Bea Szenfeld, en av landets främsta modeskapare. Hennes papperskreationer har synts på de stora scenerna runt om i världen och burits av celebriteter som Lady Gaga och Björk. Sex hantverkare är kvar i tävlingen där nästa stora designstjärna, årets Mästerskapare, ska utses. Programledare är Pernilla Månsson Colt och huvuddomare är Samir Alj Fält. Del 3 av 6.', 'Today\'s craft is paper and guest judge is Bea Szenfeld, one of the country\'s foremost fashion creators. Her paper creations have been featured on the big scenes around the world and been carried by celebrities like Lady Gaga and Björk. Six craftsmen remain in the competition where the next big design star, this year\'s Champion, will be selected. The program manager is Pernilla Månsson Colt and the main judge is Samir Alj Fält. Part 3 of 6.', 'SE', 'Y'),
('e075', 'p038', 1, 1, 1969, 100, NULL, NULL, 'SE', 'Y'),
('e076', 'p039', 1, 1, 2014, 120, NULL, NULL, 'EN', 'Y'),
('e077', 'p040', 1, 1, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e078', 'p041', 14, 32, 2019, 45, 'Efter dödsskjutningen - hur förhindrar man att unga människor dras in i grov kriminalitet? Direktsändning från Möllevången i Malmö där ungdomar möter debattören Ann Heberlein, malmöprofilen Nicolas Lunabba m.fl. Dessutom: IS-återvändare jobbar som lärare på Vetenskapsskolan i Göteborg. Rektorn möter stiftelsen Doku som granskat skolan. Programledare: Belinda Olsson.', 'After the shooting - how do you prevent young people from being involved in serious crime? Live broadcast from Möllevången in Malmö where young people meet the debater Ann Heberlein, Malmö profile Nicolas Lunabba and others. In addition: IS returnees work as a teacher at Vetenskapsskolan in Gothenburg. The principal meets the Doku Foundation which has reviewed the school. Host: Belinda Olsson.', 'SE', 'Y'),
('e079', 'p042', 5, 17, 2019, 30, 'Kallvattnet i Henrys bostadsrätt är för varmt. Orsaken är att vattenledningarna är för dåligt isolerade. Henry vill att Riksbyggen tar sitt ansvar och gör om installationerna, men företaget håller inte med om att huset är felbyggt. De lovade hjälp med dyra mobilabonnemang, men Thomas fick bara nya dyra räkningar. Konsumentombudsmannen har stämt Telefonihuset som nu måste skärpa sina säljmetoder. Programledare Inger Ljung Olsson.', 'The cold water in Henry\'s condominium is too hot. The reason is that the water pipes are too poorly insulated. Henry wants the Riksbyggen to take responsibility and redo the installations, but the company does not agree that the house is faulty. They promised help with expensive mobile subscriptions, but Thomas only got new expensive bills. The Consumer Ombudsman has sued Telefonihuset, which now has to sharpen its sales methods. Program Manager Inger Ljung Olsson.', 'SE', 'Y'),
('e080', 'p043', 54, 501, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e081', 'p043', 54, 502, 2019, 25, NULL, NULL, 'SE', 'Y'),
('e082', 'p043', 54, 503, 2019, 5, NULL, NULL, 'SE', 'Y'),
('e083', 'p043', 54, 504, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e084', 'p043', 54, 505, 2019, 25, NULL, NULL, 'SE', 'Y'),
('e085', 'p043', 54, 506, 2019, 5, NULL, NULL, 'SE', 'Y'),
('e086', 'p043', 54, 507, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e087', 'p043', 54, 508, 2019, 25, NULL, NULL, 'SE', 'Y'),
('e088', 'p043', 54, 509, 2019, 5, NULL, NULL, 'SE', 'Y'),
('e089', 'p043', 54, 510, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e090', 'p043', 54, 511, 2019, 25, NULL, NULL, 'SE', 'Y'),
('e091', 'p043', 54, 512, 2019, 5, NULL, NULL, 'SE', 'Y'),
('e092', 'p043', 54, 513, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e093', 'p043', 54, 514, 2019, 25, NULL, NULL, 'SE', 'Y'),
('e094', 'p043', 54, 515, 2019, 5, NULL, NULL, 'SE', 'Y'),
('e095', 'p043', 54, 516, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e096', 'p043', 54, 517, 2019, 15, NULL, NULL, 'SE', 'Y'),
('e097', 'p043', 54, 518, 2019, 5, NULL, NULL, 'SE', 'Y'),
('e098', 'p043', 54, 519, 2019, 10, NULL, NULL, 'SE', 'Y'),
('e099', 'p043', 54, 520, 2019, 25, NULL, NULL, 'SE', 'Y'),
('e100', 'p043', 54, 521, 2019, 5, NULL, NULL, 'SE', 'Y'),
('e101', 'p044', 1, 1, 2019, 55, NULL, NULL, 'SE', 'N'),
('e102', 'p045', 7, 2, 2019, 30, 'Gäster är artisten Måns Zelmerlöw och komikern Evelyn Mok.', 'Guests are artist Måns Zelmerlöw and comedian Evelyn Mok.', 'SE', 'Y'),
('e103', 'p045', 7, 3, 2019, 30, 'Gäster är programledaren Jenny Strömstedt och komikern Jonatan Unge.', 'Guests are the host Jenny Strömstedt and comedian Jonatan Unge.', 'SE', 'Y'),
('e104', 'p046', 1, 5, 2019, 30, 'Alexander ska äntligen få använda slamfärgen han kokade ihop och Ludvig blandar till en egen limfärg. Leonard och Nils Johan har fullt upp med att smida ett verktyg och få till ett skaft i Nils Johans verkstad. Semestern börjar närma sig och äntligen kan Nils Johan njuta av sin brandbil. Alexander och Leonard gör iordning en vikingabåt som visar sig läcka som ett såll. Alexander, Nils Johan och Leonard är tre tvättäkta timmermän och hantverkare med passion för sitt yrke och under några intensiva sommarmånader följer vi med dem runt om i Sverige. Del 5 av 8.', 'Alexander will finally be able to use the sludge paint he cooked together and Ludvig mixes to his own glue paint. Leonard and Nils Johan are fully engaged in forging a tool and getting a handle in Nils Johan\'s workshop. The holiday is approaching and finally Nils Johan can enjoy his fire truck. Alexander and Leonard prepare a Viking boat that turns out to be leaking like a saddle. Alexander, Nils Johan and Leonard are three washable carpenters and craftsmen with a passion for their profession and during some intense summer months we follow them around Sweden. Part 5 of 8.', 'SE', 'Y'),
('e105', 'p047', 1, 1, 2019, 30, 'Det låter så lätt, men hur gör man för att faktiskt låta ett barn komma till tals på bästa sätt? Hur mycket lyssnar man på barnen inom rättsväsendet och i skolvärlden? Vi träffar Jenny och Lowa som båda varit med om polisförhör, och Hanna som kämpat för elevdemokrati i sin skola. Del 1 av 6. UR.', 'It sounds so easy, but how do you actually get a child to speak in the best way? How much do you listen to the children in the judiciary and in the school world? We meet Jenny and Lowa, who both participated in police interrogations, and Hanna who fought for student democracy in her school. Part 1 of 6. UR.', 'SE', 'Y'),
('e106', 'p048', 1, 5, 2019, 50, 'Den femte och sista uttagningstävlingen går av stapeln på Østlandet. Här möts Fakhar, Jannicke, Karl Håkon och Mattis - fyra passionerade bilägare med siktet inställt på en åtråvärd finalplats och möjligheten att erövra titeln \"Norges tuffaste bilförare\". Alla de tävlande är amatörer och deltävlingarna genomförs i privata bilar. Programledare: Molly Pettit och Torfinn Borkhus. Del 5 av 8.', 'The fifth and final competition will be held in Østlandet. Here, Fakhar, Jannicke, Karl Håkon and Mattis meet - four passionate car owners with the aim of a desirable final place and the opportunity to take the title \"Norway\'s toughest car driver\". All the competitors are amateurs and the competitions are conducted in private cars. Host: Molly Pettit and Torfinn Borkhus. Part 5 of 8.', 'NO', 'Y'),
('e107', 'p048', 1, 6, 2019, 50, 'Fem passionerade bilförare från olika delar av landet har kvalificerat sig till den avgörande finalomgången. De tävlande ställs mot varandra i olika motorsportgrenar, men nu tävlar de inte längre i sina privata bilar. I den första delfinalen ska fem finalister bli fyra. Vem får lämna tävlingen? Programledare: Molly Pettit och Torfinn Borkhus. Del 6 av 8.', 'Five passionate drivers from different parts of the country have qualified for the decisive final round. The competitors compete against each other in different motor sports, but now they no longer compete in their private cars. In the first semi-final, five finalists will be four. Who is allowed to leave the competition? Host: Molly Pettit and Torfinn Borkhus. Part 6 of 8.', 'NO', 'Y'),
('e108', 'p049', 1, 7, 2017, 20, 'Blutige drohung. Hanna får ett obehagligt meddelande i sitt skåp i skolan. Hon bestämmer sig för att gå till botten med vad som hänt. Del 7 av 8. UR.', 'Bloody threat. Hanna receives an unpleasant message in her locker at school. She decides to go to the bottom with what happened. Part 7 of 8. UR.', 'DE', 'Y'),
('e109', 'p049', 1, 8, 2017, 20, 'Partyhelden. Jonas och Hanna pratar ut om sin relation. Mias lösningar för att hålla Alex på avstånd blir alltmer kreativa och under årets fest kommer ett oväntat avslöjande. Del 8 av 8. UR.', 'Partyhelden. Jonas and Hanna talk about their relationship. Mia\'s solutions to keep Alex at a distance are becoming increasingly creative and during this year\'s party comes an unexpected reveal. Part 8 of 8. UR.', 'DE', 'Y');
INSERT INTO `episodes` (`id`, `programID`, `season`, `epNumber`, `prodYear`, `duration`, `descriptionSE`, `descriptionEN`, `language`, `subtitles`) VALUES
('e110', 'p050', 9, 8, 2019, 60, 'Gäster hos Skavlan är Malin Åkerman som filmdebuterar på svenska med den romantiska musikalkomedin \"En del av mitt hjärta\", inredaren Ernst Kirchsteiger, hotellkungen Petter Stordalen, som just köpt konkursdrabbade Ving och skådespelaren Rosanna Arquette som är i Stockholm för att motta Stockholm Achievement Award. Och på scenen ser vi Emma Steinbakken med låten \"Not gonna cry\".', 'Guests at Skavlan are Malin Åkerman who debuts in Swedish with the romantic musical comedy \"A Part of My Heart\", the interior designer Ernst Kirchsteiger, the hotel king Petter Stordalen, who just bought bankrupt Ving and the actor Rosanna Arquette who is in Stockholm to receive the Stockholm Achievement Award. And on stage we see Emma Steinbakken with the song \"Not gonna cry\".', 'SE', 'Y'),
('e111', 'p050', 9, 9, 2019, 60, 'Gäster hos Fredrik Skavlan är journalisten Hanna Hellquist komikern Nils-Ingar \"Nilsi\" Aadne och rättsläkaren Dr. Richard Shepherd. På scenen framför Lewis Capaldi sin låt Bruises.', 'Guests at Fredrik Skavlan are journalist Hanna Hellquist comedian Nils-Ingar \"Nilsi\" Aadne and forensic physician Dr. Richard Shepherd. On stage, Lewis Capaldi performs his song Bruises.', 'SE', 'Y'),
('e112', 'p051', 33, 148, 2019, 5, NULL, NULL, 'SE', 'N'),
('e113', 'p051', 33, 149, 2019, 5, NULL, NULL, 'SE', 'N'),
('e114', 'p051', 33, 150, 2019, 5, NULL, NULL, 'SE', 'N'),
('e115', 'p051', 33, 151, 2019, 5, NULL, NULL, 'SE', 'N'),
('e116', 'p051', 33, 152, 2019, 5, NULL, NULL, 'SE', 'N'),
('e117', 'p051', 33, 153, 2019, 5, NULL, NULL, 'SE', 'N'),
('e118', 'p051', 33, 154, 2019, 15, NULL, NULL, 'SE', 'N'),
('e119', 'p051', 33, 155, 2019, 5, NULL, NULL, 'SE', 'N'),
('e120', 'p052', 3, 45, 2019, 30, NULL, NULL, 'SE', 'N'),
('e121', 'p052', 3, 46, 2019, 30, NULL, NULL, 'SE', 'N'),
('e122', 'p053', 2, 9, 2018, 30, 'Anders berättar allt du behöver veta om kökets viktigaste redskap - kniven. På menyn står laxtartar och carpaccio. Camilla piffar upp gamla porslinstallrikar och Alexandra gör billig och ekologisk hårspray av citron. Inspiration för hus och hem, fritid och vardagsliv. Programledare: Elin Skagersten Ström och Jonas Sundström. Del 9 av 17.', 'Anders tells you everything you need to know about the kitchen\'s most important tool - the knife. The menu lists salmon tartare and carpaccio. Camilla spices up old porcelain plates and Alexandra makes cheap and organic lemon spray. Inspiration for house and home, leisure and everyday life. Program Manager: Elin Skagersten Ström and Jonas Sundström. Part 9 of 17.', 'SE', 'Y'),
('e123', 'p053', 2, 10, 2018, 30, 'Strömsö ställer till med käpphästfest för både barn och vuxna, med verkstad, hopphinderbana och prisrosetter. I köket visar Anders hur man gör egen tofu. Inspiration för hus och hem, fritid och vardagsliv. Programledare: Elin Skagersten Ström och Jonas Sundström. Del 10 av 17.', 'Strömsö organizes a cane horse party for children and adults alike, with a workshop, jump obstacle course and prize rosettes. In the kitchen Anders shows how to make his own tofu. Inspiration for house and home, leisure and everyday life. Program Manager: Elin Skagersten Ström and Jonas Sundström. Part 10 of 17.', 'SE', 'Y'),
('e124', 'p054', 5, 8, 2019, 30, 'Kristoffer Appelquist om bomberna, returernas långa resor vid nätshopping, Kristersson vs Kristersson, vänsterdagarna i Göteborg, gangsterkulturen bland advokaterna och den växande antisemitismen i Sverige.', 'Kristoffer Appelquist about the bombs, the long journeys of the return at the online shopping, Kristersson vs Kristersson, the left days in Gothenburg, the gangster culture among the lawyers and the growing anti-Semitism in Sweden.', 'SE', 'Y'),
('e125', 'p054', 5, 9, 2019, 30, 'Programledaren Kristoffer Appelquist leder satirprogrammet som förklarar varför saker är som de är, och hur de borde vara, och skämtar om sånt som är politik och sånt som man inte visste var politik.', 'Programledaren Kristoffer Appelquist leder satirprogrammet som förklarar varför saker är som de är, och hur de borde vara, och skämtar om sånt som är politik och sånt som man inte visste var politik.', 'SE', 'Y'),
('e126', 'p055', 45, 101, 2019, 30, 'Nyheter från hela Sverige - direkt från Umeå', 'News from all over Sweden - directly from Umeå', 'SE', 'N'),
('e127', 'p055', 45, 102, 2019, 30, 'Nyheter från hela Sverige - direkt från Umeå', 'News from all over Sweden - directly from Umeå', 'SE', 'N'),
('e128', 'p055', 45, 103, 2019, 30, 'Nyheter från hela Sverige - direkt från Umeå', 'News from all over Sweden - directly from Umeå', 'SE', 'N'),
('e129', 'p055', 45, 104, 2019, 30, 'Nyheter från hela Sverige - direkt från Umeå', 'News from all over Sweden - directly from Umeå', 'SE', 'N'),
('e130', 'p055', 45, 105, 2019, 30, 'Nyheter från hela Sverige - direkt från Umeå', 'News from all over Sweden - directly from Umeå', 'SE', 'N'),
('e131', 'p056', 5, 14, 2019, 30, 'Skådespelaren Grynet Molvig är norskan som tagit sig in i den svenska folksjälen via både Povel Ramel och Hasse och Tage. Nu är hon aktuell på Dramaten med Niklas Rådströms \"Dövheten\". I Helsingborg skrivs just nu en opera om skandalerna inom Svenska Akademien, en knytblus-opera för 18 ledamöter med urpremiär i mars nästa år. Och så besöker vi fotbollstidningen Offside som förbereder för 20-års jubileum. Programledare: Fredrik Önnevall.', 'Actor Grynet Molvig is the Norwegian who has entered the Swedish folk soul through both Povel Ramel and Hasse and Tage. Now she is up to date on the drama with Niklas Rådström\'s \"Deafness\". In Helsingborg, an opera is currently being written about the scandals at the Swedish Academy. And then we visit the football magazine Offside, which is preparing for the 20th anniversary. Program Manager: Fredrik Önnevall.', 'SE', 'Y'),
('e132', 'p056', 5, 15, 2019, 30, 'Kvällens gäst i Sverige är Johan Ulveson, aktuell på Dramaten i den klassiska pjäsen I väntan på Godot. Vi träffar malmöartisten Shirin i replokalen och hänger med tv-reportrarna på daglig verksamhet till ett kloster på Österlen. Programledare: Fredrik Önnevall.', 'Tonight\'s guest in Sweden is Johan Ulveson, current at Dramaten in the classic play Waiting for Godot. We meet ore artist Shirin in the rehearsal room and hang with the TV reporters on a daily basis to a monastery in Österlen. Program Manager: Fredrik Önnevall.', 'SE', 'Y'),
('e133', 'p057', 16, 2, 2019, 50, 'I Graham Nortons soffa hittar vi denna gång Oscarsvinnande Renee Zellweger, komikern Lenny Henry, dokumentärmakaren Louise Theroux och popstjärnan Andrew Ridgeley. Musik av britpopbandet Elbow. Del 2 av 13.', 'In Graham Norton\'s couch we find this time Oscar-winning Renee Zellweger, comedian Lenny Henry, documentary maker Louise Theroux and pop star Andrew Ridgeley. Music by the British pop band Elbow. Part 2 of 13.', 'EN', 'Y'),
('e134', 'p058', 1, 3, 2018, 45, 'Ingrid och Erik försöker efter bästa förmåga hantera sin nya livssituation, men planen börjar redan spricka i sömmarna. I rollerna: Kristofer Hivju, Rebekka Nystabakk, Marlon Langeland, Nanna Bondell, Mathilde L. H. Cuhra, Gunnar Eiriksson m.fl. Del 3 av 8: Dag 3.', 'Ingrid and Erik try to manage their new life situation to the best of their ability, but the plan is already starting to crack in the seams. In the roles: Kristofer Hivju, Rebekka Nystabakk, Marlon Langeland, Nanna Bondell, Mathilde L. H. Cuhra, Gunnar Eiriksson and others. Part 3 of 8: Day 3.', 'NO', 'Y'),
('e135', 'p059', 8, 13, 2019, 60, 'Under jorden pågår jakten efter mineralerna som ska hjälpa till att rädda vår planet. Men vem är villig att betala priset för en ny gruvboom i Sverige - och vem tjänar pengar på drömmen om den stora fyndigheten? Programledare: Ali Fegan.', 'Underground hunting is underway for the minerals that will help save our planet. But who is willing to pay the price for a new mining boom in Sweden - and who makes money on the dream of the big deposit? Host: Ali Fegan.', 'SE', 'Y'),
('e136', 'p060', 7, 3, 2019, 60, 'Veckans brott tar upp mordet som skakade Sverige - dödsskjutningen av 31-åriga läkaren Karolin Hakim i Malmö, samt berättar om danska polisens metoder mot gängen. Dessutom ser vi hur polisen jobbade mot våldsmän år 1972. Programledare: Camilla Kvartoft.', 'This week\'s crime takes up the murder that shook Sweden - the shooting death of 31-year-old doctor Karolin Hakim in Malmö, and tells about the Danish police\'s methods against the gang. We also see how the police worked against violent men in 1972. Program manager: Camilla Kvartoft.', 'SE', 'Y'),
('e137', 'p061', 11, 14, 2019, 45, 'Frågeprogram med en massa allmänbildande frågor om allt från ABBA till ölandstok. Johan Wester leder programmet där åtta personer tävlar varje vecka om äran, 10 000 kronor och en plats i julens slutspel.', 'Question program with a lot of general education questions about everything from ABBA to Ölandstok. Johan Wester leads the program where eight people compete each week for the honor, SEK 10,000 and a place in the Christmas playoffs.', 'SE', 'Y'),
('e138', 'p061', 11, 15, 2019, 45, 'Frågeprogram med en massa allmänbildande frågor om allt från ABBA till ölandstok. Johan Wester leder programmet där åtta personer tävlar varje vecka om äran, 10 000 kronor och en plats i julens slutspel.', 'Question program with a lot of general education questions about everything from ABBA to Ölandstok. Johan Wester leads the program where eight people compete each week for the honor, SEK 10,000 and a place in the Christmas playoffs.', 'SE', 'Y'),
('e139', 'p062', 3, 3, 2019, 60, 'Säsong 3. Calle försöker utveckla menyn på Nina\'s tillsammans med Carmen. Ester och Mirko gör ett nytt försök att sätta stopp för Nina’s nattklubb och diskotek. John och vänstergänget hittar ett illegalt sätt att finansiera sin verksamhet, men Christina får reda på det och blir mycket upprörd. John börjar misstänka att Uno är infiltratör för säkerhetspolisen. Tidningarna har fått reda på att Maggan, som socialborgarråd, besökt en svartklubb. Drevet blir allt värre. Angelo får en ny affärsidé. I rollerna: Hedda Stiernstedt, Charlie Gustafsson, Adam Lundgren, Josefin Neldén, Anna Bjelkerud, Rasmus Troedsson, Simone Coppo, Julia Heveus, Oskar Laring, Morten Vang Simonsen m fl. Manus: Johan Rosenlind och Ulf Kvensler. Regi: Harald Hamrell. Del 3 av 8.', 'Season 3. Calle tries to develop the menu at Nina\'s with Carmen. Ester and Mirko make another attempt to stop Nina\'s nightclub and disco. John and the left gang find an illegal way to fund their business, but Christina finds out and gets very upset. John begins to suspect that Uno is the infiltrator of the security police. The newspapers have found out that Maggan, as a social citizen council, visited a black club. The drive is getting worse. Angelo gets a new business idea. In the roles: Hedda Stiernstedt, Charlie Gustafsson, Adam Lundgren, Josefin Neldén, Anna Bjelkerud, Rasmus Troedsson, Simone Coppo, Julia Heveus, Oskar Laring, Morten Vang Simonsen and others. Screenplay: Johan Rosenlind and Ulf Kvensler. Directed by Harald Hamrell. Part 3 of 8.', 'SE', 'Y'),
('e140', 'p063', 1, 3, 2019, 30, 'Författaren Leif GW Persson bjuder in Lars till sin vackra gård i hjärtat av Sörmland. De fiskar ihop, äter kräftor och utbyter erfarenheter av livets mörker och ljus: självmordstankar, vänskap, missbruk, måleri och konsten att hantera sin ångest. Lars Lerin är en av Sveriges mest älskade konstnärer, men trots framgångarna saknar han något basalt i livet: riktiga vänner. Del 3 av 6.', 'Author Leif GW Persson invites Lars to his beautiful farm in the heart of Sörmland. They fish together, eat crayfish and exchange experiences of the darkness and light of life: suicidal thoughts, friendship, abuse, painting and the art of managing their anxiety. Lars Lerin is one of Sweden\'s most loved artists, but despite his successes he lacks something basic in life: real friends. Part 3 of 6.', 'SE', 'Y'),
('e141', 'p063', 1, 4, 2019, 30, 'Lars Lerin fortsätter att söka nya vänner. Denna vecka hos hyllade artisten och fotografen Nino Ramsby i Stockholm. De har haft kontakt via nätet ett tag och vill nu försöka lära känna varandra i verkliga livet. Nino berättar om sin periodvis tuffa tillvaro som transperson, om utanförskap och konstnärskap, medan Lars rörs till tårar - och skratt - av Ninos självutlämnande musik. Del 4 av 6.', 'Lars Lerin continues to seek new friends. This week at the celebrated artist and photographer Nino Ramsby in Stockholm. They have been in contact via the internet for a while and now want to try to get to know each other in real life. Nino talks about his periodically tough existence as a trans person, about alienation and artistry, while Lars is moved to tears - and laughter - by Nino\'s self-surrendering music. Part 4 of 6.', 'SE', 'Y'),
('e142', 'p063', 1, 5, 2019, 30, 'Sveriges sammetsröst nummer ett, Christer Sjögren, bor inte långt från Lars utanför Karlstad. Bor det även en själsfrände där? Efter en misslyckad båtfärd tar sig Lars äntligen dit, och bjuds på fika med stavgång. De dryftar musik, prestationskrav och drickande - och upptäcker dessutom att de delar en osannolik familjehistoria. Lars Lerin är en av Sveriges mest älskade konstnärer, men trots framgångarna saknar han något basalt i livet: riktiga vänner. Del 5 av 6.', 'Sweden\'s velvet voice number one, Christer Sjögren, lives not far from Lars outside Karlstad. Does a soul mate also live there? After a failed boat trip, Lars finally gets there, and is offered coffee with Nordic walking. They discuss music, performance requirements and drinking - and also discover that they share an unlikely family history. Lars Lerin is one of Sweden\'s most loved artists, but despite his successes he lacks something basic in life: real friends. Part 5 of 6.', 'SE', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` varchar(5) NOT NULL,
  `nameSE` varchar(100) NOT NULL,
  `nameEN` varchar(100) NOT NULL,
  `subnameSE` varchar(200) CHARACTER SET utf8mb4  DEFAULT NULL,
  `subnameEN` varchar(200) CHARACTER SET utf8mb4  DEFAULT NULL,
  `descriptionSE` text CHARACTER SET utf8mb4 ,
  `descriptionEN` text CHARACTER SET utf8mb4 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `nameSE`, `nameEN`, `subnameSE`, `subnameEN`, `descriptionSE`, `descriptionEN`) VALUES
('p001', 'Allt för Sverige', 'All for Sweden', 'Nordamerikaner reser till Sverige för att söka sina svenska rötter', 'North Americans travel to Sweden to seek their Swedish roots', 'Tio nordamerikaner kommer till Sverige för att få uppleva det land där de har sina rötter. Tårar, kulturkrockar och mycket skratt blandas med tävlingar som har anknytning till svenska seder och myter. Programledare: Anders Lundin.', 'Ten North Americans come to Sweden to experience the country where they have their roots. Tears, cultural clashes and a lot of laughter are mixed with competitions that are linked to Swedish customs and myths. Program Manager: Anders Lundin.'),
('p002', 'Andra åket', 'Second ride', 'Familjekomedi av Felix Herngren', 'Family comedy by Felix Herngren', 'Möt Madde och Petter som med dottern Ida bröt upp från sitt stressiga Stockholmsliv för att ta över det lilla släkthotellet i en skidort allra längst upp i norr. Klassåterträffar, misslyckade släktkalas, oönskade smeknamn och nya anställda med storhetsvansinne är bara några av de prövningar som de utsätts för i sin nya hemort.', 'Meet Madde and Petter who with their daughter Ida broke up from their stressful Stockholm life to take over the little family hotel in a ski resort at the very top of the north. Class reunions, failed family reunions, unwanted nicknames and new employees with grandeur madness are just some of the trials they face in their new hometown.'),
('p003', 'Arvinge okänd', 'Heir unknown', 'Sökande efter okända arvingar', 'Search for unknown heirs', 'Kattis Ahlström och Niklas Källner söker upp personer med rätt till ett arv och en okänd familjehistoria.', 'Kattis Ahlström and Niklas Källner are looking for people with the right to an inheritance and an unknown family history.'),
('p004', 'Basket: EM-kval', 'Basketball: European Championship Qualification', 'Streama svenska basketdamernas EM-kvalmatcher', 'Stream Swedish basketball ladies\' European Championship qualifiers', 'Sveriges basketdamer slutade på en femteplats i sommarens EM. Följ med på resan mot nästa nästa Europamästerskap i Frankrike/Spanien sommaren 2021.', 'Sweden\'s basketball ladies finished in fifth place in this summer\'s European Championship. Join us on your journey to the next European Championships in France / Spain in the summer of 2021.'),
('p005', 'Curling: EM', 'Curling: European Championship', 'Curling-EM i Helsingborg – 16-23 november', 'Curling European Championships in Helsingborg - November 16-23', 'Vid curling-EM i Helsingborg finns svenska guldförhoppningar både på dam- och herrsidan. Lag Anna Hasselborg är regerande mästare i både EM och VM och lag Niklas Edin är dubbla regerande världsmästare men förlorade EM-finalen senast. SVT storsatsar och sänder fler matcher än någonsin. Mästerskapet kommenteras av SVT:s Niklas Nord och expertkommentatorn Eva Lund.', 'At the Curling European Championships in Helsingborg, there are Swedish gold hopes on both the women\'s and men\'s side. Team Anna Hasselborg is the reigning champion in both the European Championships and the World Cup and teams Niklas Edin are two reigning world champions but lost the European Championship final at the last. SVT is betting and sending more matches than ever. The championship is commented on by SVT\'s Niklas Nord and expert commentator Eva Lund.'),
('p006', 'Det svenska popundret', 'The Swedish pop wonder', 'En underhållande resa i popmusikens tecken', 'An entertaining journey in the character of pop music', 'Det här är historien om hur ett litet land i norr blev världsmästare i popmusik. Från folkparker till fullsatta arenor, från blockflöjt till rena låtskrivarskolor, från ABBA till Avicii och allt som ryms däremellan. Vilket är hur mycket som helst.', 'This is the story of how a small country in the north became a world champion in pop music. From folk parks to crowded arenas, from recorder to pure songwriting schools, from ABBA to Avicii and everything in between. Which is how much.'),
('p007', 'Dokument inifrån: Älskade smuggelhund', 'Document from inside: The beloved smuggled dog', 'Undersökande dokumentär', 'Investigative documentary', 'En smuggelvalp kan bli en mardröm som familjehund. Men hur motstår man en blöt nos mot handen och två gyllenbruna ögon som ropar \"Köp mig!\"? Filmaren Jonny von Wallström tycker att han vet en hel del om hundar. Men när han ska hitta en hund till familjen så upptäcker han att de oseriösa hundförsäljarna har blivit väldigt skickliga. Snart dras han in i en härva av falska identiteter, korrupta veterinärer och hänsynslösa valpfabriker.', 'A smug puppy can be a nightmare as a family dog. But how do you resist a wet nose to the hand and two golden-brown eyes that shout \"Buy me!\" Filmmaker Jonny von Wallström thinks he knows a lot about dogs. But when he finds a dog for the family, he discovers that the rogue dog vendors have become very skilled. Soon he is drawn into a tangle of false identities, corrupt veterinarians and reckless puppy factories.'),
('p008', 'Dom kallar oss artister: Ögonblicket', 'They call us artists: The moment', 'Musikserie', 'music Series', 'Svenska artister berättar om ögonblicket då musiken förändrade deras liv.', 'Swedish artists talk about the moment when music changed their lives.'),
('p009', 'Doobidoo', 'Doobidoo', 'Musikalisk frågelek med Lasse Kronér', 'Musical quiz game with Lasse Kronér', 'Lekfullt tävlingsprogram som blandar spontana sånginsatser, musikminnen och spännande artistkonstellationer. Programledare: Lasse Kronér.', 'Playful competition program that mixes spontaneous singing efforts, musical memories and exciting artist constellations. Host: Lasse Kronér.'),
('p010', 'En stad - en historia', 'One city - one history', 'Reportageserie', 'Reportage series', 'Historiska reportage som tar avstamp i olika städer runtom i Sverige. Vi återkallar minnet av händelser som satte avtryck i sin samtid men som bleknat under decennierna som passerat.', 'Historical reports that take off in different cities around Sweden. We recall the memory of events that left a mark in their day but which faded during the decades that have passed.'),
('p011', 'Engelska Antikrundan', 'Antiques Roadshow', 'Antikexperter på jakt efter gömda skatter i Storbritannien', 'Antique experts in search of hidden treasures in the UK', 'Programledaren Fiona Bruce och antikexperterna åker runt Storbritannien på jakt efter gömda skatter. Det populära faktaprogrammet har fängslat den engelska publiken i mer än 30 år.', 'Programmer Fiona Bruce and the antique experts travel around the UK in search of hidden treasures. The popular facts program has captivated the English public for more than 30 years.'),
('p012', 'Filip och Mona', 'Filip and Mona', 'Svensk dramakomediserie om oväntad vänskap', 'Swedish drama comedy series about unexpected friendship', 'När den utbrända gynekologen Mona börjar arbetsträna i en matbutik och handleds av den 20 år yngre Filip, upptäcker de båda snart att de är lika vilsna, trots allt de är på helt olika plats i livet. Filip och Mona är en historia om oväntad vänskap, men är det en vänskap som kommer hålla?', 'When burned-out gynecologist Mona starts working out in a grocery store and is supervised by 20-year-old Filip, they both soon discover that they are equally lost, despite everything being in a completely different place in life. Filip and Mona are a story of unexpected friendship, but is it a friendship that will last?'),
('p013', 'FOMO - stressen med SoMe', 'FOMO - Stressed with SoMe', NULL, NULL, 'Alia, Valdemar och Freja är födda i generation SoMe. Sociala medier fyller otroligt mycket i deras liv - på gott och ont. De kämpar var och en för att hitta balansen. Freja påverkas så negativt att hon hoppar av sociala medier men är rädd för att bli bortglömd. Valdemar är helt annorlunda. Sociala medier har aldrig riktigt tilltalat honom men det är inte utan konsekvenser att vara utanför SoMe-samhället - det kan faktiskt vara enormt ensamt. Hur är det att lida av FOMO - \"fear of missing out\"?', 'Alia, Valdemar and Freja were born in the generation of SoMe. Social media fills an incredible amount of their lives - for good and for bad. They each struggle to find the balance. Freja is so negatively affected that she jumps off social media but is afraid of being forgotten. Elections are completely different. Social media has never really appealed to him, but it is not without consequences to be outside the SoMe community - it can actually be tremendously lonely. What is it like to suffer from FOMO - \"fear of missing out\"?'),
('p014', 'Fråga doktorn', 'Ask the doctor', 'Svar på medicinska frågor', 'Answers to medical questions', 'Doktor Karin Granberg svarar på tittarfrågor om hälsa. Programledare är Suzanne Axell.', 'Doctor Karin Granberg answers viewer questions about health. The host is Suzanne Axell.'),
('p015', 'Första dejten', 'First date', 'Dejtingprogram med hopp om att hitta kärlek', 'Dating program with hope of finding love', 'Singlar från alla delar av landet söker efter kärleken i Första dejten Sverige. Vi följer hela dejten ända fram till den avgörande frågan – vill de träffas igen?', 'Singles from all parts of the country are looking for love in First Date Sweden. We follow the whole date right up to the crucial question - do they want to meet again?'),
('p016', 'Första kärleken', 'First love', 'Serie om att vara varandras första stora kärlek', 'Series about being each other\'s first great love', 'Den första kärleken kan vara den mest fantastiska – men samtidigt den svåraste. I denna blottande danska dokumentärserie följer vi förälskade par i en bergochdalbana av känslor.', 'The first love may be the most amazing - but at the same time the most difficult. In this devastating Danish documentary series, we follow in love couples in a roller coaster of emotions.'),
('p017', 'Go\'kväll', 'Goo\'evening', 'Tv-magasin med aktuella gäster', 'TV magazine with current guests', 'Tv-magasin med intressanta gäster, reportage, matlagning med mera. Programledare: Inger Ljung Olsson, Beppe Starbrink, Linda Olofsson och Pia Herrera.', 'TV magazine with interesting guests, reportage, cooking and more. Program manager: Inger Ljung Olsson, Beppe Starbrink, Linda Olofsson and Pia Herrera.'),
('p018', 'Gryningspyromanen', 'The dawn arsonist', 'Dokumentärserie om Sveriges farligaste mordbrännare', 'Documentary series about Sweden\'s most dangerous murder burner', 'I över trettio års tid levde delar av Sverige i skräck för en man som kom att kallas för Gryningspyromanen. Polisen misstänker honom för att ha anlagt över hundra bränder, många av dem klassade som mordbränder och de har använt extrema metoder för att få fast honom men utan större framgång. Trots att de i perioder förföljde honom dygnet runt kunde de bara få fram bevis nog för en fällande dom i några enstaka fall. Journalisten Nils Bergman har under de senaste åren fördjupat sig i många uppmärksammade svenska rättsfall. Nu har turen kommit Gryningspyromanen.', 'For over thirty years, parts of Sweden lived in terror of a man who came to be called the Dawn Pyromaniac. Police suspect him of having committed over a hundred fires, many of them classified as homicides and they have used extreme methods to get him but without much success. Although they persecuted him around the clock for periods of time, they could only get enough evidence of a convict in some isolated cases. In recent years, journalist Nils Bergman has immersed himself in many notable Swedish cases. Now the tour has come the Dawn Pyromaniac.'),
('p019', 'Helgmålsringning', 'Sabbath bells are ringing', 'Tankar och reflektioner om gud och tro', 'Thoughts and reflections on God and faith', 'Helgen rings in med reflektioner från kyrkor runt om i Sverige.', 'The weekend is ringed with reflections from churches around Sweden.'),
('p020', 'Hjärtats vägar', 'Doctor Doctor', 'Australisk dramaserie', 'Australian drama series', 'Hugh Knight är en ung lovande hjärtkirurg som siktar mot toppen. Men den självgode läkaren sätter sig själv rejält i klistret och blir omplacerad att vara allmänläkare ett år i sin gamla hemby Whyhope i Australiens mitt.', 'Hugh Knight is a young promising cardiac surgeon aiming for the top. But the self-reliant physician puts himself firmly in the sticker and is relocated to be a general practitioner for a year in his old hometown of Whyhope in the middle of Australia.'),
('p021', 'Innan vi dör', 'Before we die', 'Hyllad svensk dramathriller', 'Celebrated Swedish drama thriller', 'En känsloladdad och oförutsägbar historia i tio delar om starka familjeband, brutal maktkamp i undre världen och personliga offer.', 'An emotionally charged and unpredictable story in ten parts about strong family ties, brutal power struggles in the underworld and personal sacrifices.'),
('p022', 'Killing Eve', 'Killing Eve', 'Brittisk-amerikansk dramaserie', 'British-American drama series', 'Eve är en begåvad men uttråkad agent vid den brittiska säkerhetstjänsten MI5. Efter mordet på en rysk politiker blir det Eves uppgift att ge beskydd åt det enda vittnet till dådet. Hon kommer snart på kollisionskurs med den våldsamma och briljanta yrkesmördaren Villanelle. Det blir en katt-och-råtta-lek där de två mycket skarpa kvinnorna visar sig vara precis lika besatta av varandra.', 'Eve is a talented but bored agent at the British security service MI5. After the murder of a Russian politician, it becomes Eva\'s job to give protection to the only witness to the deed. She will soon be on a collision course with the violent and brilliant professional killer Villanelle. It will be a cat-and-rat game where the two very sharp women turn out to be just as possessed by each other.'),
('p023', 'Korrespondenterna', 'Correspondents', 'Utrikesmagasin', 'Foreign magazine', 'Korrespondenterna tar upp globala frågor genom människors berättelser. Ett reportagemagasin som med nyfikenhet och engagemang skildrar sammanhang i världen med ett personligt berättande.', 'The correspondents address global issues through people\'s stories. A reporting magazine that, with curiosity and commitment, depicts the context of the world with a personal story.'),
('p024', 'Kulturnyheterna', 'Culture news', 'Nyhetsprogram om kultur', 'News program on culture', 'Nyhetsprogram om kultur.', 'News program on culture.'),
('p025', 'Kurs i självutplåning', 'Course in self-extinction', 'Humorserie med Evelyn Mok och Jonatan Unge', 'Humor series with Evelyn Mok and Jonatan Unge', 'Maria är en inåtvänd tjej i en grå vardag, på ett tråkigt jobb och med en irriterande rumskompis, men med en hemlig komiker inom sig. Hennes bästis Tore är uppvuxen på Östermalm men har aldrig lyckats med något trots de bästa förutsättningar. I hopp om att förlösa sin inre clown åker Maria på ett sommarläger i clownteater. Istället blir hon överkörd av ett gäng självupptagna människor och en maktfullkomlig kursledare. Till slut slår hon tillbaka.', 'Maria is an inward-looking girl in a gray everyday, at a boring job and with an annoying roommate, but with a secret comedian inside. Her best friend Tore grew up in Östermalm, but has never succeeded in anything despite the best conditions. In the hope of releasing her inner clown, Maria goes to a summer camp in the clown theater. Instead, she is overrun by a bunch of self-absorbed people and a powerful course leader. In the end, she strikes back.'),
('p026', 'Landet runt', 'Around the country', 'Spännande reportage från hela Sverige', 'Exciting reports from all over Sweden', 'De mest överraskande händelserna, de mest gripande ödena och de mest spännande mötena bakas ihop till landets mest mänskliga tv – Landet runt. Programledare Henrik Kruusval.', 'The most surprising events, the most moving fates and the most exciting meetings are baked together into the country\'s most human television - The Country Around. Program Manager Henrik Kruusval.'),
('p027', 'Lokala nyheter', 'Local news', 'Senaste nytt från Stockholms län', 'Latest news from Stockholm County', 'Senaste nytt från Stockholms län. Lokala Nyheter Stockholm sänder nyheter och väderprognoser.', 'Latest news from Stockholm County. Local News Stockholm sends news and weather forecasts.'),
('p028', 'Lyckomaten', 'Happiness\' food', 'Realityserie', 'Reality Series', 'Kocken Tareq Taylor och hälsocoachen Sofia Ståhl hjälper fem deltagare i olika åldrar att förändra sina liv. Är det möjligt att göra det på 50 dagar?', 'Chef Tareq Taylor and health coach Sofia Ståhl help five participants of different ages change their lives. Is it possible to do it in 50 days?'),
('p029', 'Lärlabbet', 'Teaching lab', NULL, NULL, 'Lärlabbet är ett inspirerande, fortbildande och yrkesutvecklande tv-program för dig som är lärare. Här möter vi pedagoger i deras klassrum och ledande experter inom pedagogik och didaktik både i Sverige och runtom i världen.', 'The Teaching Lab is an inspirational, continuing education and professional development television program for you as a teacher. Here we meet educators in their classrooms and leading experts in pedagogy and didactics both in Sweden and around the world.'),
('p030', 'Lördagsbio: October Sky', 'Saturday cinema: October Sky', 'Amerikansk långfilm från 1999.', 'American feature film from 1999.', 'Året är 1957 och i den lilla gruvstaden Coalwood i USA kretsar allt kring kolgruvedriften. Homer Hickams far tar för givet att hans son ska göra som alla andra och börja arbeta i gruvan. Men Homer ser den ryska satelliten Sputnik flyga fram över himlen och beslutar sig för att nå stjärnorna - han ska bygga en egen rymdraket. Regi: Joe Johnston. I rollerna: Jake Gyllenhaal, Chris Cooper, Laura Dern, Chris Owen, William Lee Scott m.fl.', 'The year is 1957 and in the small mining town of Coalwood in the United States everything revolves around coal mining. Homer Hickam\'s father takes for granted that his son should do like everyone else and start working in the mine. But Homer sees the Russian satellite Sputnik fly over the sky and decides to reach the stars - he will build his own space rocket. Directed by: Joe Johnston. In the roles: Jake Gyllenhaal, Chris Cooper, Laura Dern, Chris Owen, William Lee Scott and others'),
('p031', 'Matiné: Cyrano de Bergarc - värjans mästare', 'Matinee: Cyrano de Bergarc', 'Amerikansk långfilm från 1950', 'American movie from 1950', 'Filmatisering av Edmond Rostands klassiska pjäs om den skälmske skrytmånsen med vit fjäderbuske i hatten och lång näsa. Cyrano är lika kvick i munnen som han är farlig med sitt svärd. Han är förälskad i sin kusin, den vackra Roxanne, som dessvärre älskar en annan. Cyrano ger istället sin ovetande rival, som saknar Cyranos bredd och poetiska talang, sina romantiska dikter, så att denne kan smickra sig in hos Roxanne. Regi: Michael Gordon. I rollerna: José Ferrer, Mala Powers, Edgar Barrier, William Prince, Albert Cavens, Morris Carnovsky m.fl.', 'Filmization of Edmond Rostand\'s classic play about the mischievous boast moon with white feather bush in the hat and long nose. Cyrano is as quick in his mouth as he is dangerous with his sword. He is in love with his cousin, the beautiful Roxanne, who unfortunately loves another. Instead, Cyrano gives his ignorant rival, who lacks Cyrano\'s breadth and poetic talent, his romantic poems, so that he can flatter himself into Roxanne. Directed by: Michael Gordon. In the roles: José Ferrer, Mala Powers, Edgar Barrier, William Prince, Albert Cavens, Morris Carnovsky and others.'),
('p032', 'Matiné: Sista paret ut', 'Matinee: Last couple out', 'Svensk långfilm från 1956', 'Swedish feature film from 1956', 'Drama om gymnasisten Bo Dahlin, vars föräldrar har ett stormigt äktenskap med många gräl och mycket bitterhet. När Bo får reda på att hans mamma har en älskare så blir han djupt påverkad. En film om ungdomlig rotlöshet och generationsmotsättningar, efter manus av Ingmar Bergman. Regi: Alf Sjöberg. I rollerna: Björn Bjelfvenstam, Eva Dahlbeck, Bibi Andersson, Harriet Andersson, Olof Widgren, Jarl Kulle m.fl.', 'Drama about high school student Bo Dahlin, whose parents have a stormy marriage with many quarrels and a lot of bitterness. When Bo finds out that his mother has a lover, he is deeply affected. A film about youthful rootlessness and generational contradictions, after the script by Ingmar Bergman. Director: Alf Sjöberg. In the roles: Björn Bjelfvenstam, Eva Dahlbeck, Bibi Andersson, Harriet Andersson, Olof Widgren, Jarl Kulle and others.'),
('p033', 'Matiné: Sjösalavår', 'Matinee: Sjösala spring', 'Svensk långfilm från 1949', 'Swedish feature film from 1949', 'Evert Taube befinner sig på sitt kära Sjösala i Roslagen. Han har penningbekymmer och fordringsägarna står i kö. Evert bestämmer sig för att resa till Buenos Aires, där han kan skaffa material till nya visor. Han utverkar ett förskott från sin förläggare och tar farväl av familjen. Långresan inleds med skärgårdsbåt till Stockholm och efter ankomsten dit styr han stegen till Gamla stan och krogen Den Gyldene Freden. Regi: Per Gunvall. I rollerna: Evert Taube, Elof Ahrle, Maj-Britt Nilsson, Benkt-Åke Benktsson, Hjördis Petterson, John Elfström m.fl.', 'Evert Taube is at his dear Sjösala in Roslagen. He has money troubles and the creditors are in line. Evert decides to travel to Buenos Aires, where he can procure material for new shows. He makes an advance from his publisher and says goodbye to the family. The long journey starts with an archipelago boat to Stockholm and after arriving there he directs the steps to the Old Town and the pub Den Gyldene Freden. Directed by Per Gunvall. In the roles: Evert Taube, Elof Ahrle, Maj-Britt Nilsson, Benkt-Åke Benktsson, Hjördis Petterson, John Elfström and others.'),
('p034', 'Militärligan', 'Military league', 'Svensk dokumentärserie', 'Swedish documentary series', 'Om \"Militärligan\" som på 90-talet låg bakom en rånvåg utan motstycke i svensk kriminalhistoria. Vi möter dem som hamnade i ligans väg och hör deras berättelser. Det är också en berättelse om ett Sverige i ett uppvaknande och polisens svåra arbete med att identifiera och gripa personerna bakom maskerna.', 'About the \"Military League\" which in the 90\'s was behind an unprecedented robbery in Swedish criminal history. We meet those who got in the way of the league and hear their stories. It is also a story about a Sweden in an awakening and the police\'s difficult work on identifying and arresting the people behind the masks.'),
('p035', 'Min demokrati', 'My democracy', NULL, NULL, 'Tindra skolstrejkar för klimatet, Marius driver ett musikställe och Anna kämpar för mänskliga rättigheter. En svensk-dansk serie om unga som sätter sina avtryck på demokratin.', 'Tindra school strikes for the climate, Marius runs a music venue and Anna fights for human rights. A Swedish-Danish series about young people putting their footprints on democracy.'),
('p036', 'Morgonstudion', 'Morning studio', 'Dagens viktigaste nyheter och analyser', 'Today\'s most important news and analysis', 'Vi sänder direkt inrikes- och utrikesnyheter – inklusive sport, kultur och nöje. Dessutom intervjuer med aktuella gäster. Nyhetssammanfattningar med start 06.00. Lokala nyheter från 07.05. Väder kvart i och kvart över.', 'We broadcast domestic and foreign news directly - including sports, culture and entertainment. In addition, interviews with current guests. News summaries starting at 6am. Local news from 07.05. Weather quarter in and quarter over.'),
('p037', 'Mästerskaparna', 'Masters of the Makers', 'Hantverksprogram', 'Crafts program', 'Sju hantverkstalanger tävlar om att bli nästa stora designstjärna. Deltagarna tävlar i fem olika hantverk: trä, keramik, papper, läder och smide. En efter en måste deltagarna lämna tävlingen. I sista programmet koras vinnaren – årets Mästerskapare. Huvuddomare är designern Samir Alj Fält och programledare Pernilla Månsson Colt.', 'Seven craft talents are competing to become the next big design star. Participants compete in five different crafts: wood, ceramics, paper, leather and forging. One by one, participants must leave the competition. In the last program, the winner - the Champion of the Year is announced. Chief judge is designer Samir Alj Fält and program manager Pernilla Månsson Colt.'),
('p038', 'Nattfilm: Som natt och dag', 'Night film: Like night and day', 'Svensk långfilm från 1969', 'Swedish feature film from 1969', 'Susanne jobbar som hallåa på tv och håller ihop med underläkaren Rikard. En dag träffar Susanne Rikards chef Erland som har allt det Rikard inte har: han är trygg och har social auktoritet, intellektuell prestige och möjlighet att röra sig fritt i världen. Susanne gifter sig med Erland, men det blir inte riktigt som hon hoppats. Regi: Jonas Cornell. I rollerna: Agneta Ekmanner, Gösta Ekman, Keve Hjelm, Claire Wikholm, Birgitta Valberg, Håkan Serner m.fl.', 'Susanne works as a greeter on TV and keeps up with the physician Rikard. One day Susanne Rikard meets Erland\'s manager, who has everything Rikard does not have: he is secure and has social authority, intellectual prestige and the opportunity to move freely in the world. Susanne marries Erland, but it is not true as she hoped. Directed by Jonas Cornell. In the roles: Agneta Ekmanner, Gösta Ekman, Keve Hjelm, Claire Wikholm, Birgitta Valberg, Håkan Serner and others.'),
('p039', 'Nattfilm: The Disappearance of Eleanor Rigby: Them', 'Night film: The Disappearance of Eleanor Rigby: Them', 'Amerikansk långfilm från 2014', 'American feature film from 2014', 'En gång i tiden var Conor och Eleanor lyckligt gifta men efter en tragisk händelse har de blivit främlingar inför varandra. Filmen utforskar parets relation och deras försök att ta tillbaka livet och kärleken de en gång kände. Regi: Ned Benson. I rollerna: Jessica Chastain, James McAvoy, Viola Davis, Nina Arianda, Isabelle Huppert, William Hurt m.fl.', 'Once upon a time, Conor and Eleanor were happily married, but after a tragic event, they have become strangers to each other. The film explores the couple\'s relationship and their attempts to take back the life and love they once felt. Directed by Ned Benson. In the roles: Jessica Chastain, James McAvoy, Viola Davis, Nina Arianda, Isabelle Huppert, William Hurt and others'),
('p040', 'Offerrollsretorik', 'Victim Role Rhetoric', NULL, NULL, 'Kortfilm som består av en serie fristående scener som med humor och stor träffsäkerhet belyser ett beteende som vi så ofta känner igen i vardagssituationer. I filmen porträtteras kvinnor i olika generationer som har blivit bekväma i rollen som offer, en roll som de upplever sig ha blivit tilldelade, men som de också omedvetet använder sig av.', 'Short films that consist of a series of stand-alone scenes that, with humor and great accuracy, illuminate a behavior that we so often recognize in everyday situations. The film portrays women of different generations who have become comfortable in the role of victim, a role that they feel has been assigned, but which they also unconsciously use.'),
('p041', 'Opinion live', 'Opinion live', 'Debatt och fördjupning', 'Debate and in-depth', 'Mer fördjupning, mer fakta och nya perspektiv. Med Belinda Olsson.', 'More depth, more facts and new perspectives. With Belinda Olsson.'),
('p042', 'Plus', 'Plus', 'Konsumentjournalistik, med din hjälp', 'Consumer journalism, with your help', 'Undersökande konsumentprogram som granskar bluffande företag med hjälp av publiken. Programledare: Inger Ljung Olsson.', 'Investigative consumer program that reviews fraudulent companies with the help of the public. Host: Inger Ljung Olsson.'),
('p043', 'Rapport', 'Report', 'Senaste nytt – dagens mest aktuella nyheter från Sverige och världen', 'Latest news - today\'s most current news from Sweden and the world', 'Rapport är Sveriges största nyhetsprogram.', 'Report is Sweden\'s largest news program.'),
('p044', 'Ridsport: Världscupen hoppning', 'Equestrian: World Cup jumping', NULL, NULL, 'Sammandrag av världscupen i hoppning från Stuttgart. Kommentator: Annamaria Fredholm. Expert: Lotta Björe.', 'Abstract of the World Cup in jumping from Stuttgart. Commentator: Annamaria Fredholm. Expert: Lotta Björe.'),
('p045', 'Robins', 'Robin\'s', 'Humortalkshow med Robin Paulsson', 'Humor talk show with Robin Paulsson', 'Robin Paulssons humortalkshow med sketcher och roliga gäster.', 'Robin Paulsson\'s humor talk show with sketches and fun guests.'),
('p046', 'Rätta virket', 'Straight timber', 'Nytänkande byggprogram med doft av en svunnen tid', 'Innovative construction program with the scent of a bygone era', 'Skäggiga timmermän med fäbless för hållbar och traditionell byggnadskonst renoverar små och stora hus tillsammans med inkallade specialister.', 'Bearded carpenters with fixtures for sustainable and traditional building art are renovating small and large houses together with convened specialists.'),
('p047', 'Rättighetsbärarna', 'Legal carriers', 'Barnens rättigheter', 'Children\'s rights', 'Barnkonventionen firar 30 år och blir dessutom lag i Sverige 1 januari 2020. Att barn har egna rättigheter låter så självklart, men vad innebär det egentligen och hur blir vi bättre på att leva upp till dem? I serien Rättighetsbärarna lyssnar vi till barns erfarenheter och berättelser utifrån barnkonventionens olika artiklar. Vi låter även makthavare och experter lyssna, kommentera och ge vägledning.', 'The Convention on the Rights of the Child celebrates 30 years and also becomes law in Sweden on January 1, 2020. That children have their own rights sounds so obvious, but what does it really mean and how do we get better at living up to them? In the series Rättighetsbärarna we listen to children\'s experiences and stories based on the various articles of the Convention on the Rights of the Child. We also let authorities and experts listen, comment and provide guidance.'),
('p048', 'Sexans växel', 'Six\'s gear', 'Norskt motorprogram', 'Norwegian motor program', 'Fyra passionerade bilägare möts i kamp om en åtråvärd finalplats och möjligheten att erövra titeln ”Norges tuffaste bilförare”.', 'Four passionate car owners meet in battle for a desirable final seat and the opportunity to take the title \"Norway\'s toughest car driver\".'),
('p049', 'Skam Deutschland', 'Skam Germany', 'Ungdomsserie', 'Teenagers drama series', 'Första säsongen av Skam Deutschland (Druck) rör sig kring huvudpersonen Hanna som går på gymnasiet i Berlin. Hon och pojkvännen Jonas har ett stabilt förhållande men när Hanna hittar nya vänner, som gärna går på fester, förändras situationen. Hon hamnar i en värld som hon inte kan kontrollera och hennes tidigare värderingar sätts på prov. Serien tar upp ämnen som kärlek, svek, rädsla för att vara sig själv och mobbning.', 'The first season of Skam Deutschland (Druck) revolves around the main character Hanna who attends high school in Berlin. She and her boyfriend Jonas have a stable relationship but when Hanna finds new friends who like to go to parties, the situation changes. She ends up in a world she cannot control and her past values ​​are put to the test. The series addresses topics such as love, betrayal, fear of being yourself and bullying.'),
('p050', 'Skavlan', 'Skavlan', 'Talkshow med Fredrik Skavlan', 'Talk show with Fredrik Skavlan', 'Fredrik Skavlan bjuder in till intressanta samtal med några av världens största stjärnor, artister, politiker, idrottsmän och filosofer.', 'Fredrik Skavlan invites interesting conversations with some of the world\'s biggest stars, artists, politicians, athletes and philosophers.'),
('p051', 'Sportnytt', 'Sportnews', 'Senaste sportnyheterna', 'The latest sports news', 'Senaste sportnyheterna från SVT Sport.', 'Latest sports news from SVT Sport.'),
('p052', 'Sportspegeln', 'Sportmirror', 'Sveriges största sportmagasin', 'Sweden\'s largest sports magazine', 'SVT:s Sportspegeln är Sveriges i särklass största sportmagasin.', 'SVT\'s Sports Mirror is Sweden\'s by far the largest sports magazine.'),
('p053', 'Strömsö', 'Strömsö', 'Finlandssvenskt livsstilsmagasin', 'Finnish-Swedish lifestyle magazine', 'Inspiration för hus och hem, fritid och vardagsliv.', 'Inspiration for house and home, leisure and everyday life.'),
('p054', 'Svenska nyheter', 'Swedish news', 'Satirprogram med Kristoffer Appelquist', 'Satire program with Kristoffer Appelquist', 'Programmet som förklarar varför saker är som de är, hur de borde vara, och skämtar om sånt som är politik och sånt som man inte vet är politik.', 'The program that explains why things are who they are, how they should be, and jokes about things that are politics and things that you don\'t know are politics.'),
('p055', 'Sverige idag', 'Sweden today', 'Nyheter från hela Sverige', 'News from all over Sweden', 'Sverige idag är nyhetsprogrammet med de största och intressantaste nyheterna från SVT:s 21 lokala nyhetsprogram. Programmet sänds från Umeå. Programledare är Frida Wengberg, Helena Wink och Per-Anders Fredriksson.', 'Sweden today is the news program with the biggest and most interesting news from SVT\'s 21 local news programs. The program is broadcast from Umeå. The program directors are Frida Wengberg, Helena Wink and Per-Anders Fredriksson.'),
('p056', 'Sverige!', 'Sweden!', 'Kulturliv i hela landet', 'Cultural life throughout the country', 'Möten med intressanta kulturpersonligheter land och rike runt. Programledare: Fredrik Önnevall.', 'Meetings with interesting cultural personalities country and kingdom around. Program Manager: Fredrik Önnevall.'),
('p057', 'The Graham Norton show', 'The Graham Norton show', 'Stjärnspäckad brittisk talkshow', 'Star-studded British talk show', 'Programledaren Graham Norton gästas av spännande kändisar.', 'Host Graham Norton is hosted by exciting celebrities.'),
('p058', 'Twin', 'Twin', 'Norsk storslagen thrillerserie', 'Norwegian grand thriller series', 'När en ung mamma orsakar sin mans död av misstag övertygar hon den döde makens identiska tvilling att ta hans identitet.', 'When a young mother accidentally causes her husband\'s death, she convinces the dead husband\'s identical twin to take his identity.'),
('p059', 'Uppdrag granskning', 'Mission inspection', 'Granskande samhällsprogram', 'Inspective community programs', 'Reportage och undersökande journalistik. Programledare: Ali Fegan och Karin Mattisson.', 'Reporting and investigative journalism. Host: Ali Fegan and Karin Mattisson.'),
('p060', 'Veckans brott', 'This week\'s crime', 'Djupdykning i aktuella och historiska brott', 'Deep dive into current and historical crimes', 'Veckans brott berättar om aktuella och historiska brott, om förövare, brottsoffer och om polisens arbete. Camilla Kvartoft är programledare. I studion har hon sällskap av tre experter: Johanna Björkman, advokat, DNA-expert och författare, Nadim Ghazale, polis med erfarenhet från utsatta områden samt Christoffer Carlsson, författare och kriminolog. För de riktigt krim-intresserade publiceras dessutom, tre gånger i veckan, det Play-exklusiva programmet \"Veckans brott - Redaktionen\" där våra reportrar borrar djupare och bjuder på analyser.', 'This week\'s crime tells about current and historical crimes, about perpetrators, crime victims and about the work of the police. Camilla Kvartoft is the program manager. In the studio she is joined by three experts: Johanna Björkman, lawyer, DNA expert and author, Nadim Ghazale, police with experience from exposed areas and Christoffer Carlsson, writer and criminologist. In addition, for the really Crimean interested, three times a week, the Play-exclusive program \"The crime of the week\" is published, where our reporters drill deeper and offer analyzes.'),
('p061', 'Vem vet mest?', 'Who knows most?', 'Klassisk frågesport', 'Classic quiz', 'Johan Wester leder frågesporten som kan handla om precis allt från Abba till atomer. Förutom bred allmänbildning krävs också ett strategiskt tänkande.', 'Johan Wester leads the quiz that can be about just about anything from Abba to atoms. In addition to broad general education, strategic thinking is also required.'),
('p062', 'Vår tid är nu', 'Our time is now', 'Prisbelönt svensk dramaserie', 'Award-winning Swedish drama series', 'En familjekrönika om kärlek, konflikter och framtidshopp som sträcker sig från fredsdagen 1945 och många år framåt. I några av huvudrollerna: Hedda Stiernstedt, Adam Lundgren, Charlie Gustafsson, Mattias Nordkvist, Ida Engvoll, Josefin Neldén och Rasmus Troedsson.', 'A family chronicle of love, conflicts and hopes for the future that extends from Peace Day 1945 and many years to come. In some of the lead roles: Hedda Stiernstedt, Adam Lundgren, Charlie Gustafsson, Mattias Nordkvist, Ida Engvoll, Josefin Neldén and Rasmus Troedsson.'),
('p063', 'Vänligen Lars Lerin', 'Sincerely, Lars Lerin', 'Konstnären Lars Lerin söker en vän', 'The artist Lars Lerin is looking for a friend', 'Lars Lerin är en av Sveriges mest älskade konstnärer. Nu söker han nya vänner och möter kreativa människor han uppriktigt vill lära känna.', 'Lars Lerin is one of Sweden\'s most loved artists. Now he is looking for new friends and meeting creative people he sincerely wants to get to know.');

-- --------------------------------------------------------

--
-- Table structure for table `reprises`
--

CREATE TABLE `reprises` (
  `originalID` varchar(5) NOT NULL,
  `repriseID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reprises`
--

INSERT INTO `reprises` (`originalID`, `repriseID`) VALUES
('b0001', 'b0004'),
('b0006', 'b0102'),
('b0007', 'b0060'),
('b0007', 'b0060'),
('b0007', 'b0107'),
('b0008', 'b0028'),
('b0008', 'b0106'),
('b0009', 'b0103'),
('b0012', 'b0027'),
('b0013', 'b0030'),
('b0018', 'b0031'),
('b0018', 'b0034'),
('b0018', 'b0162'),
('b0021', 'b0109'),
('b0021', 'b0125'),
('b0021', 'b0173'),
('b0022', 'b0071'),
('b0022', 'b0094'),
('b0022', 'b0139'),
('b0022', 'b0199'),
('b0023', 'b0095'),
('b0023', 'b0140'),
('b0033', 'b0141'),
('b0041', 'b0134'),
('b0041', 'b0198'),
('b0045', 'b0059'),
('b0046', 'b0064'),
('b0051', 'b0065'),
('b0051', 'b0068'),
('b0054', 'b0074'),
('b0054', 'b0126'),
('b0054', 'b0192'),
('b0055', 'b0072'),
('b0055', 'b0137'),
('b0055', 'b0166'),
('b0056', 'b0070'),
('b0056', 'b0127'),
('b0056', 'b0165'),
('b0057', 'b0069'),
('b0063', 'b0073'),
('b0067', 'b0093'),
('b0067', 'b0169'),
('b0076', 'b0092'),
('b0077', 'b0097'),
('b0082', 'b0098'),
('b0082', 'b0101'),
('b0085', 'b0108'),
('b0085', 'b0164'),
('b0086', 'b0105'),
('b0086', 'b0196'),
('b0086', 'b0215'),
('b0100', 'b0124'),
('b0100', 'b0170'),
('b0111', 'b0128'),
('b0116', 'b0129'),
('b0116', 'b0132'),
('b0119', 'b0135'),
('b0119', 'b0193'),
('b0120', 'b0159'),
('b0121', 'b0138'),
('b0121', 'b0163'),
('b0131', 'b0157'),
('b0131', 'b0171'),
('b0143', 'b0160'),
('b0148', 'b0161'),
('b0151', 'b0167'),
('b0152', 'b0168'),
('b0153', 'b0172'),
('b0154', 'b0216'),
('b0178', 'b0189'),
('b0178', 'b0191'),
('b0179', 'b0190'),
('b0182', 'b0197'),
('b0183', 'b0194'),
('b0184', 'b0214'),
('b0211', 'b0217');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `broadcasts`
--
ALTER TABLE `broadcasts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `broadToCh` (`channelID`),
  ADD KEY `broadToEp` (`episodeID`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `epToProg` (`programID`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reprises`
--
ALTER TABLE `reprises`
  ADD KEY `origToBroad` (`originalID`),
  ADD KEY `repToBroad` (`repriseID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `broadcasts`
--
ALTER TABLE `broadcasts`
  ADD CONSTRAINT `broadToCh` FOREIGN KEY (`channelID`) REFERENCES `channels` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `broadToEp` FOREIGN KEY (`episodeID`) REFERENCES `episodes` (`id`) ON UPDATE RESTRICT;

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `epToProg` FOREIGN KEY (`programID`) REFERENCES `programs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `reprises`
--
ALTER TABLE `reprises`
  ADD CONSTRAINT `origToBroad` FOREIGN KEY (`originalID`) REFERENCES `broadcasts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `repToBroad` FOREIGN KEY (`repriseID`) REFERENCES `broadcasts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
