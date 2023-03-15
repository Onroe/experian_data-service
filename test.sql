-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 09:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `experian_country`
--

CREATE TABLE `experian_country` (
  `country_id` int(30) NOT NULL,
  `country_code` varchar(30) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `experian_loan`
--

CREATE TABLE `experian_loan` (
  `loan_id` int(30) NOT NULL,
  `end_period` datetime DEFAULT NULL,
  `loan_number` varchar(30) DEFAULT NULL,
  `country_code` varchar(30) DEFAULT NULL,
  `guarantor_country_code` varchar(50) NOT NULL,
  `loan_type` varchar(100) NOT NULL,
  `loan_status` varchar(50) NOT NULL,
  `interest_rate` double NOT NULL,
  `currency_of_commitment` double NOT NULL,
  `data_load_date` datetime DEFAULT current_timestamp(),
  `source_file_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `experian_project`
--

CREATE TABLE `experian_project` (
  `id` int(30) NOT NULL,
  `project_id` varchar(50) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `original_principal_amount` double DEFAULT NULL,
  `cancelled_amount` double DEFAULT NULL,
  `undisbursed_amount` double DEFAULT NULL,
  `disbursed_amount` double DEFAULT NULL,
  `repaid_to_IBRD` double DEFAULT NULL,
  `due_to_IBRD` double DEFAULT NULL,
  `exchange_adjustment` double DEFAULT NULL,
  `borrowers_obligation` double DEFAULT NULL,
  `sold_3rd_party` double DEFAULT NULL,
  `repaid_3rd_party` double DEFAULT NULL,
  `due_3rd_party` double DEFAULT NULL,
  `loans_held` double DEFAULT NULL,
  `first_repayment_date` datetime DEFAULT NULL,
  `last_repayment_date` datetime DEFAULT NULL,
  `agreement_signing_date` datetime DEFAULT NULL,
  `board_approval_date` datetime DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `last_disbursement_date` datetime DEFAULT NULL,
  `loan_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `experian_country`
--
ALTER TABLE `experian_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `experian_loan`
--
ALTER TABLE `experian_loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `experian_project`
--
ALTER TABLE `experian_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `experian_country`
--
ALTER TABLE `experian_country`
  MODIFY `country_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experian_loan`
--
ALTER TABLE `experian_loan`
  MODIFY `loan_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experian_project`
--
ALTER TABLE `experian_project`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
