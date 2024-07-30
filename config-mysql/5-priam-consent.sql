-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 10:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `priam-consent`;

USE `priam-consent`;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `priam-consent`
--

-- --------------------------------------------------------
--
-- Table structure for table `consent`
--

USE `priam-consent`;


CREATE TABLE `Consent` (
  `consent_id` int(11) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `processing_id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `contract_contract_id` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `consent`
--

-- INSERT INTO `Consent` (
--     `consent_id`,
--     `end_date`,
--     `processing_id`,
--     `start_date`,
--     `contract_contract_id`
--   )
-- VALUES (1, NULL, 1, '2023-07-04 00:03:54', 1);
-- --------------------------------------------------------
--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_subject_id` int(11) NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `signature_date` datetime DEFAULT NULL,
  PRIMARY KEY(`contract_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `contract`
--

INSERT INTO `contract`
VALUES (1, 1, NULL, '2023-07-06 00:02:34');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `consent`
--
ALTER TABLE `Consent`
ADD PRIMARY KEY (`consent_id`),
  ADD KEY `FK6qukt5wjw2n4qmiv4l2ay1afe` (`contract_contract_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consent`
--
ALTER TABLE `Consent`
ADD CONSTRAINT `FK6qukt5wjw2n4qmiv4l2ay1afe` FOREIGN KEY (`contract_contract_id`) REFERENCES `contract` (`contract_id`);
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;