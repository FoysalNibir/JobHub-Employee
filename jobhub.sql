-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 03:02 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `addjobinfos`
--

CREATE TABLE `addjobinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `context` text COLLATE utf8mb4_unicode_ci,
  `responsibilities` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salaryrange` int(11) DEFAULT NULL,
  `salarytype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `negotiable` int(11) DEFAULT '1',
  `addsalaryinfo` text COLLATE utf8mb4_unicode_ci,
  `salaryreview` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `festivebonus` int(11) DEFAULT NULL,
  `others` text COLLATE utf8mb4_unicode_ci,
  `jobinfo_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addjobinfos`
--

INSERT INTO `addjobinfos` (`id`, `level`, `context`, `responsibilities`, `location`, `area`, `salaryrange`, `salarytype`, `negotiable`, `addsalaryinfo`, `salaryreview`, `festivebonus`, `others`, `jobinfo_id`, `created_at`, `updated_at`, `division`) VALUES
(1, 'top', 'Example Job Context', 'Example Job Responsibilities', 'inbd', 'Banani Dhaka', 5000, 'daily', 1, 'Example Additional Salary Information', 'yearly', 2, 'Example Others', 1, '2018-09-08 05:42:14', '2018-09-08 05:42:14', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `addjobinfo_benefit`
--

CREATE TABLE `addjobinfo_benefit` (
  `addjobinfo_id` int(11) DEFAULT NULL,
  `benefit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addjobinfo_benefit`
--

INSERT INTO `addjobinfo_benefit` (`addjobinfo_id`, `benefit_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `armyemployments`
--

