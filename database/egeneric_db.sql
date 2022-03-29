-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 08:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egeneric_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `admin_id` int(3) NOT NULL,
  `admin_email_id` varchar(25) NOT NULL,
  `admin_pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`admin_id`, `admin_email_id`, `admin_pass`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `area_master`
--

CREATE TABLE `area_master` (
  `area_id` int(3) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `city_id` int(3) NOT NULL,
  `state_id` int(3) NOT NULL,
  `country_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_master`
--

INSERT INTO `area_master` (`area_id`, `area_name`, `city_id`, `state_id`, `country_id`) VALUES
(12, 'Bopal', 1, 4, 99),
(13, 'Ishanpur', 1, 4, 99),
(14, 'Maninagar', 1, 4, 99),
(15, 'Naroda', 1, 4, 99),
(16, 'Navrangpura', 1, 4, 99),
(17, 'Nikol', 1, 4, 99),
(18, 'Paldi', 1, 4, 99),
(19, 'Ranip', 1, 4, 99),
(20, 'Sarkhej', 1, 4, 99),
(21, 'Vasna', 1, 4, 99),
(22, 'Vastral', 1, 4, 99),
(23, 'Motera', 1, 4, 99),
(24, 'Kalanala', 2, 4, 99),
(25, 'New 150ft Ring Road', 2, 4, 99),
(26, 'Yagnik Road', 2, 4, 99),
(27, 'Race Course', 2, 4, 99),
(28, 'Adagan', 3, 4, 99),
(29, 'Ring Road', 3, 4, 99),
(30, 'Udhna', 3, 4, 99),
(31, 'Varchhal', 3, 4, 99),
(32, 'Akhota', 4, 4, 99),
(33, 'Alkapuri', 4, 4, 99),
(34, 'Manjhalpur', 4, 4, 99),
(35, 'Raopur', 4, 4, 99),
(36, 'Wagodiya', 4, 4, 99),
(37, 'Bhavnagar-Rajkot Road', 5, 4, 99),
(38, 'Chitra', 5, 4, 99),
(39, 'Kalnala', 5, 4, 99),
(40, 'Kaliabhind', 5, 4, 99),
(41, 'Panwadi', 5, 4, 99),
(42, 'Sihor', 5, 4, 99),
(43, 'Vartej', 5, 4, 99),
(44, 'Vijayraj Nagar', 5, 4, 99),
(45, 'chiatal Road', 10, 4, 99);

-- --------------------------------------------------------

--
-- Table structure for table `city_master`
--

CREATE TABLE `city_master` (
  `city_id` int(3) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `state_id` int(3) NOT NULL,
  `country_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_master`
--

INSERT INTO `city_master` (`city_id`, `city_name`, `state_id`, `country_id`) VALUES
(1, 'Ahmedabad', 4, 99),
(2, 'Rajkot', 4, 99),
(3, 'Surat', 4, 99),
(4, 'Vadodara', 4, 99),
(5, 'Bhavnagar', 4, 99),
(10, 'Amreli', 4, 99);

-- --------------------------------------------------------

--
-- Table structure for table `common_signup_master`
--

CREATE TABLE `common_signup_master` (
  `common_signup_id` int(5) NOT NULL,
  `common_first_name` varchar(20) NOT NULL,
  `common_last_name` varchar(20) NOT NULL,
  `common_gender` varchar(6) NOT NULL,
  `common_dob` date NOT NULL,
  `common_phone` bigint(10) NOT NULL,
  `common_blood_group` text NOT NULL,
  `common_email` text NOT NULL,
  `pass_wd` varchar(50) NOT NULL,
  `area_id` int(3) DEFAULT NULL,
  `city_id` int(3) NOT NULL,
  `state_id` int(3) NOT NULL,
  `country_id` int(3) NOT NULL,
  `user_type_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `common_signup_master`
--

INSERT INTO `common_signup_master` (`common_signup_id`, `common_first_name`, `common_last_name`, `common_gender`, `common_dob`, `common_phone`, `common_blood_group`, `common_email`, `pass_wd`, `area_id`, `city_id`, `state_id`, `country_id`, `user_type_id`) VALUES
(1, 'Anup', 'Kadiya', 'Male', '2002-01-22', 9898996085, 'B+', 'anup@gmail.com', 'anup1234', 17, 1, 4, 99, 6),
(2, 'MedicalExpert ', 'Kadiya', 'Male', '2002-06-12', 9845133321, 'B+', 'medicalexpert@demo.com', 'qwerty', 12, 1, 4, 99, 5);

-- --------------------------------------------------------

--
-- Table structure for table `content_master`
--

