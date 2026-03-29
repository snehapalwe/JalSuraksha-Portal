-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2026 at 04:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `singlewindow_drainage`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept_reject`
--

CREATE TABLE `accept_reject` (
  `id` int(11) NOT NULL,
  `rec_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `db_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_form`
--

CREATE TABLE `application_form` (
  `id` int(11) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_address` varchar(255) NOT NULL,
  `drainage_connection_details` varchar(255) NOT NULL,
  `type_of_septic` varchar(255) NOT NULL,
  `no_of_flats` varchar(255) NOT NULL,
  `demand_applicable` varchar(255) NOT NULL,
  `upload_property_documents` varchar(255) NOT NULL,
  `upload_building_plan` varchar(255) NOT NULL,
  `int_no` int(11) NOT NULL,
  `yr` int(11) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_mapping`
--

CREATE TABLE `application_mapping` (
  `id` int(11) NOT NULL,
  `db_name` varchar(255) NOT NULL,
  `rec_id` varchar(255) NOT NULL,
  `appl_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `application_mapping`
--

INSERT INTO `application_mapping` (`id`, `db_name`, `rec_id`, `appl_type`) VALUES
(1, 'drainage_noc_jal_cc', '1', 'Commencement Certificate'),
(2, 'drainage_noc_mal_cc', '1', 'Commencement Certificate'),
(3, 'drainage_noc_jal_cc', '2', 'Commencement Certificate'),
(4, 'drainage_noc_mal_cc', '2', 'Commencement Certificate'),
(5, 'drainage_noc_mal_oc', '1', 'Occupancy Certificate'),
(6, 'drainage_noc_jal_oc', '1', 'Occupancy Certificate'),
(7, 'drainage_noc_jal_cc', '3', 'Commencement Certificate'),
(8, 'drainage_noc_jal_cc', '4', 'Commencement Certificate'),
(9, 'drainage_noc_mal_cc', '3', 'Commencement Certificate'),
(10, 'drainage_noc_mal_cc', '4', 'Commencement Certificate'),
(11, 'drainage_noc_jal_cc', '5', 'Commencement Certificate'),
(12, 'drainage_noc_mal_cc', '5', 'Commencement Certificate'),
(13, 'drainage_noc_jal_cc', '6', 'Commencement Certificate'),
(14, 'drainage_noc_mal_cc', '6', 'Commencement Certificate'),
(15, 'drainage_noc_jal_cc', '7', 'Commencement Certificate'),
(16, 'drainage_noc_mal_cc', '7', 'Commencement Certificate'),
(17, 'drainage_noc_jal_cc', '8', 'Commencement Certificate'),
(18, 'drainage_noc_mal_cc', '8', 'Commencement Certificate'),
(19, 'drainage_noc_jal_cc', '9', 'Commencement Certificate'),
(20, 'drainage_noc_mal_cc', '9', 'Commencement Certificate'),
(21, 'drainage_noc_mal_cc', '10', 'Commencement Certificate'),
(22, 'drainage_noc_jal_cc', '10', 'Commencement Certificate'),
(23, 'drainage_noc_mal_cc', '11', 'Commencement Certificate'),
(24, 'drainage_noc_mal_cc', '12', 'Commencement Certificate'),
(25, 'drainage_noc_jal_cc', '11', 'Commencement Certificate'),
(26, 'drainage_noc_jal_cc', '12', 'Commencement Certificate'),
(27, 'drainage_noc_mal_cc', '13', 'Commencement Certificate'),
(28, 'drainage_noc_mal_cc', '14', 'Commencement Certificate'),
(29, 'drainage_noc_jal_cc', '13', 'Commencement Certificate'),
(30, 'drainage_noc_jal_cc', '14', 'Commencement Certificate'),
(31, 'drainage_noc_mal_cc', '15', 'Commencement Certificate'),
(32, 'drainage_noc_jal_cc', '15', 'Commencement Certificate'),
(33, 'drainage_noc_mal_cc', '16', 'Commencement Certificate'),
(34, 'drainage_noc_jal_cc', '16', 'Commencement Certificate'),
(35, 'drainage_noc_mal_cc', '17', 'Commencement Certificate'),
(36, 'drainage_noc_jal_cc', '17', 'Commencement Certificate'),
(37, 'drainage_noc_mal_cc', '18', 'Commencement Certificate'),
(38, 'drainage_noc_jal_cc', '18', 'Commencement Certificate'),
(39, 'drainage_noc_mal_cc', '19', 'Commencement Certificate'),
(40, 'drainage_noc_jal_cc', '19', 'Commencement Certificate'),
(41, 'drainage_noc_mal_cc', '20', 'Commencement Certificate'),
(42, 'drainage_noc_jal_cc', '20', 'Commencement Certificate'),
(43, 'drainage_noc_mal_cc', '21', 'Commencement Certificate'),
(44, 'drainage_noc_jal_cc', '21', 'Commencement Certificate'),
(45, 'drainage_noc_mal_cc', '22', 'Commencement Certificate'),
(46, 'drainage_noc_jal_cc', '22', 'Commencement Certificate'),
(47, 'drainage_noc_mal_cc', '23', 'Commencement Certificate'),
(48, 'drainage_noc_jal_cc', '23', 'Commencement Certificate'),
(49, 'drainage_noc_mal_cc', '24', 'Commencement Certificate'),
(50, 'drainage_noc_jal_cc', '24', 'Commencement Certificate'),
(51, 'drainage_noc_mal_cc', '25', 'Commencement Certificate'),
(52, 'drainage_noc_jal_oc', '2', 'Occupancy Certificate'),
(53, 'drainage_noc_mal_oc', '2', 'Occupancy Certificate'),
(54, 'drainage_noc_jal_cc', '25', 'Commencement Certificate'),
(55, 'drainage_noc_mal_cc', '26', 'Commencement Certificate'),
(56, 'drainage_noc_jal_oc', '3', 'Occupancy Certificate'),
(57, 'drainage_noc_mal_oc', '3', 'Occupancy Certificate'),
(58, 'drainage_noc_jal_cc', '26', 'Commencement Certificate'),
(59, 'drainage_noc_mal_cc', '27', 'Commencement Certificate'),
(60, 'drainage_noc_jal_oc', '4', 'Occupancy Certificate'),
(61, 'drainage_noc_jal_cc', '27', 'Commencement Certificate'),
(62, 'drainage_noc_mal_cc', '28', 'Commencement Certificate'),
(63, 'drainage_noc_jal_cc', '28', 'Commencement Certificate'),
(64, 'drainage_noc_mal_cc', '29', 'Commencement Certificate'),
(65, 'drainage_noc_jal_cc', '29', 'Commencement Certificate'),
(66, 'drainage_noc_mal_cc', '30', 'Commencement Certificate'),
(67, 'drainage_noc_jal_cc', '30', 'Commencement Certificate'),
(68, 'drainage_noc_mal_cc', '31', 'Commencement Certificate'),
(69, 'drainage_noc_mal_oc', '4', 'Occupancy Certificate'),
(70, 'drainage_noc_jal_cc', '31', 'Commencement Certificate'),
(71, 'drainage_noc_jal_cc', '32', 'Commencement Certificate'),
(72, 'drainage_noc_mal_cc', '32', 'Commencement Certificate'),
(73, 'drainage_noc_jal_cc', '33', 'Commencement Certificate'),
(74, 'drainage_noc_mal_cc', '33', 'Commencement Certificate'),
(75, 'drainage_noc_jal_cc', '34', 'Commencement Certificate'),
(76, 'drainage_noc_mal_cc', '34', 'Commencement Certificate'),
(77, 'drainage_noc_jal_oc', '5', 'Occupancy Certificate'),
(78, 'drainage_noc_mal_oc', '5', 'Occupancy Certificate'),
(79, 'drainage_noc_jal_cc', '35', 'Commencement Certificate'),
(80, 'drainage_noc_mal_cc', '35', 'Commencement Certificate'),
(81, 'drainage_noc_jal_oc', '6', 'Occupancy Certificate'),
(82, 'drainage_noc_jal_oc', '7', 'Occupancy Certificate'),
(83, 'drainage_noc_mal_oc', '6', 'Occupancy Certificate'),
(84, 'drainage_noc_jal_cc', '36', 'Commencement Certificate'),
(85, 'drainage_noc_mal_cc', '36', 'Commencement Certificate'),
(86, 'drainage_noc_jal_cc', '37', 'Commencement Certificate'),
(87, 'drainage_noc_mal_cc', '37', 'Commencement Certificate'),
(88, 'drainage_noc_jal_cc', '38', 'Commencement Certificate'),
(89, 'drainage_noc_mal_cc', '38', 'Commencement Certificate'),
(90, 'drainage_noc_jal_cc', '39', 'Commencement Certificate'),
(91, 'drainage_noc_mal_cc', '39', 'Commencement Certificate'),
(92, 'drainage_noc_jal_cc', '40', 'Commencement Certificate'),
(93, 'drainage_noc_mal_cc', '40', 'Commencement Certificate'),
(94, 'drainage_noc_jal_cc', '41', 'Commencement Certificate'),
(95, 'drainage_noc_mal_cc', '41', 'Commencement Certificate'),
(96, 'drainage_noc_jal_oc', '8', 'Occupancy Certificate'),
(97, 'drainage_noc_jal_cc', '42', 'Commencement Certificate'),
(98, 'drainage_noc_mal_cc', '42', 'Commencement Certificate'),
(99, 'drainage_noc_jal_cc', '43', 'Commencement Certificate'),
(100, 'drainage_noc_mal_cc', '43', 'Commencement Certificate'),
(101, 'drainage_noc_jal_cc', '44', 'Commencement Certificate'),
(102, 'drainage_noc_mal_cc', '44', 'Commencement Certificate'),
(103, 'drainage_noc_jal_cc', '45', 'Commencement Certificate'),
(104, 'drainage_noc_mal_cc', '45', 'Commencement Certificate'),
(105, 'drainage_noc_mal_cc', '46', 'Commencement Certificate'),
(106, 'drainage_noc_jal_cc', '46', 'Commencement Certificate'),
(107, 'drainage_noc_jal_cc', '47', 'Commencement Certificate'),
(108, 'drainage_noc_mal_cc', '47', 'Commencement Certificate'),
(109, 'drainage_noc_jal_oc', '9', 'Occupancy Certificate'),
(110, 'drainage_noc_mal_oc', '7', 'Occupancy Certificate'),
(111, 'drainage_noc_jal_cc', '48', 'Commencement Certificate'),
(112, 'drainage_noc_jal_cc', '49', 'Commencement Certificate'),
(113, 'drainage_noc_mal_cc', '48', 'Commencement Certificate'),
(114, 'drainage_noc_jal_oc', '10', 'Occupancy Certificate'),
(115, 'drainage_noc_mal_oc', '8', 'Occupancy Certificate'),
(116, 'drainage_noc_jal_cc', '50', 'Commencement Certificate'),
(117, 'drainage_noc_mal_cc', '49', 'Commencement Certificate'),
(118, 'drainage_noc_jal_cc', '51', 'Commencement Certificate'),
(119, 'drainage_noc_mal_cc', '50', 'Commencement Certificate'),
(120, 'drainage_noc_jal_cc', '52', 'Commencement Certificate'),
(121, 'drainage_noc_mal_cc', '51', 'Commencement Certificate'),
(122, 'drainage_noc_jal_cc', '53', 'Commencement Certificate'),
(123, 'drainage_noc_mal_cc', '52', 'Commencement Certificate'),
(124, 'drainage_noc_jal_cc', '54', 'Commencement Certificate'),
(125, 'drainage_noc_mal_cc', '53', 'Commencement Certificate'),
(126, 'drainage_noc_jal_cc', '55', 'Commencement Certificate'),
(127, 'drainage_noc_mal_cc', '54', 'Commencement Certificate'),
(128, 'drainage_noc_mal_oc', '9', 'Occupancy Certificate'),
(129, 'drainage_noc_jal_oc', '11', 'Occupancy Certificate'),
(130, 'drainage_noc_mal_oc', '10', 'Occupancy Certificate'),
(131, 'drainage_noc_jal_cc', '56', 'Commencement Certificate'),
(132, 'drainage_noc_jal_cc', '57', 'Commencement Certificate'),
(133, 'drainage_noc_mal_cc', '55', 'Commencement Certificate'),
(134, 'drainage_noc_jal_cc', '58', 'Commencement Certificate'),
(135, 'drainage_noc_mal_cc', '56', 'Commencement Certificate'),
(136, 'drainage_noc_mal_cc', '57', 'Commencement Certificate'),
(137, 'drainage_noc_jal_cc', '59', 'Commencement Certificate'),
(138, 'drainage_noc_jal_oc', '12', 'Occupancy Certificate'),
(139, 'drainage_noc_mal_oc', '11', 'Occupancy Certificate'),
(140, 'drainage_noc_jal_oc', '13', 'Occupancy Certificate'),
(141, 'drainage_noc_mal_oc', '12', 'Occupancy Certificate'),
(142, 'drainage_noc_mal_cc', '58', 'Commencement Certificate'),
(143, 'drainage_noc_jal_cc', '60', 'Commencement Certificate'),
(144, 'drainage_noc_mal_cc', '59', 'Commencement Certificate'),
(145, 'drainage_noc_mal_oc', '13', 'Occupancy Certificate'),
(146, 'drainage_noc_jal_oc', '14', 'Occupancy Certificate'),
(147, 'drainage_noc_mal_oc', '14', 'Occupancy Certificate'),
(148, 'drainage_noc_jal_oc', '15', 'Occupancy Certificate'),
(149, 'drainage_noc_jal_oc', '16', 'Occupancy Certificate'),
(150, 'drainage_noc_mal_oc', '15', 'Occupancy Certificate'),
(151, 'drainage_noc_jal_cc', '61', 'Commencement Certificate'),
(152, 'drainage_noc_mal_cc', '60', 'Commencement Certificate'),
(153, 'drainage_noc_jal_cc', '62', 'Commencement Certificate'),
(154, 'drainage_noc_mal_cc', '61', 'Commencement Certificate'),
(155, 'drainage_noc_jal_cc', '63', 'Commencement Certificate'),
(156, 'drainage_noc_mal_cc', '62', 'Commencement Certificate'),
(157, 'drainage_noc_mal_cc', '63', 'Commencement Certificate'),
(158, 'drainage_noc_jal_cc', '64', 'Commencement Certificate'),
(159, 'drainage_noc_mal_cc', '64', 'Commencement Certificate'),
(160, 'drainage_noc_jal_oc', '17', 'Occupancy Certificate'),
(161, 'drainage_noc_jal_cc', '65', 'Commencement Certificate'),
(162, 'drainage_noc_mal_oc', '16', 'Occupancy Certificate'),
(163, 'drainage_noc_mal_cc', '65', 'Commencement Certificate'),
(164, 'drainage_noc_jal_cc', '66', 'Commencement Certificate'),
(165, 'drainage_noc_mal_cc', '66', 'Occupancy Certificate'),
(166, 'drainage_noc_mal_cc', '67', 'Commencement Certificate'),
(167, 'drainage_noc_mal_cc', '68', 'Commencement Certificate'),
(168, 'drainage_noc_jal_cc', '67', 'Commencement Certificate'),
(169, 'drainage_noc_jal_oc', '18', 'Occupancy Certificate'),
(170, 'drainage_noc_mal_oc', '17', 'Occupancy Certificate'),
(171, 'drainage_noc_jal_cc', '68', 'Commencement Certificate'),
(172, 'drainage_noc_mal_cc', '69', 'Commencement Certificate'),
(173, 'drainage_noc_jal_oc', '19', 'Occupancy Certificate'),
(174, 'drainage_noc_mal_oc', '18', 'Occupancy Certificate'),
(175, 'drainage_noc_jal_oc', '20', 'Occupancy Certificate'),
(176, 'drainage_noc_mal_oc', '19', 'Occupancy Certificate'),
(177, 'drainage_noc_jal_cc', '69', 'Commencement Certificate'),
(178, 'drainage_noc_mal_cc', '70', 'Commencement Certificate'),
(179, 'drainage_noc_mal_cc', '71', 'Commencement Certificate'),
(180, 'drainage_noc_jal_cc', '70', 'Commencement Certificate'),
(181, 'drainage_noc_jal_oc', '21', 'Occupancy Certificate'),
(182, 'drainage_noc_mal_oc', '20', 'Occupancy Certificate'),
(183, 'drainage_noc_jal_oc', '22', 'Occupancy Certificate'),
(184, 'drainage_noc_mal_oc', '21', 'Occupancy Certificate'),
(185, 'drainage_noc_jal_cc', '71', 'Commencement Certificate'),
(186, 'drainage_noc_mal_cc', '72', 'Commencement Certificate'),
(187, 'drainage_noc_jal_cc', '72', 'Commencement Certificate'),
(188, 'drainage_noc_mal_cc', '73', 'Commencement Certificate'),
(189, 'drainage_noc_jal_cc', '73', 'Commencement Certificate'),
(190, 'drainage_noc_mal_cc', '74', 'Commencement Certificate'),
(191, 'drainage_noc_jal_cc', '74', 'Commencement Certificate'),
(192, 'drainage_noc_mal_cc', '75', 'Commencement Certificate'),
(193, 'drainage_noc_jal_cc', '75', 'Commencement Certificate'),
(194, 'drainage_noc_jal_cc', '76', 'Commencement Certificate'),
(195, 'drainage_noc_mal_cc', '76', 'Commencement Certificate'),
(196, 'drainage_noc_mal_cc', '77', 'Commencement Certificate'),
(197, 'drainage_noc_mal_cc', '78', 'Commencement Certificate'),
(198, 'drainage_noc_jal_cc', '77', 'Commencement Certificate'),
(199, 'drainage_noc_jal_cc', '78', 'Commencement Certificate'),
(200, 'drainage_noc_mal_cc', '79', 'Commencement Certificate'),
(201, 'drainage_noc_jal_cc', '79', 'Commencement Certificate'),
(202, 'drainage_noc_mal_cc', '80', 'Commencement Certificate'),
(203, 'drainage_noc_jal_cc', '80', 'Commencement Certificate'),
(204, 'drainage_noc_mal_cc', '81', 'Commencement Certificate'),
(205, 'drainage_noc_jal_cc', '81', 'Commencement Certificate'),
(206, 'drainage_noc_mal_cc', '82', 'Commencement Certificate'),
(207, 'drainage_noc_jal_cc', '82', 'Commencement Certificate'),
(208, 'drainage_noc_mal_cc', '83', 'Commencement Certificate'),
(209, 'drainage_noc_jal_oc', '23', 'Occupancy Certificate'),
(210, 'drainage_noc_mal_oc', '22', 'Occupancy Certificate'),
(211, 'drainage_noc_mal_cc', '84', 'Commencement Certificate'),
(212, 'drainage_noc_jal_cc', '83', 'Commencement Certificate'),
(213, 'drainage_noc_jal_cc', '84', 'Commencement Certificate'),
(214, 'drainage_noc_mal_cc', '85', 'Commencement Certificate'),
(215, 'drainage_noc_jal_cc', '85', 'Commencement Certificate'),
(216, 'drainage_noc_mal_cc', '86', 'Commencement Certificate'),
(217, 'drainage_noc_jal_cc', '86', 'Commencement Certificate'),
(218, 'drainage_noc_mal_cc', '87', 'Commencement Certificate'),
(219, 'drainage_noc_jal_cc', '87', 'Commencement Certificate'),
(220, 'drainage_noc_mal_cc', '88', 'Commencement Certificate'),
(221, 'drainage_noc_jal_cc', '88', 'Commencement Certificate'),
(222, 'drainage_noc_mal_cc', '89', 'Commencement Certificate'),
(223, 'drainage_noc_jal_cc', '89', 'Commencement Certificate'),
(224, 'drainage_noc_mal_cc', '90', 'Commencement Certificate'),
(225, 'drainage_noc_jal_cc', '90', 'Commencement Certificate'),
(226, 'drainage_noc_mal_cc', '91', 'Commencement Certificate'),
(227, 'drainage_noc_jal_oc', '24', 'Occupancy Certificate'),
(228, 'drainage_noc_jal_oc', '25', 'Occupancy Certificate'),
(229, 'drainage_noc_mal_oc', '23', 'Occupancy Certificate'),
(230, 'drainage_noc_mal_oc', '24', 'Occupancy Certificate'),
(231, 'drainage_noc_jal_oc', '26', 'Occupancy Certificate'),
(232, 'drainage_noc_jal_oc', '27', 'Occupancy Certificate'),
(233, 'drainage_noc_mal_oc', '25', 'Occupancy Certificate'),
(234, 'drainage_noc_mal_oc', '26', 'Occupancy Certificate');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_upload`
--

CREATE TABLE `certificate_upload` (
  `id` int(11) NOT NULL,
  `db_name` varchar(255) NOT NULL,
  `rec_id` int(11) NOT NULL,
  `certificate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drainage_noc_jal_cc`
--

CREATE TABLE `drainage_noc_jal_cc` (
  `id` int(11) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `application_type_id` int(11) NOT NULL,
  `application_type_value` varchar(255) NOT NULL,
  `applicant_surname` varchar(255) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_father_or_spouse_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `house_building_society_name` varchar(255) NOT NULL,
  `house_or_block_number` varchar(255) NOT NULL,
  `wing` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `road_name` varchar(255) NOT NULL,
  `place_or_division_or_village` varchar(255) NOT NULL,
  `taluka` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `zone_value` varchar(255) NOT NULL,
  `election_ward_no_id` int(11) NOT NULL,
  `election_ward_no_value` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title_property` varchar(255) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_type_value` varchar(255) NOT NULL,
  `computarized_property_no` varchar(255) NOT NULL,
  `title_for_application_related_information` varchar(255) NOT NULL,
  `property_survey_no_or_city_survey_no` varchar(255) NOT NULL,
  `mouje_gaon_name` varchar(255) NOT NULL,
  `road_name_for_property` varchar(255) NOT NULL,
  `place_division_gaon_for_property` varchar(255) NOT NULL,
  `property_taluka` varchar(255) NOT NULL,
  `pincode_for_property` int(11) NOT NULL,
  `zone_property_id` int(11) NOT NULL,
  `zone_property_value` varchar(255) NOT NULL,
  `property_type_as_per_application_id` int(11) NOT NULL,
  `property_type_as_per_application_value` varchar(255) NOT NULL,
  `is_construction_commence_ceriticate_available` varchar(255) NOT NULL,
  `commence_ceriticate_number` varchar(255) NOT NULL,
  `commence_ceriticate_date` date NOT NULL,
  `property_usage` varchar(255) NOT NULL,
  `property_usage_type_id` int(11) NOT NULL,
  `property_usage_type_value` varchar(255) NOT NULL,
  `upload_architech_affidavit` text DEFAULT NULL,
  `upload_project_consultant_report` text DEFAULT NULL,
  `upload_property_location_map` text DEFAULT NULL,
  `upload_mep_consultant_or_architect_declaration` text NOT NULL,
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `architect_name` varchar(255) NOT NULL,
  `hissa_number` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `demand` varchar(255) NOT NULL,
  `inspection` int(11) NOT NULL,
  `upload_floor_plan` varchar(255) NOT NULL,
  `upload_full_potential_plan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drainage_noc_jal_cc_deleted`
--

CREATE TABLE `drainage_noc_jal_cc_deleted` (
  `id` int(11) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `application_type_id` int(11) NOT NULL,
  `application_type_value` varchar(255) NOT NULL,
  `applicant_surname` varchar(255) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_father_or_spouse_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `house_building_society_name` varchar(255) NOT NULL,
  `house_or_block_number` varchar(255) NOT NULL,
  `wing` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `road_name` varchar(255) NOT NULL,
  `place_or_division_or_village` varchar(255) NOT NULL,
  `taluka` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `zone_value` varchar(255) NOT NULL,
  `election_ward_no_id` int(11) NOT NULL,
  `election_ward_no_value` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title_property` varchar(255) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_type_value` varchar(255) NOT NULL,
  `computarized_property_no` varchar(255) NOT NULL,
  `title_for_application_related_information` varchar(255) NOT NULL,
  `property_survey_no_or_city_survey_no` varchar(255) NOT NULL,
  `mouje_gaon_name` varchar(255) NOT NULL,
  `road_name_for_property` varchar(255) NOT NULL,
  `place_division_gaon_for_property` varchar(255) NOT NULL,
  `property_taluka` varchar(255) NOT NULL,
  `pincode_for_property` int(11) NOT NULL,
  `zone_property_id` int(11) NOT NULL,
  `zone_property_value` varchar(255) NOT NULL,
  `property_type_as_per_application_id` int(11) NOT NULL,
  `property_type_as_per_application_value` varchar(255) NOT NULL,
  `is_construction_commence_ceriticate_available` varchar(255) NOT NULL,
  `commence_ceriticate_number` varchar(255) NOT NULL,
  `commence_ceriticate_date` date NOT NULL,
  `property_usage` varchar(255) NOT NULL,
  `property_usage_type_id` int(11) NOT NULL,
  `property_usage_type_value` varchar(255) NOT NULL,
  `upload_architech_affidavit` text DEFAULT NULL,
  `upload_project_consultant_report` text DEFAULT NULL,
  `upload_property_location_map` text DEFAULT NULL,
  `upload_mep_consultant_or_architect_declaration` text NOT NULL,
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `architect_name` varchar(255) NOT NULL,
  `hissa_number` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `demand` varchar(255) NOT NULL,
  `inspection` int(11) NOT NULL,
  `upload_floor_plan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drainage_noc_jal_oc`
--

CREATE TABLE `drainage_noc_jal_oc` (
  `id` int(11) NOT NULL,
  `commencement_number` varchar(255) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `application_type_id` int(11) NOT NULL,
  `application_type_value` varchar(255) NOT NULL,
  `applicant_surname` varchar(255) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_father_or_spouse_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `house_building_society_name` varchar(255) NOT NULL,
  `house_or_block_number` varchar(255) NOT NULL,
  `wing` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `road_name` varchar(255) NOT NULL,
  `place_or_division_or_village` varchar(255) NOT NULL,
  `taluka` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `zone_value` varchar(255) NOT NULL,
  `election_ward_no_id` int(11) NOT NULL,
  `election_ward_no_value` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title_property` varchar(255) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_type_value` varchar(255) NOT NULL,
  `computarized_property_no` varchar(255) NOT NULL,
  `title_for_application_related_information` varchar(255) NOT NULL,
  `property_survey_no_or_city_survey_no` varchar(255) NOT NULL,
  `mouje_gaon_name` varchar(255) NOT NULL,
  `road_name_for_property` varchar(255) NOT NULL,
  `place_division_gaon_for_property` varchar(255) NOT NULL,
  `property_taluka` varchar(255) NOT NULL,
  `pincode_for_property` int(11) NOT NULL,
  `zone_property_id` int(11) NOT NULL,
  `zone_property_value` varchar(255) NOT NULL,
  `property_type_as_per_application_id` int(11) NOT NULL,
  `property_type_as_per_application_value` varchar(255) NOT NULL,
  `is_construction_commence_ceriticate_available` varchar(255) NOT NULL,
  `commence_ceriticate_number` varchar(255) NOT NULL,
  `commence_ceriticate_date` date NOT NULL,
  `property_usage` varchar(255) NOT NULL,
  `property_usage_type_id` timestamp NOT NULL DEFAULT current_timestamp(),
  `property_usage_type_value` varchar(255) NOT NULL,
  `upload_cc_certificate` text NOT NULL,
  `upload_architech_affidavit` text DEFAULT NULL,
  `upload_construction_permission_and_cerified_map_copy` text NOT NULL,
  `upload_architect_or_project_consultant_report` text DEFAULT NULL,
  `upload_property_location_map` text DEFAULT NULL,
  `upload_noc_copy_given_for_construction_permission` text NOT NULL,
  `upload_map_prepared_by_licensed_plumber` text NOT NULL,
  `upload_mep_consultant_or_architect_declaration` text NOT NULL,
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `architect_name` varchar(255) NOT NULL,
  `hissa_number` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `demand` varchar(255) NOT NULL,
  `inspection` int(11) NOT NULL,
  `upload_floor_plan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drainage_noc_mal_cc`
--

CREATE TABLE `drainage_noc_mal_cc` (
  `id` int(11) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `application_type_id` int(11) NOT NULL,
  `application_type_value` varchar(255) NOT NULL,
  `applicant_surname` varchar(255) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_father_or_spouse_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `house_building_society_name` varchar(255) NOT NULL,
  `house_or_block_number` varchar(255) NOT NULL,
  `wing` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `road_name` varchar(255) NOT NULL,
  `place_or_division_or_village` varchar(255) NOT NULL,
  `taluka` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `zone_value` varchar(255) NOT NULL,
  `election_ward_no_id` int(11) NOT NULL,
  `election_ward_no_value` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title_property` varchar(255) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_type_value` varchar(255) NOT NULL,
  `computarized_property_no` varchar(255) NOT NULL,
  `title_for_application_related_information` varchar(255) NOT NULL,
  `property_survey_no_or_city_survey_no` varchar(255) NOT NULL,
  `mouje_gaon_name` varchar(255) NOT NULL,
  `road_name_for_property` varchar(255) NOT NULL,
  `place_division_gaon_for_property` varchar(255) NOT NULL,
  `property_taluka` varchar(255) NOT NULL,
  `pincode_for_property` int(11) NOT NULL,
  `zone_property_id` int(11) NOT NULL,
  `zone_property_value` varchar(255) NOT NULL,
  `property_type_as_per_application_id` int(11) NOT NULL,
  `property_type_as_per_application_value` varchar(255) NOT NULL,
  `is_construction_commence_ceriticate_available` varchar(255) NOT NULL,
  `commence_ceriticate_number` varchar(255) NOT NULL,
  `commence_ceriticate_date` date NOT NULL,
  `property_usage` varchar(255) NOT NULL,
  `property_usage_type_id` int(11) NOT NULL,
  `property_usage_type_value` varchar(255) NOT NULL,
  `upload_architech_affidavit` text DEFAULT NULL,
  `upload_project_consultant_report` text DEFAULT NULL,
  `upload_property_location_map` text DEFAULT NULL,
  `upload_mep_consultant_or_architect_declaration` text NOT NULL,
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `architect_name` varchar(255) NOT NULL,
  `hissa_number` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `certificate` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `demand` varchar(255) NOT NULL,
  `inspection` int(11) NOT NULL,
  `upload_floor_plan` varchar(255) NOT NULL,
  `upload_full_potential_plan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drainage_noc_mal_cc_deleted`
--

CREATE TABLE `drainage_noc_mal_cc_deleted` (
  `id` int(11) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `application_type_id` int(11) NOT NULL,
  `application_type_value` varchar(255) NOT NULL,
  `applicant_surname` varchar(255) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_father_or_spouse_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `house_building_society_name` varchar(255) NOT NULL,
  `house_or_block_number` varchar(255) NOT NULL,
  `wing` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `road_name` varchar(255) NOT NULL,
  `place_or_division_or_village` varchar(255) NOT NULL,
  `taluka` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `zone_value` varchar(255) NOT NULL,
  `election_ward_no_id` int(11) NOT NULL,
  `election_ward_no_value` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title_property` varchar(255) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_type_value` varchar(255) NOT NULL,
  `computarized_property_no` varchar(255) NOT NULL,
  `title_for_application_related_information` varchar(255) NOT NULL,
  `property_survey_no_or_city_survey_no` varchar(255) NOT NULL,
  `mouje_gaon_name` varchar(255) NOT NULL,
  `road_name_for_property` varchar(255) NOT NULL,
  `place_division_gaon_for_property` varchar(255) NOT NULL,
  `property_taluka` varchar(255) NOT NULL,
  `pincode_for_property` int(11) NOT NULL,
  `zone_property_id` int(11) NOT NULL,
  `zone_property_value` varchar(255) NOT NULL,
  `property_type_as_per_application_id` int(11) NOT NULL,
  `property_type_as_per_application_value` varchar(255) NOT NULL,
  `is_construction_commence_ceriticate_available` varchar(255) NOT NULL,
  `commence_ceriticate_number` varchar(255) NOT NULL,
  `commence_ceriticate_date` date NOT NULL,
  `property_usage` varchar(255) NOT NULL,
  `property_usage_type_id` int(11) NOT NULL,
  `property_usage_type_value` varchar(255) NOT NULL,
  `upload_architech_affidavit` text DEFAULT NULL,
  `upload_project_consultant_report` text DEFAULT NULL,
  `upload_property_location_map` text DEFAULT NULL,
  `upload_mep_consultant_or_architect_declaration` text NOT NULL,
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `architect_name` varchar(255) NOT NULL,
  `hissa_number` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `certificate` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `demand` varchar(255) NOT NULL,
  `inspection` int(11) NOT NULL,
  `upload_floor_plan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drainage_noc_mal_oc`
--

CREATE TABLE `drainage_noc_mal_oc` (
  `id` int(11) NOT NULL,
  `commencement_number` varchar(255) NOT NULL,
  `application_no` varchar(255) NOT NULL,
  `application_type_id` int(11) NOT NULL,
  `application_type_value` varchar(255) NOT NULL,
  `applicant_surname` varchar(255) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `applicant_father_or_spouse_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `house_building_society_name` varchar(255) NOT NULL,
  `house_or_block_number` varchar(255) NOT NULL,
  `wing` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `road_name` varchar(255) NOT NULL,
  `place_or_division_or_village` varchar(255) NOT NULL,
  `taluka` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `zone_value` varchar(255) NOT NULL,
  `election_ward_no_id` int(11) NOT NULL,
  `election_ward_no_value` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title_property` varchar(255) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_type_value` varchar(255) NOT NULL,
  `computarized_property_no` varchar(255) NOT NULL,
  `title_for_application_related_information` varchar(255) NOT NULL,
  `property_survey_no_or_city_survey_no` varchar(255) NOT NULL,
  `mouje_gaon_name` varchar(255) NOT NULL,
  `road_name_for_property` varchar(255) NOT NULL,
  `place_division_gaon_for_property` varchar(255) NOT NULL,
  `property_taluka` varchar(255) NOT NULL,
  `pincode_for_property` int(11) NOT NULL,
  `zone_property_id` int(11) NOT NULL,
  `zone_property_value` varchar(255) NOT NULL,
  `property_type_as_per_application_id` int(11) NOT NULL,
  `property_type_as_per_application_value` varchar(255) NOT NULL,
  `is_construction_commence_ceriticate_available` varchar(255) NOT NULL,
  `commence_ceriticate_number` varchar(255) NOT NULL,
  `commence_ceriticate_date` date NOT NULL,
  `property_usage` varchar(255) NOT NULL,
  `property_usage_type_id` timestamp NOT NULL DEFAULT current_timestamp(),
  `property_usage_type_value` varchar(255) NOT NULL,
  `upload_cc_certificate` text NOT NULL,
  `upload_architech_affidavit` text DEFAULT NULL,
  `upload_construction_permission_and_cerified_map_copy` text NOT NULL,
  `upload_architect_or_project_consultant_report` text DEFAULT NULL,
  `upload_property_location_map` text DEFAULT NULL,
  `upload_noc_copy_given_for_construction_permission` text NOT NULL,
  `upload_map_prepared_by_licensed_plumber` text NOT NULL,
  `upload_mep_consultant_or_architect_declaration` text NOT NULL,
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `architect_name` varchar(255) NOT NULL,
  `hissa_number` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `certificate` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `demand` varchar(255) NOT NULL,
  `inspection` int(11) NOT NULL,
  `upload_floor_plan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inspection_form`
--

CREATE TABLE `inspection_form` (
  `id` int(11) NOT NULL,
  `rec_id` varchar(255) NOT NULL,
  `db_name` varchar(255) NOT NULL,
  `inspection_remark` text NOT NULL,
  `upload_inspection_document` text NOT NULL,
  `inspection_date` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `label_names`
--

CREATE TABLE `label_names` (
  `id` int(11) NOT NULL,
  `db_name` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `label_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_property_structure_type_jalmal`
--

CREATE TABLE `master_property_structure_type_jalmal` (
  `id` int(11) NOT NULL,
  `property_structure_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_property_type_jalmal`
--

CREATE TABLE `master_property_type_jalmal` (
  `id` int(11) NOT NULL,
  `property_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_property_usage`
--

CREATE TABLE `master_property_usage` (
  `id` int(11) NOT NULL,
  `property_usage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_election_ward`
--

CREATE TABLE `m_election_ward` (
  `id` int(11) NOT NULL,
  `ward_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_election_ward`
--

INSERT INTO `m_election_ward` (`id`, `ward_name`) VALUES
(1, 'Ward A'),
(2, 'Ward B'),
(3, 'Ward C'),
(4, 'Ward D'),
(5, 'Ward E'),
(6, 'Ward F'),
(7, 'Ward G'),
(8, 'Ward H'),
(9, 'Ward I'),
(10, 'Ward J');

-- --------------------------------------------------------

--
-- Table structure for table `m_zone_property`
--

CREATE TABLE `m_zone_property` (
  `id` int(11) NOT NULL,
  `property_zone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_zone_property`
--

INSERT INTO `m_zone_property` (`id`, `property_zone`) VALUES
(1, 'Land'),
(2, 'Building');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `rec_id` int(11) NOT NULL,
  `payment_person` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_chq_no` varchar(255) NOT NULL,
  `payment_chq_date` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `db_name` varchar(255) NOT NULL,
  `demand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(3, 'Auth1'),
(4, 'Auth2'),
(5, 'Auth3'),
(7, 'Commisioner'),
(10, 'Commissioner'),
(8, 'dept_hod'),
(6, 'Superadmin'),
(9, 'tp_admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(9345, 7, 'application_form', 'list'),
(9346, 7, 'application_form', 'view'),
(9347, 7, 'application_form', 'add'),
(9348, 7, 'application_form', 'edit'),
(9349, 7, 'application_form', 'editfield'),
(9350, 7, 'application_form', 'delete'),
(9351, 7, 'application_form', 'import_data'),
(9352, 7, 'user_info', 'list'),
(9353, 7, 'user_info', 'view'),
(9354, 7, 'user_info', 'userregister'),
(9355, 7, 'user_info', 'accountedit'),
(9356, 7, 'user_info', 'accountview'),
(9357, 7, 'user_info', 'add'),
(9358, 7, 'user_info', 'edit'),
(9359, 7, 'user_info', 'editfield'),
(9360, 7, 'user_info', 'delete'),
(9361, 7, 'user_info', 'import_data'),
(9362, 7, 'role_permissions', 'list'),
(9363, 7, 'role_permissions', 'view'),
(9364, 7, 'role_permissions', 'add'),
(9365, 7, 'role_permissions', 'edit'),
(9366, 7, 'role_permissions', 'editfield'),
(9367, 7, 'role_permissions', 'delete'),
(9368, 7, 'role_permissions', 'import_data'),
(9369, 7, 'roles', 'list'),
(9370, 7, 'roles', 'view'),
(9371, 7, 'roles', 'add'),
(9372, 7, 'roles', 'edit'),
(9373, 7, 'roles', 'editfield'),
(9374, 7, 'roles', 'delete'),
(9375, 7, 'roles', 'import_data'),
(9376, 7, 'accept_reject', 'list'),
(9377, 7, 'accept_reject', 'view'),
(9378, 7, 'accept_reject', 'add'),
(9379, 7, 'accept_reject', 'edit'),
(9380, 7, 'accept_reject', 'editfield'),
(9381, 7, 'accept_reject', 'delete'),
(9382, 7, 'accept_reject', 'import_data'),
(9383, 7, 'payments', 'list'),
(9384, 7, 'payments', 'view'),
(9385, 7, 'payments', 'add'),
(9386, 7, 'payments', 'edit'),
(9387, 7, 'payments', 'editfield'),
(9388, 7, 'payments', 'delete'),
(9389, 7, 'payments', 'import_data'),
(9390, 7, 'drainage_noc_jal_cc', 'list'),
(9391, 7, 'drainage_noc_jal_cc', 'view'),
(9392, 7, 'drainage_noc_jal_cc', 'add'),
(9393, 7, 'drainage_noc_jal_cc', 'edit'),
(9394, 7, 'drainage_noc_jal_cc', 'editfield'),
(9395, 7, 'drainage_noc_jal_cc', 'delete'),
(9396, 7, 'drainage_noc_jal_cc', 'cert_view'),
(9397, 7, 'drainage_noc_jal_cc', 'import_data'),
(9398, 7, 'drainage_noc_jal_oc', 'list'),
(9399, 7, 'drainage_noc_jal_oc', 'view'),
(9400, 7, 'drainage_noc_jal_oc', 'add'),
(9401, 7, 'drainage_noc_jal_oc', 'edit'),
(9402, 7, 'drainage_noc_jal_oc', 'editfield'),
(9403, 7, 'drainage_noc_jal_oc', 'delete'),
(9404, 7, 'drainage_noc_jal_oc', 'cert_view'),
(9405, 7, 'drainage_noc_jal_oc', 'import_data'),
(9406, 7, 'drainage_noc_mal_cc', 'list'),
(9407, 7, 'drainage_noc_mal_cc', 'view'),
(9408, 7, 'drainage_noc_mal_cc', 'add'),
(9409, 7, 'drainage_noc_mal_cc', 'edit'),
(9410, 7, 'drainage_noc_mal_cc', 'editfield'),
(9411, 7, 'drainage_noc_mal_cc', 'delete'),
(9412, 7, 'drainage_noc_mal_cc', 'cert_view'),
(9413, 7, 'drainage_noc_mal_cc', 'import_data'),
(9414, 7, 'drainage_noc_mal_oc', 'list'),
(9415, 7, 'drainage_noc_mal_oc', 'view'),
(9416, 7, 'drainage_noc_mal_oc', 'add'),
(9417, 7, 'drainage_noc_mal_oc', 'edit'),
(9418, 7, 'drainage_noc_mal_oc', 'editfield'),
(9419, 7, 'drainage_noc_mal_oc', 'delete'),
(9420, 7, 'drainage_noc_mal_oc', 'cert_view'),
(9421, 7, 'drainage_noc_mal_oc', 'import_data'),
(9422, 7, 'master_property_structure_type_jalmal', 'list'),
(9423, 7, 'master_property_structure_type_jalmal', 'view'),
(9424, 7, 'master_property_structure_type_jalmal', 'add'),
(9425, 7, 'master_property_structure_type_jalmal', 'edit'),
(9426, 7, 'master_property_structure_type_jalmal', 'editfield'),
(9427, 7, 'master_property_structure_type_jalmal', 'delete'),
(9428, 7, 'master_property_structure_type_jalmal', 'import_data'),
(9429, 7, 'master_property_type_jalmal', 'list'),
(9430, 7, 'master_property_type_jalmal', 'view'),
(9431, 7, 'master_property_type_jalmal', 'add'),
(9432, 7, 'master_property_type_jalmal', 'edit'),
(9433, 7, 'master_property_type_jalmal', 'editfield'),
(9434, 7, 'master_property_type_jalmal', 'delete'),
(9435, 7, 'master_property_type_jalmal', 'import_data'),
(9436, 7, 'zone_master', 'list'),
(9437, 7, 'zone_master', 'view'),
(9438, 7, 'zone_master', 'add'),
(9439, 7, 'zone_master', 'edit'),
(9440, 7, 'zone_master', 'editfield'),
(9441, 7, 'zone_master', 'delete'),
(9442, 7, 'zone_master', 'import_data'),
(9443, 7, 'master_property_usage', 'list'),
(9444, 7, 'master_property_usage', 'view'),
(9445, 7, 'master_property_usage', 'add'),
(9446, 7, 'master_property_usage', 'edit'),
(9447, 7, 'master_property_usage', 'editfield'),
(9448, 7, 'master_property_usage', 'delete'),
(9449, 7, 'master_property_usage', 'import_data'),
(9450, 7, 'certificate_upload', 'list'),
(9451, 7, 'certificate_upload', 'view'),
(9452, 7, 'certificate_upload', 'add'),
(9453, 7, 'certificate_upload', 'edit'),
(9454, 7, 'certificate_upload', 'editfield'),
(9455, 7, 'certificate_upload', 'delete'),
(9456, 7, 'certificate_upload', 'import_data'),
(9457, 7, 'service_configuration', 'list'),
(9458, 7, 'service_configuration', 'view'),
(9459, 7, 'service_configuration', 'add'),
(9460, 7, 'service_configuration', 'edit'),
(9461, 7, 'service_configuration', 'editfield'),
(9462, 7, 'service_configuration', 'delete'),
(9463, 7, 'service_configuration', 'import_data'),
(9464, 7, 'm_election_ward', 'list'),
(9465, 7, 'm_election_ward', 'view'),
(9466, 7, 'm_election_ward', 'add'),
(9467, 7, 'm_election_ward', 'edit'),
(9468, 7, 'm_election_ward', 'editfield'),
(9469, 7, 'm_election_ward', 'delete'),
(9470, 7, 'm_election_ward', 'import_data'),
(9471, 7, 'm_zone_property', 'list'),
(9472, 7, 'm_zone_property', 'view'),
(9473, 7, 'm_zone_property', 'add'),
(9474, 7, 'm_zone_property', 'edit'),
(9475, 7, 'm_zone_property', 'editfield'),
(9476, 7, 'm_zone_property', 'delete'),
(9477, 7, 'm_zone_property', 'import_data'),
(12332, 1, 'application_form', 'list'),
(12333, 1, 'application_form', 'view'),
(12334, 1, 'application_form', 'edit'),
(12335, 1, 'application_form', 'editfield'),
(12336, 1, 'application_form', 'delete'),
(12337, 1, 'application_form', 'import_data'),
(12338, 1, 'user_info', 'view'),
(12339, 1, 'user_info', 'add'),
(12340, 1, 'user_info', 'edit'),
(12341, 1, 'user_info', 'editfield'),
(12342, 1, 'user_info', 'delete'),
(12343, 1, 'user_info', 'import_data'),
(12344, 1, 'user_info', 'userregister'),
(12345, 1, 'user_info', 'accountedit'),
(12346, 1, 'user_info', 'accountview'),
(12347, 1, 'role_permissions', 'list'),
(12348, 1, 'role_permissions', 'view'),
(12349, 1, 'role_permissions', 'add'),
(12350, 1, 'role_permissions', 'edit'),
(12351, 1, 'role_permissions', 'editfield'),
(12352, 1, 'role_permissions', 'delete'),
(12353, 1, 'roles', 'list'),
(12354, 1, 'roles', 'view'),
(12355, 1, 'roles', 'add'),
(12356, 1, 'roles', 'edit'),
(12357, 1, 'roles', 'editfield'),
(12358, 1, 'roles', 'delete'),
(12359, 1, 'accept_reject', 'list'),
(12360, 1, 'accept_reject', 'view'),
(12361, 1, 'accept_reject', 'add'),
(12362, 1, 'accept_reject', 'edit'),
(12363, 1, 'accept_reject', 'editfield'),
(12364, 1, 'accept_reject', 'delete'),
(12365, 1, 'payments', 'list'),
(12366, 1, 'payments', 'view'),
(12367, 1, 'payments', 'add'),
(12368, 1, 'payments', 'edit'),
(12369, 1, 'payments', 'editfield'),
(12370, 1, 'payments', 'delete'),
(12371, 1, 'drainage_noc_jal_cc', 'list'),
(12372, 1, 'drainage_noc_jal_cc', 'view'),
(12373, 1, 'drainage_noc_jal_cc', 'edit'),
(12374, 1, 'drainage_noc_jal_cc', 'editfield'),
(12375, 1, 'drainage_noc_jal_cc', 'delete'),
(12376, 1, 'drainage_noc_jal_oc', 'list'),
(12377, 1, 'drainage_noc_jal_oc', 'view'),
(12378, 1, 'drainage_noc_jal_oc', 'edit'),
(12379, 1, 'drainage_noc_jal_oc', 'editfield'),
(12380, 1, 'drainage_noc_jal_oc', 'delete'),
(12381, 1, 'drainage_noc_mal_cc', 'list'),
(12382, 1, 'drainage_noc_mal_cc', 'view'),
(12383, 1, 'drainage_noc_mal_cc', 'edit'),
(12384, 1, 'drainage_noc_mal_cc', 'editfield'),
(12385, 1, 'drainage_noc_mal_cc', 'delete'),
(12386, 1, 'drainage_noc_mal_oc', 'list'),
(12387, 1, 'drainage_noc_mal_oc', 'view'),
(12388, 1, 'drainage_noc_mal_oc', 'edit'),
(12389, 1, 'drainage_noc_mal_oc', 'editfield'),
(12390, 1, 'drainage_noc_mal_oc', 'delete'),
(12391, 1, 'master_property_structure_type_jalmal', 'list'),
(12392, 1, 'master_property_structure_type_jalmal', 'view'),
(12393, 1, 'master_property_structure_type_jalmal', 'add'),
(12394, 1, 'master_property_structure_type_jalmal', 'edit'),
(12395, 1, 'master_property_structure_type_jalmal', 'editfield'),
(12396, 1, 'master_property_structure_type_jalmal', 'delete'),
(12397, 1, 'master_property_type_jalmal', 'list'),
(12398, 1, 'master_property_type_jalmal', 'view'),
(12399, 1, 'master_property_type_jalmal', 'add'),
(12400, 1, 'master_property_type_jalmal', 'edit'),
(12401, 1, 'master_property_type_jalmal', 'editfield'),
(12402, 1, 'master_property_type_jalmal', 'delete'),
(12403, 1, 'zone_master', 'list'),
(12404, 1, 'zone_master', 'view'),
(12405, 1, 'zone_master', 'add'),
(12406, 1, 'zone_master', 'edit'),
(12407, 1, 'zone_master', 'editfield'),
(12408, 1, 'zone_master', 'delete'),
(12409, 1, 'master_property_usage', 'list'),
(12410, 1, 'master_property_usage', 'view'),
(12411, 1, 'master_property_usage', 'add'),
(12412, 1, 'master_property_usage', 'edit'),
(12413, 1, 'master_property_usage', 'editfield'),
(12414, 1, 'master_property_usage', 'delete'),
(12415, 1, 'drainage_noc_jal_cc', 'cert_view'),
(12416, 1, 'drainage_noc_jal_oc', 'cert_view'),
(12417, 1, 'drainage_noc_mal_cc', 'cert_view'),
(12418, 1, 'drainage_noc_mal_oc', 'cert_view'),
(12419, 1, 'certificate_upload', 'list'),
(12420, 1, 'certificate_upload', 'view'),
(12421, 1, 'certificate_upload', 'add'),
(12422, 1, 'certificate_upload', 'edit'),
(12423, 1, 'certificate_upload', 'editfield'),
(12424, 1, 'certificate_upload', 'delete'),
(12425, 1, 'm_election_ward', 'list'),
(12426, 1, 'm_election_ward', 'view'),
(12427, 1, 'm_election_ward', 'add'),
(12428, 1, 'm_election_ward', 'edit'),
(12429, 1, 'm_election_ward', 'editfield'),
(12430, 1, 'm_election_ward', 'delete'),
(12431, 1, 'm_zone_property', 'list'),
(12432, 1, 'm_zone_property', 'view'),
(12433, 1, 'm_zone_property', 'add'),
(12434, 1, 'm_zone_property', 'edit'),
(12435, 1, 'm_zone_property', 'editfield'),
(12436, 1, 'm_zone_property', 'delete'),
(12437, 2, 'application_form', 'list'),
(12438, 2, 'application_form', 'view'),
(12439, 2, 'application_form', 'add'),
(12440, 2, 'application_form', 'edit'),
(12441, 2, 'application_form', 'editfield'),
(12442, 2, 'application_form', 'delete'),
(12443, 2, 'application_form', 'import_data'),
(12444, 2, 'user_info', 'import_data'),
(12445, 2, 'user_info', 'userregister'),
(12446, 2, 'user_info', 'accountedit'),
(12447, 2, 'user_info', 'accountview'),
(12448, 2, 'drainage_noc_jal_cc', 'list'),
(12449, 2, 'drainage_noc_jal_cc', 'add'),
(12450, 2, 'drainage_noc_jal_oc', 'list'),
(12451, 2, 'drainage_noc_jal_oc', 'add'),
(12452, 2, 'drainage_noc_mal_cc', 'list'),
(12453, 2, 'drainage_noc_mal_cc', 'add'),
(12454, 2, 'drainage_noc_mal_oc', 'list'),
(12455, 2, 'drainage_noc_mal_oc', 'add'),
(12456, 2, 'drainage_noc_jal_cc', 'cert_view'),
(12457, 2, 'drainage_noc_jal_oc', 'cert_view'),
(12458, 2, 'drainage_noc_mal_cc', 'cert_view'),
(12459, 2, 'drainage_noc_mal_oc', 'cert_view'),
(12460, 3, 'application_form', 'list'),
(12461, 3, 'application_form', 'view'),
(12462, 3, 'application_form', 'edit'),
(12463, 3, 'application_form', 'editfield'),
(12464, 3, 'application_form', 'delete'),
(12465, 3, 'application_form', 'import_data'),
(12466, 3, 'user_info', 'userregister'),
(12467, 3, 'user_info', 'accountedit'),
(12468, 3, 'user_info', 'accountview'),
(12469, 3, 'user_info', 'add'),
(12470, 3, 'user_info', 'edit'),
(12471, 3, 'user_info', 'editfield'),
(12472, 3, 'user_info', 'delete'),
(12473, 3, 'user_info', 'import_data'),
(12474, 3, 'role_permissions', 'list'),
(12475, 3, 'role_permissions', 'view'),
(12476, 3, 'role_permissions', 'add'),
(12477, 3, 'role_permissions', 'edit'),
(12478, 3, 'role_permissions', 'editfield'),
(12479, 3, 'role_permissions', 'delete'),
(12480, 3, 'role_permissions', 'import_data'),
(12481, 3, 'roles', 'list'),
(12482, 3, 'roles', 'view'),
(12483, 3, 'roles', 'add'),
(12484, 3, 'roles', 'edit'),
(12485, 3, 'roles', 'editfield'),
(12486, 3, 'roles', 'delete'),
(12487, 3, 'roles', 'import_data'),
(12488, 3, 'accept_reject', 'list'),
(12489, 3, 'accept_reject', 'view'),
(12490, 3, 'accept_reject', 'add'),
(12491, 3, 'accept_reject', 'edit'),
(12492, 3, 'accept_reject', 'editfield'),
(12493, 3, 'accept_reject', 'delete'),
(12494, 3, 'accept_reject', 'import_data'),
(12495, 3, 'payments', 'list'),
(12496, 3, 'payments', 'add'),
(12497, 3, 'payments', 'edit'),
(12498, 3, 'payments', 'editfield'),
(12499, 3, 'drainage_noc_jal_cc', 'list'),
(12500, 3, 'drainage_noc_jal_cc', 'view'),
(12501, 3, 'drainage_noc_jal_cc', 'edit'),
(12502, 3, 'drainage_noc_jal_cc', 'editfield'),
(12503, 3, 'drainage_noc_jal_cc', 'delete'),
(12504, 3, 'drainage_noc_jal_oc', 'list'),
(12505, 3, 'drainage_noc_jal_oc', 'view'),
(12506, 3, 'drainage_noc_jal_oc', 'edit'),
(12507, 3, 'drainage_noc_jal_oc', 'editfield'),
(12508, 3, 'drainage_noc_jal_oc', 'delete'),
(12509, 3, 'drainage_noc_mal_cc', 'list'),
(12510, 3, 'drainage_noc_mal_cc', 'view'),
(12511, 3, 'drainage_noc_mal_cc', 'edit'),
(12512, 3, 'drainage_noc_mal_cc', 'editfield'),
(12513, 3, 'drainage_noc_mal_cc', 'delete'),
(12514, 3, 'drainage_noc_mal_oc', 'list'),
(12515, 3, 'drainage_noc_mal_oc', 'view'),
(12516, 3, 'drainage_noc_mal_oc', 'edit'),
(12517, 3, 'drainage_noc_mal_oc', 'editfield'),
(12518, 3, 'drainage_noc_mal_oc', 'delete'),
(12519, 3, 'drainage_noc_jal_cc', 'cert_view'),
(12520, 3, 'drainage_noc_jal_oc', 'cert_view'),
(12521, 3, 'drainage_noc_mal_cc', 'cert_view'),
(12522, 3, 'drainage_noc_mal_oc', 'cert_view'),
(12523, 3, 'certificate_upload', 'add'),
(12524, 4, 'application_form', 'list'),
(12525, 4, 'application_form', 'view'),
(12526, 4, 'application_form', 'edit'),
(12527, 4, 'application_form', 'editfield'),
(12528, 4, 'application_form', 'delete'),
(12529, 4, 'application_form', 'import_data'),
(12530, 4, 'user_info', 'userregister'),
(12531, 4, 'user_info', 'accountedit'),
(12532, 4, 'user_info', 'accountview'),
(12533, 4, 'user_info', 'add'),
(12534, 4, 'user_info', 'edit'),
(12535, 4, 'user_info', 'editfield'),
(12536, 4, 'user_info', 'delete'),
(12537, 4, 'user_info', 'import_data'),
(12538, 4, 'role_permissions', 'list'),
(12539, 4, 'role_permissions', 'view'),
(12540, 4, 'role_permissions', 'add'),
(12541, 4, 'role_permissions', 'edit'),
(12542, 4, 'role_permissions', 'editfield'),
(12543, 4, 'role_permissions', 'delete'),
(12544, 4, 'role_permissions', 'import_data'),
(12545, 4, 'roles', 'list'),
(12546, 4, 'roles', 'view'),
(12547, 4, 'roles', 'add'),
(12548, 4, 'roles', 'edit'),
(12549, 4, 'roles', 'editfield'),
(12550, 4, 'roles', 'delete'),
(12551, 4, 'roles', 'import_data'),
(12552, 4, 'accept_reject', 'list'),
(12553, 4, 'accept_reject', 'view'),
(12554, 4, 'accept_reject', 'add'),
(12555, 4, 'accept_reject', 'edit'),
(12556, 4, 'accept_reject', 'editfield'),
(12557, 4, 'accept_reject', 'delete'),
(12558, 4, 'accept_reject', 'import_data'),
(12559, 4, 'payments', 'list'),
(12560, 4, 'payments', 'add'),
(12561, 4, 'payments', 'edit'),
(12562, 4, 'payments', 'editfield'),
(12563, 4, 'drainage_noc_jal_cc', 'list'),
(12564, 4, 'drainage_noc_jal_cc', 'view'),
(12565, 4, 'drainage_noc_jal_cc', 'edit'),
(12566, 4, 'drainage_noc_jal_cc', 'editfield'),
(12567, 4, 'drainage_noc_jal_cc', 'delete'),
(12568, 4, 'drainage_noc_jal_oc', 'list'),
(12569, 4, 'drainage_noc_jal_oc', 'view'),
(12570, 4, 'drainage_noc_jal_oc', 'edit'),
(12571, 4, 'drainage_noc_jal_oc', 'editfield'),
(12572, 4, 'drainage_noc_jal_oc', 'delete'),
(12573, 4, 'drainage_noc_mal_cc', 'list'),
(12574, 4, 'drainage_noc_mal_cc', 'view'),
(12575, 4, 'drainage_noc_mal_cc', 'edit'),
(12576, 4, 'drainage_noc_mal_cc', 'editfield'),
(12577, 4, 'drainage_noc_mal_cc', 'delete'),
(12578, 4, 'drainage_noc_mal_oc', 'list'),
(12579, 4, 'drainage_noc_mal_oc', 'view'),
(12580, 4, 'drainage_noc_mal_oc', 'edit'),
(12581, 4, 'drainage_noc_mal_oc', 'editfield'),
(12582, 4, 'drainage_noc_mal_oc', 'delete'),
(12583, 4, 'drainage_noc_jal_cc', 'cert_view'),
(12584, 4, 'drainage_noc_jal_oc', 'cert_view'),
(12585, 4, 'drainage_noc_mal_cc', 'cert_view'),
(12586, 4, 'drainage_noc_mal_oc', 'cert_view'),
(12587, 4, 'certificate_upload', 'add'),
(12588, 5, 'application_form', 'list'),
(12589, 5, 'application_form', 'view'),
(12590, 5, 'application_form', 'edit'),
(12591, 5, 'application_form', 'editfield'),
(12592, 5, 'application_form', 'delete'),
(12593, 5, 'application_form', 'import_data'),
(12594, 5, 'user_info', 'userregister'),
(12595, 5, 'user_info', 'accountedit'),
(12596, 5, 'user_info', 'accountview'),
(12597, 5, 'user_info', 'add'),
(12598, 5, 'user_info', 'edit'),
(12599, 5, 'user_info', 'editfield'),
(12600, 5, 'user_info', 'delete'),
(12601, 5, 'user_info', 'import_data'),
(12602, 5, 'role_permissions', 'list'),
(12603, 5, 'role_permissions', 'view'),
(12604, 5, 'role_permissions', 'add'),
(12605, 5, 'role_permissions', 'edit'),
(12606, 5, 'role_permissions', 'editfield'),
(12607, 5, 'role_permissions', 'delete'),
(12608, 5, 'role_permissions', 'import_data'),
(12609, 5, 'roles', 'list'),
(12610, 5, 'roles', 'view'),
(12611, 5, 'roles', 'add'),
(12612, 5, 'roles', 'edit'),
(12613, 5, 'roles', 'editfield'),
(12614, 5, 'roles', 'delete'),
(12615, 5, 'roles', 'import_data'),
(12616, 5, 'accept_reject', 'list'),
(12617, 5, 'accept_reject', 'view'),
(12618, 5, 'accept_reject', 'add'),
(12619, 5, 'accept_reject', 'edit'),
(12620, 5, 'accept_reject', 'editfield'),
(12621, 5, 'accept_reject', 'delete'),
(12622, 5, 'accept_reject', 'import_data'),
(12623, 5, 'payments', 'list'),
(12624, 5, 'payments', 'add'),
(12625, 5, 'payments', 'edit'),
(12626, 5, 'payments', 'editfield'),
(12627, 5, 'drainage_noc_jal_cc', 'list'),
(12628, 5, 'drainage_noc_jal_cc', 'view'),
(12629, 5, 'drainage_noc_jal_cc', 'edit'),
(12630, 5, 'drainage_noc_jal_cc', 'editfield'),
(12631, 5, 'drainage_noc_jal_cc', 'delete'),
(12632, 5, 'drainage_noc_jal_oc', 'list'),
(12633, 5, 'drainage_noc_jal_oc', 'view'),
(12634, 5, 'drainage_noc_jal_oc', 'edit'),
(12635, 5, 'drainage_noc_jal_oc', 'editfield'),
(12636, 5, 'drainage_noc_jal_oc', 'delete'),
(12637, 5, 'drainage_noc_mal_cc', 'list'),
(12638, 5, 'drainage_noc_mal_cc', 'view'),
(12639, 5, 'drainage_noc_mal_cc', 'edit'),
(12640, 5, 'drainage_noc_mal_cc', 'editfield'),
(12641, 5, 'drainage_noc_mal_cc', 'delete'),
(12642, 5, 'drainage_noc_mal_oc', 'list'),
(12643, 5, 'drainage_noc_mal_oc', 'view'),
(12644, 5, 'drainage_noc_mal_oc', 'edit'),
(12645, 5, 'drainage_noc_mal_oc', 'editfield'),
(12646, 5, 'drainage_noc_mal_oc', 'delete'),
(12647, 5, 'drainage_noc_jal_cc', 'cert_view'),
(12648, 5, 'drainage_noc_jal_oc', 'cert_view'),
(12649, 5, 'drainage_noc_mal_cc', 'cert_view'),
(12650, 5, 'drainage_noc_mal_oc', 'cert_view'),
(12651, 5, 'certificate_upload', 'add'),
(12652, 6, 'application_form', 'list'),
(12653, 6, 'application_form', 'view'),
(12654, 6, 'application_form', 'add'),
(12655, 6, 'application_form', 'edit'),
(12656, 6, 'application_form', 'editfield'),
(12657, 6, 'application_form', 'delete'),
(12658, 6, 'application_form', 'import_data'),
(12659, 6, 'user_info', 'list'),
(12660, 6, 'user_info', 'view'),
(12661, 6, 'user_info', 'userregister'),
(12662, 6, 'user_info', 'accountedit'),
(12663, 6, 'user_info', 'accountview'),
(12664, 6, 'user_info', 'add'),
(12665, 6, 'user_info', 'edit'),
(12666, 6, 'user_info', 'editfield'),
(12667, 6, 'user_info', 'delete'),
(12668, 6, 'user_info', 'import_data'),
(12669, 6, 'role_permissions', 'list'),
(12670, 6, 'role_permissions', 'view'),
(12671, 6, 'role_permissions', 'add'),
(12672, 6, 'role_permissions', 'edit'),
(12673, 6, 'role_permissions', 'editfield'),
(12674, 6, 'role_permissions', 'delete'),
(12675, 6, 'role_permissions', 'import_data'),
(12676, 6, 'roles', 'list'),
(12677, 6, 'roles', 'view'),
(12678, 6, 'roles', 'add'),
(12679, 6, 'roles', 'edit'),
(12680, 6, 'roles', 'editfield'),
(12681, 6, 'roles', 'delete'),
(12682, 6, 'roles', 'import_data'),
(12683, 6, 'accept_reject', 'list'),
(12684, 6, 'accept_reject', 'view'),
(12685, 6, 'accept_reject', 'add'),
(12686, 6, 'accept_reject', 'edit'),
(12687, 6, 'accept_reject', 'editfield'),
(12688, 6, 'accept_reject', 'delete'),
(12689, 6, 'accept_reject', 'import_data'),
(12690, 6, 'payments', 'list'),
(12691, 6, 'payments', 'view'),
(12692, 6, 'payments', 'add'),
(12693, 6, 'payments', 'edit'),
(12694, 6, 'payments', 'editfield'),
(12695, 6, 'payments', 'delete'),
(12696, 6, 'payments', 'import_data'),
(12697, 6, 'drainage_noc_jal_cc', 'list'),
(12698, 6, 'drainage_noc_jal_cc', 'view'),
(12699, 6, 'drainage_noc_jal_cc', 'add'),
(12700, 6, 'drainage_noc_jal_cc', 'edit'),
(12701, 6, 'drainage_noc_jal_cc', 'editfield'),
(12702, 6, 'drainage_noc_jal_cc', 'delete'),
(12703, 6, 'drainage_noc_jal_cc', 'cert_view'),
(12704, 6, 'drainage_noc_jal_cc', 'import_data'),
(12705, 6, 'drainage_noc_jal_oc', 'list'),
(12706, 6, 'drainage_noc_jal_oc', 'view'),
(12707, 6, 'drainage_noc_jal_oc', 'add'),
(12708, 6, 'drainage_noc_jal_oc', 'edit'),
(12709, 6, 'drainage_noc_jal_oc', 'editfield'),
(12710, 6, 'drainage_noc_jal_oc', 'delete'),
(12711, 6, 'drainage_noc_jal_oc', 'cert_view'),
(12712, 6, 'drainage_noc_jal_oc', 'import_data'),
(12713, 6, 'drainage_noc_mal_cc', 'list'),
(12714, 6, 'drainage_noc_mal_cc', 'view'),
(12715, 6, 'drainage_noc_mal_cc', 'add'),
(12716, 6, 'drainage_noc_mal_cc', 'edit'),
(12717, 6, 'drainage_noc_mal_cc', 'editfield'),
(12718, 6, 'drainage_noc_mal_cc', 'delete'),
(12719, 6, 'drainage_noc_mal_cc', 'cert_view'),
(12720, 6, 'drainage_noc_mal_cc', 'import_data'),
(12721, 6, 'drainage_noc_mal_oc', 'list'),
(12722, 6, 'drainage_noc_mal_oc', 'view'),
(12723, 6, 'drainage_noc_mal_oc', 'add'),
(12724, 6, 'drainage_noc_mal_oc', 'edit'),
(12725, 6, 'drainage_noc_mal_oc', 'editfield'),
(12726, 6, 'drainage_noc_mal_oc', 'delete'),
(12727, 6, 'drainage_noc_mal_oc', 'cert_view'),
(12728, 6, 'drainage_noc_mal_oc', 'import_data'),
(12729, 6, 'master_property_structure_type_jalmal', 'list'),
(12730, 6, 'master_property_structure_type_jalmal', 'view'),
(12731, 6, 'master_property_structure_type_jalmal', 'add'),
(12732, 6, 'master_property_structure_type_jalmal', 'edit'),
(12733, 6, 'master_property_structure_type_jalmal', 'editfield'),
(12734, 6, 'master_property_structure_type_jalmal', 'delete'),
(12735, 6, 'master_property_structure_type_jalmal', 'import_data'),
(12736, 6, 'master_property_type_jalmal', 'list'),
(12737, 6, 'master_property_type_jalmal', 'view'),
(12738, 6, 'master_property_type_jalmal', 'add'),
(12739, 6, 'master_property_type_jalmal', 'edit'),
(12740, 6, 'master_property_type_jalmal', 'editfield'),
(12741, 6, 'master_property_type_jalmal', 'delete'),
(12742, 6, 'master_property_type_jalmal', 'import_data'),
(12743, 6, 'zone_master', 'list'),
(12744, 6, 'zone_master', 'view'),
(12745, 6, 'zone_master', 'add'),
(12746, 6, 'zone_master', 'edit'),
(12747, 6, 'zone_master', 'editfield'),
(12748, 6, 'zone_master', 'delete'),
(12749, 6, 'zone_master', 'import_data'),
(12750, 6, 'master_property_usage', 'list'),
(12751, 6, 'master_property_usage', 'view'),
(12752, 6, 'master_property_usage', 'add'),
(12753, 6, 'master_property_usage', 'edit'),
(12754, 6, 'master_property_usage', 'editfield'),
(12755, 6, 'master_property_usage', 'delete'),
(12756, 6, 'master_property_usage', 'import_data'),
(12757, 6, 'certificate_upload', 'list'),
(12758, 6, 'certificate_upload', 'view'),
(12759, 6, 'certificate_upload', 'add'),
(12760, 6, 'certificate_upload', 'edit'),
(12761, 6, 'certificate_upload', 'editfield'),
(12762, 6, 'certificate_upload', 'delete'),
(12763, 6, 'certificate_upload', 'import_data'),
(12764, 6, 'service_configuration', 'list'),
(12765, 6, 'service_configuration', 'view'),
(12766, 6, 'service_configuration', 'add'),
(12767, 6, 'service_configuration', 'edit'),
(12768, 6, 'service_configuration', 'editfield'),
(12769, 6, 'service_configuration', 'delete'),
(12770, 6, 'service_configuration', 'import_data'),
(12771, 6, 'm_election_ward', 'list'),
(12772, 6, 'm_election_ward', 'view'),
(12773, 6, 'm_election_ward', 'add'),
(12774, 6, 'm_election_ward', 'edit'),
(12775, 6, 'm_election_ward', 'editfield'),
(12776, 6, 'm_election_ward', 'delete'),
(12777, 6, 'm_election_ward', 'import_data'),
(12778, 6, 'm_zone_property', 'list'),
(12779, 6, 'm_zone_property', 'view'),
(12780, 6, 'm_zone_property', 'add'),
(12781, 6, 'm_zone_property', 'edit'),
(12782, 6, 'm_zone_property', 'editfield'),
(12783, 6, 'm_zone_property', 'delete'),
(12784, 6, 'm_zone_property', 'import_data'),
(12785, 9, 'application_form', 'list'),
(12786, 9, 'application_form', 'view'),
(12787, 9, 'application_form', 'add'),
(12788, 9, 'application_form', 'edit'),
(12789, 9, 'application_form', 'editfield'),
(12790, 9, 'application_form', 'delete'),
(12791, 9, 'application_form', 'import_data'),
(12792, 9, 'user_info', 'list'),
(12793, 9, 'user_info', 'view'),
(12794, 9, 'user_info', 'userregister'),
(12795, 9, 'user_info', 'accountedit'),
(12796, 9, 'user_info', 'accountview'),
(12797, 9, 'user_info', 'add'),
(12798, 9, 'user_info', 'edit'),
(12799, 9, 'user_info', 'editfield'),
(12800, 9, 'user_info', 'delete'),
(12801, 9, 'user_info', 'import_data'),
(12802, 9, 'role_permissions', 'list'),
(12803, 9, 'role_permissions', 'view'),
(12804, 9, 'role_permissions', 'add'),
(12805, 9, 'role_permissions', 'edit'),
(12806, 9, 'role_permissions', 'editfield'),
(12807, 9, 'role_permissions', 'delete'),
(12808, 9, 'role_permissions', 'import_data'),
(12809, 9, 'roles', 'list'),
(12810, 9, 'roles', 'view'),
(12811, 9, 'roles', 'add'),
(12812, 9, 'roles', 'edit'),
(12813, 9, 'roles', 'editfield'),
(12814, 9, 'roles', 'delete'),
(12815, 9, 'roles', 'import_data'),
(12816, 9, 'accept_reject', 'list'),
(12817, 9, 'accept_reject', 'view'),
(12818, 9, 'accept_reject', 'add'),
(12819, 9, 'accept_reject', 'edit'),
(12820, 9, 'accept_reject', 'editfield'),
(12821, 9, 'accept_reject', 'delete'),
(12822, 9, 'accept_reject', 'import_data'),
(12823, 9, 'payments', 'list'),
(12824, 9, 'payments', 'view'),
(12825, 9, 'payments', 'add'),
(12826, 9, 'payments', 'edit'),
(12827, 9, 'payments', 'editfield'),
(12828, 9, 'payments', 'delete'),
(12829, 9, 'payments', 'import_data'),
(12830, 9, 'drainage_noc_jal_cc', 'list'),
(12831, 9, 'drainage_noc_jal_cc', 'view'),
(12832, 9, 'drainage_noc_jal_cc', 'add'),
(12833, 9, 'drainage_noc_jal_cc', 'edit'),
(12834, 9, 'drainage_noc_jal_cc', 'editfield'),
(12835, 9, 'drainage_noc_jal_cc', 'delete'),
(12836, 9, 'drainage_noc_jal_cc', 'cert_view'),
(12837, 9, 'drainage_noc_jal_cc', 'import_data'),
(12838, 9, 'drainage_noc_jal_oc', 'list'),
(12839, 9, 'drainage_noc_jal_oc', 'view'),
(12840, 9, 'drainage_noc_jal_oc', 'add'),
(12841, 9, 'drainage_noc_jal_oc', 'edit'),
(12842, 9, 'drainage_noc_jal_oc', 'editfield'),
(12843, 9, 'drainage_noc_jal_oc', 'delete'),
(12844, 9, 'drainage_noc_jal_oc', 'cert_view'),
(12845, 9, 'drainage_noc_jal_oc', 'import_data'),
(12846, 9, 'drainage_noc_mal_cc', 'list'),
(12847, 9, 'drainage_noc_mal_cc', 'view'),
(12848, 9, 'drainage_noc_mal_cc', 'add'),
(12849, 9, 'drainage_noc_mal_cc', 'edit'),
(12850, 9, 'drainage_noc_mal_cc', 'editfield'),
(12851, 9, 'drainage_noc_mal_cc', 'delete'),
(12852, 9, 'drainage_noc_mal_cc', 'cert_view'),
(12853, 9, 'drainage_noc_mal_cc', 'import_data'),
(12854, 9, 'drainage_noc_mal_oc', 'list'),
(12855, 9, 'drainage_noc_mal_oc', 'view'),
(12856, 9, 'drainage_noc_mal_oc', 'add'),
(12857, 9, 'drainage_noc_mal_oc', 'edit'),
(12858, 9, 'drainage_noc_mal_oc', 'editfield'),
(12859, 9, 'drainage_noc_mal_oc', 'delete'),
(12860, 9, 'drainage_noc_mal_oc', 'cert_view'),
(12861, 9, 'drainage_noc_mal_oc', 'import_data'),
(12862, 9, 'master_property_structure_type_jalmal', 'list'),
(12863, 9, 'master_property_structure_type_jalmal', 'view'),
(12864, 9, 'master_property_structure_type_jalmal', 'add'),
(12865, 9, 'master_property_structure_type_jalmal', 'edit'),
(12866, 9, 'master_property_structure_type_jalmal', 'editfield'),
(12867, 9, 'master_property_structure_type_jalmal', 'delete'),
(12868, 9, 'master_property_structure_type_jalmal', 'import_data'),
(12869, 9, 'master_property_type_jalmal', 'list'),
(12870, 9, 'master_property_type_jalmal', 'view'),
(12871, 9, 'master_property_type_jalmal', 'add'),
(12872, 9, 'master_property_type_jalmal', 'edit'),
(12873, 9, 'master_property_type_jalmal', 'editfield'),
(12874, 9, 'master_property_type_jalmal', 'delete'),
(12875, 9, 'master_property_type_jalmal', 'import_data'),
(12876, 9, 'zone_master', 'list'),
(12877, 9, 'zone_master', 'view'),
(12878, 9, 'zone_master', 'add'),
(12879, 9, 'zone_master', 'edit'),
(12880, 9, 'zone_master', 'editfield'),
(12881, 9, 'zone_master', 'delete'),
(12882, 9, 'zone_master', 'import_data'),
(12883, 9, 'master_property_usage', 'list'),
(12884, 9, 'master_property_usage', 'view'),
(12885, 9, 'master_property_usage', 'add'),
(12886, 9, 'master_property_usage', 'edit'),
(12887, 9, 'master_property_usage', 'editfield'),
(12888, 9, 'master_property_usage', 'delete'),
(12889, 9, 'master_property_usage', 'import_data'),
(12890, 9, 'certificate_upload', 'list'),
(12891, 9, 'certificate_upload', 'view'),
(12892, 9, 'certificate_upload', 'add'),
(12893, 9, 'certificate_upload', 'edit'),
(12894, 9, 'certificate_upload', 'editfield'),
(12895, 9, 'certificate_upload', 'delete'),
(12896, 9, 'certificate_upload', 'import_data'),
(12897, 9, 'service_configuration', 'list'),
(12898, 9, 'service_configuration', 'view'),
(12899, 9, 'service_configuration', 'add'),
(12900, 9, 'service_configuration', 'edit'),
(12901, 9, 'service_configuration', 'editfield'),
(12902, 9, 'service_configuration', 'delete'),
(12903, 9, 'service_configuration', 'import_data'),
(12904, 9, 'm_election_ward', 'list'),
(12905, 9, 'm_election_ward', 'view'),
(12906, 9, 'm_election_ward', 'add'),
(12907, 9, 'm_election_ward', 'edit'),
(12908, 9, 'm_election_ward', 'editfield'),
(12909, 9, 'm_election_ward', 'delete'),
(12910, 9, 'm_election_ward', 'import_data'),
(12911, 9, 'm_zone_property', 'list'),
(12912, 9, 'm_zone_property', 'view'),
(12913, 9, 'm_zone_property', 'add'),
(12914, 9, 'm_zone_property', 'edit'),
(12915, 9, 'm_zone_property', 'editfield'),
(12916, 9, 'm_zone_property', 'delete'),
(12917, 9, 'm_zone_property', 'import_data'),
(12918, 10, 'application_form', 'list'),
(12919, 10, 'application_form', 'view'),
(12920, 10, 'application_form', 'add'),
(12921, 10, 'application_form', 'edit'),
(12922, 10, 'application_form', 'editfield'),
(12923, 10, 'application_form', 'delete'),
(12924, 10, 'application_form', 'import_data'),
(12925, 10, 'user_info', 'list'),
(12926, 10, 'user_info', 'view'),
(12927, 10, 'user_info', 'userregister'),
(12928, 10, 'user_info', 'accountedit'),
(12929, 10, 'user_info', 'accountview'),
(12930, 10, 'user_info', 'add'),
(12931, 10, 'user_info', 'edit'),
(12932, 10, 'user_info', 'editfield'),
(12933, 10, 'user_info', 'delete'),
(12934, 10, 'user_info', 'import_data'),
(12935, 10, 'role_permissions', 'list'),
(12936, 10, 'role_permissions', 'view'),
(12937, 10, 'role_permissions', 'add'),
(12938, 10, 'role_permissions', 'edit'),
(12939, 10, 'role_permissions', 'editfield'),
(12940, 10, 'role_permissions', 'delete'),
(12941, 10, 'role_permissions', 'import_data'),
(12942, 10, 'roles', 'list'),
(12943, 10, 'roles', 'view'),
(12944, 10, 'roles', 'add'),
(12945, 10, 'roles', 'edit'),
(12946, 10, 'roles', 'editfield'),
(12947, 10, 'roles', 'delete'),
(12948, 10, 'roles', 'import_data'),
(12949, 10, 'accept_reject', 'list'),
(12950, 10, 'accept_reject', 'view'),
(12951, 10, 'accept_reject', 'add'),
(12952, 10, 'accept_reject', 'edit'),
(12953, 10, 'accept_reject', 'editfield'),
(12954, 10, 'accept_reject', 'delete'),
(12955, 10, 'accept_reject', 'import_data'),
(12956, 10, 'payments', 'list'),
(12957, 10, 'payments', 'view'),
(12958, 10, 'payments', 'add'),
(12959, 10, 'payments', 'edit'),
(12960, 10, 'payments', 'editfield'),
(12961, 10, 'payments', 'delete'),
(12962, 10, 'payments', 'import_data'),
(12963, 10, 'drainage_noc_jal_cc', 'list'),
(12964, 10, 'drainage_noc_jal_cc', 'view'),
(12965, 10, 'drainage_noc_jal_cc', 'add'),
(12966, 10, 'drainage_noc_jal_cc', 'edit'),
(12967, 10, 'drainage_noc_jal_cc', 'editfield'),
(12968, 10, 'drainage_noc_jal_cc', 'delete'),
(12969, 10, 'drainage_noc_jal_cc', 'cert_view'),
(12970, 10, 'drainage_noc_jal_cc', 'import_data'),
(12971, 10, 'drainage_noc_jal_oc', 'list'),
(12972, 10, 'drainage_noc_jal_oc', 'view'),
(12973, 10, 'drainage_noc_jal_oc', 'add'),
(12974, 10, 'drainage_noc_jal_oc', 'edit'),
(12975, 10, 'drainage_noc_jal_oc', 'editfield'),
(12976, 10, 'drainage_noc_jal_oc', 'delete'),
(12977, 10, 'drainage_noc_jal_oc', 'cert_view'),
(12978, 10, 'drainage_noc_jal_oc', 'import_data'),
(12979, 10, 'drainage_noc_mal_cc', 'list'),
(12980, 10, 'drainage_noc_mal_cc', 'view'),
(12981, 10, 'drainage_noc_mal_cc', 'add'),
(12982, 10, 'drainage_noc_mal_cc', 'edit'),
(12983, 10, 'drainage_noc_mal_cc', 'editfield'),
(12984, 10, 'drainage_noc_mal_cc', 'delete'),
(12985, 10, 'drainage_noc_mal_cc', 'cert_view'),
(12986, 10, 'drainage_noc_mal_cc', 'import_data'),
(12987, 10, 'drainage_noc_mal_oc', 'list'),
(12988, 10, 'drainage_noc_mal_oc', 'view'),
(12989, 10, 'drainage_noc_mal_oc', 'add'),
(12990, 10, 'drainage_noc_mal_oc', 'edit'),
(12991, 10, 'drainage_noc_mal_oc', 'editfield'),
(12992, 10, 'drainage_noc_mal_oc', 'delete'),
(12993, 10, 'drainage_noc_mal_oc', 'cert_view'),
(12994, 10, 'drainage_noc_mal_oc', 'import_data'),
(12995, 10, 'master_property_structure_type_jalmal', 'list'),
(12996, 10, 'master_property_structure_type_jalmal', 'view'),
(12997, 10, 'master_property_structure_type_jalmal', 'add'),
(12998, 10, 'master_property_structure_type_jalmal', 'edit'),
(12999, 10, 'master_property_structure_type_jalmal', 'editfield'),
(13000, 10, 'master_property_structure_type_jalmal', 'delete'),
(13001, 10, 'master_property_structure_type_jalmal', 'import_data'),
(13002, 10, 'master_property_type_jalmal', 'list'),
(13003, 10, 'master_property_type_jalmal', 'view'),
(13004, 10, 'master_property_type_jalmal', 'add'),
(13005, 10, 'master_property_type_jalmal', 'edit'),
(13006, 10, 'master_property_type_jalmal', 'editfield'),
(13007, 10, 'master_property_type_jalmal', 'delete'),
(13008, 10, 'master_property_type_jalmal', 'import_data'),
(13009, 10, 'zone_master', 'list'),
(13010, 10, 'zone_master', 'view'),
(13011, 10, 'zone_master', 'add'),
(13012, 10, 'zone_master', 'edit'),
(13013, 10, 'zone_master', 'editfield'),
(13014, 10, 'zone_master', 'delete'),
(13015, 10, 'zone_master', 'import_data'),
(13016, 10, 'master_property_usage', 'list'),
(13017, 10, 'master_property_usage', 'view'),
(13018, 10, 'master_property_usage', 'add'),
(13019, 10, 'master_property_usage', 'edit'),
(13020, 10, 'master_property_usage', 'editfield'),
(13021, 10, 'master_property_usage', 'delete'),
(13022, 10, 'master_property_usage', 'import_data'),
(13023, 10, 'certificate_upload', 'list'),
(13024, 10, 'certificate_upload', 'view'),
(13025, 10, 'certificate_upload', 'add'),
(13026, 10, 'certificate_upload', 'edit'),
(13027, 10, 'certificate_upload', 'editfield'),
(13028, 10, 'certificate_upload', 'delete'),
(13029, 10, 'certificate_upload', 'import_data'),
(13030, 10, 'service_configuration', 'list'),
(13031, 10, 'service_configuration', 'view'),
(13032, 10, 'service_configuration', 'add'),
(13033, 10, 'service_configuration', 'edit'),
(13034, 10, 'service_configuration', 'editfield'),
(13035, 10, 'service_configuration', 'delete'),
(13036, 10, 'service_configuration', 'import_data'),
(13037, 10, 'm_election_ward', 'list'),
(13038, 10, 'm_election_ward', 'view'),
(13039, 10, 'm_election_ward', 'add'),
(13040, 10, 'm_election_ward', 'edit'),
(13041, 10, 'm_election_ward', 'editfield'),
(13042, 10, 'm_election_ward', 'delete'),
(13043, 10, 'm_election_ward', 'import_data'),
(13044, 10, 'm_zone_property', 'list'),
(13045, 10, 'm_zone_property', 'view'),
(13046, 10, 'm_zone_property', 'add'),
(13047, 10, 'm_zone_property', 'edit'),
(13048, 10, 'm_zone_property', 'editfield'),
(13049, 10, 'm_zone_property', 'delete'),
(13050, 10, 'm_zone_property', 'import_data'),
(13051, 8, 'application_form', 'list'),
(13052, 8, 'application_form', 'view'),
(13053, 8, 'application_form', 'add'),
(13054, 8, 'application_form', 'edit'),
(13055, 8, 'application_form', 'editfield'),
(13056, 8, 'application_form', 'delete'),
(13057, 8, 'application_form', 'import_data'),
(13058, 8, 'user_info', 'list'),
(13059, 8, 'user_info', 'view'),
(13060, 8, 'user_info', 'userregister'),
(13061, 8, 'user_info', 'accountedit'),
(13062, 8, 'user_info', 'accountview'),
(13063, 8, 'user_info', 'add'),
(13064, 8, 'user_info', 'edit'),
(13065, 8, 'user_info', 'editfield'),
(13066, 8, 'user_info', 'delete'),
(13067, 8, 'user_info', 'import_data'),
(13068, 8, 'role_permissions', 'list'),
(13069, 8, 'role_permissions', 'view'),
(13070, 8, 'role_permissions', 'add'),
(13071, 8, 'role_permissions', 'edit'),
(13072, 8, 'role_permissions', 'editfield'),
(13073, 8, 'role_permissions', 'delete'),
(13074, 8, 'role_permissions', 'import_data'),
(13075, 8, 'roles', 'list'),
(13076, 8, 'roles', 'view'),
(13077, 8, 'roles', 'add'),
(13078, 8, 'roles', 'edit'),
(13079, 8, 'roles', 'editfield'),
(13080, 8, 'roles', 'delete'),
(13081, 8, 'roles', 'import_data'),
(13082, 8, 'accept_reject', 'list'),
(13083, 8, 'accept_reject', 'view'),
(13084, 8, 'accept_reject', 'add'),
(13085, 8, 'accept_reject', 'edit'),
(13086, 8, 'accept_reject', 'editfield'),
(13087, 8, 'accept_reject', 'delete'),
(13088, 8, 'accept_reject', 'import_data'),
(13089, 8, 'payments', 'list'),
(13090, 8, 'payments', 'view'),
(13091, 8, 'payments', 'add'),
(13092, 8, 'payments', 'edit'),
(13093, 8, 'payments', 'editfield'),
(13094, 8, 'payments', 'delete'),
(13095, 8, 'payments', 'import_data'),
(13096, 8, 'drainage_noc_jal_cc', 'list'),
(13097, 8, 'drainage_noc_jal_cc', 'view'),
(13098, 8, 'drainage_noc_jal_cc', 'add'),
(13099, 8, 'drainage_noc_jal_cc', 'edit'),
(13100, 8, 'drainage_noc_jal_cc', 'editfield'),
(13101, 8, 'drainage_noc_jal_cc', 'delete'),
(13102, 8, 'drainage_noc_jal_cc', 'cert_view'),
(13103, 8, 'drainage_noc_jal_cc', 'import_data'),
(13104, 8, 'drainage_noc_jal_oc', 'list'),
(13105, 8, 'drainage_noc_jal_oc', 'view'),
(13106, 8, 'drainage_noc_jal_oc', 'add'),
(13107, 8, 'drainage_noc_jal_oc', 'edit'),
(13108, 8, 'drainage_noc_jal_oc', 'editfield'),
(13109, 8, 'drainage_noc_jal_oc', 'delete'),
(13110, 8, 'drainage_noc_jal_oc', 'cert_view'),
(13111, 8, 'drainage_noc_jal_oc', 'import_data'),
(13112, 8, 'drainage_noc_mal_cc', 'list'),
(13113, 8, 'drainage_noc_mal_cc', 'view'),
(13114, 8, 'drainage_noc_mal_cc', 'add'),
(13115, 8, 'drainage_noc_mal_cc', 'edit'),
(13116, 8, 'drainage_noc_mal_cc', 'editfield'),
(13117, 8, 'drainage_noc_mal_cc', 'delete'),
(13118, 8, 'drainage_noc_mal_cc', 'cert_view'),
(13119, 8, 'drainage_noc_mal_cc', 'import_data'),
(13120, 8, 'drainage_noc_mal_oc', 'list'),
(13121, 8, 'drainage_noc_mal_oc', 'view'),
(13122, 8, 'drainage_noc_mal_oc', 'add'),
(13123, 8, 'drainage_noc_mal_oc', 'edit'),
(13124, 8, 'drainage_noc_mal_oc', 'editfield'),
(13125, 8, 'drainage_noc_mal_oc', 'delete'),
(13126, 8, 'drainage_noc_mal_oc', 'cert_view'),
(13127, 8, 'drainage_noc_mal_oc', 'import_data'),
(13128, 8, 'master_property_structure_type_jalmal', 'list'),
(13129, 8, 'master_property_structure_type_jalmal', 'view'),
(13130, 8, 'master_property_structure_type_jalmal', 'add'),
(13131, 8, 'master_property_structure_type_jalmal', 'edit'),
(13132, 8, 'master_property_structure_type_jalmal', 'editfield'),
(13133, 8, 'master_property_structure_type_jalmal', 'delete'),
(13134, 8, 'master_property_structure_type_jalmal', 'import_data'),
(13135, 8, 'master_property_type_jalmal', 'list'),
(13136, 8, 'master_property_type_jalmal', 'view'),
(13137, 8, 'master_property_type_jalmal', 'add'),
(13138, 8, 'master_property_type_jalmal', 'edit'),
(13139, 8, 'master_property_type_jalmal', 'editfield'),
(13140, 8, 'master_property_type_jalmal', 'delete'),
(13141, 8, 'master_property_type_jalmal', 'import_data'),
(13142, 8, 'zone_master', 'list'),
(13143, 8, 'zone_master', 'view'),
(13144, 8, 'zone_master', 'add'),
(13145, 8, 'zone_master', 'edit'),
(13146, 8, 'zone_master', 'editfield'),
(13147, 8, 'zone_master', 'delete'),
(13148, 8, 'zone_master', 'import_data'),
(13149, 8, 'master_property_usage', 'list'),
(13150, 8, 'master_property_usage', 'view'),
(13151, 8, 'master_property_usage', 'add'),
(13152, 8, 'master_property_usage', 'edit'),
(13153, 8, 'master_property_usage', 'editfield'),
(13154, 8, 'master_property_usage', 'delete'),
(13155, 8, 'master_property_usage', 'import_data'),
(13156, 8, 'certificate_upload', 'list'),
(13157, 8, 'certificate_upload', 'view'),
(13158, 8, 'certificate_upload', 'add'),
(13159, 8, 'certificate_upload', 'edit'),
(13160, 8, 'certificate_upload', 'editfield'),
(13161, 8, 'certificate_upload', 'delete'),
(13162, 8, 'certificate_upload', 'import_data'),
(13163, 8, 'service_configuration', 'list'),
(13164, 8, 'service_configuration', 'view'),
(13165, 8, 'service_configuration', 'add'),
(13166, 8, 'service_configuration', 'edit'),
(13167, 8, 'service_configuration', 'editfield'),
(13168, 8, 'service_configuration', 'delete'),
(13169, 8, 'service_configuration', 'import_data'),
(13170, 8, 'm_election_ward', 'list'),
(13171, 8, 'm_election_ward', 'view'),
(13172, 8, 'm_election_ward', 'add'),
(13173, 8, 'm_election_ward', 'edit'),
(13174, 8, 'm_election_ward', 'editfield'),
(13175, 8, 'm_election_ward', 'delete'),
(13176, 8, 'm_election_ward', 'import_data'),
(13177, 8, 'm_zone_property', 'list'),
(13178, 8, 'm_zone_property', 'view'),
(13179, 8, 'm_zone_property', 'add'),
(13180, 8, 'm_zone_property', 'edit'),
(13181, 8, 'm_zone_property', 'editfield'),
(13182, 8, 'm_zone_property', 'delete'),
(13183, 8, 'm_zone_property', 'import_data'),
(13184, 3, 'inspection_form', 'add'),
(13185, 2, 'drainage_noc_jal_cc', 'revert'),
(13186, 2, 'drainage_noc_jal_oc', 'revert'),
(13187, 2, 'drainage_noc_mal_cc', 'revert'),
(13188, 2, 'drainage_noc_mal_oc', 'revert'),
(13189, 4, 'drainage_noc_jal_cc', 'revert'),
(13190, 4, 'drainage_noc_jal_oc', 'revert'),
(13191, 4, 'drainage_noc_mal_cc', 'revert'),
(13192, 4, 'drainage_noc_mal_oc', 'revert'),
(13193, 3, 'drainage_noc_jal_cc', 'revert'),
(13194, 3, 'drainage_noc_jal_oc', 'revert'),
(13195, 3, 'drainage_noc_mal_cc', 'revert'),
(13196, 3, 'drainage_noc_mal_oc', 'revert'),
(13197, 5, 'drainage_noc_jal_cc', 'revert'),
(13198, 5, 'drainage_noc_jal_oc', 'revert'),
(13199, 5, 'drainage_noc_mal_cc', 'revert'),
(13200, 5, 'drainage_noc_mal_oc', 'revert'),
(13201, 5, 'api', 'offlineredirect'),
(13202, 5, 'inspection_form', 'view'),
(13203, 3, 'inspection_form', 'view'),
(13204, 4, 'inspection_form', 'view'),
(13205, 5, 'payments', 'challan'),
(13206, 6, 'payments', 'challan'),
(13207, 7, 'payments', 'challan'),
(13208, 8, 'payments', 'challan'),
(13209, 9, 'payments', 'challan'),
(13210, 10, 'payments', 'challan'),
(13211, 1, 'payments', 'challan'),
(13212, 5, 'payments', 'detailed_challan'),
(13213, 6, 'payments', 'detailed_challan'),
(13214, 7, 'payments', 'detailed_challan'),
(13215, 8, 'payments', 'detailed_challan'),
(13216, 9, 'payments', 'detailed_challan'),
(13217, 10, 'payments', 'detailed_challan'),
(13218, 1, 'payments', 'detailed_challan'),
(13219, 3, 'inspection_form', 'list'),
(13220, 5, 'inspection_form', 'list'),
(13221, 4, 'inspection_form', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `service_configuration`
--

CREATE TABLE `service_configuration` (
  `id` int(11) NOT NULL,
  `db_name` varchar(255) NOT NULL,
  `certificate_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_configuration`
--

INSERT INTO `service_configuration` (`id`, `db_name`, `certificate_data`) VALUES
(1, 'drainage_noc_mal_cc', '<div style=\"padding:50px;border:1px solid black\"><p class=\"MsoNormal\" style=\"text-align: center;\"><u><span lang=\"HI\" mangal\",serif;mso-ascii-font-family:aptos;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\" style=\"font-size: 24pt; line-height: 36.8px;\">&nbsp;</span></u><img src=\"https://singlewindowsystemkdmc.in/drainage_app/uploads/files/zkad0msbrve4t9_.png\" style=\"width: 123.492px; height: 107.953px;\"><u><span lang=\"HI\" mangal\",serif;mso-ascii-font-family:aptos;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\" style=\"font-size: 24pt; line-height: 36.8px;\">कल्याण डोंबिवली महानगरपालिका</span></u><u><span style=\"font-size: 28pt; line-height: 42.9333px;\">,&nbsp;</span></u><u><span lang=\"HI\" mangal\",serif;mso-ascii-font-family:aptos;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\" style=\"font-size: 24pt; line-height: 36.8px;\">कल्याण</span></u><span style=\"font-size: 28pt; line-height: 42.9333px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span style=\"font-weight: bolder;\"><u><span lang=\"HI\" mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\">मलनि:सारण, विभाग</span></u></span><span style=\"font-size: 14pt;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: right; margin-left: 216pt; text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">जाक्र.</span><span lang=\"MR\" mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">कडोंमपा/काअ/जनी:/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">दिनांक:-</span><span lang=\"MR\">&nbsp;</span><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.official_date_timestamp}}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><br></p><p class=\"MsoNormal\" style=\"text-align: center;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><span style=\"font-weight: bolder;\"><u>-: ना-हरकत दाखला :-</u></span></span><span style=\"font-weight: bolder;\"><u><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></u></span></p><p class=\"MsoNormal\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; प्रति,</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.applicant_surname}} {{getval.applicant_name}} {{getval.applicant_father_or_spouse_name}} ,<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.zone_id}}, {{getval.place_or_division_or_village}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;वास्तुशिल्पकार:-&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.architect_name}}</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">विषय :-&nbsp; बांधकाम परवानगीसाठी मलनि:सारण विभागाचा ना-हरकत दाखला मिळेबाबत.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">संदर्भ :- १)&nbsp;</span><span style=\"font-size: 16px;\">आपला अर्ज&nbsp; दि.&nbsp; {{getval.date}}</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">२) स.नं&nbsp;</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">/<span lang=\"HI\">&nbsp;सि.स.नं&nbsp;</span>{{getval.property_survey_no_or_city_survey_no}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"> हिस्सा नं&nbsp;</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.hissa_number}}<span lang=\"HI\">&nbsp;मौजे-&nbsp;</span>{{getval.mouje_gaon_name}}<span lang=\"HI\"></span><o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;३<span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">) उप अभियंता यांचा दि. {{getval.inspection_date}} रोजीचा पाहणी अहवाल.</span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">महोदय,</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">&nbsp;वरील संदर्भन्वये खालील अटी व शर्तीनुसार मलनि:सारण विभागाचा ना-हरकत दाखला देण्यात येत आहे.</span></p><p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"font-size: 16px;\">-: अटी व शर्ती :-</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">१) प्रस्तावित इमारतीसाठी भागात&nbsp; मलनि:सारण योजना कार्यान्वित आहे. कार्यकारी अभियंता, मलनि:सारण विभाग यांची पूर्व परवानगी घेऊन&nbsp; इमारतीचे सांडपाणी/ मैलपाणी भुयारी गटार योजनेस जोडणे आपल्यावर बंधनकारक राहील.&nbsp;&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">२) आपल्या प्रस्तावित इमारतीच्या अंतर्गत असणारे चेंबर्स हे २.००’’ x १.६०’’ एवढ्या आकाराचे असावेत. तसेच गल्ली ट्रॅप चेंबर प्रत्येक बाथरूम व किचनच्या डाउनटेक पाईप्स खाली प्रस्तावित करण्यात यावेत.</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">३) ड्रेनेज कनेक्शनचे काम करण्यास डोंबिवली महानगरपालिका परवानाधारक प्लंबर यामार्फत करून घेणे आपल्यावर बंधनकारक राहील. तसेच ड्रेनेज कनेक्शन करताना कमीत कमी २५० मि. मि. व्यासाचे आर. सी. सी. पाईप वापरणेत यावेत.</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">४) मालवाहिनी हेवी पी.व्ही.सी पाइप टाकून इनकेसिग करावे व आर. सी. सी. पद्धतीने ०.६० x ०.४५ आकाराचे चेंबर बांधावेत.</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">५) बांधकाम कामगारांसाठी व सुरक्षा रक्षाकांसाठी शौचालय व स्नानगृहाची व्यवस्था करावी.&nbsp; </span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">६)दिव्यांगांसाठी शौचालयाची व्यवस्था करावी.</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\">७) प्रस्तावित भुखंडावरील सदनिका १०० पेक्षा जास्त असल्याने युडीसीपीआर महाराष्ट्र शासन यांच्या दिनांक ३०/०१/२०२४&nbsp; रोजीच्या सुधारित आदेशानुसार तरतूद १३:४:१ ते १३:४:८ नुसार ग्रे वॉटर ट्रीटमेंट प्लांट बांधणे बंधनकारक राहील.</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 16px;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><br></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-align: right; margin-left: 72pt;\"><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; कार्यकारी अभियंता(मनि:)</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">कल्याण डोंबिवली महानगरपालिका,</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 144pt; text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; कल्याण.</span></p><p></p><p class=\"MsoNormal\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">प्रत :- नगररचनाकार, नगररचना विभाग, कांडोमपा, डोंबिवली यांना माहितीस्तव व पुढील कार्यवाहीसाठी रवाना.</span></p></div>'),
(2, 'drainage_noc_jal_cc', '<div style=\"padding:50px;border:1px solid black\">\r\n<p class=\"MsoNormal\" style=\"text-align: center; \"><img src=\"https://singlewindowsystemkdmc.in/drainage_app/uploads/files/eo09xjtcb4hau61.png\" style=\"width: 128.516px; height: 112.345px;\"><u><span lang=\"HI\" style=\"font-size:24.0pt;mso-ansi-font-size:\r\n28.0pt;line-height:115%;font-family:\" mangal\",serif;mso-ascii-font-family:aptos;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">कल्याण डोंबिवली महानगरपालिका</span></u><u><span style=\"font-size:28.0pt;mso-bidi-font-size:24.0pt;line-height:115%\">, </span></u><u><span lang=\"HI\" style=\"font-size:24.0pt;mso-ansi-font-size:28.0pt;line-height:115%;\r\nfont-family:\" mangal\",serif;mso-ascii-font-family:aptos;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">कल्याण</span></u><span style=\"font-size:28.0pt;\r\nmso-bidi-font-size:24.0pt;line-height:115%\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span style=\"font-weight: bolder;\"><u><span lang=\"HI\" mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\">जलनि:सारण, विभाग</span></u></span><span style=\"font-weight: bolder;\"><u><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\"><o:p></o:p></span></u></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span style=\"font-weight: bolder;\"><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></span><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"text-align: right; text-indent: 36pt; font-size: 12pt; line-height: 17.12px;\">जाक्र.</span><span lang=\"MR\" mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"text-align: right; text-indent: 36pt; font-size: 12pt; line-height: 17.12px;\">कडोंमपा/काअ/जनी:/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"text-align: right; font-size: 12pt; line-height: 17.12px;\">दिनांक:-</span><span lang=\"MR\" style=\"text-align: right; font-size: 0.875rem;\">&nbsp;</span><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"text-align: right; font-size: 12pt; line-height: 17.12px;\">{{getval.official_date_timestamp}}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><span style=\"font-size: 12pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: center;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><span style=\"font-weight: bolder;\"><u>-: ना-हरकत दाखला :-</u></span></span><span style=\"font-weight: bolder;\"><u><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></u></span></p><p class=\"MsoNormal\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; प्रति,</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.applicant_surname}} {{getval.applicant_name}}&nbsp; {{getval.applicant_father_or_spouse_name}} ,<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.zone_id}}, {{getval.place_or_division_or_village}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; वास्तुशिल्पकार:-&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.architect_name}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">विषय :-&nbsp; बांधकाम परवानगी जलनि:सारण विभागाच्या ना-हरकत दाखला मिळणे बाबत.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">संदर्भ :-&nbsp;</span><span style=\"font-size: 16px;\">१) आपला अर्ज&nbsp; दि.&nbsp; {{getval.date}}</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">२) स.नं&nbsp;</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">/<span lang=\"HI\">&nbsp;सि.स.नं -&nbsp;</span>{{getval.property_survey_no_or_city_survey_no}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">हिस्सा नं.&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.hissa_number}} ,<span lang=\"HI\">&nbsp;मौजे-&nbsp;</span>{{getval.mouje_gaon_name}}<span lang=\"HI\"></span><o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size: 0.875rem;\">३</span><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">) उप अभियंता यांचा दि. {{getval.inspection_date}} रोजीचा पाहणी अहवाल.</span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">महोदय,</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; उपरोक्त संदर्भिय विषयांकित भूखंडाची उप अभियंता यांनी प्रत्यक्ष जागेवर पाहणी केली असता आपण सादर केलेल्या इमारती/ इमारत बांधण्याचे आपले नियोजन असून सदर इमारतीचे परवानगीकरीता या विभागाचा ना- हरकत दाखला मिळणेकरीता आपण वरील संदर्भिय पत्र क्र. १ अन्वये केलेल्या विनंती नुसार खालील अटी व शर्तीस अधीन राहून ना-हरकत दाखला प्रदान करण्यात येत आहे.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp; </span></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">इमारतीच्या सांडपण्याचा व पावसाळी पाण्याचा निचरा योग्यरीत्या होण्यासाठी उर्वरित इमारतीचे बांधकाम पूर्ण/सुरू&nbsp; करण्यापूर्वी, जलनि: सारण विभागाने दिलेल्या निर्देशान्वये/ सोबत जोडलेल्या नकाशात दिलेल्या मार्गीकेप्रमाणे व दिलेल्या सेक्शन प्रमाणे&nbsp;&nbsp;</span><span lang=\"EN-US\" mangal\",serif;mso-ansi-language:en-us;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">M-15/1:2:4&nbsp;</span><span lang=\"MR\" mangal\",serif;mso-ansi-language:en-us;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">या उच्च</span><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;प्रतीच्या काँक्रीटने गटार/ नाला स्वखर्चाने बांधणे आपल्यावर बंधनकारक राहील. यामध्ये कुठल्याही प्रकारचा फेरबदल करू नये. सदर नाला/ गटार बांधतेवेळी जलनि:सारण विभागाच्या नियंत्रणाखालीच&nbsp; बांधकाम करावे.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">२)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">आपल्या भूखंडाच्या लगत रस्त्यावरील अस्तीत्वातील गटार, इमारतीचे काम सुरू असतांना बुजवून रास्ता तयार करु नये.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">३)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">आपण आपल्या भूखंड विकसित केल्यामुळे/करीत असल्यामुळे भविष्यात शेजारील रहिवाशांना तसेच शेजारच्या भूखंडात सांडपाणी व पावसाळी पाणी साचणार नाही किंवा जाणार नाही याची संपूर्ण जबाबदारी आपल्यावर राहील.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">४)</span><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"line-height: 17.12px;\"><font size=\"1\">&nbsp;</font></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">रस्त्याच्या कडेला बांधण्यात येणाऱ्या/ बांधलेल्या गटारीच्या भिंतीवर भविष्यात आपणास कोणत्याही प्रकारे बांधकाम करता येणार नाही. अन्यथा तसे केल्यास ते तोडण्याचा महापालिकेचा कायदेशीर अधिकार राहील.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">५)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">सदर बांधकाम पूर्ण झाल्यानंतर नाल्यात/ गटारात पडलेले बांधकामाचे साहित्य त्वरित बाहेर काढून टाकावेत.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">६)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">सदर गटार/नाला/ स्लंबचे बांधकाम पूर्ण झाल्यावर महापालिकेला जागेसाहित हस्तांतरित करावयाचे आहे.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">७)</span><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"line-height: 17.12px;\"><font size=\"1\">&nbsp;</font></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">आपण विकसित करीत असलेल्या/केलेल्या भूखंडालगत&nbsp; मोठ्या आकाराचे गटार / नाला/ असल्यास त्यास बाधा होईल अशी झाडे लावू नयेत.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">८)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">आपण बांधलेल्या गटाराची वेळोवेळी देखभाल, दुरुस्ती व साफसफाई करणे आपल्याला बंधनकारक राहील.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">९)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">आपल्या भूखंडालगत/ भूखंडातील असलेला नाला अथवा गटार सफाईसाठी मशिनरी ने-आण करणेकरीता (उदा. प्रोकलेन, जेसिबी, डंपर इत्यादि)&nbsp;</span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">तसेच सफाई कर्मचारी आपल्या संकुलामधून जाण्यास संकुलातील रहिवासी भविष्यात कुठलीही हरकत घेणार नाही. याबाबत सदनिका धारकांच्या खरेदीखताच्या कारारनाम्यात तशी अट घालणे बंधनकारक राहील.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१०)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">मशीनरी ने-आण करताना आपल्या संकुलातील कोबा अथवा रास्ता तुटणार नाही/ डॅमेज होणर नाही यासाठी ते उच्च प्रतिच्या काँक्रिटने&nbsp; अथवा उच्च प्रतीच्या खडीकरणाने व डांबरीकरणाने करण्यात यावे, जेणेकरून संकुलतील&nbsp; रहिवासी कोणत्याही प्रकारची हरकत घेणार नाहीत. कोबा अथवा रास्ता तुटल्यास त्यास महापालिका जाबाबदर राहणार नाही.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">११)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">आपण बाधलेल्या नाल्यावर अथवा गटरावर आपण स्लॅब टाकल्यास सफाईसाठी&nbsp; प्रत्ये ५.०० मीटर अंतरावर २.५०&nbsp;</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">x&nbsp;<span lang=\"MR\">३.५० फुट या आकराचे हेवीड्यूटि लोखंडी फ्रेम व झाकण बसविणे आपणावर बंधानकारक राहील. जेणेकरून वाहन गेलयास ते तुटणार नाहीत.</span></span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१२)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">आपण विकसित करीत असलेल्या भूखंडातून&nbsp; पाण्याचा नैसर्गिक निचरा वाहत असल्यास तो इकडील परवानगी शिवाय वळवू&nbsp; अथवा बंद करू नये.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१३)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">विकसित करण्यात येत असलेल्या/ विकसित केलेल्या भूखंडबाबत आपण काही चुकीची माहिती दिली आहे असे निदर्शनास आल्यास सदरची परवानगी रद्द करण्यात येईल आशा तऱ्हेने कुठल्याही प्रकारचे बांधकाम करण्यात येवू नये.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१४)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">पावसाचे पाणी /सांडपाणी वाहून नेणाऱ्या गटराला/ नाल्याला बाधित होईल आशा तऱ्हेचे कुठल्याही प्रकारचे बांधकाम करण्यात येवू नये.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१५)</span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">भूखंडच्या मोकळ्या जागेतून भविष्यात महापालिकेला नाला अथवा गटार बांधवायची असल्यास/नाल्याचे अथवा रुंदीकरण करावयाचे असल्यास नाल्यास अथवा गटारीस लागणारी आवश्यक तेवढी जागा महापालिकेस विनामूल्य देणे आपणावर बंधनकारक राहील.</span><span mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१६)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">इमारतीच्या बांधकामाकरीता कोणतीही सुधारित परवानगी घेतल्यास अथवा परवानगी मध्ये बदल केल्यास सुधारित परवानगी नुसार या विभागाचा ना-हरकत दाखला घेणे आपणावर बंधानकराक आहे.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१७)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">इमारतीच्या बांधकाम पूर्ण केल्यावर त्यावेळी या विभागाचा स्वतंत्र ना-हरकरत दाखला घेणे आपणावर बंधनकारक राहील.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: -18pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-fareast-font-family:mangal;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">१८)<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;</span></span><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">भूखंडावरील पावसाळी पाण्याचा निचरा योग्य प्रकरे होणेकरिता भूखंडअंतर्गत आवश्यक ती उपाययोजना करणे आपणावर बंधनकारक राहील.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 23.25pt; text-align: justify; text-indent: 12.75pt;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">वरीलपैकी कोणत्याही अटी व शर्तीचा भंग केल्यास मुंबई प्रांतिक महानगरपालिका १९४९&nbsp; मधील प्रकरण बाराच्या तरतुदीनुसार आपल्यावर कारवाई करण्यात येईल व सदरचा ना-हरकत दाखला आपोआप रद्द होईल. याबाबत आपणास वेगळे पत्र दिले जाणार नाही.</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 72pt;\"><span mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 72pt;\"><span mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><br></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72pt;\"><span mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72pt;\"><span mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><br></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-align: right; margin-left: 72pt;\"><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; कार्यकारी अभियंता(जनि:)</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">कल्याण डोंबिवली महानगरपालिका,</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 144pt; text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; कल्याण.</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"margin-left: 72pt;\"><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p></p><p class=\"MsoNormal\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">प्रत :- मा. सहाय्यक संचालक / नगररचनाकार, नगररचना विभाग, कडोंमपा, कल्याण यांना पुढील योग्य त्या कार्यवाहीसाठी सविनय सादर सस्नेह अग्रेषीत.</span></p></div>');
INSERT INTO `service_configuration` (`id`, `db_name`, `certificate_data`) VALUES
(3, 'drainage_noc_mal_oc', '<div style=\"padding:50px;border:1px solid black\"><p class=\"MsoNormal\" style=\"text-align: center;\"><img src=\"https://singlewindowsystemkdmc.in/drainage_app/uploads/files/hkd3m9lvusf6pb0.png\" style=\"width: 124.562px; height: 108.889px;\">&nbsp;<u><span lang=\"HI\" mangal\",serif;mso-ascii-font-family:aptos;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\" style=\"font-size: 24pt; line-height: 36.8px;\">कल्याण डोंबिवली महानगरपालिका</span></u><u><span style=\"font-size: 28pt; line-height: 42.9333px;\">,&nbsp;</span></u><u><span lang=\"HI\" mangal\",serif;mso-ascii-font-family:aptos;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\" style=\"font-size: 24pt; line-height: 36.8px;\">कल्याण</span></u><span style=\"font-size: 28pt; line-height: 42.9333px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span style=\"font-weight: bolder;\"><u><span lang=\"HI\" mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\">मलनि:सारण,विभाग</span></u></span><span style=\"font-weight: bolder;\"><u><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\"><o:p></o:p></span></u></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span style=\"font-weight: bolder;\"><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\">&nbsp;</span></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: right; margin-left: 216pt; text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">जाक्र.</span><span lang=\"MR\" mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">कडोमपा/काअ/जोनी:/डोवि/</span><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">दिनांक:-</span><span lang=\"MR\">&nbsp;</span><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.timestamp}}</span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><span style=\"font-size: 12pt;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: center;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><span style=\"font-weight: bolder;\"><u>-: ना-हरकत दाखला :-</u></span></span><span style=\"font-weight: bolder;\"><u><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></u></span></p><p class=\"MsoNormal\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; प्रति,</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.applicant_surname}} {{getval.applicant_name}} {{getval.applicant_father_or_spouse_name}} ,<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.zone_id}}, {{getval.place_or_division_or_village}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; वास्तुशिल्पकार:-&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.architect_name}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; </span><span style=\"font-size: 16px;\">विषय :- ड्रेनेज पूर्णत्वाचा ना-हरकत दाखला मिळेबाबत.&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp;संदर्भ :- १) आपला अर्ज&nbsp; दि. {{getval.date}}</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;२) स.नं / सि.स.नं. {{getval.property_survey_no_or_city_survey_no}} हिस्सा नं {{getval.hissa_number}} </span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; मौजे- {{getval.mouje_gaon_name}}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;३) बांधकाम परवानगी क. कडोमपा/ नरवि/बांप/ डोंवि/...........दिनांक -----</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;४) उप अभियंता यांचा दि.&nbsp;</span><span style=\"font-size: 16px;\">{{getval.inspection_date}}&nbsp;</span><span style=\"font-size: 16px;\">रोजीचा पाहणी अहवाल.</span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;५)मालमत्ता क्रमांक {{getval.computarized_property_no}}</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">विषय संदर्भात दाखला देण्यात येत आहे की, ज.क्र.कडोमपा/काअ/भुगयो /.................... दि. ........................ अन्वये आपण आपल्या मिळकतीचे सांडपाणी/मैलापणी कंडोमपाच्या भुयारी गटर योजनेस जोडण्यात आलेले आहे. आपल्या अंतर्गत मलवाहिन्या व चेंबरची निगा/दुरुस्तीची जबाबदारी आपली राहील. वरीलपैकी कोणत्याही अटी व शर्तीचा भंग केल्यास&nbsp; मुंबई प्रांतिक महानगरपालिकेच्या अधिनियम १९४९ मधील प्रकरण बाराव्या तरतुदीनुसार आपणावर कारवाई करण्यात येईल व सदरचा ना-हरकत दाखला आपोआप रद्द होईल. याबाबत आपल्यास वेगळे पत्र दिले जाणार नाही.</span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 72pt;\"><span mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72pt;\"><span mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-align: right; margin-left: 72pt;\"><span lang=\"MR\" mangal\",serif;=\"\" mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; कार्यकारी अभियंता(<span lang=\"HI\" style=\"font-size:12.0pt;line-height:\r\n107%;font-family:\" mangal\",serif;mso-fareast-font-family:aptos;mso-fareast-theme-font:=\"\" minor-latin;mso-ansi-language:en-in;mso-fareast-language:en-us;mso-bidi-language:=\"\" hi\"=\"\">मनि:</span>)<br></span><span style=\"font-size: 12pt;\">कल्याण डोंबिवली महानगरपालिका,&nbsp;</span><span style=\"font-size: 16px; text-indent: 48px;\">कल्याण</span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 144pt; text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;=\"\" mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p></p><p class=\"MsoNormal\"><span lang=\"MR\" style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:\" mangal\",serif;mso-bidi-language:mr\"=\"\">प्रत:-</span><span style=\"font-size:12.0pt;line-height:107%;font-family:\" mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"MR\" style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:\" mangal\",serif;mso-bidi-language:mr\"=\"\">१) नगररचनाकार</span><span style=\"font-size:12.0pt;line-height:107%;font-family:\" mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\">, <span lang=\"MR\">नगररचना विभाग</span>, <span lang=\"MR\">कडोमपा</span>, <span lang=\"MR\">डोंबिवली यांना माहितीसाठी व पुढील कार्यवाहीसाठी रवाना.</span><o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span lang=\"MR\" style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:\" mangal\",serif;mso-bidi-language:mr\"=\"\">२) मा.उप आयुक्त (कर) कडोमपा</span><span style=\"font-size:12.0pt;line-height:107%;font-family:\" mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\">, <span lang=\"MR\">यांना कर आकारणीची माहिती देणेकामी सादर.</span><o:p></o:p></span></p></div>'),
(4, 'drainage_noc_jal_oc', '<div style=\"padding:50px;border:1px solid black\">\r\n<h3 style=\"text-align: center; \"><img src=\"https://singlewindowsystemkdmc.in/drainage_app/uploads/files/z7peih5836ntbo0.png\" style=\"width: 127.688px; height: 111.621px;\"><u><span lang=\"HI\" style=\"font-size:24.0pt;mso-ansi-font-size:\r\n28.0pt;line-height:115%;font-family:\" mangal\",serif;mso-ascii-font-family:aptos;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:=\"\" minor-latin;mso-bidi-theme-font:minor-bidi\"=\"\">कल्याण डोंबिवली महानगरपालिका</span></u><u><span style=\"font-size:28.0pt;mso-bidi-font-size:24.0pt;line-height:115%\">, </span></u><u><span lang=\"HI\" style=\"font-size:24.0pt;mso-ansi-font-size:28.0pt;line-height:115%;\r\nfont-family:\" mangal\",serif;mso-ascii-font-family:aptos;mso-ascii-theme-font:=\"\" minor-latin;mso-hansi-font-family:aptos;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">कल्याण.</span></u></h3><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center;\"><span style=\"font-weight: bolder;\"><u><span lang=\"HI\" mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 14pt; line-height: 19.9733px;\">जलनि:सारण,विभाग</span></u></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: right; margin-left: 216pt; text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">जाक्र.</span><span lang=\"MR\" mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">कडोंमपा/काअ/जनी:/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: right; margin-left: 216pt; text-indent: 36pt;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">दिनांक:-</span><span lang=\"MR\" style=\"font-size: 0.875rem;\">&nbsp;</span><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.timestamp}}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: right; margin-left: 288pt;\"><br></p><p class=\"MsoNormal\" style=\"text-align: center;\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><span style=\"font-weight: bolder;\"><u>-: ना-हरकत दाखला :-</u></span></span><span style=\"font-weight: bolder;\"><u><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></u></span></p><p class=\"MsoNormal\"><span lang=\"MR\" mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; प्रति,</span><span mangal\",serif;mso-bidi-language:=\"\" mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.applicant_surname}} {{getval.applicant_name}} {{getval.applicant_father_or_spouse_name}} ,<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:mr\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; {{getval.zone_id}}, {{getval.place_or_division_or_village}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; वास्तुशिल्पकार:-&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.architect_name}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">विषय :-&nbsp; बांधकाम पूर्णत्वाचा दाखल्याकरीता जलनि:सारण विभागाचा ना-हरकत दाखला&nbsp;<span data-teams=\"true\">मिळणेबाबत</span>.</span><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-indent: 36pt;\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">संदर्भ :- १)&nbsp;</span><span style=\"font-size: 16px;\">आपला अर्ज&nbsp; दि. {{getval.date}}</span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; २) स.नं&nbsp;</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">/<span lang=\"HI\">&nbsp;सि.स.नं&nbsp;</span>{{getval.property_survey_no_or_city_survey_no}}<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;हिस्सा नं&nbsp;</span><span mangal\",serif;mso-bidi-language:=\"\" hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">{{getval.hissa_number}}<span lang=\"HI\">&nbsp;मौजे-&nbsp;</span>{{getval.mouje_gaon_name}}<span lang=\"HI\"></span><o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ३) बांधकाम परवानगी क्र.</span><span style=\"font-size: 16px; text-align: right; text-indent: 48px;\">कडोंमपा</span><span style=\"font-size: 12pt;\">/ नरवि/बांप/....................................................दिनांक ---------</span></p><p class=\"MsoNormal\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 16px;\">४</span><span style=\"font-size: 0.875rem;\">&nbsp;</span><span lang=\"HI\" mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\">) उप अभियंता यांचा दि.&nbsp;{{getval.inspection_date}}&nbsp;रोजीचा पाहणी अहवाल.</span></p><p class=\"MsoNormal\"><span mangal\",serif;mso-bidi-language:hi\"=\"\" style=\"font-size: 12pt; line-height: 17.12px;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><font face=\"Mangal, serif\"><span style=\"font-size: 16px;\">महोदय,</span></font></p><p class=\"MsoNormal\"><font face=\"Mangal, serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"MsoNormal\"><font face=\"Mangal, serif\"><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp;वरील विषयानुसार आपण सादर केलेल्या संदर्भिय अर्जानुसार व सोबत सादर केलेल्या बांधकाम परवानगी </span></font><span style=\"font-size: 16px;\">नकाशा</span><font face=\"Mangal, serif\"><span style=\"font-size: 16px;\">&nbsp;बांधकाम पूर्ण झालेल्या इमारतीला खालील अटी व शर्तीवर ना-हरकत दाखला प्रदान करण्यात येत आहे.</span></font></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">१) आपला भूखंड विकसित केल्यामुळे / करत असलेल्यामुळे भविष्यात शेजारील रहिवाशांना तसेच शेजारच्या भूखंडात सांडपाणी व पावसाळी पाणी साचणार नाही किंवा जाणार नाही याची संपूर्ण जबाबदारी आपल्यावर राहील. याबाबतचे तक्रार निवारण करण्याची जबाबदारी आपली राहील.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">२) रस्त्याच्या कडेला बांधण्यात येणाऱ्या / बांधलेल्या गटाराच्या भिंतीवर भविष्यात आपणास कोणत्याही प्रकारचे बांधकाम करता येणार नाही. अन्यथा तसे केल्यास ते तोडण्याचा महापालिकेच्या कायदेशीर अधिकार राहील.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">३) सदर गटार / नाला / सॅल्याब बांधकाम पूर्ण झाल्यावर महापालिकेला जागेसाहित हस्तांतरित करावयाचे आहे.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">४) आपण विकसित केलेल्या भूखंडालागत&nbsp; मोठ्या आकाराचे गटार / नाला असल्यास त्यास बाधा होईल अशी झाडे लावू नयेत.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">५) आपण बांधलेल्या गटाराची वेळोवेळी देखभाल, दुरुस्ती व साफसफाई करणे आपल्याला बंधनकारक राहील.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">६) आपल्या भूखंडालगत / भूखंडातील असलेला नाला अथवा गटार सफाईसाठी मशीन ने-आण करण्यासाठी (उदा. प्रो-क्लेन, जेसीबी, हायड्रॉ इत्यादी) तसेच सफाई कर्मचारी आपल्या संकुलामधून जाण्यास संकुलातील रहिवासी भविष्यात कुठलीही हरकत घेणार नाही. याबाबत सदनिका धारकांच्या खरेदीविक्रीच्या कारारनाम्यात अट घालणे आपल्यास बंधनकारक राहील.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">७) मशीनरी ने-आण करताना आपल्या संकुलातील कोबा अथवा रास्ता तुटणार नाही/ डॅमेज होणर नाही यासाठी ते उच्च प्रतिच्या क्ॅ क्रिटने&nbsp; अथवा उच्च प्रतीच्या खडीकरणाने व डांबरीकरणाने करण्यात यावे, जेणेकरून संकुलतील&nbsp; रहिवासी कोणत्याही प्रकारची हरकत घेणार नाहीत. कोबा अथवा रास्ता तुटल्यास त्यास महापालिका जाबाबदर राहणार नाही.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">&nbsp;८) आपण विकसित करीत असलेल्या भूखंडातून&nbsp; पाण्याचा नैसर्गिक निचरा वाहत असल्यास तो इकडील परवानगी शिवाय&nbsp;वळवू अथवा बंद करू नये. तसे केल्यास आपण कायदेशीर कारवाईस जबाबदार&nbsp;राहाल.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">९) विकसित केलेल्या भूखंडाबाबत आपण काही चुकीची माहिती दिली असल्यास व ते निदर्शनास आल्यास सदरची परवानगी रद्द करण्यात येईल व आपल्यावर योग्य ती कारवाई करण्यात येईल.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">१०) भविष्यात पावसाचे पाणी / सांडपाणी बाहेर नेणाऱ्या गटार/ नाल्याला बाधा होईल अशा कोणत्याही प्रकारचे बांधकाम करण्यात येवू नये.&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">११) भूखंडाच्या मोकळ्या जागेतून भविष्यात महापालिकेला नाला अथवा गटार बांधवायची असल्यास/नाल्याचे अथवा रुंदीकरण करावयाचे असल्यास नाल्यास अथवा गटारीस लागणारी आवश्यक तेवढी जागा महापालिकेस विनामूल्य देणे आपणावर बंधनकारक राहील.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">१२) इमारतीचे बांधकामाकरीता कोणतीही सुधारित परवानगी घेतल्यास अथवा परवानगी मध्ये बदल केल्यास सुधारित परवानगी नुसार या विभागाचा ना-हरकत दाखला घेणे आपणावर बंधानकराक आहे.</span></p><p class=\"MsoNormal\"><span style=\"font-size: 16px;\">वरीलपैकी कोणत्याही अटी व शर्तीचा भंग केल्यास मुंबई प्रांतिक महानगरपालिका १९४९&nbsp; मधील प्रकरण बाराच्या तरतुदीनुसार आपल्यावर कारवाई करण्यात येईल व सदरचा ना-हरकत दाखला आपोआप रद्द होईल. याबाबत आपणास वेगळे पत्र दिले जाणार नाही.</span></p><p class=\"MsoNormal\" style=\"text-align: right; \"><span style=\"font-size: 16px;\"><br><br><br><br>कार्यकारी अभियंता(जनि:)<br></span><span style=\"font-size: 16px;\">कल्याण डोंबिवली महानगरपालिका, कल्याण</span></p><p class=\"MsoNormal\"><font face=\"Mangal, serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"MsoNormal\"><font face=\"Mangal, serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"MsoNormal\"><font face=\"Mangal, serif\"><span style=\"font-size: 16px;\">प्रत :- मा. सहाय्यक संचालक / नगररचना</span></font><span style=\"font-size: 16px;\">का</span><font style=\"font-size: 0.875rem;\"><span style=\"font-size: 16px;\">र, नगररचना विभाग, कडोंमपा, कल्याण यांना पुढील </span></font><span style=\"font-size: 16px;\">योग्य&nbsp;</span><font style=\"font-size: 0.875rem;\"><span style=\"font-size: 16px;\">त्या कार्यवाहीसाठी सविनय सादर सस्नेह अग्रेषीत.</span></font></p></div>');

-- --------------------------------------------------------

--
-- Table structure for table `temp_data`
--

CREATE TABLE `temp_data` (
  `id` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2025-10-06 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL,
  `zone_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `username`, `password`, `email`, `mobile_no`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`, `zone_id`) VALUES
(1, '1', '$2y$10$XrxQ8KOA3C7ZR0r4OwU0Ku1m0dXiYY6FKvYrZRgqCwUfYyXzWjejS', '1@1.com', '1234567890', NULL, NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(2, 'auth1', '$2y$10$peD2dgj1tQtZBJx0c/Z3b.L6fJMHsEJHq17q4.EvgLzseUX184yGK', '1@auth1.com', '12456', NULL, NULL, '2025-10-06 00:00:00', NULL, 3, '0'),
(3, 'auth2', '$2y$10$9w9iQBBa.jcanr4mjI2Dq.KjcvBiOU706MjZnQ/c1yrw/UfAA5ZoW', '1@auth2.com', '123456', NULL, NULL, '2025-10-06 00:00:00', NULL, 4, '0'),
(4, 'auth3', '$2y$10$dJE3qawEqLjLilUgUzApP.tFVEd0eEGUnw8pPPRDwIIa6L5TAizbG', '1@auth3.com', '1234567890', NULL, NULL, '2025-10-06 00:00:00', NULL, 5, '0'),
(5, 'admin', '$2y$10$zbbGmgx6QuDtDh79Up61u.Ti1cFl8j/K4sx2/PB47lPNargSJZMvS', '1@admin.com', '1', NULL, NULL, '2025-10-06 00:00:00', NULL, 1, '1'),
(12, 'KDMCC-25-01816_11338', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'df9d006d5a1e7600be77fd214df55b97', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(13, 'KDMCC-24-02878_8725', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '1226c891b037b6217fa1d3a8b916fbee', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(14, 'KDMCC-24-01622_7445', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'ec7472b7b29b0b2c88e28695efb69374', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(15, 'KDMCC-25-87812_11796', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'bfec06b5bea228b048d6b1c38a0e161e', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(16, 'KDMCC-25-87809_11793', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '53f0c0154c16c23d45f8e29c9d0a6272', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(17, 'KDMCC-25-87814_11798', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '346cec0d0b399d43df8cf724181e69cd', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(18, 'superadmin', '$2y$10$XrxQ8KOA3C7ZR0r4OwU0Ku1m0dXiYY6FKvYrZRgqCwUfYyXzWjejS', 'superadmin@gmail.com', '8421994683', NULL, NULL, '2025-10-06 00:00:00', NULL, 6, '0'),
(19, 'KDMCC-25-87818_11802', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'f5185c10a5499dcaae5c02e2b8aefdb6', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(20, 'KDMCC-25-87820_11804', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'd94909cbf13b23a81691915f6bf7eca3', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(21, 'KDMCC-25-87815_11799', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '1ac5a25b941198d7156a98b864f1c796', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(22, 'KDMCC-25-87700_11662', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'ceead991bd83b17e6c46bb1953890437', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(23, 'KDMCC-25-87842_11827', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'eb5c06b3bb365b7736c68c8c20aa0b94', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(24, 'KDMCC-25-87819_11803', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '25a5e0c48bc30d20990f76c72f783f51', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(25, 'KDMCC-25-87821_11805', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '5133fa77738698f7a280d6a08fdb0d44', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(26, 'KDMCC-25-87829_11814', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'b0e35eb738ed730f1dd6d46055cd1064', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(27, 'commissioner_dapp', '$2y$10$ZuYxvCofUweGZkxL5agT8eVMg.VoqIkDJ.uVK.2e7esq1y7wCZkW2', 'commissioner_dapp@gmail.com', '9860914354', NULL, NULL, '2025-10-06 00:00:00', NULL, 10, '0'),
(28, 'depthod_dapp', '$2y$10$tLVOf5rrxN1xgbkywkzrMe0n1hn9kf3cbwEktOkWh6GkjLQBEZFky', 'deothod_dapp@gmail.com', '8787878787', NULL, NULL, '2025-10-06 00:00:00', NULL, 8, '0'),
(29, 'twpadmin_dapp', '$2y$10$ZoMRmAEczRnYRq08ELkIgulfCI2/gSNYLVWjI7s0bP9sBxvGULm4C', 'twpadmin_dapp@gmail.com', '9860914354', NULL, NULL, '2025-10-06 00:00:00', NULL, 9, '0'),
(30, 'KDMCC-25-87822_11806', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'e4b9881563a4078e1408acd0092fbdf1', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(31, 'KDMCC-25-87860_11847', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '71d44ddff6bab9d316f345f568d7969e', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(32, 'KDMCC-25-87825_11810', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '8860f4ccc7bcde8cdbdaf931a15874d6', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(33, 'KDMCC-25-87839_11824', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '449939b5c2a4891755011bcfee102bb5', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(34, 'KDMCC-25-ENTRY-87870', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '2edeb6b3973571be5d775cbc417f81d2', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(35, 'KDMCC-25-ENTRY-87864', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'cedcd3f4a1fd24f38029ed978b9444c9', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(36, 'KDMCC-25-ENTRY-87869', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'ea618e2f250d7065a62ea59bb195c062', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(37, 'KDMCC-25-ENTRY-87867', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '2d290afcbacda28bd858705e74e890f3', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(38, 'KDMCC-25-ENTRY-87866', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '4c123f9d20e2d2cc69cfea27023205ce', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(39, 'KDMCC-25-ENTRY-87868', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '33b3bd241d8cf5170000ec6e4f428a3b', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(40, 'KDMCC-25-ENTRY-87864_11853', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '117f72fca4f561034fedfd01d5a4b4f1', NULL, '2025-10-06 00:00:00', NULL, 2, '0'),
(41, 'KDMCC-25-87836_11821', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '32d22824b5164f0e2d12784b96c89884', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(42, 'A_JE_AUTH1', '$2y$10$j8iMSo1tYGjXNGNVtyokOOUcNsWjmwo/t3ZHQ76aH3Vf344KWazgC', 'a_je_auth1@gmail.com', '8767898762', 'c5eccb05739ca8d6df5a6f97e9949309', NULL, '2025-10-06 00:00:00', NULL, 3, 'A'),
(43, 'B_JE_AUTH1', '$2y$10$8a9e6on0JEQITAZENLF24e8emJnW0wo001JBXakXZ8JJi5C6LF1M2', 'b_je_auth1@gmail.com', '8767898789', '8b2d762f72dd8dfa58dd000d5c9f6249', NULL, '2025-10-06 00:00:00', NULL, 3, 'B'),
(44, 'B_DE_AUTH2', '$2y$10$D7F.9tquBYzZtbYP0YMtrOcDY5fSvpyvyYf7WJt8KymcmFtHfT9O6', 'b_je_auth2@gmail.com', '8767892789', '7c8473b2c2d42921d0b84367f4fb6b59', NULL, '2025-10-06 00:00:00', NULL, 4, 'B'),
(45, 'A_DE_AUTH2', '$2y$10$FoAhbgKsXZOuQxExsoJWTe.Ltzk8zCjaDsk3B9LNfxYDn5n9QYGi6', 'a_je_auth2@gmail.com', '8767898562', '17192de95b6706b9c77187f46a3abd75', NULL, '2025-10-06 00:00:00', NULL, 4, 'A'),
(46, 'EE_AUTH3', '$2y$10$QTV7Wi8/tNhvXqnoFKwTDOHMSlWfOkze6zWHbhyQz0TGT5tuoscr2', 'ee_auth3@gmail.com', '8767898562', 'dbf21bb9c10e65321df9295d8626423b', NULL, '2025-10-06 00:00:00', NULL, 5, 'A,B,C,D,E,F,G,H,I,J'),
(47, 'KDMCC-25-87841_11826', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'faaf3f8e78dafaaf7fc438b58f0863b5', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(48, 'KDMCC-25-87885_11877', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '52933a37a685cd4f08973053781014da', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(49, 'KDMCC-25-87828_11813', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '53a63c39913b558e90dc6d26254b6481', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(50, 'KDMCC-25-87888_11880', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '7bd02747d20fc4a2301d0db6a99d8ce4', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(51, 'KDMCC-25-87886_11878', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'cdebd81a0944e192ca62b25abbcf01e1', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(52, 'C_JE_AUTH1', '$2y$10$X8QEIzr2s44yWRsTxsvxuu2AIxaFpx.mb9R3AepaPGIYl3HkBnOLi', 'c_je_auth1@gmail.com', '8767898762', '48c4afe65ec2fbf975315ceacb6ef895', NULL, '2025-10-06 00:00:00', NULL, 3, 'C'),
(53, 'D_JE_AUTH1', '$2y$10$ljh.FfXYPrYiPw6SOl4Mv.5iHw6uw0ErrjJZ8aFHfwmHxgW.4QS/K', 'd_je_auth1@gmail.com', '8767898789', '65c1154de53aa860bfaa1d50bd3d0fc9', NULL, '2025-10-06 00:00:00', NULL, 3, 'D'),
(54, 'D_DE_AUTH2', '$2y$10$uwkWILBrRPcs4uFl7LJX6ectLZcI74jXnQJRTOmZiYy1UNB6e7Swy', 'd_je_auth2@gmail.com', '8767892789', NULL, NULL, '2025-10-06 00:00:00', NULL, 4, 'D'),
(55, 'C_DE_AUTH2', '$2y$10$pSt6i2QUQvemqo0y/pX0g.Ec1dTx48Cpecu1Evl9Gt9Zg79p1AU3O', 'c_je_auth2@gmail.com', '8767898562', '65fec602c77cde55008591741b63b5f9', NULL, '2025-10-06 00:00:00', NULL, 4, 'C'),
(56, 'E_JE_AUTH1', '$2y$10$3URVk1BFveghFEf73lSeYO2GFXap8d.Uu8YfPbdCvmw9mrpGO4zF2', 'e_je_auth1@gmail.com', '8767898762', NULL, NULL, '2025-10-06 00:00:00', NULL, 3, 'E'),
(57, 'F_JE_AUTH1', '$2y$10$bMLhEKTqfqWe9EBMqjBGduUb2B3cJ8W/eExw8X3HZeXlwvVT2AXpa', 'f_je_auth1@gmail.com', '8767898789', '60fb05c6e41104bfd99440bb7e29bf3f', NULL, '2025-10-06 00:00:00', NULL, 3, 'F'),
(58, 'F_DE_AUTH2', '$2y$10$TaKCDIjt.vk2nw7du7j2V.8o0Bhg/bO5VnQGB/6bfAuQvb5PvQCAK', 'f_je_auth2@gmail.com', '8767892789', NULL, NULL, '2025-10-06 00:00:00', NULL, 4, 'F'),
(59, 'E_DE_AUTH2', '$2y$10$NrWGfbt0LoZNTuuEPyi97eiuKEscdDMCZzaFG0GKf.PpB0.7/YKQC', 'e_je_auth2@gmail.com', '8767898562', NULL, NULL, '2025-10-06 00:00:00', NULL, 4, 'E'),
(60, 'G_JE_AUTH1', '$2y$10$hdzY1XQDDxNprhM94dXVYeLzr1eTiovm9sNeOdCuQ6lpEGDxeEFKq', 'g_je_auth1@gmail.com', '8767898762', NULL, NULL, '2025-10-06 00:00:00', NULL, 3, 'G'),
(61, 'H_JE_AUTH1', '$2y$10$7JLpaJVsIOayjDcmap32TO3Y/osZ1bUV9Em9XtBzJJ1WskFIfbQuy', 'h_je_auth1@gmail.com', '8767898789', NULL, NULL, '2025-10-06 00:00:00', NULL, 3, 'H'),
(62, 'H_DE_AUTH2', '$2y$10$p/ORqG5VcCH0rjmbv/eE5uKD2DStqAiIWz.ZM5gwvvB3B.P2nRNia', 'h_je_auth2@gmail.com', '8767892789', NULL, NULL, '2025-10-06 00:00:00', NULL, 4, 'H'),
(63, 'G_DE_AUTH2', '$2y$10$LhXt40eZuKjVwduSzYkum.CSHnb32QWD3T.xekW3p3gWez.PmzEvC', 'g_je_auth2@gmail.com', '8767898562', NULL, NULL, '2025-10-06 00:00:00', NULL, 4, 'G'),
(64, 'I_JE_AUTH1', '$2y$10$BLjum2mIGFaZ/nPuqsa.EugEcYB7zHcadyWOjrzNa3e8ccXUvZ23u', 'i_je_auth1@gmail.com', '8767898762', '6d71ea14ed3fae3227f54e9cb4d7fb99', NULL, '2025-10-06 00:00:00', NULL, 3, 'I'),
(65, 'J_JE_AUTH1', '$2y$10$YTfEueHpPMlUOF8FKJNvCuK2ynh9oIdVY5ixBg5ry/SOv4zmv6yPi', 'J_je_auth1@gmail.com', '8767898789', 'c319d99dcc2e3f03b6c0872b4ff8bc00', NULL, '2025-10-06 00:00:00', NULL, 3, 'J'),
(66, 'J_DE_AUTH2', '$2y$10$vWVC19omOmkRB848A0/6Ces6IPmPUKLtTJh9xqDFEvpFFCnfk4dCy', 'j_je_auth2@gmail.com', '8767892789', '497c19b0586278228291a9b2c8346f23', NULL, '2025-10-06 00:00:00', NULL, 4, 'J'),
(67, 'I_DE_AUTH2', '$2y$10$219zgHRGlr8d4cdA4UBf4uECIyQq0XpdNe3vZSk1INC9OaKrIEqxy', 'i_je_auth2@gmail.com', '8767898562', '9746edaf77a1d96a00f226225aa4abab', NULL, '2025-10-06 00:00:00', NULL, 4, 'I'),
(68, 'KDMCC-25-87889_11881', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '4e7f1831e61e0f85d4c1176256a395e4', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(69, 'KDMCC-25-87893_11885', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '88347552f96aeb871f59de79d040f342', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(70, 'KDMCC-25-87892_11884', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '3d4d57dbd055c6e1852ba5a28fd8c0ad', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(71, 'KDMCC-25-ENTRY-87897_11889', 'xyz_auto', '', '', '446594ba271fe60fc83fe05ccf6e212f', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(72, 'KDMCC-25-87890_11882', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '4a8d53be5094bc9868e76154cbbd6fbc', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(73, 'KDMCC-25-87896_11888', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '4ed6ee6fc23f2f16194de044b8fc870e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(74, 'KDMCC-25-ENTRY-87870_11860', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '4d7f6e83c982442993972df11281ddbb', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(75, 'KDMCC-25-87838_11823', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'd23cc1a4e36a2f331a2e6f90fc451c65', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(76, 'KDMCC-25-87978_11976', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'c9be299a59e8a2776a00d7be884e51d4', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(77, 'KDMCC-25-87972_11970', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '5ed65ecab2309e68fc4a6990f0bb3835', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(78, 'KDMCC-25-87984_11982', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'd2cbc5082dd62a213502f17dd7dbe25a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(79, 'ONLY_OC', 'xyz_auto', 'rohitmapankar95@gmail.com', '', '41570b8b20bd35788e491f5929800243', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(80, 'KDMCC-25-87891_11883', 'xyz_auto', 'rohitmapankar95@gmail.com', '', 'cc8b418da48b8a8297448c5362c88d06', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(81, 'KDMCC-25-118937_513440', 'xyz_auto', 'aj@jalalarchitects.com', '', 'ef0101ba4f403513cc72dd18e8cd1591', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(82, 'KDMCC-25-120462_515105', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '2fa3574a0f03f9dc810d3377f4d3e9c1', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(83, 'KDMCC-25-130802_526570', 'xyz_auto', 'aj@jalalarchitects.com', '', '059e32a567564cc7a5acd63f3a6af9a3', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(84, 'KDMCC-25-ENTRY-129478_525100', 'xyz_auto', 'rkassociates0805@gmail.com', '', '212f3d5b12a766d08db23d5172c32ce9', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(85, 'KDMCC-25-26552_413569', 'xyz_auto', 'ar.nv.office@gmail.com', '', 'e8a0de9fc7c423b7aa95148da44cf1ac', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(86, 'KDMCC-25-129403_525013', 'xyz_auto', 'deconcon009@gmail.com', '', '7bc89ea37fb5f2c0e4b4cadbeff064ba', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(87, 'KDMCC-25-87444_479168', 'xyz_auto', 'anilnirgude99@gmail.com', '', '0e2c7e37626a6773b06286524e4e2269', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(88, 'KDMCC-25-ENTRY-121475_516206', 'xyz_auto', 'keshavchikodi@hotmail.com', '', 'b96cf0a99171bf05ded5b795192d827e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(89, 'KDMCC-25-76577_467379', 'xyz_auto', 'gopinath.gandhe@gmail.com', '', '0ffd5d10f5a1a137798937c3a1287fe4', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(90, 'KDMCC-25-110092_503700', 'xyz_auto', 'ar.nv.office@gmail.com', '', '89e44048e697c1be2a9067c4cb812879', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(91, 'KDMCC-25-ENTRY-122216_517026', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '2fd3cf14c80c2a0d9c26e78d432ee3d2', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(92, 'KDMCC-25-121047_515740', 'xyz_auto', 'emergearchitect@gmail.com', '', '97fe0375e8c5c6763cb530e735ba016a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(93, 'KDMCC-25-131156_526955', 'xyz_auto', 'madangadgil@rediffmail.com', '', '6b12af5ad131c7deeb208341c31d3268', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(94, 'KDMCC-25-132392_528308', 'xyz_auto', 'emergearchitect@gmail.com', '', '733930f400edff047fd5ab94a906c3a8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(95, 'KDMCC-25-ENTRY-92934_485108', 'xyz_auto', 'deconcon009@gmail.com', '', '0019cf4dbd96351bf81e2a9d6be4c980', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(96, 'KDMCC-25-133555_529598', 'xyz_auto', 'asdaa.98.17@gmail.com', '', 'e6450520a9d33412a86119a150cd06ae', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(97, 'KDMCC-25-96066_488491', 'xyz_auto', 'ankurshetye@gmail.com', '', '728fe8b19c064940d0bbfe1e2cf81c5e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(98, 'KDMCC-25-132772_528727', 'xyz_auto', 'shraddha91188@gmail.com', '', 'b4c06b7f0c19c8e1df43c592d6a41fce', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(99, 'KDMCC-25-133966_530064', 'xyz_auto', 'damini5253@gmail.com', '', 'beec9ac54ad8488fa7bed4f9ed18d03a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(100, 'KDMCC-25-133190_529200', 'xyz_auto', 'deconcon009@gmail.com', '', 'a394544994487d6a8abd38058e4602d0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(101, 'KDMCC-25-118781_513268', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '84495757ad8e26f18c3b1746832f02f6', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(102, 'KDMCC-25-126511_521824', 'xyz_auto', 'shirish_nachane@rediffmail.com', '', '4bc499e797368ca11a57e1b6aa257a25', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(103, 'KDMCC-25-ENTRY-131725_527577', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', 'b9fa532abb28506781f87a1a978ce6df', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(104, 'KDMCC-25-125265_520422', 'xyz_auto', 'shirish_nachane@rediffmail.com', '', '50cdd16b8d6ea19c0fdc899f7fd1d59a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(105, 'KDMCC-25-ENTRY-60045_449508', 'xyz_auto', 'deconcon009@gmail.com', '', '3ea667452a90cf121ea734bd47e8c8b1', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(106, 'KDMCC-25-ENTRY-119582_514156', 'xyz_auto', 'aj@jalalarchitects.com', '', '68f49c4649bfc806c41a49445b13d13a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(107, 'KDMCC-25-112538_506410', 'xyz_auto', 'ankurshetye@gmail.com', '', '347f4ed7b0a6351edfcd45d50be51340', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(108, 'KDMCC-25-137063_533463', 'xyz_auto', 'emergearchitect@gmail.com', '', 'd93f9987666ca835045a885e666bdba5', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(109, 'KDMCC-25-133119_529123', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'ee19f3c66befd67394f5159dad281953', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(110, 'KDMCC-25-17638_404061', 'xyz_auto', 'archdeshmukh@rediffmail.com', '', '81b37f383a1cc23ecf5e5df99fc86ecc', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(111, 'KDMCC-25-136900_533281', 'xyz_auto', 'arkishan280493@gmail.com', '', '601a455efeb4233c831db57b89b7632d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(112, 'KDMCC-25-137394_533849', 'xyz_auto', 'nehanakwe23@gmail.com', '', '346c5c9abb48c753d13aa8f4292220d8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(113, 'KDMCC-25-ENTRY-136924_533305', 'xyz_auto', 'rkassociates0805@gmail.com', '', '3cd74d33d6bbd8633b5ed59ab7d77d59', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(114, 'KDMCC-25-132760_528714', 'xyz_auto', 'tonsonthomas12345@gmail.com', '', 'd37c813696de013be6ec6279d29fe144', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(115, 'KDMCC-25-83339_474705', 'xyz_auto', 'rajeev@tayshete.com', '', '359e4880eef76d970873ded5362ba884', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(116, 'KDMCC-25-133184_529194', 'xyz_auto', 'tejasnirgude@gmail.com', '', '13fe20f3faa2015d56332db5bc8f2390', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(117, 'KDMCC-25-ENTRY-133710_529779', 'xyz_auto', 'shirish_nachane@rediffmail.com', '', '44648f6d0ae2bf2b1dafa60e17c8f1c2', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(118, 'KDMCC-25-122229_517042', 'xyz_auto', 'ankurshetye@gmail.com', '', '6a35b45d61cbfb391c7523e4bfe51cce', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(119, 'KDMCC-25-139421_536112', 'xyz_auto', 'tejasnirgude@gmail.com', '', '9d38322b4892109835ed7e5fdd40c4b8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(120, 'KDMCC-25-134547_530698', 'xyz_auto', 'nehanakwe23@gmail.com', '', '14c021c376a7534cb7f49699ff025924', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(121, 'KDMCC-25-133918_530011', 'xyz_auto', 'emergearchitect@gmail.com', '', '94e6f2303db810f67aa4c3867f94d831', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(122, 'KDMCC-25-ENTRY-140948_537821', 'xyz_auto', 'ssvinayak7@rediffmail.com', '', 'c5d02e7d2e22edfbf6f4c3f256cdb452', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(123, 'KDMCC-25-138599_535204', 'xyz_auto', 'boradenikhil36@gmail.com', '', '7697a6f33f5e5e9c4b6ea5940529aa45', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(124, 'KDMCC-25-135403_531645', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'b116d2ea8c8daa736c94482ccaa77f87', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(125, 'KDMCC-25-139643_536355', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'c183280895531e5b92ebe5f3003dc0bf', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(126, 'KDMCC-25-ENTRY-136203_532533', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'cac1e17bf85a64b0c36225d2db750cc3', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(127, 'KDMCC-25-ENTRY-135338_531575', 'xyz_auto', 'anilnirgude99@gmail.com', '', '3f705f0fb199b9c675a245e870b7bebc', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(128, 'KDMCC-23-76618_208354', 'xyz_auto', 'pankajrp075@gmail.com', '', '3888c15c0307f7e0832ee3b4699857ad', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(129, 'KDMCC-25-137227_533655', 'xyz_auto', 'ar.nv.office@gmail.com', '', '35490380ad06c49d9f5fcf33ccd693db', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(130, 'KDMCC-25-136678_533039', 'xyz_auto', 'h89patil@yahoo.com', '', 'd8512c9e0b43d91ad43d24f86136dc4d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(131, 'KDMCC-25-ENTRY-141435_538357', 'xyz_auto', 'rajanmodak1955@gmail.com', '', '489067d2bb5a9ad91003fbf529f124c8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(132, 'KDMCC-25-139565_536269', 'xyz_auto', 'dmdarchitects@yahoo.com', '', 'd96d5e06a944442a3b9305468563eaf6', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(133, 'KDMCC-25-ENTRY-104630_497748', 'xyz_auto', 'archuday.satavalekar@gmail.com', '', '18a6d6e8bc3953278c01b4b763e8a6dc', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(134, 'KDMCC-25-138146_534691', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '78211f045c4ce47b98edc0e08237173a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(135, 'KDMCC-25-141707_538653', 'xyz_auto', 'aj@jalalarchitects.com', '', 'bb493180a8b2bdbd97edbdbe65d3c712', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(136, 'KDMCC-25-132834_528795', 'xyz_auto', 'ar.santoshmadan@gmail.com', '', '7682e6581245085baaed0ac97dd612a1', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(137, 'KDMCC-25-102479_495415', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '585f5fed49052606f1e3c24f9fdf4e38', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(138, 'KDMCC-25-138686_535305', 'xyz_auto', 'sandy.patil78@yahoo.com', '', 'd099c78d12ca28512f0e94b3580ebaaf', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(139, 'KDMCC-25-ENTRY-141014_537892', 'xyz_auto', 'deconcon009@gmail.com', '', '74da0c13f208664416029eaa43da770c', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(140, 'KDMCC-25-141634_538571', 'xyz_auto', 'dmdarchitects@yahoo.com', '', 'e03ba3df9110bafc6b587b4df249d7a3', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(141, 'KDMCC-25-140225_536993', 'xyz_auto', 'nehanakwe23@gmail.com', '', '0a692af897a6de5123ba84f11115e1b5', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(142, 'KDMCC-24-102443_356804', 'xyz_auto', 'rajeev@tayshete.com', '', 'c47584782d778e6fd83ce208f49b3c53', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(143, 'KDMCC-25-143031_540076', 'xyz_auto', 'sagarpalkar04@gmail.com', '', '35923dfea37381e2840fa029de42779f', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(144, 'KDMCC-23-77350_209140', 'xyz_auto', 'ucassociates29@gmail.com', '', '4df330ea6c5bdecffecdbe7ec3e0d85c', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(145, 'KDMCC-25-138122_534665', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'cd7b542083eebec54e5e8ac9eb833854', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(146, 'KDMCC-25-144183_541315', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', 'b4d0928130af1ed2b059a4374f628790', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(147, 'KDMCC-25-143994_541114', 'xyz_auto', 'boradenikhil36@gmail.com', '', 'c3c10c535ef7b290a333e70d1561fe94', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(148, 'KDMCC-25-137183_533604', 'xyz_auto', 'tejasnirgude@gmail.com', '', '6a756004a6f054220b1045779e012bb1', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(149, 'KDMCC-25-140178_536938', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'e4cf30d9bd4056ddfd74375d557c747c', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(150, 'KDMCC-25-ENTRY-69737_459972', 'xyz_auto', 'vastushilp10@yahoo.com', '', 'ae3f900625f7b1324ab1cc327e9d3f0a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(151, 'KDMCC-25-140586_537399', 'xyz_auto', 'deconcon009@gmail.com', '', '1a816f8a88a849c0f7ec2d8101bfbd25', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(152, 'KDMCC-25-ENTRY-140419_537213', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', 'a4223fb8828047c8544b494b9b68d6b0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(153, 'KDMCC-25-04162_389684', 'xyz_auto', 'rajanmodak1955@gmail.com', '', '9b7b6cd17953519a160694df8905d860', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(154, 'KDMCC-25-138297_534861', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'c9e6181ab6b26f299baafc6f8a941b08', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(155, 'KDMCC-24-09140_257246', 'xyz_auto', 'ankurshetye@gmail.com', '', '06e033fe86174e8770fee67ac69ac836', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(156, 'KDMCC-24-95306_349176', 'xyz_auto', 'anilnirgude99@gmail.com', '', '8b1f754d7b86e41fcafa6e655ad04daa', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(157, 'KDMCC-25-51655_440490', 'xyz_auto', 'archdeshmukh@rediffmail.com', '', '73b43c6039ea15599c897532af1a6a67', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(158, 'KDMCC-25-132996_528976', 'xyz_auto', 'ar.nv.office@gmail.com', '', 'ed541f03f09f751e105c100074c5ddef', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(159, 'KDMCC-25-143431_540500', 'xyz_auto', 'dudhe.nikhil@gmail.com', '', 'd6980a31b22632590069690119100f9b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(160, 'KDMCC-25-ENTRY-142890_539927', 'xyz_auto', 'shirish_nachane@rediffmail.com', '', '580a63d5b3daef42afa62ec74baaae62', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(161, 'KDMCC-25-132645_528586', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'a8728bde789cef197533bbe82a6f6e45', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(162, 'KDMCC-25-140206_536975', 'xyz_auto', 'aj@jalalarchitects.com', '', '287bcff278fdadd0539214f4f1208fce', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(163, 'KDMCC-25-ENTRY-88210_480002', 'xyz_auto', 'nirmitee.arcint@gmail.com', '', 'ac8ad445cd50d868be8eb80178f68da1', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(164, 'KDMCC-25-ENTRY-145146_542350', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'fd57a825f3b99701d771c653e0d52a53', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(165, 'KDMCC-25-145598_542826', 'xyz_auto', 'sagarpalkar04@gmail.com', '', '4c4eb1cdeb90f6444a909b694a3363a6', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(166, 'KDMCC-25-ENTRY-131270_527080', 'xyz_auto', 'shirish_nachane@rediffmail.com', '', 'd65c790d0b0d03fe72dd9487dee19c19', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(167, 'KDMCC-26-00504_544929', 'xyz_auto', 'ar.nv.office@gmail.com', '', '48627a6c6a6ef6a1ab5c0f3ef2674d48', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(168, 'KDMCC-24-ENTRY-44955_295261', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '0773fd111fb5d612643cae78060ffd02', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(169, 'KDMCC-25-145478_542696', 'xyz_auto', 'aditya.agte@gmail.com', '', '3a7de7cf2d2bdeb54be2f95755f2a2e7', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(170, 'KDMCC-25-142629_539647', 'xyz_auto', 'emergearchitect@gmail.com', '', 'a1dcbc7c4487bd5a7aff306490268056', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(171, 'KDMCC-25-ENTRY-135547_531802', 'xyz_auto', 'madangadgil@rediffmail.com', '', 'ad7684f91fd2d72785c632a90a10588d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(172, 'KDMCC-25-139410_536099', 'xyz_auto', 'paranjapemadh@gmail.com', '', 'b2361f70a871842965f6bc8bf9816464', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(173, 'KDMCC-25-126060_521329', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', 'b33dbddecfb55affa756267a20f4fdda', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(174, 'KDMCC-25-146919_544259', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'bb91ca3d30c74839d1e01962d0eb6c4c', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(175, 'KDMCC-25-145628_542856', 'xyz_auto', 'sagarpalkar04@gmail.com', '', 'bf84a277d5fb14597a867b66524b7f87', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(176, 'KDMCC-25-ENTRY-134977_531173', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'c429fcd5db0a00ba3830c1cd72f9fc50', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(177, 'KDMCC-25-130873_526650', 'xyz_auto', 'madangadgil@rediffmail.com', '', '2cd917d058efe11f4c573376c35036dd', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(178, 'KDMCC-25-ENTRY-117519_511859', 'xyz_auto', 'rajanmodak1955@gmail.com', '', 'c1b2042a923addad91e6a95bfd8af293', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(179, 'KDMCC-25-122090_516887', 'xyz_auto', 'darshana.2104@gmail.com', '', '47127fc62fe94cdf1ff0c81bb27f5bc4', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(180, 'KDMCC-26-00405_544823', 'xyz_auto', 'rkassociates0805@gmail.com', '', '62c37031148df96244eaee2a54b9a6fc', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(181, 'KDMCC-25-ENTRY-108836_502330', 'xyz_auto', 'nirmitee.arcint@gmail.com', '', '4a4f8c4d0e624f0f965b67e296e28999', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(182, 'KDMCC-25-144406_541552', 'xyz_auto', 'sugatvivekarchitects@gmail.com', '', 'bf4b8fe56c7f7004e0e144608b509b4c', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(183, 'KDMCC-26-01862_546412', 'xyz_auto', 'dmdarchitects@yahoo.com', '', 'fdbe7f8c8cf3011c717eeb72be1782a4', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(184, 'KDMCC-26-ENTRY-01934_546493', 'xyz_auto', 'aone.architects1@gmail.com', '', 'f23ce69be8bfdeb26e7ba0eb703b4638', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(185, 'KDMCC-26-04691_549440', 'xyz_auto', 'pankajrp075@gmail.com', '', '76b10e806480b0cb4341c4461b5ba417', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(186, 'KDMCC-26-ENTRY-02706_547316', 'xyz_auto', 'aayojanarchint@gmail.com', '', '04f13a34d84fc3f1c8f1fcb528117dfa', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(187, 'KDMCC-25-91199_483251', 'xyz_auto', 'shraddha91188@gmail.com', '', '9b9d1c6ecf70b4e9a1870bbfae05c86a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(188, 'KDMCC-25-136618_532977', 'xyz_auto', 'tejasnirgude@gmail.com', '', '72f46ba978d83d217a74c533acd8abfe', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(189, 'KDMCC-26-ENTRY-01617_546135', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'd0143185b37189407bc17d7b04e7e948', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(190, 'KDMCC-26-07142_552085', 'xyz_auto', 'vrs.roshan@gmail.com', '', '9b0432110c817a04ebed1450f195cc40', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(191, 'KDMCC-26-ENTRY-00360_544777', 'xyz_auto', 'designteam@creations.org.in', '', '52d23b31ecaa56ca346d60b8c62b12ab', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(192, 'KDMCC-25-142378_539377', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '5ef84a6c3bc0b380acf826f1e14da04d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(193, 'KDMCC-25-ENTRY-144858_542034', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '78477370fc3afd5f32232c024ea20eb9', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(194, 'KDMCC-26-01792_546334', 'xyz_auto', 'tejasnirgude@gmail.com', '', '6f661a62ca6da1026a3d26eaeef2f6ea', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(195, 'KDMCC-26-07856_552869', 'xyz_auto', 'deconcon009@gmail.com', '', '69d603be57d3cc5a894145c731a88dea', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(196, 'KDMCC-25-ENTRY-09321_395147', 'xyz_auto', 'ar.santoshmadan@gmail.com', '', '70764fbbda0b1d1b2de4ce2f4c6191be', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(197, 'KDMCC-26-02858_547479', 'xyz_auto', 'emergearchitect@gmail.com', '', '605b99b507adee1053ee98fcf4bf4db0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(198, 'KDMCC-26-01214_545700', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '188eea5f657dff61895620d3e5a59fff', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(199, 'KDMCC-26-ENTRY-08151_553196', 'xyz_auto', 'rkassociates0805@gmail.com', '', '7faba0c997828f612f0dfbb27fccd844', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(200, 'KDMCC-24-90281_343820', 'xyz_auto', 'pgredekar@gmail.com', '', '2b61e05eaace229b6f095d6fd1042f23', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(201, 'KDMCC-25-139504_536202', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '3e6a7320c7e642cde1c9746d06257e55', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(202, 'KDMCC-26-ENTRY-02863_547484', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '2ba47cf70ec35764355d158289e0fad1', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(203, 'KDMCC-26-04586_549314', 'xyz_auto', 'aj@jalalarchitects.com', '', '135283ef3874122749d73a6e8c46060d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(204, 'KDMCC-26-ENTRY-00368_544785', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '1b10ddd5ebd33a5b41fcf05bfae3b04d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(205, 'KDMCC-26-ENTRY-09291_554450', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', 'd2e07780236ffbd0c39141e32c527140', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(206, 'KDMCC-26-ENTRY-12134_557541', 'xyz_auto', 'tejasnirgude@gmail.com', '', '750a63e5b0eb9aedd0eeded71fd34474', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(207, 'KDMCC-26-11883_557268', 'xyz_auto', 'tejasnirgude@gmail.com', '', '6ce834f5fad6de8a4487e206d3f4a385', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(208, 'KDMCC-26-06965_551901', 'xyz_auto', 'architectvp.mumbai@gmail.com', '', 'f631de59ae9eae7219ad9eecf1c7163e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(209, 'KDMCC-26-09625_554818', 'xyz_auto', 'aone.architects1@gmail.com', '', '78736e553ee5282ff1db409c4b960703', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(210, 'KDMCC-26-13168_558654', 'xyz_auto', 'shirish_nachane@rediffmail.com', '', 'f39de375f7449f371668343ed7ad3df0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(211, 'KDMCC-26-06911_551843', 'xyz_auto', 'designteam@creations.org.in', '', '910eaea1a4468d5b2e3524af6380c877', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(212, 'KDMCC-26-12575_558022', 'xyz_auto', 'boradenikhil36@gmail.com', '', 'aab706f3099462ab48042e2dccf65330', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(213, 'KDMCC-26-05386_550189', 'xyz_auto', 'ar.nv.office@gmail.com', '', 'f7557f737662d20d292b0dd7de69fa94', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(214, 'KDMCC-26-15148_560784', 'xyz_auto', 'sumitalwagh@yahoo.com', '', '7561df9aa5cc9c55dcca1558a0e02e72', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(215, 'KDMCC-26-11843_557226', 'xyz_auto', 'ivisiondesignstudio@gmail.com', '', 'ed3de79204300c3c4879d623117cfda7', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(216, 'KDMCC-25-143979_541097', 'xyz_auto', 'arsandeep21@gmail.com', '', 'd23225a6a51edf837e5c667917a244de', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(217, 'KDMCC-26-11847_557230', 'xyz_auto', 'archuday.satavalekar@gmail.com', '', 'cd5289dfbe913665563d027f654ef53f', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(218, 'KDMCC-26-03381_548037', 'xyz_auto', 'deconcon009@gmail.com', '', '7e66190bd3f03db783fb1e9022b321bd', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(219, 'KDMCC-26-14988_560613', 'xyz_auto', 'nehanakwe23@gmail.com', '', 'e41eb0caf897f30106c0628e04dc721d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(220, 'KDMCC-26-ENTRY-16250_561981', 'xyz_auto', 'ucassociates29@gmail.com', '', '114bb9e253512451f2535d4dad885d38', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(221, 'KDMCC-26-08301_553356', 'xyz_auto', 'ar.prajaktalaxmanchavan@gmail.com', '', '3f5d9ceb3511b372acec44901206a6b8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(222, 'KDMCC-26-ENTRY-16227_561954', 'xyz_auto', 'phonemail9898@gmail.com', '', '43035959d087880030c7b9c2dbf41463', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(223, 'KDMCC-26-14385_559961', 'xyz_auto', 'deconcon009@gmail.com', '', '23a59437003ca5daf285749bb97e5e7f', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(224, 'KDMCC-26-05472_550280', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'f3b720e9d83ebd119c24a0cbcd032dbc', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(225, 'KDMCC-26-00098_544496', 'xyz_auto', 'emergearchitect@gmail.com', '', '932f1891e7c752de6028714389f2fd76', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(226, 'KDMCC-26-00111_544510', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '18d031f8062aa548c7e6dd5522d1424e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(227, 'KDMCC-25-145754_542991', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '98ba8bc579c0398b3d543d4959e41e96', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(228, 'KDMCC-26-13876_559415', 'xyz_auto', 'deconcon009@gmail.com', '', '359772203adc665f5f985212d852a5a7', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(229, 'KDMCC-26-03657_548331', 'xyz_auto', 'tejasnirgude@gmail.com', '', '36c1dfad25fa5a0443dc7b8cc89a3cbd', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(230, 'KDMCC-25-137330_533774', 'xyz_auto', 'sandy.patil78@yahoo.com', '', 'cde9544f312c1f56ba1307ec6ea99602', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(231, 'KDMCC-26-18505_564514', 'xyz_auto', 'boradenikhil36@gmail.com', '', 'b01f802da9d445be387336bce95bcb8d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(232, 'KDMCC-26-19956_566054', 'xyz_auto', 'boradenikhil36@gmail.com', '', '0f4f12afd9028aa8286f33bc45fd596b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(233, 'KDMCC-23-39493_168745', 'xyz_auto', 'akash94sonawane@gmail.com', '', '54c3ddf4669590d884eac4921eba0fd7', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(234, 'KDMCC-24-102437_356797', 'xyz_auto', 'dmdarchitects@yahoo.com', '', 'f16a155ce7142e39010655b6d782d1d0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(235, 'KDMCC-24-117939_373433', 'xyz_auto', 'megha.bagrao@gmail.com', '', '868f3131c634ce93d17b7b1c29d27f33', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(236, 'KDMCC-22-ENTRY-08077_29692', 'xyz_auto', 'deconcon009@gmail.com', '', '799eea14cb72474d185b21ee3e48a6b8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(237, 'KDMCC-23-28820_157395', 'xyz_auto', 'ankurshetye@gmail.com', '', '1884a973d0c4413ecc730059ebf5938b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(238, 'KDMCC-26-08723_553829', 'xyz_auto', 'tejasnirgude@gmail.com', '', '20a2722dfdcd1661139a7f9387760789', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(239, 'KDMCC-22-23886_46085', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', 'f75bf7c5af9c05fb54b4b72909158224', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(240, 'KDMCC-26-09658_554856', 'xyz_auto', 'aone.architects1@gmail.com', '', '1d8ff84d0af701e11cedd9c2dfadadf6', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(241, 'KDMCC-25-131620_527462', 'xyz_auto', 'chandrakant.auti@yahoo.com', '', '61fac687eab641c591d53571c9df516d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(242, 'KDMCC-25-139933_536672', 'xyz_auto', 'tejasnirgude@gmail.com', '', '85b6d8f0fffa57e4a1c348257ea27343', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(243, 'KDMCC-26-ENTRY-16552_562335', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', 'ab0fa7f1dbf93964aed596369eecefdb', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(244, 'KDMCC-26-21082_567330', 'xyz_auto', 'patel.nitiksha@gmail.com', '', '87a256e4e0cd70cb8d6cc83da3c88586', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(245, 'KDMCC-26-02507_547103', 'xyz_auto', 'saakaararchitects@yahoo.co.in', '', 'b5845ebec3c10089bdcd9c8afa738a14', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(246, 'KDMCC-26-ENTRY-13332_558829', 'xyz_auto', 'arsandeep21@gmail.com', '', 'acc13115d9cc47d59bd837d5ffbc7996', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(247, 'KDMCC-26-22055_568505', 'xyz_auto', 'akash94sonawane@gmail.com', '', '1825edc2ef3f1623011390b6bdf7dfa6', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(248, 'KDMCC-26-20209_566332', 'xyz_auto', 'yash210995@gmail.com', '', '10d8aa96d998833ce931f7a9fadeb501', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(249, 'KDMCC-25-96582_489049', 'xyz_auto', 'shehbazmoulvi@gmail.com', '', '78b84b1d73122206758edb603c9519d0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(250, 'KDMCC-26-ENTRY-10603_555881', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '34766ca07c150f034c577d3c0890cb7d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(251, 'KDMCC-26-19069_565113', 'xyz_auto', 'tejasnirgude@gmail.com', '', '8c82686c78c4feb55688332caa6955e9', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(252, 'KDMCC-26-23418_570047', 'xyz_auto', 'deconcon009@gmail.com', '', 'e6ebd812547fca8c73171799611e0f34', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(253, 'KDMCC-25-ENTRY-67181_457211', 'xyz_auto', 'shindepramodr985@gmail.com', '', '1e1515b0e2cc46118af4c439a3fb4cbf', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(254, 'KDMCC-26-ENTRY-09257_554409', 'xyz_auto', 'tejasnirgude@gmail.com', '', '7bd8d03ee59d3baa340ea65fff2bbacb', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(255, 'KDMCC-25-131502_527333', 'xyz_auto', 'h89patil@yahoo.com', '', 'c2622084ec26762c0e67c42dc64c977b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(256, 'KDMCC-25-ENTRY-16097_402426', 'xyz_auto', 'sbaoffice2023@gmail.com', '', 'dfee4768658d1fa1cd53719de397b53a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(257, 'KDMCC-24-103526_357956', 'xyz_auto', 'arsandeep21@gmail.com', '', 'bc9824a577d0fd476a0246f833cca04a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(258, 'KDMCC-24-104858_359385', 'xyz_auto', 'arsandeep21@gmail.com', '', '3c75d856ac1ad1d59229107898669db4', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(259, 'KDMCC-25-24500_411368', 'xyz_auto', 'arsandeep21@gmail.com', '', '06e490513d1e23589dee4229e137fb83', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(260, 'KDMCC-26-23909_570599', 'xyz_auto', 'boradenikhil36@gmail.com', '', 'bc54ffd5d22f61186f370048ca2a97ed', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(261, 'KDMCC-26-19641_565718', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '18d23c6516ed0d01a46ff974c08488c2', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(262, 'KDMCC-26-24678_571427', 'xyz_auto', 'ar.ujwaljamdare@gmail.com', '', '6e7784921ae82f53b9ad03e0da1760f3', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(263, 'KDMCC-26-ENTRY-07871_552886', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '980cf3cd89b9ad544c1215a1f8a020f9', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(264, 'KDMCC-26-21076_567324', 'xyz_auto', 'akash94sonawane@gmail.com', '', '25437f44fccc95b307f693c385a47fe0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(265, 'KDMCC-25-ENTRY-35838_423452', 'xyz_auto', 'tripathibinod1974@gmail.com', '', '2c04082b0b6f75132b1d9a100c4a896a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(266, 'KDMCC-25-ENTRY-135347_531585', 'xyz_auto', 'deconcon009@gmail.com', '', 'ba3863397e10569b35fda6cc14f7fb10', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(267, 'KDMCC-25-ENTRY-101065_493865', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '23c55103fa7ab382e93d605639d4d833', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(268, 'KDMCC-26-ENTRY-22833_569400', 'xyz_auto', 'deconcon009@gmail.com', '', '25c05554c032f09ea40f5c30c018fa28', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(269, 'KDMCC-26-26667_573577', 'xyz_auto', 'emergearchitect@gmail.com', '', '9b35bd64c038e9101d9a2ef3b841ffb3', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(270, 'KDMCC-26-15509_561182', 'xyz_auto', 'rafiq@siapl.com', '', '1a957b771f3992ffaed4800ec6d3b7fa', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(271, 'KDMCC-26-21320_567627', 'xyz_auto', 'arsandeep21@gmail.com', '', 'f067ed6f1f214a20530546ad17b1aa27', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(272, 'KDMCC-26-20974_567209', 'xyz_auto', 'boradenikhil36@gmail.com', '', '1db69a5f71327e3141d55bfd17682aa0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(273, 'KDMCC-26-ENTRY-21995_568430', 'xyz_auto', 'yashv.patil9997@gmail.com', '', 'd3f3d33a46a0d6afa15f871977b91292', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(274, 'KDMCC-26-ENTRY-27251_574204', 'xyz_auto', 'architects.incorporate@rediffmail.com', '', 'a1167b32dae5b8ae4314a1990d2b4a1d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(275, 'KDMCC-26-27894_574898', 'xyz_auto', 'ar.deeppatel2023@gmail.com', '', '238c47d14500b50949a3affd8f7a1e0c', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(276, 'KDMCC-25-ENTRY-126886_522233', 'xyz_auto', 'shehbazmoulvi@gmail.com', '', '016da5b69101cb9f813e26518c4c0e8b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(277, 'KDMCC-25-ENTRY-145207_542415', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '10e45dec453d8541be04bc14d8d063b5', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(278, 'KDMCC-26-ENTRY-21892_568311', 'xyz_auto', 'deconcon009@gmail.com', '', 'f08771ffa1be364677bd1cd715cda4cf', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(279, 'KDMCC-26-ENTRY-27556_574535', 'xyz_auto', 'deconcon009@gmail.com', '', '9522bc8aceb108fc6ecaf37ab84329bd', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(280, 'KDMCC-26-16098_561815', 'xyz_auto', 'priyadinodiya18@gmail.com', '', 'e369107b3842d178521b081c5b688906', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(281, 'KDMCC-26-24580_571324', 'xyz_auto', 'emergearchitect@gmail.com', '', 'ea0cf1efd94e8d06ccbd11e18fb37ab0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(282, 'KDMCC-26-28797_575883', 'xyz_auto', 'rajanmodak1955@gmail.com', '', '3d74fb3c4026e029d2b5a8a5b9ccc638', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(283, 'KDMCC-26-ENTRY-23701_570363', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'd7173e77b815d51647bdebd8eeecccf6', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(284, 'KDMCC-24-ENTRY-82170_335109', 'xyz_auto', 'ankurshetye@gmail.com', '', '43182edfe61d07ffc3c8fe333a886376', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(285, 'KDMCC-25-114952_509025', 'xyz_auto', 'tushar_tendolkar@yahoo.co.in', '', '7825920451894574bd336838cffc5f1e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(286, 'KDMCC-24-33985_283482', 'xyz_auto', 'tushar_tendolkar@yahoo.co.in', '', '6ca3057d483187f0904ffea5ebe7940f', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(287, 'KDMCC-25-111144_504853', 'xyz_auto', 'tushar_tendolkar@yahoo.co.in', '', 'eb93cc099aeb7563b9f0cb291e993ba3', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(288, 'KDMCC-26-24905_571675', 'xyz_auto', 'asdaa.98.17@gmail.com', '', 'b8d2053c568b89d05fab3802b20cc151', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(289, 'KDMCC-25-ENTRY-87355_479074', 'xyz_auto', 'aj@jalalarchitects.com', '', '75df48bf73e48bd763f8af85e4abbb98', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(290, 'KDMCC-26-28805_575891', 'xyz_auto', 'yash210995@gmail.com', '', '54dc27c1058f35c97edb92213211d9ee', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(291, 'KDMCC-26-25227_572028', 'xyz_auto', 'archdeshmukh@rediffmail.com', '', 'f8e6e3917971511d36258500bebc9db2', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(292, 'KDMCC-23-75035_206668', 'xyz_auto', 'brid.shreyas@gmail.com', '', '3cff8296c1ab952a1ee176696f6388ed', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(293, 'KDMCC-26-ENTRY-21284_567582', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'b233b221a2b80cd23194af486c3548d8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(294, 'KDMCC-26-ENTRY-22416_568923', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '59a9827eca50af2c99873421c1538c07', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(295, 'KDMCC-26-23207_569819', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '5bef0163dff5acf453d42d3f1cfb30d3', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(296, 'KDMCC-26-ENTRY-28101_575120', 'xyz_auto', 'deconcon009@gmail.com', '', '743b431e3c02b77968dbbb69c00a16f0', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(297, 'KDMCC-26-29072_576187', 'xyz_auto', 'gopinath.gandhe@gmail.com', '', 'bb578eba27df13c0f3ea5eba0b1b6cf7', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(298, 'KDMCC-26-30960_578251', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '87af5411087cd8c74e200d351dc8d40a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(299, 'KDMCC-25-ENTRY-89005_480846', 'xyz_auto', 'dt.architect@rediffmail.com', '', '1fd050d96603d4ca709d5eda76e663b8', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(300, 'KDMCC-23-59065_189570', 'xyz_auto', 'tripathibinod1974@gmail.com', '', '93b3cbf2cd3f09a86e25219f05e0d6ea', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(301, 'KDMCC-25-123567_518508', 'xyz_auto', 'tushar_tendolkar@yahoo.co.in', '', '6522b0a857b57ef70545101e17df866f', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(302, 'KDMCC-26-21491_567831', 'xyz_auto', 'tejasnirgude@gmail.com', '', '956709d10afc56542c6917dd22919d12', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(303, 'KDMCC-26-32513_579924', 'xyz_auto', 'ar.ujwaljamdare@gmail.com', '', 'd08c79025851a4a82de1c303f130334b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(304, 'KDMCC-26-28828_575916', 'xyz_auto', 'kkkamble@yahoo.com', '', '8f450bc4e16eb23ef8424e9665e23e07', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(305, 'KDMCC-26-32533_579945', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '9a4636935d69ddcafaa8ed53a6dcf399', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(306, 'KDMCC-26-27901_574905', 'xyz_auto', 'ar.santoshmadan@gmail.com', '', '4f1f1ba4fac4ba7d3a7bb4eddebd7f2e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(307, 'KDMCC-26-ENTRY-33141_580596', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'bd0d2d6c6026a5462b54d362a437978b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(308, 'KDMCC-26-33221_580682', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', 'bba7cbd3999bd8af5c4045ae0ea74936', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(309, 'KDMCC-26-21907_568331', 'xyz_auto', 'ar.santoshmadan@gmail.com', '', 'd9ff040c01978f7f1c3f213a845a3384', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(310, 'KDMCC-26-06718_551637', 'xyz_auto', 'tejasnirgude@gmail.com', '', 'abbc091f26528ea89be1a2ec5f6eda7e', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(311, 'KDMCC-26-33051_580499', 'xyz_auto', 'ar.ujwaljamdare@gmail.com', '', 'a09e4f26eec2860594f87b54c6bd8eba', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(312, 'KDMCC-25-ENTRY-135156_531377', 'xyz_auto', 'deconcon009@gmail.com', '', '32e14b60fda6f227a163a7b9111986fd', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(313, 'KDMCC-26-29053_576168', 'xyz_auto', 'tejasnirgude@gmail.com', '', '401958fc0e12142f0af99f88c08f3188', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(314, 'KDMCC-26-19129_565173', 'xyz_auto', 'designteam@creations.org.in', '', 'b242e117d0dcf13fba3e1e679fe18734', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(315, 'KDMCC-26-34449_582006', 'xyz_auto', 'gopinath.gandhe@gmail.com', '', '70d8174a70e933cabd2d68f102c9e90a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(316, 'KDMCC-26-34485_582044', 'xyz_auto', 'gopinath.gandhe@gmail.com', '', '11ad94271b7b59bbdf81926031059944', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(317, 'KDMCC-26-ENTRY-11956_557348', 'xyz_auto', 'deconcon009@gmail.com', '', 'e5bcc474ae0112d97f1c8e3beb98bf44', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(318, 'KDMCC-25-ENTRY-143697_540785', 'xyz_auto', 'ar.santoshmadan@gmail.com', '', '8b5570b3304d0ecf0dfd34ebecc5c1fb', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(319, 'KDMCC-26-34819_582401', 'xyz_auto', 'boradenikhil36@gmail.com', '', '9222e4227b1075833e51377b1ce0a057', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(320, 'KDMCC-25-134180_530299', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '3db349793319bd7ed7467dab3cff578d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(321, 'KDMCC-22-ENTRY-69883_94509', 'xyz_auto', 'asdaa.98.17@gmail.com', '', '53c9e29ef3a17832f8ded5115d8cdf76', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(322, 'KDMCC-25-120139_514761', 'xyz_auto', 'vijaypandeyandassociates@gmail.com', '', '67288e16ac7b1c37c1af573fb9be994d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(323, 'KDMCC-25-136359_532698', 'xyz_auto', 'ar.santoshmadan@gmail.com', '', '8d871ddaf9379bf60023bde48cf90e4d', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(324, 'KDMCC-26-36594_584356', 'xyz_auto', 'akash94sonawane@gmail.com', '', 'f0adcc12bfa45c36b088c83fb74a5a30', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(325, 'KDMCC-26-32219_579615', 'xyz_auto', 'phonemail9898@gmail.com', '', 'b6619ff176624e293d5bdabd8ab2649b', NULL, '2025-10-06 00:00:00', NULL, 2, '');
INSERT INTO `user_info` (`id`, `username`, `password`, `email`, `mobile_no`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`, `zone_id`) VALUES
(326, 'KDMCC-26-12910_558381', 'xyz_auto', 'surajandhareassociates@gmail.com', '', 'd3cb667794a8a409fad600c7851610ad', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(327, 'KDMCC-26-35423_583065', 'xyz_auto', 'vrs.roshan@gmail.com', '', '4173657939115b045d834d402be7bd6a', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(328, 'KDMCC-25-ENTRY-142928_539965', 'xyz_auto', 'ucassociates29@gmail.com', '', 'aa356bcf62da6c609770fee46ecf7aac', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(329, 'KDMCC-26-ENTRY-16775_562601', 'xyz_auto', 'designteam@creations.org.in', '', '43a1e929693a8506895a9f0c0119d91b', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(330, 'KDMCC-26-ENTRY-32463_579872', 'xyz_auto', 'kkkamble@yahoo.com', '', 'd073e5ab33aca1e2c388192044c72671', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(331, 'KDMCC-26-ENTRY-26833_573764', 'xyz_auto', 'sthapathyanirmaan@gmail.com', '', '872f5012af22999440ab651b5f107064', NULL, '2025-10-06 00:00:00', NULL, 2, ''),
(332, 'KDMCC-25-ENTRY-56227_445390', 'xyz_auto', 'ar.santoshmadan@gmail.com', '', '8e70c50c9f69173eb8e8e375514d3d02', NULL, '2025-10-06 00:00:00', NULL, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `zone_master`
--

CREATE TABLE `zone_master` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zone_master`
--

INSERT INTO `zone_master` (`id`, `zone`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H'),
(9, 'I'),
(10, 'J');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accept_reject`
--
ALTER TABLE `accept_reject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_form`
--
ALTER TABLE `application_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_mapping`
--
ALTER TABLE `application_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate_upload`
--
ALTER TABLE `certificate_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drainage_noc_jal_cc`
--
ALTER TABLE `drainage_noc_jal_cc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drainage_noc_jal_cc_deleted`
--
ALTER TABLE `drainage_noc_jal_cc_deleted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drainage_noc_jal_oc`
--
ALTER TABLE `drainage_noc_jal_oc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drainage_noc_mal_cc`
--
ALTER TABLE `drainage_noc_mal_cc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drainage_noc_mal_cc_deleted`
--
ALTER TABLE `drainage_noc_mal_cc_deleted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drainage_noc_mal_oc`
--
ALTER TABLE `drainage_noc_mal_oc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspection_form`
--
ALTER TABLE `inspection_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `label_names`
--
ALTER TABLE `label_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_property_structure_type_jalmal`
--
ALTER TABLE `master_property_structure_type_jalmal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_property_type_jalmal`
--
ALTER TABLE `master_property_type_jalmal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_property_usage`
--
ALTER TABLE `master_property_usage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_election_ward`
--
ALTER TABLE `m_election_ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_zone_property`
--
ALTER TABLE `m_zone_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `service_configuration`
--
ALTER TABLE `service_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_data`
--
ALTER TABLE `temp_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tablename` (`tablename`),
  ADD KEY `field` (`field`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_master`
--
ALTER TABLE `zone_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accept_reject`
--
ALTER TABLE `accept_reject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_form`
--
ALTER TABLE `application_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_mapping`
--
ALTER TABLE `application_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `certificate_upload`
--
ALTER TABLE `certificate_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drainage_noc_jal_cc`
--
ALTER TABLE `drainage_noc_jal_cc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drainage_noc_jal_cc_deleted`
--
ALTER TABLE `drainage_noc_jal_cc_deleted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drainage_noc_jal_oc`
--
ALTER TABLE `drainage_noc_jal_oc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drainage_noc_mal_cc`
--
ALTER TABLE `drainage_noc_mal_cc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drainage_noc_mal_cc_deleted`
--
ALTER TABLE `drainage_noc_mal_cc_deleted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drainage_noc_mal_oc`
--
ALTER TABLE `drainage_noc_mal_oc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspection_form`
--
ALTER TABLE `inspection_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `label_names`
--
ALTER TABLE `label_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_property_structure_type_jalmal`
--
ALTER TABLE `master_property_structure_type_jalmal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_property_type_jalmal`
--
ALTER TABLE `master_property_type_jalmal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_property_usage`
--
ALTER TABLE `master_property_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_election_ward`
--
ALTER TABLE `m_election_ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `m_zone_property`
--
ALTER TABLE `m_zone_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13222;

--
-- AUTO_INCREMENT for table `service_configuration`
--
ALTER TABLE `service_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_data`
--
ALTER TABLE `temp_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `zone_master`
--
ALTER TABLE `zone_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