CREATE TABLE `armyemployments` (
  `id` int(10) UNSIGNED NOT NULL,
  `ba` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arm` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc` date DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `armyemployments`
--

INSERT INTO `armyemployments` (`id`, `ba`, `type`, `rank`, `arm`, `trade`, `course`, `doc`, `dor`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'BA5555', 'jco', '2Lt', 'EB', 'Example trade', 'ISSB', '1998-08-08', '2013-08-08', 1, '2018-09-12 07:08:47', '2018-09-12 07:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(10) UNSIGNED NOT NULL,
  `benefit` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `benefit`, `created_at`, `updated_at`) VALUES
(1, 'No Benefits', '2018-09-06 11:34:52', NULL),
(2, 'T/A', '2018-09-06 11:34:52', NULL),
(3, 'Mobile Bill', '2018-09-06 11:34:52', NULL),
(4, 'Pension Policy', '2018-09-06 11:34:52', NULL),
(5, 'Tour Allowance', '2018-09-06 11:34:52', NULL),
(6, 'Credit Card', '2018-09-06 11:34:52', NULL),
(7, 'Medical Allowance', '2018-09-06 11:34:52', NULL),
(8, 'Performance Bonus', '2018-09-06 11:34:52', NULL),
(9, 'Profit Share', '2018-09-06 11:34:52', NULL),
(10, 'Provident Fund', '2018-09-06 11:34:52', NULL),
(11, 'Weekly 2 Holidays', '2018-09-06 11:34:52', NULL),
(12, 'Insurance', '2018-09-06 11:34:52', NULL),
(13, 'Gratuity', '2018-09-06 11:34:52', NULL),
(14, 'Overtime Allowance', '2018-09-06 11:34:52', NULL),
(15, 'Lunch Benefits', '2018-09-06 11:34:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `browsecategories`
--

CREATE TABLE `browsecategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `browsecategories`
--

INSERT INTO `browsecategories` (`id`, `category`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Functional', 'Accounting/Finance ', '2018-09-05 11:51:00', NULL),
(2, 'Functional', 'Bank/ Non-Bank Fin. Institution  ', '2018-09-05 11:51:00', NULL),
(3, 'Functional', 'Commercial/Supply Chain ', '2018-09-05 11:51:00', NULL),
(4, 'Functional', 'Education/Training ', '2018-09-05 11:51:00', NULL),
(5, 'Functional', 'Engineer/Architects ', '2018-09-05 11:51:00', NULL),
(6, 'Functional', 'Garments/Textile ', '2018-09-05 11:51:00', NULL),
(7, 'Functional', 'HR/Org. Development ', '2018-09-05 11:51:00', NULL),
(8, 'Functional', 'Gen Mgt/Admin ', '2018-09-05 11:51:00', NULL),
(9, 'Functional', 'Design/Creative ', '2018-09-05 11:51:00', NULL),
(10, 'Functional', 'Production/Operation ', '2018-09-05 11:51:00', NULL),
(11, 'Functional', 'Hospitality/ Travel/ Tourism ', '2018-09-05 11:51:00', NULL),
(12, 'Functional', 'Beauty Care/ Health &amp; Fitness ', '2018-09-05 11:51:00', NULL),
(13, 'Functional', 'Electrician/ Construction/ Repair ', '2018-09-05 11:51:00', NULL),
(14, 'Functional', 'IT &amp; Telecommunication', '2018-09-05 11:51:00', NULL),
(15, 'Functional', 'Marketing/Sales', '2018-09-05 11:51:00', NULL),
(16, 'Functional', 'Customer Support/Call Centre ', '2018-09-05 11:51:00', NULL),
(17, 'Functional', 'Media/Ad./Event Mgt. ', '2018-09-05 11:51:00', NULL),
(18, 'Functional', 'Medical/Pharma ', '2018-09-05 11:51:00', NULL),
(19, 'Functional', 'Agro (Plant/Animal/Fisheries) ', '2018-09-05 11:51:00', NULL),
(20, 'Functional', 'NGO/Development ', '2018-09-05 11:51:00', NULL),
(21, 'Functional', 'Research/Consultancy ', '2018-09-05 11:51:00', NULL),
(22, 'Functional', 'Secretary/Receptionist ', '2018-09-05 11:51:00', NULL),
(23, 'Functional', 'Data Entry/Operator/BPO ', '2018-09-05 11:51:00', NULL),
(24, 'Functional', 'Driving/Motor Technician ', '2018-09-05 11:51:00', NULL),
(25, 'Functional', 'Security/Support Service ', '2018-09-05 11:51:00', NULL),
(26, 'Functional', 'Law/Legal ', '2018-09-05 11:51:00', NULL),
(27, 'Functional', 'Others', '2018-09-05 11:51:00', NULL),
(32, 'Industrial', 'Agro based Industry ', '2018-09-05 12:04:42', NULL),
(33, 'Industrial', 'Archi./Engg./Construction ', '2018-09-05 12:04:42', NULL),
(34, 'Industrial', 'Automobile/Industrial Machine ', '2018-09-05 12:04:42', NULL),
(35, 'Industrial', 'Bank/Non-Bank Fin. Institution ', '2018-09-05 12:04:42', NULL),
(36, 'Industrial', 'Education ', '2018-09-05 12:04:42', NULL),
(37, 'Industrial', 'Electronics/Consumer Durables  ', '2018-09-05 12:04:42', NULL),
(38, 'Industrial', 'Energy/Power/Fuel                    ', '2018-09-05 12:04:42', NULL),
(39, 'Industrial', 'Garments/Textile ', '2018-09-05 12:04:42', NULL),
(40, 'Industrial', 'Govt./Semi-Govt./Autonomous  ', '2018-09-05 12:04:42', NULL),
(41, 'Industrial', 'Pharmaceuticals ', '2018-09-05 12:04:42', NULL),
(42, 'Industrial', 'Hospital/ Diagnostic Center ', '2018-09-05 12:04:42', NULL),
(43, 'Industrial', 'Airline/ Travel/ Tourism ', '2018-09-05 12:04:42', NULL),
(44, 'Industrial', 'Manufacturing (Light Industry) ', '2018-09-05 12:04:42', NULL),
(45, 'Industrial', 'Manufacturing (Heavy Industry) ', '2018-09-05 12:04:42', NULL),
(46, 'Industrial', 'Hotel/Restaurant           ', '2018-09-05 12:04:42', NULL),
(47, 'Industrial', 'Information Technology (IT) ', '2018-09-05 12:04:42', NULL),
(48, 'Industrial', 'Logistics/ Transportation           ', '2018-09-05 12:04:42', NULL),
(49, 'Industrial', 'Entertainment/ Recreation ', '2018-09-05 12:04:42', NULL),
(50, 'Industrial', 'Media / Advertising/ Event Mgt. ', '2018-09-05 12:04:42', NULL),
(51, 'Industrial', 'NGO/Development ', '2018-09-05 12:04:42', NULL),
(52, 'Industrial', 'Real Estate/Development ', '2018-09-05 12:04:42', NULL),
(53, 'Industrial', 'Wholesale/ Retail/ Export-Import ', '2018-09-05 12:04:42', NULL),
(54, 'Industrial', 'Telecommunication ', '2018-09-05 12:04:42', NULL),
(55, 'Industrial', 'Food &amp; Beverage Industry ', '2018-09-05 12:04:42', NULL),
(56, 'Industrial', 'Security Service ', '2018-09-05 12:04:42', NULL),
(57, 'Industrial', 'Fire', '0000-00-00 00:00:00', NULL),
(58, 'Industrial', 'Others', '2018-09-05 12:04:42', NULL),
(63, 'Skilled', 'Data Entry/ Computer Operator', '2018-09-06 07:39:26', NULL),
(64, 'Skilled', 'Machanic/ Technician', '2018-09-06 07:53:03', NULL),
(65, 'Skilled', 'Nurse', '2018-09-06 07:53:03', NULL),
(66, 'Skilled', 'Plumber/ Pipefitting', '2018-09-06 07:53:03', NULL),
(67, 'Skilled', 'Mason/ Construction Worker', '2018-09-06 07:53:03', NULL),
(68, 'Skilled', 'Cleaner', '2018-09-06 07:53:03', NULL),
(69, 'Skilled', 'Electrician', '2018-09-06 07:53:03', NULL),
(70, 'Skilled', 'Driver', '2018-09-06 07:53:03', NULL),
(71, 'Skilled', 'Chef/ Cook', '2018-09-06 07:53:03', NULL),
(72, 'Skilled', 'Housekeeper', '2018-09-06 07:53:03', NULL),
(73, 'Skilled', 'Graphic Designer', '2018-09-06 11:19:20', NULL),
(74, 'Skilled', 'Carpenter', '2018-09-06 11:19:20', NULL),
(75, 'Skilled', 'Pathelogist/ Lab Assistant', '2018-09-06 11:19:20', NULL),
(76, 'Skilled', 'Security Guard', '2018-09-06 11:19:20', NULL),
(77, 'Skilled', 'Waiter', '2018-09-06 11:19:20', NULL),
(78, 'Skilled', 'Welder', '2018-09-06 11:19:20', NULL),
(79, 'Skilled', 'Garments Technician', '2018-09-06 11:19:20', NULL),
(80, 'Skilled', 'Pion', '2018-09-06 11:19:20', NULL),
(81, 'Skilled', 'Swing Machine Operator', '2018-09-06 11:19:20', NULL),
(82, 'Skilled', 'Gardener', '2018-09-06 11:19:20', NULL),
(83, 'Skilled', 'Others', '2018-09-06 11:19:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `browsecategory_jobinfo`
--

CREATE TABLE `browsecategory_jobinfo` (
  `browsecategory_id` int(11) DEFAULT NULL,
  `jobinfo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `browsecategory_jobinfo`
--

INSERT INTO `browsecategory_jobinfo` (`browsecategory_id`, `jobinfo_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `browsecategory_preferredarea`
--

CREATE TABLE `browsecategory_preferredarea` (
  `browsecategory_id` int(11) DEFAULT NULL,
  `preferredarea_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `browsecategory_preferredarea`
--

INSERT INTO `browsecategory_preferredarea` (`browsecategory_id`, `preferredarea_id`) VALUES
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidaterequirements`
--

CREATE TABLE `candidaterequirements` (
  `id` int(10) UNSIGNED NOT NULL,
  `degreelevel` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degreename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degreemajor` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferedinstitute` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othereduqualification` text COLLATE utf8mb4_unicode_ci,
  `course` text COLLATE utf8mb4_unicode_ci,
  `certification` text COLLATE utf8mb4_unicode_ci,
  `experience` float DEFAULT NULL,
  `fresher` int(11) DEFAULT NULL,
  `areaofexp` text COLLATE utf8mb4_unicode_ci,
  `areaofbusiness` text COLLATE utf8mb4_unicode_ci,
  `skills` text COLLATE utf8mb4_unicode_ci,
  `addrequirements` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minage` int(11) DEFAULT NULL,
  `maxage` int(11) DEFAULT NULL,
  `prefarmy` int(11) DEFAULT NULL,
  `jobinfo_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidaterequirements`
--

INSERT INTO `candidaterequirements` (`id`, `degreelevel`, `degreename`, `degreemajor`, `preferedinstitute`, `othereduqualification`, `course`, `certification`, `experience`, `fresher`, `areaofexp`, `areaofbusiness`, `skills`, `addrequirements`, `gender`, `minage`, `maxage`, `prefarmy`, `jobinfo_id`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor', 'Bachelor In Engineering', 'CSE', 'KUET', 'HW', 'Security', 'Renouned', 1, 1, 'Laravel', 'Software Industries', 'Python', 'Example Additional Requirements', 'both', 22, 32, 0, 1, '2018-09-09 04:07:27', '2018-09-09 04:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `companydetails`
--

CREATE TABLE `companydetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `companyname` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companynamebg` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpdesignation` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpmobile` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpemail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `businessdescription` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companydetails`
--

INSERT INTO `companydetails` (`id`, `companyname`, `companynamebg`, `cp`, `cpdesignation`, `cpmobile`, `cpemail`, `businessdescription`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Aamrai Bangladesh', 'আমরাই বাংলাদেশ', 'Foysal Nibir', 'Software Engineer', '01758382828', 'nibir2k12@yahoo.com', 'Aamrai Bangladesh is one of the most popular social media platform in Bangladesh. The online news portal of Aamrai Bangladesh has started it\'s operations with the commitment of fearless, investigative, informative and neutral journalism.\naamraibangladesh.com has provided real time news update using utmost modern technology since 2017. It also provides archive of previous news and printing facility of specific news items.\nAamrai Bangladesh is trying to build a bridge with Bengali speaking people around the globe.', 2, '2018-09-08 02:47:00', '2018-09-08 02:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `companydetail_industrytype`
--

CREATE TABLE `companydetail_industrytype` (
  `companydetail_id` int(11) DEFAULT NULL,
  `industrytype_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companydetail_industrytype`
--

INSERT INTO `companydetail_industrytype` (`companydetail_id`, `industrytype_id`) VALUES
(1, 1),
(1, 35);

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE `contactdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `caddress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billingaddress` text COLLATE utf8mb4_unicode_ci,
  `cphone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cemail` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `town` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactdetails`
--

INSERT INTO `contactdetails` (`id`, `caddress`, `country`, `city`, `area`, `billingaddress`, `cphone`, `cemail`, `website`, `user_id`, `created_at`, `updated_at`, `town`) VALUES
(1, 'Road 7, Block G, Banani', 'Bangladesh', 'Dhaka', 'Banani', 'Road 7, Block G, Banani', '01758382828', 'nibir2k12@live.com', 'www.celltron.com.bd', 2, '2018-09-08 03:04:10', '2018-09-08 03:04:10', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--

CREATE TABLE `cvs` (
  `id` int(10) UNSIGNED NOT NULL,
  `cv` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cvs`
--

INSERT INTO `cvs` (`id`, `cv`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '[{\"download_link\":\"cvs\\September2018\\cv-1536755019.pdf\",\"original_name\":\"cv-1536755019.pdf\"}]', 1, '2018-09-12 12:23:39', '2018-09-12 12:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, NULL, 9),
(23, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 5, 'industrytype', 'text', 'Industrytype', 1, 1, 1, 1, 1, 1, NULL, 2),
(25, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(26, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(28, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(29, 6, 'companyname', 'text', 'Company Name (in English)', 1, 1, 1, 1, 1, 1, NULL, 2),
(30, 6, 'companynamebg', 'text', 'Company Name (in Bangla)', 1, 1, 1, 1, 1, 1, NULL, 3),
(31, 6, 'cp', 'text', 'Contact Person', 1, 1, 1, 1, 1, 1, NULL, 4),
(32, 6, 'cpdesignation', 'text', 'Contact Person\'s Designation', 1, 1, 1, 1, 1, 1, NULL, 5),
(33, 6, 'cpmobile', 'text', 'Contact Person\'s Mobile', 1, 1, 1, 1, 1, 1, NULL, 6),
(34, 6, 'cpemail', 'text', 'Contact Person\'s Email', 1, 1, 1, 1, 1, 1, NULL, 7),
(35, 6, 'businessdescription', 'text', 'Business Description', 0, 1, 1, 1, 1, 1, NULL, 8),
(36, 6, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 9),
(38, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(39, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(40, 6, 'companydetail_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"companydetails\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(41, 1, 'user_hasone_companydetail_relationship', 'relationship', 'companydetails', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Companydetail\",\"table\":\"companydetails\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"companyname\",\"pivot_table\":\"companydetails\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(42, 5, 'industrytype_belongstomany_companydetail_relationship', 'relationship', 'companydetails', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Companydetail\",\"table\":\"companydetails\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"companyname\",\"pivot_table\":\"companydetail_industrytype\",\"pivot\":\"1\",\"taggable\":\"0\"}', 5),
(43, 6, 'companydetail_belongstomany_industrytype_relationship', 'relationship', 'industrytypes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Industrytype\",\"table\":\"industrytypes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"industrytype\",\"pivot_table\":\"companydetail_industrytype\",\"pivot\":\"1\",\"taggable\":\"0\"}', 14),
(44, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 7, 'caddress', 'text_area', 'Company Address', 1, 1, 1, 1, 1, 1, NULL, 2),
(46, 7, 'country', 'text', 'Country', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 7, 'city', 'select_dropdown', 'City', 1, 1, 1, 1, 1, 1, '{\"default\":\"Dhaka\",\"options\":{\"Dhaka\":\"Dhaka\",\"Chittagong\":\"Chittagong\",\"Rajshahi\":\"Rajshahi\",\"Khulna\":\"Khulna\",\"Barisal\":\"Barisal\",\"Mymensingh\":\"Mymensingh\",\"Rangpur\":\"Rangpur\",\"Sylhet\":\"Sylhet\"}}', 4),
(48, 7, 'area', 'text', 'Area', 1, 1, 1, 1, 1, 1, NULL, 6),
(49, 7, 'billingaddress', 'text_area', 'Billing Address', 0, 1, 1, 1, 1, 1, NULL, 7),
(50, 7, 'cphone', 'text', 'Contact Phone', 1, 1, 1, 1, 1, 1, NULL, 8),
(51, 7, 'cemail', 'text', 'Contact Email', 1, 1, 1, 1, 1, 1, NULL, 9),
(52, 7, 'website', 'text', 'Website Address', 0, 1, 1, 1, 1, 1, NULL, 10),
(53, 7, 'companydetail_id', 'text', 'Companydetail Id', 0, 1, 1, 1, 1, 1, NULL, 11),
(54, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 12),
(55, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(56, 7, 'town', 'text', 'Town', 1, 1, 1, 1, 1, 1, NULL, 5),
(59, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 8, 'category', 'text', 'Category', 1, 1, 1, 1, 1, 1, NULL, 2),
(61, 8, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, NULL, 3),
(62, 8, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, NULL, 4),
(63, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(64, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 9, 'title', 'text', 'Job Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(66, 9, 'vacancies', 'number', 'Number of Vacancies', 0, 1, 1, 1, 1, 1, NULL, 3),
(68, 9, 'employeestatus', 'select_dropdown', 'Employee Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"fulltime\",\"options\":{\"fulltime\":\"Full Time\",\"parttime\":\"Part Time\",\"contractual\":\"Contractual\",\"freelance\":\"Freelance\",\"internship\":\"Internship\"}}', 6),
(69, 9, 'deadline', 'date', 'Application Deadline', 0, 1, 1, 1, 1, 1, NULL, 7),
(70, 9, 'resumeopt', 'select_dropdown', 'Resume Receiving Option', 0, 1, 1, 1, 1, 1, '{\"default\":\"applyonline\",\"options\":{\"applyonline\":\"Apply Online\",\"email\":\"Email\",\"hardcopy\":\"Hard Copy\",\"walkininterview\":\"Walk in Interview\"}}', 8),
(71, 9, 'photoopt', 'radio_btn', 'Photograph (Enclose with Resume)', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"NO\",\"1\":\"Yes\"}}', 9),
(72, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(73, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(76, 8, 'browsecategory_belongstomany_jobinfo_relationship', 'relationship', 'jobinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Jobinfo\",\"table\":\"jobinfos\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"browsecategory_jobinfo\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(77, 9, 'jobinfo_belongstomany_browsecategory_relationship', 'relationship', 'Job Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Browsecategory\",\"table\":\"browsecategories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"browsecategory_jobinfo\",\"pivot\":\"1\",\"taggable\":\"0\"}', 5),
(78, 1, 'user_hasone_jobinfo_relationship', 'relationship', 'jobinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Jobinfo\",\"table\":\"jobinfos\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"browsecategories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(79, 9, 'jobinfo_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"browsecategories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(80, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(81, 10, 'level', 'radio_btn', 'Job Level', 0, 1, 1, 1, 1, 1, '{\"default\":\"entry\",\"options\":{\"entry\":\"Entry\",\"mid\":\"Mid\",\"top\":\"Top\"}}', 2),
(82, 10, 'context', 'text_area', 'Job Context', 0, 1, 1, 1, 1, 1, NULL, 3),
(83, 10, 'responsibilities', 'text_area', 'Job Responsibilities', 0, 1, 1, 1, 1, 1, NULL, 4),
(84, 10, 'location', 'select_dropdown', 'Job Location', 0, 1, 1, 1, 1, 1, '{\"default\":\"inbd\",\"options\":{\"inbd\":\"Inside Bangladesh\",\"outbd\":\"Outside Bangladesh\"}}', 5),
(85, 10, 'area', 'text', 'Job Area', 0, 1, 1, 1, 1, 1, NULL, 6),
(88, 10, 'salarytype', 'radio_btn', 'Salary Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"monthly\",\"options\":{\"hourly\":\"Hourly\",\"daily\":\"Daily\",\"monthly\":\"Monthly\",\"yearly\":\"Yearly\"}}', 9),
(89, 10, 'negotiable', 'radio_btn', 'Negotiable', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 10),
(90, 10, 'addsalaryinfo', 'text_area', 'Additional Salary Info', 0, 1, 1, 1, 1, 1, NULL, 11),
(91, 10, 'salaryreview', 'select_dropdown', 'Salary Review', 0, 1, 1, 1, 1, 1, '{\"default\":\"halfyearly\",\"options\":{\"halfyearly\":\"Half Yearly\",\"yearly\":\"Yearly\"}}', 12),
(93, 10, 'others', 'text', 'Others', 0, 1, 1, 1, 1, 1, NULL, 14),
(94, 10, 'jobinfo_id', 'text', 'Jobinfo Id', 0, 1, 1, 1, 1, 1, NULL, 16),
(95, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 17),
(96, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 18),
(97, 10, 'festivebonus', 'text', 'Festive Bonus', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"0\",\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\"}}', 13),
(98, 10, 'addjobinfo_belongsto_jobinfo_relationship', 'relationship', 'jobinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Jobinfo\",\"table\":\"jobinfos\",\"type\":\"belongsTo\",\"column\":\"jobinfo_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"addjobinfos\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(99, 9, 'jobinfo_hasone_addjobinfo_relationship', 'relationship', 'addjobinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Addjobinfo\",\"table\":\"addjobinfos\",\"type\":\"hasOne\",\"column\":\"jobinfo_id\",\"key\":\"id\",\"label\":\"context\",\"pivot_table\":\"addjobinfos\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(100, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(101, 11, 'degreelevel', 'text', 'Required Degree Level', 0, 1, 1, 1, 1, 1, NULL, 2),
(102, 11, 'degreename', 'text', 'Required Degree Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(103, 11, 'degreemajor', 'text', 'Required Degree major', 0, 1, 1, 1, 1, 1, NULL, 4),
(104, 11, 'prefeduinstitute', 'text', 'Preferred Education Institute', 0, 1, 1, 1, 1, 1, NULL, 5),
(105, 11, 'othereduqualification', 'text', 'Other Educational Qualification', 0, 1, 1, 1, 1, 1, NULL, 6),
(106, 11, 'course', 'text', 'Training/Trade Course', 0, 1, 1, 1, 1, 1, NULL, 7),
(110, 11, 'fresher', 'radio_btn', 'Freshers', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Can Not Apply\",\"1\":\"Can Apply\"}}', 11),
(111, 11, 'areaofexp', 'text_area', 'Area of Experience', 0, 1, 1, 1, 1, 1, NULL, 12),
(112, 11, 'areaofbusiness', 'text_area', 'Area of Business', 0, 1, 1, 1, 1, 1, NULL, 13),
(113, 11, 'skills', 'text_area', 'Required Skills', 0, 1, 1, 1, 1, 1, NULL, 14),
(114, 11, 'addrequirements', 'text_area', 'Additional Requirements', 0, 1, 1, 1, 1, 1, NULL, 15),
(115, 11, 'gender', 'select_dropdown', 'Required Gender', 0, 1, 1, 1, 1, 1, '{\"default\":\"both\",\"options\":{\"male\":\"Male\",\"female\":\"Female\",\"both\":\"Both\"}}', 16),
(116, 11, 'minage', 'number', 'Minimum Required Age', 0, 1, 1, 1, 1, 1, NULL, 17),
(117, 11, 'maxage', 'number', 'Maximum Required Age', 0, 1, 1, 1, 1, 1, NULL, 18),
(118, 11, 'prefarmy', 'radio_btn', 'Preferred Retired Army Officer', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 19),
(119, 11, 'jobinfo_id', 'text', 'Jobinfo Id', 0, 1, 1, 1, 1, 1, NULL, 20),
(120, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 21),
(121, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 22),
(122, 11, 'candidaterequirement_belongsto_jobinfo_relationship', 'relationship', 'jobinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Jobinfo\",\"table\":\"jobinfos\",\"type\":\"belongsTo\",\"column\":\"jobinfo_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"addjobinfos\",\"pivot\":\"0\",\"taggable\":\"0\"}', 23),
(123, 9, 'jobinfo_hasone_candidaterequirement_relationship', 'relationship', 'candidaterequirements', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Candidaterequirement\",\"table\":\"candidaterequirements\",\"type\":\"hasOne\",\"column\":\"jobinfo_id\",\"key\":\"id\",\"label\":\"prefeduinstitute\",\"pivot_table\":\"addjobinfos\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(124, 9, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 10),
(125, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(126, 13, 'benefit', 'text', 'Compensation & Other Benefits', 0, 1, 1, 1, 1, 1, NULL, 2),
(127, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(128, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(129, 10, 'addjobinfo_belongstomany_benefit_relationship', 'relationship', 'Compensation & Other Benefits', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Benefit\",\"table\":\"benefits\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"benefit\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"1\",\"taggable\":\"0\"}', 15),
(130, 13, 'benefit_belongstomany_addjobinfo_relationship', 'relationship', 'addjobinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Addjobinfo\",\"table\":\"addjobinfos\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"level\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"1\",\"taggable\":null}', 5),
(131, 10, 'salaryrange', 'number', 'Salaryrange', 0, 1, 1, 1, 1, 1, NULL, 7),
(132, 11, 'certification', 'text_area', 'Professional Certification', 0, 1, 1, 1, 1, 1, NULL, 8),
(134, 11, 'experience', 'text', 'Experience', 0, 1, 1, 1, 1, 1, NULL, 9),
(135, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(136, 14, 'firstname', 'text', 'First Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(137, 14, 'lastname', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, NULL, 3),
(138, 14, 'father', 'text', 'Father\'s Name', 0, 1, 1, 1, 1, 1, NULL, 4),
(139, 14, 'mother', 'text', 'Mother\'s Name', 0, 1, 1, 1, 1, 1, NULL, 5),
(140, 14, 'dob', 'date', 'Date of Birth', 0, 1, 1, 1, 1, 1, NULL, 6),
(141, 14, 'gender', 'select_dropdown', 'Gender', 0, 1, 1, 1, 1, 1, '{\"default\":\"male\",\"options\":{\"male\":\"Male\",\"female\":\"Female\",\"other\":\"Other\"}}', 7),
(142, 14, 'religion', 'text', 'Religion', 0, 1, 1, 1, 1, 1, NULL, 8),
(143, 14, 'maritalstatus', 'select_dropdown', 'Maritalstatus', 0, 1, 1, 1, 1, 1, '{\"default\":\"unmarried\",\"options\":{\"unmarried\":\"Unmarried\",\"married\":\"Married\"}}', 9),
(144, 14, 'nationality', 'text', 'Nationality', 0, 1, 1, 1, 1, 1, NULL, 10),
(145, 14, 'nid', 'number', 'National ID Number', 0, 1, 1, 1, 1, 1, NULL, 11),
(146, 14, 'presentaddress', 'text_area', 'Present Address', 0, 1, 1, 1, 1, 1, NULL, 12),
(147, 14, 'permanentaddress', 'text_area', 'Permanent Address', 0, 1, 1, 1, 1, 1, NULL, 13),
(148, 14, 'currentloc', 'text', 'Current Location', 0, 1, 1, 1, 1, 1, NULL, 14),
(149, 14, 'mobile1', 'text', 'Mobile 1', 0, 1, 1, 1, 1, 1, NULL, 15),
(150, 14, 'mobile2', 'text', 'Mobile 2', 0, 1, 1, 1, 1, 1, NULL, 16),
(151, 14, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 17),
(152, 14, 'altemail', 'text', 'Alternative Email', 0, 1, 1, 1, 1, 1, NULL, 18),
(153, 14, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 19),
(154, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 20),
(155, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 21),
(156, 1, 'user_hasone_personalinfo_relationship', 'relationship', 'personalinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Personalinfo\",\"table\":\"personalinfos\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(157, 14, 'personalinfo_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":\"0\"}', 22),
(158, 9, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, NULL, 11),
(159, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(160, 15, 'objective', 'text_area', 'Career Objective', 0, 1, 1, 1, 1, 1, NULL, 2),
(161, 15, 'presentsalary', 'number', 'Present Salary (TK/ Month)', 0, 1, 1, 1, 1, 1, NULL, 3),
(162, 15, 'expectedsalary', 'number', 'Expected Salary (TK/ Month)', 0, 1, 1, 1, 1, 1, NULL, 4),
(163, 15, 'joblevel', 'radio_btn', 'Looking for (Job Level)', 0, 1, 1, 1, 1, 1, '{\"default\":\"entry\",\"options\":{\"entry\":\"Entry Level\",\"mid\":\"Mid Level\",\"top\":\"Top Level\"}}', 5),
(164, 15, 'jobnature', 'text', 'Available for (Job Nature)', 0, 1, 1, 1, 1, 1, '{\"default\":\"fulltime\",\"options\":{\"fulltime\":\"Full Time\",\"parttime\":\"Part Time\",\"contractual\":\"Contractual\",\"freelance\":\"Freelance\",\"internship\":\"Internship\"}}', 6),
(165, 15, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 7),
(166, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(167, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(168, 15, 'employeecareerinfo_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(169, 1, 'user_hasone_employeecareerinfo_relationship', 'relationship', 'employeecareerinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employeecareerinfo\",\"table\":\"employeecareerinfos\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 16),
(170, 16, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(171, 16, 'joblocinbd', 'text', 'Job Locations Inside Bangladesh', 0, 1, 1, 1, 1, 1, NULL, 3),
(172, 16, 'joblocioutbd', 'text', 'Job Locations Outside Bangladesh', 0, 1, 1, 1, 1, 1, NULL, 4),
(173, 16, 'preferredorg', 'text', 'Preferred Organization Types', 0, 1, 1, 1, 1, 1, NULL, 5),
(174, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(175, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(176, 16, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(177, 16, 'preferredarea_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(178, 1, 'user_hasone_preferredarea_relationship', 'relationship', 'preferredareas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Preferredarea\",\"table\":\"preferredareas\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 17),
(179, 8, 'browsecategory_belongstomany_preferredarea_relationship', 'relationship', 'preferredareas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Preferredarea\",\"table\":\"preferredareas\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"browsecategory_preferredarea\",\"pivot\":\"1\",\"taggable\":\"0\"}', 7),
(180, 16, 'preferredarea_belongstomany_browsecategory_relationship', 'relationship', 'Preferred Job Categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Browsecategory\",\"table\":\"browsecategories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"browsecategory_preferredarea\",\"pivot\":\"1\",\"taggable\":\"0\"}', 2),
(181, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(182, 17, 'careersummary', 'text_area', 'Career Summary', 0, 1, 1, 1, 1, 1, NULL, 2),
(183, 17, 'specialqualification', 'text_area', 'Special Qualification', 0, 1, 1, 1, 1, 1, NULL, 3),
(184, 17, 'keywords', 'text', 'Keywords', 0, 1, 1, 1, 1, 1, NULL, 4),
(185, 17, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(186, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(187, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(188, 17, 'employeeotherinfo_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 8),
(189, 1, 'user_hasone_employeeotherinfo_relationship', 'relationship', 'employeeotherinfos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employeeotherinfo\",\"table\":\"employeeotherinfos\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 18),
(190, 18, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(191, 18, 'level', 'select_dropdown', 'Level of Education', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"PSC/5 pass\":\"PSC/5 pass\",\"JSC/JDC/8 pass\":\"JSC/JDC/8 pass\",\"Secondary\":\"Secondary\",\"Higher Secondary\":\"Higher Secondary\",\"Diploma\":\"Diploma\",\"Bachelor/Honors\":\"Bachelor/Honors\",\"Masters\":\"Masters\",\"PhD\":\"PhD\"}}', 2),
(192, 18, 'degreetitle', 'text', 'Exam/Degree Title', 0, 1, 1, 1, 1, 1, NULL, 3),
(193, 18, 'major', 'text', 'Concentration/ Major/Group', 0, 1, 1, 1, 1, 1, NULL, 4),
(194, 18, 'institute', 'text', 'Institute Name', 0, 1, 1, 1, 1, 1, NULL, 5),
(195, 18, 'achievement', 'text', 'Achievement', 0, 1, 1, 1, 1, 1, NULL, 6),
(196, 18, 'result', 'select_dropdown', 'Mark/Result', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"First Division/Class\":\"First Division/Class\",\"Second Division/Class\":\"Second Division/Class\",\"Third Division/Class\":\"Third Division/Class\",\"Grade\":\"Grade\",\"Appeared\":\"Appeared\",\"Enrolled\":\"Enrolled\",\"Awarded\":\"Awarded\",\"Do not mention\":\"Do not mention\",\"Pass\":\"Pass\"}}', 7),
(197, 18, 'cgpa', 'text', 'CGPA/GPA', 0, 1, 1, 1, 1, 1, NULL, 8),
(198, 18, 'hidecgpa', 'radio_btn', 'Hide Mark/CGPA', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Hide\",\"1\":\"Show\"}}', 9),
(199, 18, 'passingyear', 'number', 'Passing Year', 0, 1, 1, 1, 1, 1, NULL, 10),
(200, 18, 'duration', 'number', 'Duration (Number of Year)', 0, 1, 1, 1, 1, 1, NULL, 11),
(201, 18, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 12),
(202, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 13),
(203, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(204, 18, 'employeeeducation_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(205, 1, 'user_hasmany_employeeeducation_relationship', 'relationship', 'employeeeducations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employeeeducation\",\"table\":\"employeeeducations\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 19),
(206, 19, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(207, 19, 'title', 'text', 'Training Title', 0, 1, 1, 1, 1, 1, NULL, 2),
(208, 19, 'topics', 'text', 'Topics Covered', 0, 1, 1, 1, 1, 1, NULL, 3),
(209, 19, 'institute', 'text', 'Institute', 0, 1, 1, 1, 1, 1, NULL, 4),
(210, 19, 'location', 'text', 'Location', 0, 1, 1, 1, 1, 1, NULL, 5),
(211, 19, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, NULL, 6),
(212, 19, 'year', 'date', 'Year', 0, 1, 1, 1, 1, 1, '{\"format\":\"%Y\"}', 7),
(213, 19, 'duration', 'text', 'Duration', 0, 1, 1, 1, 1, 1, NULL, 8),
(214, 19, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(215, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(216, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(217, 19, 'employeetraining_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 12),
(218, 1, 'user_hasmany_employeetraining_relationship', 'relationship', 'employeetrainings', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employeetraining\",\"table\":\"employeetrainings\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 20),
(219, 23, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(220, 23, 'certification', 'text', 'Certification', 0, 1, 1, 1, 1, 1, NULL, 2),
(221, 23, 'institute', 'text', 'Institute', 0, 1, 1, 1, 1, 1, NULL, 3),
(222, 23, 'location', 'text', 'Location', 0, 1, 1, 1, 1, 1, NULL, 4),
(223, 23, 'fromdate', 'date', 'Certification Start Date', 0, 1, 1, 1, 1, 1, NULL, 5),
(224, 23, 'todate', 'date', 'Certification End Date', 0, 1, 1, 1, 1, 1, NULL, 6),
(225, 23, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 7),
(226, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(227, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(228, 23, 'professionalqualification_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 10),
(229, 1, 'user_hasmany_professionalqualification_relationship', 'relationship', 'professionalqualifications', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Professionalqualification\",\"table\":\"professionalqualifications\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"certification\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 21),
(230, 24, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(231, 24, 'cname', 'text', 'Company Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(232, 24, 'cbusiness', 'text', 'Company Business', 0, 1, 1, 1, 1, 1, NULL, 3),
(233, 24, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, NULL, 4),
(234, 24, 'department', 'text', 'Department', 0, 1, 1, 1, 1, 1, NULL, 5),
(235, 24, 'areaofexperiences', 'text', 'Area of Experiences', 0, 1, 1, 1, 1, 1, NULL, 6),
(236, 24, 'responsibilities', 'text_area', 'Responsibilities', 0, 1, 1, 1, 1, 1, NULL, 7),
(237, 24, 'clocation', 'text', 'Company Location', 0, 1, 1, 1, 1, 1, NULL, 8),
(238, 24, 'fromdate', 'date', 'From Date', 0, 1, 1, 1, 1, 1, NULL, 9),
(239, 24, 'todate', 'date', 'To Date', 0, 1, 1, 1, 1, 1, NULL, 10),
(240, 24, 'continuing', 'radio_btn', 'Continuing', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 11),
(241, 24, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 12),
(242, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 13),
(243, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(244, 1, 'user_hasmany_employment_relationship', 'relationship', 'employments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employment\",\"table\":\"employments\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 22),
(245, 14, 'retiredarmy', 'radio_btn', 'Retiredarmy', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"No\",\"1\":\"Yes\"}}', 19),
(246, 7, 'contactdetail_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 14),
(247, 1, 'user_hasone_contactdetail_relationship', 'relationship', 'contactdetails', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Contactdetail\",\"table\":\"contactdetails\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 23),
(248, 25, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(249, 25, 'ba', 'text', 'Ba', 0, 1, 1, 1, 1, 1, NULL, 2),
(250, 25, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"officer\",\"options\":{\"officer\":\"Officer\",\"jco\":\"JCO\",\"nco\":\"NCO\"}}', 3),
(251, 25, 'rank', 'select_dropdown', 'Rank', 0, 1, 1, 1, 1, 1, '{\"default\":\"2Lt\",\"options\":{\"2Lt\":\"2Lt\",\"Lt\":\"Lt\",\"Capt\":\"Capt\",\"Maj\":\"Maj\",\"Lt Col\":\"Lt Col\",\"Col\":\"Col\",\"Brig Gen\":\"Brig Gen\",\"Maj Gen\":\"Maj Gen\",\"Lt Gen\":\"Lt Gen\",\"Gen\":\"Gen\",\"Snk\":\"Snk\",\"L/cpl\":\"L/cpl\",\"Cpl\":\"Cpl\",\"Sgt\":\"Sgt\",\"WO\":\"WO\",\"SWO\":\"SWO\",\"MWO\":\"MWO\",\"H/Lt\":\"H/Lt\",\"H/Capt\":\"H/Capt\"}}', 4),
(252, 25, 'arm', 'select_dropdown', 'Arm', 0, 1, 1, 1, 1, 1, '{\"default\":\"AC\",\"options\":{\"AC\":\"AC\",\"Arty\":\"Arty\",\"EB\":\"EB\",\"BIR\":\"BIR\",\"Sigs\":\"Sigs\",\"Engr\":\"Engr\",\"EME\":\"EME\",\"Ord\":\"Ord\",\"ASC\":\"ASC\",\"AMC\":\"AMC\",\"AEC\":\"AEC\",\"CMP\":\"CMP\",\"ADC\":\"ADC\",\"AFNS\":\"AFNS\",\"RVFC\":\"RVFC\",\"ACC\":\"ACC\"}}', 5),
(253, 25, 'course', 'text', 'Course', 0, 1, 1, 1, 1, 1, NULL, 6),
(254, 25, 'doc', 'date', 'Doc', 0, 1, 1, 1, 1, 1, NULL, 7),
(255, 25, 'dor', 'date', 'Dor', 0, 1, 1, 1, 1, 1, NULL, 8),
(256, 25, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 9),
(257, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(258, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(259, 25, 'armyemployment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 12),
(260, 1, 'user_hasone_armyemployment_relationship', 'relationship', 'armyemployments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Armyemployment\",\"table\":\"armyemployments\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 24),
(261, 26, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(264, 26, 'extracurricular', 'text_area', 'Extracurricular Activities', 0, 1, 1, 1, 1, 1, NULL, 4),
(265, 26, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(266, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(267, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(268, 26, 'skills', 'text_area', 'Skills (max 10)', 0, 1, 1, 1, 1, 1, NULL, 2),
(269, 26, 'skillsdescription', 'text_area', 'Skills  Description', 0, 1, 1, 1, 1, 1, NULL, 3),
(270, 26, 'specialization_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 8),
(271, 1, 'user_hasone_specialization_relationship', 'relationship', 'specializations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialization\",\"table\":\"specializations\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 25),
(272, 27, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(273, 27, 'language', 'text', 'Language', 0, 1, 1, 1, 1, 1, NULL, 2),
(274, 27, 'reading', 'select_dropdown', 'Reading', 0, 1, 1, 1, 1, 1, '{\"default\":\"high\",\"options\":{\"high\":\"High\",\"medium\":\"Medium\",\"low\":\"Low\"}}', 3),
(275, 27, 'writing', 'select_dropdown', 'Writing', 0, 1, 1, 1, 1, 1, '{\"default\":\"high\",\"options\":{\"high\":\"High\",\"medium\":\"Medium\",\"low\":\"Low\"}}', 4),
(276, 27, 'speaking', 'select_dropdown', 'Speaking', 0, 1, 1, 1, 1, 1, '{\"default\":\"high\",\"options\":{\"high\":\"High\",\"medium\":\"Medium\",\"low\":\"Low\"}}', 5),
(277, 27, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 6),
(278, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(279, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(280, 27, 'language_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 9),
(281, 1, 'user_hasmany_language_relationship', 'relationship', 'languages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Language\",\"table\":\"languages\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"language\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 26),
(282, 28, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(283, 28, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(284, 28, 'organization', 'text', 'Organization', 0, 1, 1, 1, 1, 1, NULL, 3),
(285, 28, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, NULL, 4),
(286, 28, 'officephone', 'text', 'Office Phone', 0, 1, 1, 1, 1, 1, NULL, 5),
(287, 28, 'resphone', 'text', 'Resident Hhone', 0, 1, 1, 1, 1, 1, NULL, 6),
(288, 28, 'mobile', 'text', 'Mobile', 0, 1, 1, 1, 1, 1, NULL, 7),
(289, 28, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 8),
(290, 28, 'relation', 'select_dropdown', 'Relation', 0, 1, 1, 1, 1, 1, '{\"default\":\"relative\",\"options\":{\"relative\":\"Relative\",\"family or friend\":\"Family or Friend\",\"academic\":\"Academic\",\"professional\":\"Professional\",\"others\":\"Others\"}}', 9),
(291, 28, 'address', 'text_area', 'Address', 0, 1, 1, 1, 1, 1, NULL, 10),
(292, 28, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 11),
(293, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 12),
(294, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(295, 28, 'reference_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(296, 1, 'user_hasmany_reference_relationship', 'relationship', 'references', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Reference\",\"table\":\"references\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 27),
(297, 29, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(298, 29, 'cv', 'file', 'CV (.pdf)', 0, 1, 1, 1, 1, 1, NULL, 2),
(299, 29, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(300, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(301, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(302, 29, 'cv_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 6),
(303, 1, 'user_hasone_cv_relationship', 'relationship', 'cvs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Cv\",\"table\":\"cvs\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"addjobinfo_benefit\",\"pivot\":\"0\",\"taggable\":null}', 28);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-05 00:42:48', '2018-09-05 02:58:13'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(5, 'industrytypes', 'industrytypes', 'Industrytype', 'Industrytypes', 'voyager-home', 'App\\Industrytype', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-05 02:35:11', '2018-09-05 02:35:11'),
(6, 'companydetails', 'companydetails', 'Company Detail', 'Company Details', 'voyager-archive', 'App\\Companydetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-05 03:27:55', '2018-09-05 03:51:42'),
(7, 'contactdetails', 'contactdetails', 'Primary Contact Detail', 'Primary Contact Details', 'voyager-telephone', 'App\\Contactdetail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-05 03:59:50', '2018-09-05 03:59:50'),
(8, 'browsecategories', 'browsecategories', 'Browsecategory', 'Browsecategories', 'voyager-search', 'App\\Browsecategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-06 02:03:40', '2018-09-06 02:03:40'),
(9, 'jobinfos', 'jobinfos', 'Job Info', 'Job Infos', 'voyager-pen', 'App\\Jobinfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-06 02:14:26', '2018-09-06 02:14:26'),
(10, 'addjobinfos', 'addjobinfos', 'Additional Job Info', 'Additional Job Infos', 'voyager-params', 'App\\Addjobinfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-06 03:37:17', '2018-09-06 03:37:17'),
(11, 'candidaterequirements', 'candidaterequirements', 'Candidate Requirement', 'Candidate Requirements', 'voyager-plug', 'App\\Candidaterequirement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-06 05:02:44', '2018-09-06 05:02:44'),
(13, 'benefits', 'benefits', 'Benefit', 'Benefits', 'voyager-thumbs-up', 'App\\Benefit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-06 05:24:32', '2018-09-06 05:24:32'),
(14, 'personalinfos', 'personalinfos', 'Personal Information', 'Personal Informations', 'voyager-info-circled', 'App\\Personalinfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-09 05:06:55', '2018-09-09 05:06:55'),
(15, 'employeecareerinfos', 'employeecareerinfos', 'Employee Career Info', 'Employee Career Infos', 'voyager-barbell', 'App\\Employeecareerinfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-09 07:22:31', '2018-09-09 07:22:31'),
(16, 'preferredareas', 'preferredareas', 'Preferred Area', 'Preferred Areas', 'voyager-location', 'App\\Preferredarea', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-09 07:58:54', '2018-09-09 07:58:54'),
(17, 'employeeotherinfos', 'employeeotherinfos', 'Other Information', 'Other Informations', 'voyager-pie-chart', 'App\\Employeeotherinfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-10 00:25:33', '2018-09-10 00:25:33'),
(18, 'employeeeducations', 'employeeeducations', 'Education', 'Educations', 'voyager-study', 'App\\Employeeeducation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-10 01:22:06', '2018-09-10 01:22:06'),
(19, 'employeetrainings', 'employeetrainings', 'Training', 'Trainings', 'voyager-bulb', 'App\\Employeetraining', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-10 02:55:08', '2018-09-10 02:55:08'),
(23, 'professionalqualifications', 'professionalqualifications', 'Professional Qualification', 'Professional Qualifications', 'voyager-trophy', 'App\\Professionalqualification', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-10 04:05:55', '2018-09-10 04:05:55'),
(24, 'employments', 'employments', 'Employment', 'Employments', 'voyager-receipt', 'App\\Employment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-10 05:15:30', '2018-09-10 05:15:30'),
(25, 'armyemployments', 'armyemployments', 'Retired Army Employment', 'Retired Army Employment', 'voyager-star-two', 'App\\Armyemployment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 06:46:23', '2018-09-12 06:46:23'),
(26, 'specializations', 'specializations', 'Specialization', 'Specializations', 'voyager-certificate', 'App\\Specialization', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 07:30:29', '2018-09-12 07:30:29'),
(27, 'languages', 'languages', 'Language', 'Languages', 'voyager-leaf', 'App\\Language', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 08:03:20', '2018-09-12 08:03:20'),
(28, 'references', 'references', 'Reference', 'References', 'voyager-logbook', 'App\\Reference', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 08:41:39', '2018-09-12 08:41:39'),
(29, 'cvs', 'cvs', 'Cv', 'Cvs', 'voyager-file-text', 'App\\Cv', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-12 10:08:07', '2018-09-12 10:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `employeecareerinfos`
--

CREATE TABLE `employeecareerinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `objective` text COLLATE utf8mb4_unicode_ci,
  `presentsalary` int(11) DEFAULT NULL,
  `expectedsalary` int(11) DEFAULT NULL,
  `joblevel` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobnature` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employeecareerinfos`
--

INSERT INTO `employeecareerinfos` (`id`, `objective`, `presentsalary`, `expectedsalary`, `joblevel`, `jobnature`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'To be able to work for an encouraging and stable company that will assist me in developing, improving, and obtaining the necessary skills in order to become the best engineer possible.', 40000, 60000, 'mid', 'fulltime', 1, '2018-09-09 07:44:13', '2018-09-09 07:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `employeeeducations`
--

CREATE TABLE `employeeeducations` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degreetitle` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement` text COLLATE utf8mb4_unicode_ci,
  `result` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  `hidecgpa` int(11) DEFAULT '0',
  `passingyear` year(4) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employeeeducations`
--

INSERT INTO `employeeeducations` (`id`, `level`, `degreetitle`, `major`, `institute`, `achievement`, `result`, `cgpa`, `hidecgpa`, `passingyear`, `duration`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor/Honors', 'BSc. in Engineering', 'CSE', 'KUET', 'Example achievement', 'First Division/Class', 3.55, 1, 2017, 4, 1, '2018-09-10 03:17:27', '2018-09-10 03:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `employeeotherinfos`
--

CREATE TABLE `employeeotherinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `careersummary` text COLLATE utf8mb4_unicode_ci,
  `specialqualification` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employeeotherinfos`
--

INSERT INTO `employeeotherinfos` (`id`, `careersummary`, `specialqualification`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Example Career Summary', 'Laravel', 'Engineer', 1, '2018-09-10 00:37:07', '2018-09-10 00:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `employeetrainings`
--

CREATE TABLE `employeetrainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `duration` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employeetrainings`
--

INSERT INTO `employeetrainings` (`id`, `title`, `topics`, `institute`, `location`, `country`, `year`, `duration`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cisco', 'Networking', 'KUET', 'Khulna', 'Bangladesh', 2016, '6 mnts', 1, '2018-09-10 03:38:42', '2018-09-10 03:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `employments`
--

CREATE TABLE `employments` (
  `id` int(10) UNSIGNED NOT NULL,
  `cname` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbusiness` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areaofexperiences` text COLLATE utf8mb4_unicode_ci,
  `responsibilities` text COLLATE utf8mb4_unicode_ci,
  `clocation` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `continuing` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employments`
--

INSERT INTO `employments` (`id`, `cname`, `cbusiness`, `designation`, `department`, `areaofexperiences`, `responsibilities`, `clocation`, `fromdate`, `todate`, `continuing`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Celltron EMS', 'Software', 'Software Engineer', 'Software Team', 'Laravel', 'Example responsibilities', 'Dhaka', '2017-05-05', NULL, 1, 1, '2018-09-10 05:35:42', '2018-09-12 06:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `industrytypes`
--

CREATE TABLE `industrytypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `industrytype` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industrytypes`
--

INSERT INTO `industrytypes` (`id`, `industrytype`, `created_at`, `updated_at`) VALUES
(1, 'Agro based firms (incl. Agro Processing/Seed/GM)  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Architecture Firm  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Banks  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bicycle  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Buying House  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Cement  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Chemical Industries  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Club  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Coal  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Consulting Firms  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Credit Rating Agency  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Departmental store  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Diagnostic Centre  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Dyeing Factory  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Embassies/Foreign Consulate  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Farming  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Financial Consultants  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Food (Packaged)/Beverage  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Furniture Manufacturer  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Gas  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Group of Companies  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Healthcare/Lifestyle product  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'HVAC System  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Importer  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Industrial Machineries (Generator/ Diesel Engine etc.)  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Investment/Merchant Banking  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Jute Goods/ Jute Yarn  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Law Firm  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'LPG Gas/Cylinder Gas  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Manufacturing (Light Engineering &amp; Heavy Industry)  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Mineral Water  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Motor Vehicle body manufacturer  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Newspaper/Magazine  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Packaging Industry  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Party/ Community Center  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Plastic/ Polymer Industry  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Power  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Radio  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Research Organization  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Salt  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Science Laboratory  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Shipyard  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Spinning  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Supply Chain  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Tannery/Footwear  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Textile  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Toiletries  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Training Institutes  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Tyre manufacturer  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Watch  \r', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobinfos`
--

CREATE TABLE `jobinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancies` int(11) DEFAULT NULL,
  `employeestatus` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date DEFAULT NULL,
  `resumeopt` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photoopt` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobinfos`
--

INSERT INTO `jobinfos` (`id`, `title`, `vacancies`, `employeestatus`, `deadline`, `resumeopt`, `photoopt`, `created_at`, `updated_at`, `user_id`, `status`) VALUES
(1, 'EEE engineer', 2, 'fulltime', '2018-09-17', 'applyonline', 1, '2018-09-15 15:19:07', '2018-09-08 05:19:07', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reading` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speaking` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `reading`, `writing`, `speaking`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'english', 'high', 'high', 'high', 1, '2018-09-12 08:13:39', '2018-09-12 08:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-09-05 00:42:48', '2018-09-05 00:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-09-05 00:42:48', '2018-09-05 00:42:48', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-09-05 00:42:48', '2018-09-05 04:07:28', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-09-05 00:42:48', '2018-09-05 00:42:48', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-09-05 00:42:48', '2018-09-05 00:42:48', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2018-09-05 00:42:48', '2018-09-05 04:07:28', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-09-05 00:42:48', '2018-09-05 04:07:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-09-05 00:42:48', '2018-09-05 04:07:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-09-05 00:42:48', '2018-09-05 04:07:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-09-05 00:42:48', '2018-09-05 04:07:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2018-09-05 00:42:48', '2018-09-05 04:07:28', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-09-05 00:42:48', '2018-09-05 04:07:28', 'voyager.hooks', NULL),
(12, 1, 'Industrytypes', '', '_self', 'voyager-home', NULL, NULL, 7, '2018-09-05 02:35:11', '2018-09-05 04:07:28', 'voyager.industrytypes.index', NULL),
(13, 1, 'Company Details', '', '_self', 'voyager-archive', '#000000', 15, 1, '2018-09-05 03:27:56', '2018-09-05 04:07:30', 'voyager.companydetails.index', 'null'),
(14, 1, 'Primary Contact Details', '', '_self', 'voyager-telephone', NULL, 15, 2, '2018-09-05 03:59:50', '2018-09-05 04:07:32', 'voyager.contactdetails.index', NULL),
(15, 1, 'Employer', '', '_self', 'voyager-megaphone', '#000000', NULL, 10, '2018-09-05 04:07:23', '2018-09-06 05:24:42', NULL, ''),
(16, 1, 'Browsecategories', '', '_self', 'voyager-search', NULL, NULL, 8, '2018-09-06 02:03:40', '2018-09-06 05:07:14', 'voyager.browsecategories.index', NULL),
(17, 1, 'Job Infos', '', '_self', 'voyager-pen', NULL, 20, 1, '2018-09-06 02:14:26', '2018-09-06 05:07:18', 'voyager.jobinfos.index', NULL),
(18, 1, 'Additional Job Infos', '', '_self', 'voyager-params', NULL, 20, 2, '2018-09-06 03:37:17', '2018-09-06 05:07:20', 'voyager.addjobinfos.index', NULL),
(19, 1, 'Candidate Requirements', '', '_self', 'voyager-plug', NULL, 20, 3, '2018-09-06 05:02:44', '2018-09-06 05:07:21', 'voyager.candidaterequirements.index', NULL),
(21, 1, 'Job Infos', '/admin/jobinfos', '_self', 'voyager-pen', '#000000', 15, 3, '2018-09-06 05:12:26', '2018-09-06 05:12:38', NULL, ''),
(22, 1, 'Additional Job Infos', '/admin/addjobinfos', '_self', 'voyager-params', '#000000', 15, 4, '2018-09-06 05:13:39', '2018-09-06 05:13:43', NULL, ''),
(23, 1, 'Candidate Requirements', '/admin/candidaterequirements', '_self', 'voyager-study', '#000000', 15, 5, '2018-09-06 05:14:37', '2018-09-06 05:14:41', NULL, ''),
(24, 1, 'Benefits', '', '_self', 'voyager-thumbs-up', NULL, NULL, 9, '2018-09-06 05:24:32', '2018-09-06 05:24:42', 'voyager.benefits.index', NULL),
(25, 1, 'Personal Informations', '', '_self', 'voyager-info-circled', NULL, 28, 1, '2018-09-09 05:06:55', '2018-09-09 22:58:04', 'voyager.personalinfos.index', NULL),
(26, 1, 'Career Informations', '', '_self', 'voyager-barbell', '#000000', 28, 2, '2018-09-09 07:22:31', '2018-09-10 04:11:46', 'voyager.employeecareerinfos.index', 'null'),
(27, 1, 'Preferred Areas', '', '_self', 'voyager-location', NULL, 28, 3, '2018-09-09 07:58:54', '2018-09-09 22:58:06', 'voyager.preferredareas.index', NULL),
(28, 1, 'Employee', '', '_self', 'voyager-hammer', '#000000', NULL, 11, '2018-09-09 22:57:54', '2018-09-09 22:58:00', NULL, ''),
(29, 1, 'Other Informations', '', '_self', 'voyager-pie-chart', NULL, 28, 4, '2018-09-10 00:25:33', '2018-09-10 04:11:19', 'voyager.employeeotherinfos.index', NULL),
(30, 1, 'Educations', '', '_self', 'voyager-study', NULL, 28, 5, '2018-09-10 01:22:06', '2018-09-10 04:11:21', 'voyager.employeeeducations.index', NULL),
(31, 1, 'Trainings', '', '_self', 'voyager-bulb', NULL, 28, 6, '2018-09-10 02:55:08', '2018-09-10 04:11:22', 'voyager.employeetrainings.index', NULL),
(32, 1, 'Professional Qualifications', '', '_self', 'voyager-trophy', NULL, 28, 7, '2018-09-10 04:05:55', '2018-09-10 04:11:23', 'voyager.employeeprofessionalqualifications.index', NULL),
(33, 1, 'Employments', '', '_self', 'voyager-receipt', NULL, 28, 8, '2018-09-10 05:15:30', '2018-09-13 07:25:36', 'voyager.employments.index', NULL),
(34, 1, 'Retired Army Employment', '', '_self', 'voyager-star-two', NULL, 28, 9, '2018-09-12 06:46:24', '2018-09-13 07:25:37', 'voyager.armyemployments.index', NULL),
(35, 1, 'Specializations', '', '_self', 'voyager-certificate', NULL, 28, 10, '2018-09-12 07:30:29', '2018-09-13 07:25:38', 'voyager.specializations.index', NULL),
(36, 1, 'Languages', '', '_self', 'voyager-leaf', NULL, 28, 11, '2018-09-12 08:03:20', '2018-09-13 07:25:43', 'voyager.languages.index', NULL),
(37, 1, 'References', '', '_self', 'voyager-logbook', NULL, 28, 12, '2018-09-12 08:41:39', '2018-09-13 07:25:45', 'voyager.references.index', NULL),
(38, 1, 'Cvs', '', '_self', 'voyager-file-text', NULL, 28, 13, '2018-09-12 10:08:07', '2018-09-13 07:25:45', 'voyager.cvs.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(26, '2016_06_01_000004_create_oauth_clients_table', 2),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('136a0f7a1596da33166b8cee535085b840f34e77c9fde8a44d6a77916bebd5daf57abf48c8344387', 1, 1, 'jobhub', '[]', 0, '2018-09-08 05:36:43', '2018-09-08 05:36:43', '2019-09-08 11:36:43'),
('4de6064224fe5240a4af0e98bd32b4eacbacbc6e396ad8d1658cd05161466664b74a82aefb1a18a0', 1, 1, 'jobhub', '[]', 0, '2018-09-05 02:09:46', '2018-09-05 02:09:46', '2019-09-05 08:09:46'),
('5a31def8543580c3daa7c5bdc5ad784cfc2140f2adc651f9059a83e592002d4da0dd0431e2283d28', 2, 1, 'jobhub', '[]', 0, '2018-09-11 02:31:49', '2018-09-11 02:31:49', '2019-09-11 08:31:49'),
('5dc70f23dc53e6318786c5e6d2145ee8a4715efa77e2f50607fb089c2d336042207aeb6ed04fe9a6', 2, 1, 'jobhub', '[]', 0, '2018-09-11 00:39:55', '2018-09-11 00:39:55', '2019-09-11 06:39:55'),
('68443b4e479ec1e60c4d8d19bd65d8294ba4cf7e94dd420e67bc2eef872e44589818aed35a9e69f1', 1, 1, 'jobhub', '[]', 0, '2018-09-08 05:27:27', '2018-09-08 05:27:27', '2019-09-08 11:27:27'),
('92247754093d1f9122e79fdcc6dccbb969791c386df21f5e2aac04446da7b6f0fe31f693702125c8', 2, 1, 'jobhub', '[]', 0, '2018-09-11 02:31:49', '2018-09-11 02:31:49', '2019-09-11 08:31:49'),
('9b3a4eae97be8975f4fdc71edc42fea5f741256e1164ddaf23f017bb7444bfb955c436ba24314c63', 1, 1, 'jobhub', '[]', 0, '2018-09-05 01:45:12', '2018-09-05 01:45:12', '2019-09-05 07:45:12'),
('d8614dab73ccb4fe62b7d80250def424e741e3bb0b3e0551edde7b3de39c090a60cb7c6e4a223aa6', 2, 1, 'jobhub', '[]', 0, '2018-09-08 01:38:33', '2018-09-08 01:38:33', '2019-09-08 07:38:33'),
('dd42a1abaf963bf2a987f27b2e021fe5701c242bbf43b29afd300f0828b992c887b40e8c06fa5d43', 1, 1, 'jobhub', '[]', 0, '2018-09-05 02:09:54', '2018-09-05 02:09:54', '2019-09-05 08:09:54'),
('ecb9f745d251263299823883929884d9a6ec1815d4664db35c20ed727837c5a5174315cb09052017', 1, 1, 'jobhub', '[]', 0, '2018-09-05 01:39:57', '2018-09-05 01:39:57', '2019-09-05 07:39:57'),
('fef464fc551b6eb6c6e7f9d91ac8cd724919388a11f24241c7c793115f7ffb2e6ff503ebe995c896', 1, 1, 'jobhub', '[]', 0, '2018-09-09 06:07:18', '2018-09-09 06:07:18', '2019-09-09 12:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'af4fwDXc9G8hGkTkKwLByyowLUMVHI3gosWB3nTs', 'http://localhost', 1, 0, 0, '2018-09-05 01:31:33', '2018-09-05 01:31:33'),
(2, NULL, 'Laravel Password Grant Client', 'QBt2A27lbNs6hyb9jkqmAZ26pcQr1rab8qLsr6M0', 'http://localhost', 0, 1, 0, '2018-09-05 01:31:33', '2018-09-05 01:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-09-05 01:31:33', '2018-09-05 01:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(2, 'browse_bread', NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(3, 'browse_database', NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(4, 'browse_media', NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(5, 'browse_compass', NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(6, 'browse_menus', 'menus', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(7, 'read_menus', 'menus', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(8, 'edit_menus', 'menus', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(9, 'add_menus', 'menus', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(10, 'delete_menus', 'menus', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(11, 'browse_roles', 'roles', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(12, 'read_roles', 'roles', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(13, 'edit_roles', 'roles', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(14, 'add_roles', 'roles', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(15, 'delete_roles', 'roles', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(16, 'browse_users', 'users', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(17, 'read_users', 'users', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(18, 'edit_users', 'users', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(19, 'add_users', 'users', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(20, 'delete_users', 'users', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(21, 'browse_settings', 'settings', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(22, 'read_settings', 'settings', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(23, 'edit_settings', 'settings', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(24, 'add_settings', 'settings', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(25, 'delete_settings', 'settings', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(26, 'browse_hooks', NULL, '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(27, 'browse_industrytypes', 'industrytypes', '2018-09-05 02:35:11', '2018-09-05 02:35:11'),
(28, 'read_industrytypes', 'industrytypes', '2018-09-05 02:35:11', '2018-09-05 02:35:11'),
(29, 'edit_industrytypes', 'industrytypes', '2018-09-05 02:35:11', '2018-09-05 02:35:11'),
(30, 'add_industrytypes', 'industrytypes', '2018-09-05 02:35:11', '2018-09-05 02:35:11'),
(31, 'delete_industrytypes', 'industrytypes', '2018-09-05 02:35:11', '2018-09-05 02:35:11'),
(32, 'browse_companydetails', 'companydetails', '2018-09-05 03:27:56', '2018-09-05 03:27:56'),
(33, 'read_companydetails', 'companydetails', '2018-09-05 03:27:56', '2018-09-05 03:27:56'),
(34, 'edit_companydetails', 'companydetails', '2018-09-05 03:27:56', '2018-09-05 03:27:56'),
(35, 'add_companydetails', 'companydetails', '2018-09-05 03:27:56', '2018-09-05 03:27:56'),
(36, 'delete_companydetails', 'companydetails', '2018-09-05 03:27:56', '2018-09-05 03:27:56'),
(37, 'browse_contactdetails', 'contactdetails', '2018-09-05 03:59:50', '2018-09-05 03:59:50'),
(38, 'read_contactdetails', 'contactdetails', '2018-09-05 03:59:50', '2018-09-05 03:59:50'),
(39, 'edit_contactdetails', 'contactdetails', '2018-09-05 03:59:50', '2018-09-05 03:59:50'),
(40, 'add_contactdetails', 'contactdetails', '2018-09-05 03:59:50', '2018-09-05 03:59:50'),
(41, 'delete_contactdetails', 'contactdetails', '2018-09-05 03:59:50', '2018-09-05 03:59:50'),
(42, 'browse_browsecategories', 'browsecategories', '2018-09-06 02:03:40', '2018-09-06 02:03:40'),
(43, 'read_browsecategories', 'browsecategories', '2018-09-06 02:03:40', '2018-09-06 02:03:40'),
(44, 'edit_browsecategories', 'browsecategories', '2018-09-06 02:03:40', '2018-09-06 02:03:40'),
(45, 'add_browsecategories', 'browsecategories', '2018-09-06 02:03:40', '2018-09-06 02:03:40'),
(46, 'delete_browsecategories', 'browsecategories', '2018-09-06 02:03:40', '2018-09-06 02:03:40'),
(47, 'browse_jobinfos', 'jobinfos', '2018-09-06 02:14:26', '2018-09-06 02:14:26'),
(48, 'read_jobinfos', 'jobinfos', '2018-09-06 02:14:26', '2018-09-06 02:14:26'),
(49, 'edit_jobinfos', 'jobinfos', '2018-09-06 02:14:26', '2018-09-06 02:14:26'),
(50, 'add_jobinfos', 'jobinfos', '2018-09-06 02:14:26', '2018-09-06 02:14:26'),
(51, 'delete_jobinfos', 'jobinfos', '2018-09-06 02:14:26', '2018-09-06 02:14:26'),
(52, 'browse_addjobinfos', 'addjobinfos', '2018-09-06 03:37:17', '2018-09-06 03:37:17'),
(53, 'read_addjobinfos', 'addjobinfos', '2018-09-06 03:37:17', '2018-09-06 03:37:17'),
(54, 'edit_addjobinfos', 'addjobinfos', '2018-09-06 03:37:17', '2018-09-06 03:37:17'),
(55, 'add_addjobinfos', 'addjobinfos', '2018-09-06 03:37:17', '2018-09-06 03:37:17'),
(56, 'delete_addjobinfos', 'addjobinfos', '2018-09-06 03:37:17', '2018-09-06 03:37:17'),
(57, 'browse_candidaterequirements', 'candidaterequirements', '2018-09-06 05:02:44', '2018-09-06 05:02:44'),
(58, 'read_candidaterequirements', 'candidaterequirements', '2018-09-06 05:02:44', '2018-09-06 05:02:44'),
(59, 'edit_candidaterequirements', 'candidaterequirements', '2018-09-06 05:02:44', '2018-09-06 05:02:44'),
(60, 'add_candidaterequirements', 'candidaterequirements', '2018-09-06 05:02:44', '2018-09-06 05:02:44'),
(61, 'delete_candidaterequirements', 'candidaterequirements', '2018-09-06 05:02:44', '2018-09-06 05:02:44'),
(62, 'browse_benefits', 'benefits', '2018-09-06 05:24:32', '2018-09-06 05:24:32'),
(63, 'read_benefits', 'benefits', '2018-09-06 05:24:32', '2018-09-06 05:24:32'),
(64, 'edit_benefits', 'benefits', '2018-09-06 05:24:32', '2018-09-06 05:24:32'),
(65, 'add_benefits', 'benefits', '2018-09-06 05:24:32', '2018-09-06 05:24:32'),
(66, 'delete_benefits', 'benefits', '2018-09-06 05:24:32', '2018-09-06 05:24:32'),
(67, 'browse_personalinfos', 'personalinfos', '2018-09-09 05:06:55', '2018-09-09 05:06:55'),
(68, 'read_personalinfos', 'personalinfos', '2018-09-09 05:06:55', '2018-09-09 05:06:55'),
(69, 'edit_personalinfos', 'personalinfos', '2018-09-09 05:06:55', '2018-09-09 05:06:55'),
(70, 'add_personalinfos', 'personalinfos', '2018-09-09 05:06:55', '2018-09-09 05:06:55'),
(71, 'delete_personalinfos', 'personalinfos', '2018-09-09 05:06:55', '2018-09-09 05:06:55'),
(72, 'browse_employeecareerinfos', 'employeecareerinfos', '2018-09-09 07:22:31', '2018-09-09 07:22:31'),
(73, 'read_employeecareerinfos', 'employeecareerinfos', '2018-09-09 07:22:31', '2018-09-09 07:22:31'),
(74, 'edit_employeecareerinfos', 'employeecareerinfos', '2018-09-09 07:22:31', '2018-09-09 07:22:31'),
(75, 'add_employeecareerinfos', 'employeecareerinfos', '2018-09-09 07:22:31', '2018-09-09 07:22:31'),
(76, 'delete_employeecareerinfos', 'employeecareerinfos', '2018-09-09 07:22:31', '2018-09-09 07:22:31'),
(77, 'browse_preferredareas', 'preferredareas', '2018-09-09 07:58:54', '2018-09-09 07:58:54'),
(78, 'read_preferredareas', 'preferredareas', '2018-09-09 07:58:54', '2018-09-09 07:58:54'),
(79, 'edit_preferredareas', 'preferredareas', '2018-09-09 07:58:54', '2018-09-09 07:58:54'),
(80, 'add_preferredareas', 'preferredareas', '2018-09-09 07:58:54', '2018-09-09 07:58:54'),
(81, 'delete_preferredareas', 'preferredareas', '2018-09-09 07:58:54', '2018-09-09 07:58:54'),
(82, 'browse_employeeotherinfos', 'employeeotherinfos', '2018-09-10 00:25:33', '2018-09-10 00:25:33'),
(83, 'read_employeeotherinfos', 'employeeotherinfos', '2018-09-10 00:25:33', '2018-09-10 00:25:33'),
(84, 'edit_employeeotherinfos', 'employeeotherinfos', '2018-09-10 00:25:33', '2018-09-10 00:25:33'),
(85, 'add_employeeotherinfos', 'employeeotherinfos', '2018-09-10 00:25:33', '2018-09-10 00:25:33'),
(86, 'delete_employeeotherinfos', 'employeeotherinfos', '2018-09-10 00:25:33', '2018-09-10 00:25:33'),
(87, 'browse_employeeeducations', 'employeeeducations', '2018-09-10 01:22:06', '2018-09-10 01:22:06'),
(88, 'read_employeeeducations', 'employeeeducations', '2018-09-10 01:22:06', '2018-09-10 01:22:06'),
(89, 'edit_employeeeducations', 'employeeeducations', '2018-09-10 01:22:06', '2018-09-10 01:22:06'),
(90, 'add_employeeeducations', 'employeeeducations', '2018-09-10 01:22:06', '2018-09-10 01:22:06'),
(91, 'delete_employeeeducations', 'employeeeducations', '2018-09-10 01:22:06', '2018-09-10 01:22:06'),
(92, 'browse_employeetrainings', 'employeetrainings', '2018-09-10 02:55:08', '2018-09-10 02:55:08'),
(93, 'read_employeetrainings', 'employeetrainings', '2018-09-10 02:55:08', '2018-09-10 02:55:08'),
(94, 'edit_employeetrainings', 'employeetrainings', '2018-09-10 02:55:08', '2018-09-10 02:55:08'),
(95, 'add_employeetrainings', 'employeetrainings', '2018-09-10 02:55:08', '2018-09-10 02:55:08'),
(96, 'delete_employeetrainings', 'employeetrainings', '2018-09-10 02:55:08', '2018-09-10 02:55:08'),
(97, 'browse_employeeprofessionalqualifications', 'employeeprofessionalqualifications', '2018-09-10 04:05:55', '2018-09-10 04:05:55'),
(98, 'read_employeeprofessionalqualifications', 'employeeprofessionalqualifications', '2018-09-10 04:05:55', '2018-09-10 04:05:55'),
(99, 'edit_employeeprofessionalqualifications', 'employeeprofessionalqualifications', '2018-09-10 04:05:55', '2018-09-10 04:05:55'),
(100, 'add_employeeprofessionalqualifications', 'employeeprofessionalqualifications', '2018-09-10 04:05:55', '2018-09-10 04:05:55'),
(101, 'delete_employeeprofessionalqualifications', 'employeeprofessionalqualifications', '2018-09-10 04:05:55', '2018-09-10 04:05:55'),
(102, 'browse_employments', 'employments', '2018-09-10 05:15:30', '2018-09-10 05:15:30'),
(103, 'read_employments', 'employments', '2018-09-10 05:15:30', '2018-09-10 05:15:30'),
(104, 'edit_employments', 'employments', '2018-09-10 05:15:30', '2018-09-10 05:15:30'),
(105, 'add_employments', 'employments', '2018-09-10 05:15:30', '2018-09-10 05:15:30'),
(106, 'delete_employments', 'employments', '2018-09-10 05:15:30', '2018-09-10 05:15:30'),
(107, 'browse_armyemployments', 'armyemployments', '2018-09-12 06:46:23', '2018-09-12 06:46:23'),
(108, 'read_armyemployments', 'armyemployments', '2018-09-12 06:46:23', '2018-09-12 06:46:23'),
(109, 'edit_armyemployments', 'armyemployments', '2018-09-12 06:46:23', '2018-09-12 06:46:23'),
(110, 'add_armyemployments', 'armyemployments', '2018-09-12 06:46:23', '2018-09-12 06:46:23'),
(111, 'delete_armyemployments', 'armyemployments', '2018-09-12 06:46:23', '2018-09-12 06:46:23'),
(112, 'browse_specializations', 'specializations', '2018-09-12 07:30:29', '2018-09-12 07:30:29'),
(113, 'read_specializations', 'specializations', '2018-09-12 07:30:29', '2018-09-12 07:30:29'),
(114, 'edit_specializations', 'specializations', '2018-09-12 07:30:29', '2018-09-12 07:30:29'),
(115, 'add_specializations', 'specializations', '2018-09-12 07:30:29', '2018-09-12 07:30:29'),
(116, 'delete_specializations', 'specializations', '2018-09-12 07:30:29', '2018-09-12 07:30:29'),
(117, 'browse_languages', 'languages', '2018-09-12 08:03:20', '2018-09-12 08:03:20'),
(118, 'read_languages', 'languages', '2018-09-12 08:03:20', '2018-09-12 08:03:20'),
(119, 'edit_languages', 'languages', '2018-09-12 08:03:20', '2018-09-12 08:03:20'),
(120, 'add_languages', 'languages', '2018-09-12 08:03:20', '2018-09-12 08:03:20'),
(121, 'delete_languages', 'languages', '2018-09-12 08:03:20', '2018-09-12 08:03:20'),
(122, 'browse_references', 'references', '2018-09-12 08:41:39', '2018-09-12 08:41:39'),
(123, 'read_references', 'references', '2018-09-12 08:41:39', '2018-09-12 08:41:39'),
(124, 'edit_references', 'references', '2018-09-12 08:41:39', '2018-09-12 08:41:39'),
(125, 'add_references', 'references', '2018-09-12 08:41:39', '2018-09-12 08:41:39'),
(126, 'delete_references', 'references', '2018-09-12 08:41:39', '2018-09-12 08:41:39'),
(127, 'browse_cvs', 'cvs', '2018-09-12 10:08:07', '2018-09-12 10:08:07'),
(128, 'read_cvs', 'cvs', '2018-09-12 10:08:07', '2018-09-12 10:08:07'),
(129, 'edit_cvs', 'cvs', '2018-09-12 10:08:07', '2018-09-12 10:08:07'),
(130, 'add_cvs', 'cvs', '2018-09-12 10:08:07', '2018-09-12 10:08:07'),
(131, 'delete_cvs', 'cvs', '2018-09-12 10:08:07', '2018-09-12 10:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personalinfos`
--

CREATE TABLE `personalinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maritalstatus` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` bigint(20) DEFAULT NULL,
  `presentaddress` text COLLATE utf8mb4_unicode_ci,
  `permanentaddress` text COLLATE utf8mb4_unicode_ci,
  `currentloc` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altemail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retiredarmy` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personalinfos`
--

INSERT INTO `personalinfos` (`id`, `firstname`, `lastname`, `father`, `mother`, `dob`, `gender`, `religion`, `maritalstatus`, `nationality`, `nid`, `presentaddress`, `permanentaddress`, `currentloc`, `mobile1`, `mobile2`, `email`, `altemail`, `retiredarmy`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Foysal', 'Nibir', 'Md. Motiar Rahaman', 'Mst. Farida Parvin', '1993-11-10', 'male', 'muslim', 'unmarried', 'Bangladeshi', 19951022011000072, 'Basila, Dhaka', 'SHAPNOKUNJO, MALATINAGAR MATIR MOSHJID LEN, MOLLAPARA, BOGRA., Bogra hq, Bogra', 'Dhaka', '01758382828', '01834220061', 'nibir2k12@gmail.com', 'nibir2k12@yahoo.com', 0, 1, '2018-09-09 06:13:38', '2018-09-09 06:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `preferredareas`
--

CREATE TABLE `preferredareas` (
  `id` int(10) UNSIGNED NOT NULL,
  `joblocinbd` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joblocioutbd` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferredorg` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferredareas`
--

INSERT INTO `preferredareas` (`id`, `joblocinbd`, `joblocioutbd`, `preferredorg`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Dhaka', 'Canada', 'Software Industries', '2018-09-10 00:09:47', '2018-09-10 00:10:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `professionalqualifications`
--

CREATE TABLE `professionalqualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `certification` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professionalqualifications`
--

INSERT INTO `professionalqualifications` (`id`, `certification`, `institute`, `location`, `fromdate`, `todate`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Example certification', 'KUET', 'Khulna', '2014-08-08', '2016-08-08', 1, '2018-09-10 04:19:00', '2018-09-10 04:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` text COLLATE utf8mb4_unicode_ci,
  `designation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `officephone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resphone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `name`, `organization`, `designation`, `officephone`, `resphone`, `mobile`, `email`, `relation`, `address`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'zahan safallwa', 'Celltron', 'CTO', '05168028', '05168039', '01758382828', 'safallwa@gmail.com', 'professional', 'Bosila Dhaka', 1, '2018-09-12 08:53:12', '2018-09-12 08:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(2, 'user', 'Normal User', '2018-09-05 00:42:48', '2018-09-05 00:42:48'),
(3, 'employee', 'Employee', '2018-09-05 02:06:49', '2018-09-05 02:06:49'),
(4, 'employer', 'Employer', '2018-09-05 02:07:08', '2018-09-05 02:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci,
  `skillsdescription` text COLLATE utf8mb4_unicode_ci,
  `extracurricular` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `skills`, `skillsdescription`, `extracurricular`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'Example  description', 'Example extracurricular activities', 1, '2018-09-12 07:45:01', '2018-09-12 07:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Foysal', 'nibir2k12@gmail.com', 'users/default.png', '$2y$10$STQDd3zljFYGaBjRWekbNujWtXpXrf.e/UI25u8ZM7meBaoKl9T4u', NULL, NULL, '2018-09-05 01:02:08', '2018-09-05 01:02:08'),
(2, 4, 'Nibir', 'nibir2k12@yahoo.com', 'users/default.png', '$2y$10$mc5X15V4ElQHbwHfGMa4/uzg7MyKhlTW.c2TUKvk3yQr90YIcJD.C', NULL, NULL, '2018-09-08 01:07:46', '2018-09-08 01:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addjobinfos`
--
ALTER TABLE `addjobinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `armyemployments`
--
ALTER TABLE `armyemployments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `browsecategories`
--
ALTER TABLE `browsecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidaterequirements`
--
ALTER TABLE `candidaterequirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companydetails`
--
ALTER TABLE `companydetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cvs_user_id_unique` (`user_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `employeecareerinfos`
--
ALTER TABLE `employeecareerinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeeducations`
--
ALTER TABLE `employeeeducations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeeotherinfos`
--
ALTER TABLE `employeeotherinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeetrainings`
--
ALTER TABLE `employeetrainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employments`
--
ALTER TABLE `employments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industrytypes`
--
ALTER TABLE `industrytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobinfos`
--
ALTER TABLE `jobinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personalinfos`
--
ALTER TABLE `personalinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferredareas`
--
ALTER TABLE `preferredareas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professionalqualifications`
--
ALTER TABLE `professionalqualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addjobinfos`
--
ALTER TABLE `addjobinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `armyemployments`
--
ALTER TABLE `armyemployments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `browsecategories`
--
ALTER TABLE `browsecategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `candidaterequirements`
--
ALTER TABLE `candidaterequirements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companydetails`
--
ALTER TABLE `companydetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employeecareerinfos`
--
ALTER TABLE `employeecareerinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employeeeducations`
--
ALTER TABLE `employeeeducations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employeeotherinfos`
--
ALTER TABLE `employeeotherinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employeetrainings`
--
ALTER TABLE `employeetrainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employments`
--
ALTER TABLE `employments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `industrytypes`
--
ALTER TABLE `industrytypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `jobinfos`
--
ALTER TABLE `jobinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `personalinfos`
--
ALTER TABLE `personalinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `preferredareas`
--
ALTER TABLE `preferredareas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `professionalqualifications`
--
ALTER TABLE `professionalqualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