CREATE TABLE `content_master` (
  `content_id` int(10) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_master`
--

INSERT INTO `content_master` (`content_id`, `content`) VALUES
(6, 'Mg'),
(7, 'Mcg');

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
  `country_id` int(3) NOT NULL,
  `cn` varchar(10) NOT NULL,
  `country_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_master`
--

INSERT INTO `country_master` (`country_id`, `cn`, `country_name`) VALUES
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_request_master`
--

CREATE TABLE `doctor_request_master` (
  `u_id` int(3) NOT NULL,
  `u_type_id` int(3) NOT NULL,
  `u_img` varchar(500) NOT NULL,
  `u_name` varchar(40) NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_birthdate` date NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `u_phn` bigint(10) NOT NULL,
  `u_bg` varchar(10) NOT NULL,
  `allergy_id` int(3) NOT NULL,
  `u_email` varchar(25) NOT NULL,
  `u_pwd` varchar(25) NOT NULL,
  `area_id` int(3) NOT NULL,
  `u_is_verfied` int(3) NOT NULL,
  `u_is_active` int(3) NOT NULL,
  `certificate_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drug_master`
--

CREATE TABLE `drug_master` (
  `drug_id` int(3) NOT NULL,
  `drug_name` varchar(20) NOT NULL,
  `drug_type` varchar(20) NOT NULL,
  `drug_content` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_master`
--

INSERT INTO `drug_master` (`drug_id`, `drug_name`, `drug_type`, `drug_content`) VALUES
(5, 'paracetamol', 'Not Prescribed', ''),
(6, 'Acetaminophen', 'Not Prescribed', ''),
(7, 'Acelofenac', 'Not Prescribed', ''),
(8, 'Serratiopeptidase', 'Not Prescribed', ''),
(9, 'Thyroxine', 'Not Prescribed', ''),
(10, 'Levothyroxine', 'Not Prescribed', ''),
(11, 'Torasemide', 'Not Prescribed', ''),
(12, 'Voglibose', 'Not Prescribed', ''),
(13, 'Metformin', 'Not Prescribed', ''),
(14, 'Omeprazole', 'Not Prescribed', ''),
(15, 'Metoprolol', 'Not Prescribed', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE `feedback_master` (
  `feedback_id` int(5) NOT NULL,
  `feedback_title` varchar(50) NOT NULL,
  `user_type_id` int(5) NOT NULL,
  `date_time` date NOT NULL,
  `feedback_description` text NOT NULL,
  `rating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`feedback_id`, `feedback_title`, `user_type_id`, `date_time`, `feedback_description`, `rating`) VALUES
(1, 'Suggestion about website', 6, '2001-02-20', 'you need to specify more medicines', 5);

-- --------------------------------------------------------

--
-- Table structure for table `generic_master`
--

CREATE TABLE `generic_master` (
  `generic_id` int(5) NOT NULL,
  `generic_name` varchar(50) NOT NULL,
  `g_medicine_company_id` int(2) NOT NULL,
  `g_medicine_type_id` int(1) NOT NULL,
  `g_medicine_category_id` int(1) NOT NULL,
  `g_drug_id` varchar(100) NOT NULL,
  `g_drug_content_id` varchar(500) NOT NULL,
  `g_medicine_price` float NOT NULL,
  `g_medicine_usage` varchar(500) NOT NULL,
  `g_medicine_side_ecft` varchar(500) NOT NULL,
  `g_medicine_wntu` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generic_master`
--

INSERT INTO `generic_master` (`generic_id`, `generic_name`, `g_medicine_company_id`, `g_medicine_type_id`, `g_medicine_category_id`, `g_drug_id`, `g_drug_content_id`, `g_medicine_price`, `g_medicine_usage`, `g_medicine_side_ecft`, `g_medicine_wntu`) VALUES
(1, 'Paracip', 1, 3, 5, '5', '6', 10.49, 'Pain Relief, headache, Joint Pain, Muscle Pain, Dental Pain, Fever', 'N/A', 'Alcohol, Liver disease, Kidney Disease'),
(2, 'Acenext', 3, 3, 5, '7,9', '6', 67.5, 'Headache, Mild Migraine, Musculoskeletal Pain', 'Nausea, Vomiting, Stomach Pain, Indigestion', 'Alcohol, Pregnency, Kidney Disease, Liver Disease'),
(3, 'Torsinol', 3, 3, 5, '11', '6', 28, 'It Treats Oedema Associated with heart/Liver/Kidney ', 'Weakness, Dehydration, Decreased Potassium level in blood', 'Alcohol, Pregnency, Lactation, Driving, Liver Disease');

-- --------------------------------------------------------

--
-- Table structure for table `medical_expert_signup_master`
--

CREATE TABLE `medical_expert_signup_master` (
  `medical_expert_signup_id` int(2) NOT NULL,
  `common_signup_id` int(5) NOT NULL,
  `medical_expert_certificate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_expert_signup_master`
--

INSERT INTO `medical_expert_signup_master` (`medical_expert_signup_id`, `common_signup_id`, `medical_expert_certificate`) VALUES
(27, 2, 'exam 3.txt');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category_master`
--

CREATE TABLE `medicine_category_master` (
  `medicine_category_id` int(1) NOT NULL,
  `medicine_category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category_master`
--

INSERT INTO `medicine_category_master` (`medicine_category_id`, `medicine_category`) VALUES
(5, 'Tablet'),
(6, 'Capsules'),
(7, 'Injection'),
(8, 'Syrup');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_company_master`
--

CREATE TABLE `medicine_company_master` (
  `medicine_company_id` int(2) NOT NULL,
  `medicine_company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_company_master`
--

INSERT INTO `medicine_company_master` (`medicine_company_id`, `medicine_company_name`) VALUES
(1, 'Themis Medicare'),
(2, 'Alkem Laboratotries'),
(3, 'Hetero Healthcare'),
(4, 'Cipla'),
(5, 'Zydas/Cadila'),
(6, 'Dr. Reddy s lab.'),
(7, 'IPCA Lab.'),
(8, 'Intas Pharma.'),
(9, 'Micro Labs'),
(10, 'Alkem Laboratotries'),
(11, 'Mankind Pharmaceuticals'),
(12, 'Fdc'),
(13, 'Medley Pharmaceuticals'),
(14, 'Glaxosmithkline Pharmaceuticals Ltd.'),
(15, 'Unison Pharmaceuticals'),
(16, 'Cipla Ltd.'),
(17, 'Janssen India'),
(18, 'Intas  Pharmaceuticals Ltd.'),
(19, 'USV Private LTD'),
(20, 'Torrrent Pharma LTD'),
(21, 'Glenmark Pharma LTD'),
(22, 'Cipla Ltd.'),
(23, 'German remedies'),
(24, 'Eris Lifescience LTD'),
(25, 'Eris Lifescience LTD'),
(26, 'usv.ltd'),
(27, 'Mankind Pharma ltd'),
(28, 'Mankind Pharma ltd'),
(29, 'Unison Pharma'),
(32, 'sun pharma'),
(33, 'Knoll Pharma LTD');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_master`
--

CREATE TABLE `medicine_master` (
  `medicine_id` int(5) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `medicine_company_id` int(2) NOT NULL,
  `medicine_type_id` int(1) NOT NULL,
  `medicine_category_id` int(1) NOT NULL,
  `drug_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `medicine_price` float NOT NULL,
  `medicine_usage` varchar(500) NOT NULL,
  `medicine_side_ecft` varchar(500) NOT NULL,
  `medicine_wntu` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_master`
--

INSERT INTO `medicine_master` (`medicine_id`, `medicine_name`, `medicine_company_id`, `medicine_type_id`, `medicine_category_id`, `drug_id`, `content_id`, `medicine_price`, `medicine_usage`, `medicine_side_ecft`, `medicine_wntu`) VALUES
(18, 'Metacin', 1, 2, 5, 5, 6, 14.28, ' Fever,Headache, Muscle pain,Menstrual cramps,Arthririts\r\n', ' Nausea, Allergic Skin Reaction,Gastric, Fatigue..\n', 'Allergy, Kidney Disease, Severe Liver Impairment..\n '),
(22, 'Dytor', 4, 2, 5, 11, 6, 44.55, ' Edema, Hypertension..\r\n', '  Chest Pain, Diarrhea, Dry Mouth, Loss of Appetite\r\n', ' Allergy, Anuria\r\n'),
(24, 'Enzoflam', 2, 2, 5, 5, 6, 10, ' Mild to Moderate Pain, Migraine, Bursitis, Tenditis, Dysmenorrhea\r\n', 'Constipation, Skin Rash, Abdominal Pain, Diarrhea\r\n ', 'Allergy,Peptic Ulcer\r\n ');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_type_master`
--

CREATE TABLE `medicine_type_master` (
  `medicine_type_id` int(5) NOT NULL,
  `medicine_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_type_master`
--

INSERT INTO `medicine_type_master` (`medicine_type_id`, `medicine_type`) VALUES
(2, 'Allopathic'),
(3, 'Generic');

-- --------------------------------------------------------

--
-- Table structure for table `medi_side_effect_master`
--

CREATE TABLE `medi_side_effect_master` (
  `medi_side_efct_id` int(5) NOT NULL,
  `medicine_id` int(5) NOT NULL,
  `side_efct_id` int(3) NOT NULL,
  `medi_side_efct_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medi_store_master`
--

CREATE TABLE `medi_store_master` (
  `store_id` int(3) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `store_address` longtext NOT NULL,
  `store_mobile` bigint(10) NOT NULL,
  `store_timings` varchar(500) NOT NULL,
  `store_authenticity_certificate` varchar(50) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `store_ratings` float NOT NULL,
  `area` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medi_store_master`
--

INSERT INTO `medi_store_master` (`store_id`, `store_name`, `store_address`, `store_mobile`, `store_timings`, `store_authenticity_certificate`, `is_verified`, `is_active`, `store_ratings`, `area`) VALUES
(1, 'Capsule Pharmacy', '                                                                                                                                GF 16 Amrapali Axiom Complex, Ambali Bopal Cross Road, Bopal, Ahmedabad - 380058, Behind Dominos Pizza     ', 9152812335, '9:30 am - 9:00 pm', 'exam 3.txt', 0, 0, 3, 'Bopal'),
(2, 'Sainath Medical Store', 'Shop No 7, Ground Floor, Kabir Enclave, 0, Bopal, Ahmedabad - 380058, Opposite Homeopethic College & Khodiyar Motors', 9152134759, '8:00 am - 11:00 pm', '#', 0, 0, 4.5, 'Bopal'),
(3, 'Generic Pharmacy', 'Shop No 3, Moral Complex, Bopal, Ahmedabad - 380058, Opposite Swaminarayan Temple, Sarkari Tubewell', 6352714086, '10:00 am - 10:00 pm', '#', 0, 0, 5, 'Bopal'),
(4, 'Matruchhaya Medical Store', 'Shop No -5, New Nirav Shopping Centre, Bopal Guma Road, Bopal, Ahmedabad - 380058, Opposite Big Dady Restaurant', 9998880166, '8:00 am - 11:00 pm', '#', 0, 0, 5, 'Bopal'),
(5, 'Ambica Medical', 'Shop number B/17 Aishwarya Complex, Bopal Guma road, Bopal, Ahmedabad - 380058, Near Big Daddy restaurant', 9974599468, '9:00 am - 10:30 pm', '#', 0, 0, 4.5, 'Bopal'),
(6, 'Shri Ram Medicines', '11, Ground Floor, New York Darshan, Bopal Ghuma Road, Bopal, Ahmedabad - 380058', 870923640, '8:00 am - 11:30 pm', '#', 0, 0, 0, 'Bopal'),
(7, 'Ilaj-pharma', '3/A, Tirupati Society, Isanpur, Ahmedabad - 382443, Opposite Tirupati Shopping Center, Near Govindwadi Char Rast ', 9925452296, '10:00 am - 1:30 pm  5:00 pm - 9:00 pm', '#', 0, 0, 3.8, 'Ishanpur'),
(8, 'Medserve Pharmacy', 'Shop No:3, Ground Floor, Surgeon Triangle, Govindwadi, Isanpur, Ahmedabad - 382443, Below Ratan Hospital, Opposite Samjuba School', 9924244616, '10:00 am - 10:00 pm', '#', 0, 0, 5, 'Ishanpur'),
(9, 'Relax Life Care', '5 Cellar, Sardar Complex, Isanpur, Ahmedabad - 382443, Near Govindwadi', 9429134821, '10:00 am - 8:00 pm', '#', 0, 0, 0, 'Ishanpur'),
(10, 'Shaurya Medicine', 'Ground Floor, B R House, Geeta Shopping Center, Jaymala Cross Road, Isanpur, Ahmedabad - 382443, Opposite Dhananjay Society, Beside Raipur Bhajiya House ', 9824028179, '10:00 am - 11:30 pm', '#', 0, 0, 0, 'Ishanpur'),
(11, 'Healthmart pharmacy', ' Shop no 2, Mahalaxmi corner, opp sardar Patel hospital, rambaug, maninagar, Ahmedabad, Gujarat 380008', 9601081081, '10am - 9pm', '#', 0, 0, 0, 'Maninagar'),
(12, 'Healthmart Pharmacy', 'Shop No 2, Mahalaxmi Corner, Maninagar, ahmedabad - 380008, Opposite Sardar Patel Hospital, Rambaugh', 9152871919, '10:00 am - 9:00 pm', '#', 0, 0, 4.5, 'Maninagar'),
(13, 'Medical Super Market - Shreeji Enterprise', '1st Floor Dharnidhar Complex, Opposite Mansarovar Hotel, Maninagar, Ahmedabad - 380008, Near Maninagar Railway Crossing', 9152927267, '9:00 am - 10:00 pm', '#', 0, 0, 4.9, 'Maninagar'),
(14, 'Med Serve Pharmacy ', 'Shop No:2 FF Kishan Complex., Maninagar Cross Road, Maninagar, Ahmedabad - 380008, Near BRTS Stand, Opposite Reebok Show Room ', 9924244616, '9:30 am - 9:30 pm', '#', 0, 0, 4.5, 'Maninagar'),
(15, 'Prandhanmantri Jan Aushadhi Kendra', 'C-10 Radhe Shopping Mall, Khokhra Circle Maninagar East, Khokhara Mehmadabad, Ahmedabad - 380008', 9974254574, 'y10:00 am - 9:30 pm', '#', 0, 0, 4.5, 'Maninagar'),
(16, 'Nidhi Medico', 'SHOP NO:3, GROUND FLOOR, RADHE SHOPPING MALL, Anupam Cinema Road, Khokhara Mehmadabad, Ahmedabad - 380008, khokhra road', 8347281813, '9:00 am - 9:00 pm', '#', 0, 0, 4, 'Maninagar'),
(17, 'Sanjari Medical', 'Millat Nagar, Maninagar, Ahmedabad - 380008, Near Bhairavnath Cross Road', 9374657060, '10:00 am - 11:30 pm', '#', 0, 0, 0, 'Maninagar'),
(18, 'Fairprice Pharmacy ', 'Fairprice Pharmacy Mehra Chali, Saijpur Bogha, Opp.saijpur Tower Road, Naroda Road, Ahmedabad - 382330 ', 78780657771, '8:00 am - 11:00 pm', '#', 0, 0, 3, 'Naroda'),
(19, 'Medkart Pharmacy', 'Shri Kutch Kadva Patel Sanatan Samaj, Naroda Main Road, Naroda, Ahmedabad - 382330, Opp Caltex Petrol Pump, Near National Handloom', 9978883600, '10:00 am - 9:00 pm', '#', 0, 0, 5, 'Naroda'),
(20, 'Naroda Pharmacy', 'B 105 Sparsh Recedency, Nr.saint Merry School, Naroda, Ahmedabad - 382330', 8735937576, '9:00 am - 11:00 pm', '#', 0, 0, 0, 'Naroda'),
(21, 'Generic Medical Store', 'Kuber Nagar, Ahmedabad, Gujarat 382345', 9978883600, '9am–9pm', '#', 0, 0, 4.7, 'Naroda'),
(22, 'Anuradha Medical Store', '4,Krishna Chambers Opp. S. T. Workshop, Naroda Rd, Patiya, Ahmedabad, Gujarat 382345', 8141112510, ' 10am to 9pm', '#', 0, 0, 3.9, 'Naroda'),
(23, 'Dev Medicines ', 'Shop No.G-1, 2 Banker House, Near Golden Trianngle, Navrangpura, Ahmedabad - 380009, Opposite Sp Stadium', 9152123687, '9:00 am - 11:30 pm', '#', 0, 0, 4.9, 'Navrangpura'),
(24, 'Medkart Pharmacy', 'Shop No 3, First Floor, Ishwar Complex, Stadium Road, Navrangpura, Ahmedabad - 380009, Near S P Stadium', 7600001634, '10:00 am - 9:00 pm', '#', 0, 0, 4.3, 'Navrangpura'),
(25, 'Dev Medicines', 'Shop No G-12, Banker House, Navrangpura, Ahmedabad - 380009', 8980021600, '9:00 am - 12:00 am', '#', 0, 0, 4.9, 'Navrangpura'),
(26, 'Vaibhav Laxmi Medicines', '1616- Mehta Block, Near Navrangpura Char Rasta, Navrangpura, Ahmedabad - 380009, Near.navin Chavana Mart', 9998413702, '9:00 am - 9:30 pm', '#', 0, 0, 5, 'Navrangpura'),
(27, 'Aeon Healthcare', '421, Akshar Arcade, Near Vijay Char Rasta, Navrangpura, Ahmedabad - 380009, Opposite Memnagar Fire Station', 9898214844, '8:00 am - 10:00 pm', '#', 0, 0, 4.2, 'Navrangpura'),
(28, 'Anjali Medical Stores ', 'Shop-2, ground Floor, Nathalal ColonyJKL, Stadium Road, Navrangpura, Ahmedabad - 380009, Sardar Patel Bawla, Opposite Maharaj Samosa Centre', 9825525980, '8:30 am - 10:30 pm', '#', 0, 0, 4.2, 'Navrangpura'),
(29, 'Avval Generic', 'Shop no.H/27/135 - Happy Home Appartment, Prabhat Chowk Road, Naranpura Vistar, Ahmedabad - 380013, Opposite Shastrinagar Petrol Pump', 9033980749, '10:00 am - 8:00 pm', '#', 0, 0, 3, 'Navrangpura'),
(30, 'Medchoice Pharmacy', 'Shop No 10, Ground Floor, Shyam Nagar Shopping Center, Nikol Gam Road, Near AEC, Nikol, Ahmedabad - 380024, Opposite Pushpakunj Society, Near Ramkrishna Colony ', 9152464108, '9:00 am - 11:00 pm', '#', 0, 0, 3.5, 'Nikol'),
(31, 'Apollo Pharmacy ', 'Nikol Naroda Road, Nikol, Ahmedabad - 380024, Near Takshshila Orient', 7043000410, '7:00 am - 11:00 pm', '#', 0, 0, 4.7, 'Nikol'),
(32, 'We Care Pharmacy', 'Shop No.120, Palm Arcade, Nikol, Ahmedabad - 382350, Opposite Chanakya School', 6356350666, '9:00 am - 9:00 pm', '#', 0, 0, 0, 'Nikol'),
(33, 'Pradhanmantri Jan Ausadhi Kendra', '18, Ground Floor, Vehlal Socity Part -2, Naroda, Ahmedabad - 382330, Near Payal Nagar Road, Opposite Charu Park Society', 9586808484, '9:00 am - 10:00 pm', '#', 0, 0, 0, 'Nikol'),
(34, 'Ramdev Medical And General Store', 'G -4, Ground Floor, Satyam Plaza, Nikol, Ahmedabad - 380024, Near Dynasty Restaurant ', 8660359264, '7:30 am - 11:30 pm', '#', 0, 0, 5, 'Nikol'),
(35, 'Krushna Medical store', 'Shop No 3, Ground Floor, Rakesh Co Housing Society, Narayan Nagar Road, Paldi, Ahmedabad - 380007, Opposite Maruti Temple, Shantivan', 9152263805, '9:00 am - 11:30 pm', '#', 0, 0, 4.7, 'Paldi'),
(36, 'Shreeji Medical Stores', 'Shop No:-22, Sahajanand Trade Center, Near Second Slope Pritamnagar, Paldi, Ahmedabad - 380007 ', 9327007933, '9:30 am - 11:30 pm', '#', 0, 0, 2.6, 'Paldi'),
(37, 'Shree Krishna Agency ', 'Shop No.3, Ground Floor, Faiz Mohammed Society, Narayan Nagar Road, Paldi, Ahmedabad - 380007, Opposite P.T.College Road Bus Stand ', 9974719160, '10:00 am - 10:30 pm', '#', 0, 0, 4, 'Paldi'),
(38, 'Labdhi Chemist ', 'SHOP NO:7, GROUND FLOOR, SHREE RANG SHOPPING CENTRE, VIKAS GRUH CROSS ROAD, Paldi, Ahmedabad - 380007, OPPOSITE RAJ JEWELERY ', 9825877176, '9:00 am - 10:00 pm', '#', 0, 0, 0, 'Paldi'),
(39, 'Khodiyar Medical Stores', 'Opposite V. S. Hospital Door, Paldi Rd, Madalpur Gam, Paldi, Ahmedabad, Gujarat 380009', 7926576553, '10am–11:45pm', '#', 0, 0, 1, 'Paldi'),
(40, 'Medkart Pharmacy ', 'Shop No 23, Indraprashth 9, Ranip, Ahmedabad - 382470, Near Manki Circle, New Ranip', 9638837038, '10:00 am - 10:00 pm', '#', 0, 0, 4.4, 'Ranip'),
(41, 'Galaxy Medical & Provition Store', '2241, Pipal Vas, Opposite Dr. S V Thakor Hospital, Sarkhej, Ahmedabad - 382210, Near Diamond School, Kharakua', 9727653145, '9:00 am - 9:00 pm', '#', 0, 0, 5, 'Sarkhej'),
(42, 'Shah-E-Alam Medical Store', 'Opp. Mastan Bawa Dargah, Sarkhej Makarba Rd, Sarkhej, Ahmedabad, Gujarat 382210', 9998601936, '10am–11pm', '#', 0, 0, 4.5, 'Sarkhej'),
(43, 'Jan Aushadhi Store', ' 16, Sarkhej Gaon Rd, Sarkhej, Ahmedabad, Gujarat 380055', 9727174275, ' 9am–8pm', '#', 0, 0, 5, 'Sarkhej'),
(44, 'Arihant Chemist', 'Shop No, 1, Ground Floor, Murlidhar Complex, Ashwin Society, Vasna Road, Vasna, Ahmedabad - 380007, Near,Fatehpura Three Road ', 7926606787, '9:30 am - 11:00 pm', '#', 0, 0, 3.9, 'Vasna'),
(45, 'Gaytri Medical Stores ', 'Shop No-4, Ground Floor, Sashi Shopping Center, Near Anjali Cross Road, Vasna, Ahmedabad - 380007, Opposite Damubhai Society', 9879151671, '9:30 am - 10:30 pm', '#', 0, 0, 4, 'Vasna'),
(46, 'Sainath Medical Store ', 'A 1, Pratham Mangal Complex, Vasna, Ahmedabad - 380007, Near Vasna Amts Bus Stop, Near Vegetable Market, Vasna Gam', 9814499706, '9:00 am - 9:30 pm', '#', 0, 0, 0, 'Vasna'),
(47, 'Pramukh Medical Store', 'Shop no.9 Silverflora..., Bhatha gam, Vasna, Ahmedabad - 380007, Nr. Swaminarayan Park, B/h G B Shah College', 9408292969, '10:00 am - 10:00 pm', '#', 0, 0, 0, 'Vasna'),
(48, 'Darshan Medical Store', 'building C- 1, N.D. Shroff Market, Near Vasna Bus Stop, Pravinnagar, Ahmedabad, Gujarat 380007', 7926608026, '9am to 10 pm', '#', 0, 0, 5, 'Vasna'),
(49, 'Aayush Medical & General Stores ', 'Shop No 11, Rameshwar Complex, Vastral Road, Vastral, Ahmedabad - 382418, Mahadev Nagar', 9824623342, '8:30 am - 10:30 pm', '#', 0, 0, 4.5, 'Vastral'),
(50, 'Kalpataru Medicines.', 'Shop No-:15, Apjibapa Lakeview, Arpan School Road., Vastral, Ahmedabad - 382418, Near Nirant Cross Road', 8980315570, '9:30 am - 10:30 pm', '#', 0, 0, 0, 'Vastral'),
(51, 'Madhuvan Medical Store', 'Shop No 9, Shiv Complex, Vastrapur, Ahmedabad - 380015, Near Vastrapur Lake, Opposite City Civil Center, Near Iim Road', 9426412469, '9:00 am - 9:30 pm', '#', 0, 0, 4.8, 'Vastral'),
(52, 'Deep Medical Stores', 'Shop No 3, Mangalya Sapphire, Vastral, Ahmedabad - 380026, Near Arpan School Road, Near Krishna Park', 9408299162, '9:30 am - 10:30 pm', '#', 0, 0, 0, 'Vastral'),
(53, 'Generic Medical Store', 'Kuber Nagar, Ahmedabad, Gujarat 382345', 9978883600, '9am to 9pm', '#', 0, 0, 4.7, 'Motera'),
(54, 'Saikrupa Medical Stores', 'Shop no-: F/7, Devpriya Complex, Sabarmati, Motera stadium road, Motera, Ahmedabad - 380005, Near Shradha Hospital ', 9427626407, '10:30 am - 10:00 pm', '#', 0, 0, 3.5, 'Motera'),
(55, 'Shreeji Medical Store', '26, Krupa Residency, Opposite Swagat Flat, Motera Stadium Rd, Motera, Ahmedabad, Gujarat 380005', 9824141941, '9AM -9PM', '#', 0, 0, 5, 'Motera'),
(56, 'Aryavart Medical Stores', 'Sneh Plaza, IOC Road, Chandkheda, Ahmedabad, Gujarat 382424', 9426392860, '-9am–9pm', '#', 0, 0, 3.8, 'Motera'),
(57, 'Jeevadhara Generic Medicines', ' Nr. Sardar Soda Shop, Janta Nagar Ring Rd, Chandkheda, Ahmedabad, Gujarat 382424', 9712947813, '10am–9pm', '#', 0, 0, 0, 'Motera'),
(59, 'Pitcher Medical', '                sp ring road                ', 9623225685, '10:00', 'exam 3.txt', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `medi_usage_master`
--

CREATE TABLE `medi_usage_master` (
  `medicine_usage_id` int(5) NOT NULL,
  `medicine_id` int(5) NOT NULL,
  `usage_id` int(5) NOT NULL,
  `medicine_usage_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `med_master`
--

CREATE TABLE `med_master` (
  `med_id` int(12) NOT NULL,
  `med_name` varchar(100) NOT NULL,
  `med_man_name` varchar(100) NOT NULL,
  `med_type_id` int(5) NOT NULL,
  `med_catagory` varchar(100) DEFAULT NULL,
  `med_comp` varchar(100) NOT NULL,
  `med_content` varchar(100) NOT NULL,
  `med_pack` varchar(1000) NOT NULL,
  `med_usage` varchar(100) NOT NULL,
  `med_side_ecft` varchar(100) NOT NULL,
  `med_wntu` varchar(100) NOT NULL,
  `med_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_master`
--

CREATE TABLE `news_master` (
  `news_id` int(5) NOT NULL,
  `news_title` varchar(500) NOT NULL,
  `news` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `side_effect_master`
--

CREATE TABLE `side_effect_master` (
  `side_efct_id` int(3) NOT NULL,
  `side_efct_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `side_effect_master`
--

INSERT INTO `side_effect_master` (`side_efct_id`, `side_efct_description`) VALUES
(1, 'Nausea , Fever, Allergic Skin Reaction,Gastric, Fa'),
(2, 'Constipation, Skin Rash, Abdominal Pain, Diarrhea,'),
(3, 'Sleepiness, Headache, Blurred Vision, Cough,Dry mo'),
(4, 'Chest Pain, Diarrhea, Dry Mouth, Loss of Appetite,'),
(5, 'Diarrhea, Vomiting, Headache, Dizziness, Stomach P'),
(6, 'Abdominal Pain, Fever, Joint Pain, Sore Throat, Lo'),
(7, 'Headache, Weakness, Dizziness, Cold Extremities, S'),
(8, 'Leg pain, Dizziness, Fatigue, Depression, Diarrhea'),
(9, 'Hypoglycemia, Bloddy and cloudly urine, Painful ur'),
(10, 'Nausea, Allergic skin reaction, gastric ulcer, Blo'),
(11, 'Headache, Altered sense of taste, Runny Nose and C'),
(12, 'Diarrhea, Abdominal pain, Dark or clay colored sto'),
(13, 'Abdominal Pain, Constipation, Diarrhea, Nausea and'),
(14, 'chest pain and discomfort,Thyrotoxis crisis,Fever,'),
(15, 'Diarrhea,Flatulence,pneumatosis Intestinalis,Abnor'),
(16, 'Diarrhea,Abdominal pain,Confusion,Fever,Redness of'),
(17, 'Diarrhea,Abdominal pain,Confusion,Fever,Redness of'),
(18, 'Difficulty in breathing,Dizziness,Irregular heartb'),
(19, 'Anxiety, Blurred Vison, Chills, Confusion, Depress'),
(20, 'chest pain and discomfort, Decreased Blood Pressur'),
(21, 'Swelling Of Ankles or Feet, Difficulty In Breath, '),
(22, 'Flushing, Lowered Night Eyesight, Upset Stomach or'),
(23, '#'),
(24, 'Low Blood Sugar Level, Anger, Shaking, Fast Heartb'),
(25, 'Hypoglycemia, Comstipation, Nausea, Loss of Appeti'),
(26, 'Abdominal Pain , Heartburn, Constipation, Yellow c'),
(27, 'low blood sugar level, Taste Change, Nausea, Diarr'),
(28, 'Headache, Constipation, Fatigue, Painful Urination'),
(29, 'Chest Pain and Discomfort, Decreased Blood Pressur'),
(30, 'low blood sugar level, Nausea, Diarrhoea, Stomach ');

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `state_id` int(3) NOT NULL,
  `state_name` varchar(50) NOT NULL,
  `country_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`state_id`, `state_name`, `country_id`) VALUES
(3, 'ARUNACHAL PRADESH', 99),
(4, 'GUJARAT', 99),
(5, 'BIHAR', 99),
(6, 'HARYANA', 99),
(7, 'HIMACHAL PRADESH', 99),
(8, 'JAMMU & KASHMIR', 99),
(9, 'KARNATAKA', 99),
(10, 'KERALA', 99),
(11, 'MADHYA PRADESH', 99),
(12, 'MAHARASHTRA', 99),
(13, 'MANIPUR', 99),
(14, 'MEGHALAYA', 99),
(15, 'MIZORAM', 99),
(16, 'NAGALAND', 99),
(17, 'ORISSA', 99),
(18, 'PUNJAB', 99),
(19, 'RAJASTHAN', 99),
(20, 'SIKKIM', 99),
(21, 'TAMIL NADU', 99),
(22, 'TRIPURA', 99),
(23, 'UTTAR PRADESH', 99),
(24, 'WEST BENGAL', 99),
(25, 'DELHI', 99),
(26, 'GOA', 99),
(27, 'PONDICHERY', 99),
(28, 'LAKSHDWEEP', 99),
(29, 'DAMAN & DIU', 99),
(30, 'DADRA & NAGAR', 99),
(31, 'CHANDIGARH', 99),
(32, 'ANDAMAN & NICOBAR', 99),
(33, 'UTTARANCHAL', 99),
(34, 'JHARKHAND', 99),
(45, '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `usage_master`
--

CREATE TABLE `usage_master` (
  `usage_id` int(5) NOT NULL,
  `usage_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usage_master`
--

INSERT INTO `usage_master` (`usage_id`, `usage_details`) VALUES
(1, 'Fever,Headache, Muscle pain,Menstrual cramps,Arthririts'),
(2, 'Mild to Moderate Pain, Migraine, Bursitis, Tenditis, Dysmenorrhea'),
(3, 'Allergic Rhinitis, Utricaria..'),
(4, 'Edema, Hypertension..'),
(5, 'Osteoarthrithis,Rheumatoid Arthrithis, Ankylosing Spondylitis, Acute Gout'),
(6, 'Gastroesophagal  Reflux Disease, Zollinger-Ellison Syndrome, Ulcer, Erosive Esophagtis'),
(7, 'High Blood Pressure, Heart Attack, Heart Failure, Hypertension'),
(8, 'High Blood Pressure, Hypertension, Chest pain, Myocardilal Infarction'),
(9, 'Type 2 Diabetes Mellitus'),
(10, 'Fever, Osteoarthirits, Primary Dysmenorrhea, Mild to Moderate Pain'),
(11, 'Erosive Esophagitis, Gastroesophagal Reflux Disease, Helicobacter Pylori Infection, Zolllinger-Ellison Syndrome, Gastro-duodenal ulcers'),
(12, 'Urinary Tract Infection, Tonsilitis/Pharyngitis, Bronchitis, Gonococcal Infection'),
(13, 'Rheumatoid Arthritis, Osteoarthritis, Ankylosing Spondylitis, Mild to Moderate pain'),
(14, 'Hypothyroidism,Thyroid cancer,Myxedema coma'),
(15, 'Type II Diabetes Mellitus'),
(16, 'Cystitis,Pyelonephriits,skin and structure infection,Pneumonia,Bronchitis,Plague'),
(17, 'Moderate to severe pain'),
(18, 'Mild to moderate hypertension,Chronic Stable Angina'),
(19, 'Type II Diabetes Mellitus'),
(20, 'Hypertension, Angina Pectoris, Heart Attack, Congesive Heart Failure, Hyperthyroidism, Migraine Prevension'),
(21, 'Essential Hypertension'),
(22, 'Antiandrogen, Prostate Cancer, Benign Prostatic Hyperplasia, Priapism, Hypersexuality, Hirsutism'),
(23, 'Asthama, Chronic Obstructive Pulmonary Disease'),
(24, 'Diabetes'),
(25, 'Type II Diabetes Mellitus'),
(26, ' Pain and Fever, Arthritis, rheumatic fever, acute coronary syndrome, Kawasaki disease.'),
(27, 'Type-2 Diabetes'),
(28, 'Nausea and Vomiting, Chemotherapy induced nausea and vomiting, Post operatve Nausea and Vomiting'),
(29, 'Hypertension, Angina Pectoris, Heartattack, Congestive Heart Failure, Hyperthyroidism, Migraine Prevension'),
(30, 'Type-2 Diabetes');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_master`
--

CREATE TABLE `user_type_master` (
  `user_type_id` int(1) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_master`
--

INSERT INTO `user_type_master` (`user_type_id`, `user_type`) VALUES
(4, 'Admin'),
(5, 'Medical Expert'),
(6, 'Normal User');

-- --------------------------------------------------------

--
-- Table structure for table `wntu_master`
--

CREATE TABLE `wntu_master` (
  `wntu_id` int(5) NOT NULL,
  `wntu_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wntu_master`
--

INSERT INTO `wntu_master` (`wntu_id`, `wntu_details`) VALUES
(1, 'Allergy, Kidney Disease, Sevre Liver Impairment..'),
(2, 'Allergy,Peptic Ulcer'),
(3, 'Allergy, Kidney Disease..'),
(4, 'Allergy, Anuria'),
(5, 'Allergy, Gastrointestial Bleeding'),
(6, 'Allergy'),
(7, 'Cardiogenic Shock, Heart Block, Hypersensitivity, Pregnant'),
(8, 'Acute myocardial infraction, Acute unstable angina, Aortic stenois, Cardiogenic shock, Heart failure'),
(9, 'Allergy, Heart Failure'),
(10, 'Allergy, Kidney Disease, Liver Disease'),
(11, 'Allergy'),
(12, 'Allergy'),
(13, 'Allergy, Severe renal impairment, Severe Hepatic impairment, Peptic Ulcer, Gastro-intestinal bleeding'),
(14, 'Allergy,Thyrotoxicosis,Adrenal insuffience,Acute myocardial infarction'),
(15, 'Allergy,Intestinal obstruction,Digestive disorders'),
(16, 'Allergy,Tendinitis or tendon rupture,Myasthenia gravis'),
(17, 'Allergy,Severe Hepatic impairment,Use in children,Monoamine oxidase inhibitors'),
(18, 'Allergy,Cardiogenic shock,Heart blockgreather than firstdegree,Sinus bradycardia'),
(19, 'Allergy, Type 1 Diabetes Mellitus, Diabetic Ketoacidosis, Severe Kidney Impairment, Metabolic Acidosis'),
(20, 'Allergy, Heart Disease, Circulatory Disorders, Heart Failure, Heart Rhythm Disorders'),
(21, 'Allergy, Severe Hepatic Impairment, Aliskiren'),
(22, 'Allergy, Rashes, Itching, Shortness of Breath, Cough, Wheezing, Swelling Of Face Lips Tongue or Throat'),
(23, 'Allergy, Rashes, Itching, Shortness of Breath, Cough, Wheezing, Swelling Of Face Lips Tongue or Throat'),
(24, 'Allergy, Rashes, Itching, Shortness of Breath, Cough, Wheezing, Swelling Of Face Lips Tongue or Throat, Acidic Blood Problem, Pregnant (Very Bad Kidney Disease, Very Bad Liver Disease)'),
(25, 'Allergy'),
(26, 'Allergy, Bleeding Disorder'),
(27, 'With Alcohol, Pregnency, Lactation, Driving, Kidney disease, Liver disease'),
(28, 'Allergy, Apomorphine'),
(29, 'Allergy, Heart disease, Circulatory disorders, Heart Failure, Heart Rhythm disorders'),
(30, 'With Alcohol, Pregnency, Lactation, Driving, Kidney disease, Liver disease');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_email_id` (`admin_email_id`),
  ADD KEY `admin_pass` (`admin_pass`);

--
-- Indexes for table `area_master`
--
ALTER TABLE `area_master`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `city_master`
--
ALTER TABLE `city_master`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `common_signup_master`
--
ALTER TABLE `common_signup_master`
  ADD PRIMARY KEY (`common_signup_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `content_master`
--
ALTER TABLE `content_master`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `country_master`
--
ALTER TABLE `country_master`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_name` (`country_name`);

--
-- Indexes for table `doctor_request_master`
--
ALTER TABLE `doctor_request_master`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `u_type_id` (`u_type_id`),
  ADD KEY `u_img` (`u_img`),
  ADD KEY `u_name` (`u_name`),
  ADD KEY `u_gender` (`u_gender`),
  ADD KEY `u_birthdate` (`u_birthdate`),
  ADD KEY `u_addr` (`u_addr`),
  ADD KEY `u_phn` (`u_phn`),
  ADD KEY `u_bg` (`u_bg`),
  ADD KEY `allergy_id` (`allergy_id`),
  ADD KEY `u_email` (`u_email`),
  ADD KEY `u_pwd` (`u_pwd`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `u_is_verfied` (`u_is_verfied`),
  ADD KEY `u_is_active` (`u_is_active`),
  ADD KEY `certificate_img` (`certificate_img`);

--
-- Indexes for table `drug_master`
--
ALTER TABLE `drug_master`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `feedback_master`
--
ALTER TABLE `feedback_master`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `generic_master`
--
ALTER TABLE `generic_master`
  ADD PRIMARY KEY (`generic_id`),
  ADD KEY `g_medicine_company_id` (`g_medicine_company_id`),
  ADD KEY `g_medicine_type_id` (`g_medicine_type_id`),
  ADD KEY `g_medicine_category_id` (`g_medicine_category_id`);

--
-- Indexes for table `medical_expert_signup_master`
--
ALTER TABLE `medical_expert_signup_master`
  ADD PRIMARY KEY (`medical_expert_signup_id`),
  ADD KEY `common_signup_id` (`common_signup_id`);

--
-- Indexes for table `medicine_category_master`
--
ALTER TABLE `medicine_category_master`
  ADD PRIMARY KEY (`medicine_category_id`);

--
-- Indexes for table `medicine_company_master`
--
ALTER TABLE `medicine_company_master`
  ADD PRIMARY KEY (`medicine_company_id`);

--
-- Indexes for table `medicine_master`
--
ALTER TABLE `medicine_master`
  ADD PRIMARY KEY (`medicine_id`),
  ADD KEY `medicine_company_id` (`medicine_company_id`),
  ADD KEY `medicine_type_id` (`medicine_type_id`),
  ADD KEY `medicine_category_id` (`medicine_category_id`),
  ADD KEY `drug_id` (`drug_id`),
  ADD KEY `drug_content_id` (`content_id`);

--
-- Indexes for table `medicine_type_master`
--
ALTER TABLE `medicine_type_master`
  ADD PRIMARY KEY (`medicine_type_id`);

--
-- Indexes for table `medi_side_effect_master`
--
ALTER TABLE `medi_side_effect_master`
  ADD PRIMARY KEY (`medi_side_efct_id`),
  ADD KEY `medicine_id` (`medicine_id`),
  ADD KEY `side_efct_id` (`side_efct_id`);

--
-- Indexes for table `medi_store_master`
--
ALTER TABLE `medi_store_master`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `medi_usage_master`
--
ALTER TABLE `medi_usage_master`
  ADD PRIMARY KEY (`medicine_usage_id`),
  ADD KEY `medicine_id` (`medicine_id`),
  ADD KEY `usage_id` (`usage_id`);

--
-- Indexes for table `med_master`
--
ALTER TABLE `med_master`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `med_type_id` (`med_type_id`);

--
-- Indexes for table `news_master`
--
ALTER TABLE `news_master`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `side_effect_master`
--
ALTER TABLE `side_effect_master`
  ADD PRIMARY KEY (`side_efct_id`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `state_name` (`state_name`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `usage_master`
--
ALTER TABLE `usage_master`
  ADD PRIMARY KEY (`usage_id`);

--
-- Indexes for table `user_type_master`
--
ALTER TABLE `user_type_master`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `wntu_master`
--
ALTER TABLE `wntu_master`
  ADD PRIMARY KEY (`wntu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area_master`
--
ALTER TABLE `area_master`
  MODIFY `area_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `city_master`
--
ALTER TABLE `city_master`
  MODIFY `city_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `common_signup_master`
--
ALTER TABLE `common_signup_master`
  MODIFY `common_signup_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content_master`
--
ALTER TABLE `content_master`
  MODIFY `content_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `country_master`
--
ALTER TABLE `country_master`
  MODIFY `country_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `doctor_request_master`
--
ALTER TABLE `doctor_request_master`
  MODIFY `u_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drug_master`
--
ALTER TABLE `drug_master`
  MODIFY `drug_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedback_master`
--
ALTER TABLE `feedback_master`
  MODIFY `feedback_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `generic_master`
--
ALTER TABLE `generic_master`
  MODIFY `generic_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medical_expert_signup_master`
--
ALTER TABLE `medical_expert_signup_master`
  MODIFY `medical_expert_signup_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `medicine_category_master`
--
ALTER TABLE `medicine_category_master`
  MODIFY `medicine_category_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medicine_company_master`
--
ALTER TABLE `medicine_company_master`
  MODIFY `medicine_company_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `medicine_master`
--
ALTER TABLE `medicine_master`
  MODIFY `medicine_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `medicine_type_master`
--
ALTER TABLE `medicine_type_master`
  MODIFY `medicine_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medi_side_effect_master`
--
ALTER TABLE `medi_side_effect_master`
  MODIFY `medi_side_efct_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medi_store_master`
--
ALTER TABLE `medi_store_master`
  MODIFY `store_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `medi_usage_master`
--
ALTER TABLE `medi_usage_master`
  MODIFY `medicine_usage_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `med_master`
--
ALTER TABLE `med_master`
  MODIFY `med_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news_master`
--
ALTER TABLE `news_master`
  MODIFY `news_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `side_effect_master`
--
ALTER TABLE `side_effect_master`
  MODIFY `side_efct_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `state_master`
--
ALTER TABLE `state_master`
  MODIFY `state_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `usage_master`
--
ALTER TABLE `usage_master`
  MODIFY `usage_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_type_master`
--
ALTER TABLE `user_type_master`
  MODIFY `user_type_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wntu_master`
--
ALTER TABLE `wntu_master`
  MODIFY `wntu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area_master`
--
ALTER TABLE `area_master`
  ADD CONSTRAINT `area_master_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `area_master_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `area_master_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city_master`
--
ALTER TABLE `city_master`
  ADD CONSTRAINT `city_master_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `city_master_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `common_signup_master`
--
ALTER TABLE `common_signup_master`
  ADD CONSTRAINT `common_signup_master_ibfk_11` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `common_signup_master_ibfk_12` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `common_signup_master_ibfk_13` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_master`
--
ALTER TABLE `feedback_master`
  ADD CONSTRAINT `feedback_master_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type_master` (`user_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `generic_master`
--
ALTER TABLE `generic_master`
  ADD CONSTRAINT `generic_master_ibfk_1` FOREIGN KEY (`g_medicine_type_id`) REFERENCES `medicine_type_master` (`medicine_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_expert_signup_master`
--
ALTER TABLE `medical_expert_signup_master`
  ADD CONSTRAINT `medical_expert_signup_master_ibfk_1` FOREIGN KEY (`common_signup_id`) REFERENCES `common_signup_master` (`common_signup_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine_master`
--
ALTER TABLE `medicine_master`
  ADD CONSTRAINT `medicine_master_ibfk_1` FOREIGN KEY (`medicine_company_id`) REFERENCES `medicine_company_master` (`medicine_company_id`),
  ADD CONSTRAINT `medicine_master_ibfk_2` FOREIGN KEY (`medicine_type_id`) REFERENCES `medicine_type_master` (`medicine_type_id`),
  ADD CONSTRAINT `medicine_master_ibfk_3` FOREIGN KEY (`medicine_category_id`) REFERENCES `medicine_category_master` (`medicine_category_id`),
  ADD CONSTRAINT `medicine_master_ibfk_4` FOREIGN KEY (`content_id`) REFERENCES `content_master` (`content_id`),
  ADD CONSTRAINT `medicine_master_ibfk_5` FOREIGN KEY (`drug_id`) REFERENCES `drug_master` (`drug_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
