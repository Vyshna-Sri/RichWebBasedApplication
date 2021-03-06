-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 07:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_appointment`
--

CREATE TABLE `m_appointment` (
  `m_appointment_no` int(11) NOT NULL,
  `m_appointment_patient` varchar(100) NOT NULL,
  `m_appointment_category` varchar(100) NOT NULL,
  `m_appointment_hospital` varchar(100) NOT NULL,
  `m_appointment_date` date NOT NULL,
  `m_appointment_time` time NOT NULL,
  `m_appointment_description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_appointment`
--

INSERT INTO `m_appointment` (`m_appointment_no`, `m_appointment_patient`, `m_appointment_category`, `m_appointment_hospital`, `m_appointment_date`, `m_appointment_time`, `m_appointment_description`) VALUES
(16, 'Guna', 'Allergy Specialist', 'Asiri Hospital - Colombo 5', '2020-04-05', '05:00:00', 'consult'),
(17, 'Nimal', 'Dental Surgeon', 'Borella Private Hospital', '2020-04-30', '03:40:00', 'test'),
(18, 'Laksana', 'Speech Therapist', 'Royal Hospital - Colombo 6', '2020-05-15', '08:15:00', 'report'),
(19, 'Sanjeev', 'Paediatrician', 'Nawaloka Hospital', '2020-05-08', '05:20:00', 'medicine'),
(20, 'Udith', 'Histopathologist', 'The Central Hospital - Colombo 10', '2020-04-30', '04:05:00', 'treatment'),
(22, 'Anjana', 'Orthopaedic Surgeon', 'Asiri Hospital - Colombo 5', '2020-05-03', '06:10:30', 'testing'),
(23, 'Param', 'Back Pain Therapist', 'Borella Private Hospital', '2020-04-28', '09:25:00', 'treatment'),
(24, 'Sharva', 'Physician', 'Durdans Hospital - Colombo 3', '2020-03-27', '09:55:30', ''),
(25, 'Mano', 'Endocrinologist/Diabetologist', 'Royal Hospital - Colombo 6', '2020-04-08', '03:30:00', 'medicine'),
(27, 'Pirana', 'Cardiologist', 'Hemas Hospital', '2020-04-24', '03:15:00', 'report'),
(28, 'Hima', 'ENT Surgeon', 'Wattala Private Hospital Ltd', '2020-05-07', '11:00:00', 'test'),
(29, 'Mathu', 'Back Pain Therapist', 'Durdans Hospital - Colombo 3', '2020-05-12', '01:40:00', 'test'),
(30, 'Banu', 'Chest Specialist', 'Durdans Hospital - Colombo 3', '2020-05-09', '01:30:00', 'medical');

-- --------------------------------------------------------

--
-- Table structure for table `m_card_details`
--

CREATE TABLE `m_card_details` (
  `m_card_id` varchar(50) NOT NULL,
  `m_card_cusName` varchar(100) NOT NULL,
  `m_card_cardType` varchar(20) NOT NULL,
  `m_card_cardNo` int(16) NOT NULL,
  `m_card_csvNo` int(4) NOT NULL,
  `m_card_expireDay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_doctor`
--

CREATE TABLE `m_doctor` (
  `m_SLMCNO` varchar(50) NOT NULL,
  `m_doctor_name` varchar(200) NOT NULL,
  `m_doctor_address` varchar(300) DEFAULT NULL,
  `m_doctor_speciality` varchar(50) NOT NULL,
  `m_doctor_sex` varchar(6) NOT NULL,
  `m_doctor_dateOfBirth` date DEFAULT NULL,
  `m_doctor_qualification` varchar(200) DEFAULT NULL,
  `m_doctor_email` varchar(50) DEFAULT NULL,
  `m_doctor_phone` int(11) NOT NULL,
  `m_doctor_dateOfJoin` date DEFAULT NULL,
  `m_doctor_fees` double DEFAULT NULL,
  `m_doctor_workingDays` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_doctor`
--

INSERT INTO `m_doctor` (`m_SLMCNO`, `m_doctor_name`, `m_doctor_address`, `m_doctor_speciality`, `m_doctor_sex`, `m_doctor_dateOfBirth`, `m_doctor_qualification`, `m_doctor_email`, `m_doctor_phone`, `m_doctor_dateOfJoin`, `m_doctor_fees`, `m_doctor_workingDays`) VALUES
('123456', 'D.R.Senanayaka', '123/E,abadeniya,Gampaha', 'cardiologist', 'female', '1988-06-05', 'MBBS in Colombo Univercity', 'd.silva@hospital.com', 712312345, '2017-06-01', 2500, 'weekend');

