-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2018 at 12:50 PM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ejanta`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_details`
--

CREATE TABLE `aadhar_details` (
  `aadhar_id` int(16) NOT NULL,
  `mobile_number` int(12) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `d_o_b` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `admin_id` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`admin_id`, `admin_password`, `email`) VALUES
('admin', '6ea5360b79e9e12de5373bbb98d5c2d6', 'kalaunnatikala@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `govtann` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`govtann`) VALUES
('Qualification: Candidates Should have Completed the Graduate, Post graduate in Reconized university. Eligibility criteria and other conditions may be seen on NHAI Website www.nhai.gov.in\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment` varchar(255) NOT NULL,
  `policy_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment`, `policy_title`) VALUES
('r', 'r');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `policy_id` varchar(1000) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`policy_id`, `user_id`, `Status`, `comment`) VALUES
('Atal Pension Yojana_N', '2', 'YES', 'Testing'),
('Pradhan Mantri Suraksha Bima Yojana _N', '2', 'NO', 'Testing'),
('test_N', '2', 'YES', 'Testing'),
('q_N', '2', 'YES', 'Testing'),
('no_S', '2', 'NO', 'Testing'),
('j_N', '2', 'NO', 'Testing'),
('qqq_N', '2', 'YES', 'Testing'),
('testtt_N', '2', 'YES', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `discussion_form`
--

CREATE TABLE `discussion_form` (
  `policy_name` varchar(50) NOT NULL,
  `pub_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `receiver` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `mesg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `ideas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`ideas`) VALUES
('Defense Distributed, the anarchist gun group known for its 3D printed and milled \"ghost guns,\" has settled a case with the federal government allowing it to upload technical data on nearly any commercially available firearm.'),
('teat'),
('ngfv');

-- --------------------------------------------------------

--
-- Table structure for table `jobalert`
--

CREATE TABLE `jobalert` (
  `id` int(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobalert`
--

INSERT INTO `jobalert` (`id`, `job_title`, `job_desc`) VALUES
(1, 'Engineer', 'Instrumentation Engineer, Anaesthetist, Asst Professor, Lecturer â€“ 12 Posts	'),
(2, 'Manager', ', Qualification: Candidates Should have Completed the Graduate, Post graduate in Reconized university. Eligibility criteria and other conditions may be seen on NHAI Website www.nhai.gov.in\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `policy_id` varchar(1000) NOT NULL,
  `policy_title` varchar(500) NOT NULL,
  `policy_description` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`policy_id`, `policy_title`, `policy_description`, `type`, `Timestamp`) VALUES
('Atal Pension Yojana_N', 'Atal Pension Yojana', 'A pension program that allows people to make voluntary contributions within a certain range in order to receive matching government contributions.', 'N', '2018-07-16 19:11:18'),
('j_N', 'j', 'ju', 'N', '2018-07-17 03:47:32'),
('no_S', 'no', 'no', 'S', '2018-07-17 03:46:27'),
('Pradhan Mantri Suraksha Bima Yojana _N', 'Pradhan Mantri Suraksha Bima Yojana ', 'Accidental Insurance with a premium of Rs. 12 per year.', 'N', '2018-07-16 19:11:48'),
('qqq_N', 'qqq', 'ww', 'N', '2018-07-17 05:04:45'),
('q_N', 'q', 'w', 'N', '2018-07-17 03:46:00'),
('testtt_N', 'testtt', 'tyutytgyjh', 'N', '2018-07-20 14:50:42'),
('test_N', 'test', 'test123', 'N', '2018-07-17 03:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_name` varchar(40) NOT NULL,
  `user_img` varchar(50) NOT NULL,
  `badges` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `aadhar_id` varchar(20) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `e_mail` varchar(40) NOT NULL,
  `Type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`aadhar_id`, `user_password`, `user_id`, `e_mail`, `Type`) VALUES
('123412341234', '6ea5360b79e9e12de5373bbb98d5c2d6', 'unnatikala', 'kalaunnatikala@gmail.com', NULL),
('123451234512', '8854315206c3d5f6037320d8254b669c', 'kalakalakala', 'kalaunnatikala@gmail.com', NULL),
('123456123456', '8854315206c3d5f6037320d8254b669c', 'kalakalakala', 'kalaunnatikala@gmail.com', NULL),
('123456789012', '8854315206c3d5f6037320d8254b669c', 'kalakala', 'kalaunnatikala@gmail.com', NULL),
('123456789123', '6ea5360b79e9e12de5373bbb98d5c2d6', 'unnatikala', 'kalaunnatikala@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhar_details`
--
ALTER TABLE `aadhar_details`
  ADD PRIMARY KEY (`aadhar_id`),
  ADD UNIQUE KEY `mobile` (`mobile_number`);

--
-- Indexes for table `jobalert`
--
ALTER TABLE `jobalert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`aadhar_id`),
  ADD UNIQUE KEY `aadhar_id` (`aadhar_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobalert`
--
ALTER TABLE `jobalert`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