-- --------------------------------------------------------

--
-- Table structure for table `m_hospital`
--

CREATE TABLE `m_hospital` (
  `m_hospital_id` varchar(50) NOT NULL,
  `m_hospital_name` varchar(100) NOT NULL,
  `m_hospital_location` varchar(150) NOT NULL,
  `m_hospital_availableRooms` int(11) DEFAULT NULL,
  `m_hospital_labs` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_patient`
--

CREATE TABLE `m_patient` (
  `m_patient_id` varchar(50) NOT NULL,
  `m_patient_userName` varchar(50) NOT NULL,
  `m_patient_password` varchar(50) NOT NULL,
  `m_patient_name` varchar(100) NOT NULL,
  `m_patient_birthDate` date DEFAULT NULL,
  `m_patient_weight` double DEFAULT NULL,
  `m_patient_bloodGroup` varchar(5) DEFAULT NULL,
  `m_patient_contactNo` int(11) NOT NULL,
  `m_patient_address` varchar(150) NOT NULL,
  `m_patient_gurdianName` varchar(100) NOT NULL,
  `m_patient_age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_patient`
--

INSERT INTO `m_patient` (`m_patient_id`, `m_patient_userName`, `m_patient_password`, `m_patient_name`, `m_patient_birthDate`, `m_patient_weight`, `m_patient_bloodGroup`, `m_patient_contactNo`, `m_patient_address`, `m_patient_gurdianName`, `m_patient_age`) VALUES
('P0001', 'Navod', '1234', 'Navod Udara Gamage', '1996-06-13', 62, 'O+', 712908129, 'No:117, Neekiniyawa Road, Kekirawa', 'B.G.Aruna Wasantha', 23);

-- --------------------------------------------------------

--
-- Table structure for table `t_appoconfirmation`
--

CREATE TABLE `t_appoconfirmation` (
  `t_appoConfirmation_no` int(11) NOT NULL,
  `t_appoConfirmation_location` varchar(200) NOT NULL,
  `t_appoConfirmation_Date` date NOT NULL,
  `t_appoConfirmation_time` time NOT NULL,
  `t_appoConfirmation_docName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_doctorappointment`
--

CREATE TABLE `t_doctorappointment` (
  `t_doctorAppointment_hospital` varchar(100) NOT NULL,
  `t_doctorAppointment_date` date NOT NULL,
  `t_doctorAppointment_time` time NOT NULL,
  `t_doctorAppointment_doctor_` varchar(100) NOT NULL,
  `t_doctorAppointment_noOfAppo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_payments`
--

CREATE TABLE `t_payments` (
  `t_payment_no` varchar(50) NOT NULL,
  `t_payment_appointment` varchar(50) NOT NULL,
  `t_payment_date` date NOT NULL,
  `t_payment_time` time NOT NULL,
  `t_payment_customerName` varchar(100) NOT NULL,
  `t_payment_cardNo` int(16) NOT NULL,
  `t_payment_cardtype` varchar(20) NOT NULL,
  `t_payment_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_prescription`
--

CREATE TABLE `t_prescription` (
  `t_prescription_no` varchar(50) NOT NULL,
  `t_prescription_patient` varchar(100) NOT NULL,
  `t_prescription_doctor` varchar(100) NOT NULL,
  `t_prescription_date` date NOT NULL,
  `t_prescription_details` varchar(500) DEFAULT NULL,
  `t_prescription_medicine` varchar(100) DEFAULT NULL,
  `t_prescription_reports` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_appointment`
--
ALTER TABLE `m_appointment`
  ADD PRIMARY KEY (`m_appointment_no`);

--
-- Indexes for table `m_card_details`
--
ALTER TABLE `m_card_details`
  ADD PRIMARY KEY (`m_card_id`);

--
-- Indexes for table `m_doctor`
--
ALTER TABLE `m_doctor`
  ADD PRIMARY KEY (`m_SLMCNO`);

--
-- Indexes for table `t_payments`
--
ALTER TABLE `t_payments`
  ADD PRIMARY KEY (`t_payment_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_appointment`
--
ALTER TABLE `m_appointment`
  MODIFY `m_appointment_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
