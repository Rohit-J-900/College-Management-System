-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 06:19 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_tbl`
--

CREATE TABLE `article_tbl` (
  `a_id` int(10) UNSIGNED NOT NULL,
  `loca_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` char(10) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_tbl`
--

INSERT INTO `article_tbl` (`a_id`, `loca_id`, `title`, `content`, `status`, `note`) VALUES
(2, 1, 'IADC Quality Circle Placements Team', 'Indian Academy Centre of Students Placements Services has Quality Circle Placements Team which s one of the best Team in the college where the corporate life is brought to develop and improve all types of skills. ', 'Public', 'Fact'),
(3, 2, 'IAPUC', 'Indian Academy PU College students glitter with 100% Results and excellent performance in 2021. Congratulations to our diligent students and dedicated teachers for the excellent results in the PUC examinations!', 'Public', 'Fact'),
(4, 3, 'IADC Placements', 'Indian Academy is proud to announce the placement achievements of the 2022 graduation batch. Over 106 top recruiters, 276 students got placed in top companies.\r\nWe take this opportunity to congratulate all students for their tireless efforts and dedication towards their goals.', 'Public', 'Fact'),
(5, 2, 'IAGI', 'IAGI graduates have always exceeded expectations, and manage to combine a wide array of skills which enable them to achieve employer satisfaction while at the same time, enable them to also compete with the best talent in the world.', 'Public', 'Fact');

-- --------------------------------------------------------

--
-- Table structure for table `facuties_tbl`
--

CREATE TABLE `facuties_tbl` (
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `faculties_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facuties_tbl`
--

INSERT INTO `facuties_tbl` (`faculties_id`, `faculties_name`, `note`) VALUES
(1, 'Mrs. Anuradha Mam', 'HOD of Computer Science Dept'),
(2, 'Mrs. Shalini Mam', 'Vice Princepal and HOD of BBA'),
(5, 'Mrs. Shoba Mam ', 'HOD of Commerce Dept'),
(6, 'Dr. Srinidhi K Parthasarathy Sir', 'Principal of IADC UG and PG'),
(7, 'Mr. Madhusudhan H', 'Placement Manager'),
(8, 'Mr. Prem Kumar Sir', 'Sr. Placement Executive'),
(9, 'Mrs. Jessy Jacob Mam', 'Placement Officer'),
(10, 'Mr. Imran', 'System Admin'),
(11, 'Mr. Srinivas Rao', 'Controller of Examination'),
(12, 'Mr. Suresh', 'Controller of Examination');

-- --------------------------------------------------------

--
-- Table structure for table `location_tb`
--

CREATE TABLE `location_tb` (
  `loca_id` int(10) UNSIGNED NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_tb`
--

INSERT INTO `location_tb` (`loca_id`, `l_name`, `description`, `note`) VALUES
(2, 'Indian Academy group of institution for UG and PG. ', 'Indian Academy Group Of Institution\r\n College/university\r\nHennur Main Road, Kalyan Nagar, Bengaluru Â· ', '080 25429691'),
(3, 'Indian Acadmy Pre University College.', 'Indian Academy Pre- University\r\nCollege/university\r\nHennur Main Road, Kalyan Nagar, Bengaluru Â· ', '080 25429691');

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_tbl`
--

CREATE TABLE `stu_score_tbl` (
  `ss_id` int(10) UNSIGNED NOT NULL,
  `Stu_name` varchar(20) NOT NULL,
  `faculties_id` int(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `miderm` float NOT NULL,
  `final` float NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_score_tbl`
--

INSERT INTO `stu_score_tbl` (`ss_id`, `Stu_name`, `faculties_id`, `sub_name`, `miderm`, `final`, `note`) VALUES
(1, 'Rohit  J', 1, 'Java', 32, 66, 'Outstanding'),
(2, 'Manjunath K', 1, 'Java', 30, 60, 'First Class Exemplary'),
(3, 'Royan Edward', 1, 'Java', 10, 40, 'Second Class'),
(4, 'Neeraj Kingmaker', 1, 'Java', 32, 64, 'Outstanding'),
(5, 'Vignesh', 1, 'Java', 25, 55, 'First Class Distinction'),
(6, 'Paul Meshak', 1, 'Java', 20, 50, 'First Class'),
(7, 'Vivin Kamal', 1, 'Java', 18, 30, 'Second Class'),
(8, 'Gopi P', 1, 'Java', 12, 25, 'High Second Class'),
(9, 'Jyothika P', 1, 'Java', 29, 60, 'First Class Exemplary'),
(10, 'Sri Lochana', 1, 'Java', 25, 55, 'First Class Distinction'),
(11, 'Thanuja L', 1, 'Java', 27, 60, 'First Class Distinction'),
(12, 'Vindhya A', 1, 'Java', 32, 65, 'Outstanding'),
(13, 'Rohit  J', 2, 'Web Programming', 34, 67, 'Outstanding'),
(14, 'Manjunath  K', 2, 'Web Programming', 30, 60, 'First Class Exemplary'),
(15, 'Royan  Edward', 2, 'Web Programming', 28, 60, 'First Class Distinction'),
(16, 'Neeraj  Kingmaker', 2, 'Web Programming', 25, 55, 'First Class'),
(17, 'Vignesh', 2, 'Web Programming', 18, 50, 'High Second Class'),
(18, 'Paul	  Meshak', 2, 'Web Programming', 15, 40, 'Second Class '),
(19, 'Vivin  Kamal', 2, 'Web Programming', 14, 36, 'Pass'),
(20, 'Gopi  P', 2, 'Web Programming', 10, 25, 'Re-Appear'),
(21, 'Jyothika  P', 2, 'Web Programming', 31, 62, 'First Class Exemplary'),
(22, 'Sri  Lochana', 2, 'Web Programming', 29, 58, 'First Class Distinction'),
(23, 'Thanuja	L', 2, 'Web Programming', 29, 57, 'First Class Exemplary'),
(24, 'Vindhya	A', 2, 'Web Programming', 32, 65, 'Outstanding'),
(25, 'Rohit J', 3, 'UNIX Shell Scripting', 33, 68, 'Outstanding'),
(26, 'Manjunath K', 3, 'UNIX Shell Scripting', 30, 60, 'First Class Exemplary'),
(27, 'Royan Edward', 3, 'UNIX Shell Scripting', 28, 60, 'First Class Distinction'),
(28, 'Neeraj Kingmaker', 3, 'UNIX Shell Scripting', 25, 55, 'First Class'),
(29, 'Vignesh', 3, 'UNIX Shell Scripting', 25, 50, 'High Second Class'),
(30, 'Paul	  Meshak', 3, 'UNIX Shell Scripting', 15, 40, 'Second Class '),
(31, 'Vivin Kamal', 3, 'UNIX Shell Scripting', 14, 39, 'Pass'),
(32, 'Gopi  P', 3, 'UNIX Shell Scripting', 10, 29, 'Re-Appear'),
(33, 'Jyothika	P', 3, 'UNIX Shell Scripting', 32, 65, 'First Class Exemplary'),
(34, 'Sri  Lochana', 3, 'UNIX Shell Scripting', 28, 59, 'First Class Distinction'),
(35, 'Thanuja	L', 3, 'UNIX Shell Scripting', 33, 65, 'Outstanding'),
(36, 'Vindhya  A', 3, 'UNIX Shell Scripting', 25, 52, 'First Class Distinction');

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE `stu_tbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_tbl`
--

INSERT INTO `stu_tbl` (`stu_id`, `f_name`, `l_name`, `gender`, `dob`, `pob`, `address`, `phone`, `email`, `note`) VALUES
(1, 'Rohit', 'J', 'Male', '2001-05-07', 'Banglore', 'Banglore', '9008162064', 'rohitkingmaker900@gmail.com', 'Student'),
(2, 'Manjunath', 'K', 'Male', '2001-11-06', 'Davengere', 'Banglore', '9203464520', 'manja@yahoo.com  ', 'Student'),
(3, 'Royan', 'Edward', 'Male', '2002-01-01', 'Banglore', 'Banglore', '8623479513', 'gaaji@gmail.com   ', 'Student'),
(4, 'Neeraj', 'Kingmaker', 'Male', '2007-05-31', 'Banglore', 'Banglore', '6364064990', 'neeraj@gmail.com', 'Student'),
(5, 'Vignesh', '', 'Male', '2001-09-14', 'Banglore', 'Banglore', '9304567893', 'Vignesh@gmail.com', 'Student'),
(6, 'Paul', 'Meshak', 'Male', '2001-09-01', 'Kerla', 'Banglore', '9302569830', 'paul@gmail.com', 'Student'),
(7, 'Vivin', 'Kamal', 'Male', '1999-09-19', 'Chennai', 'Banglore', '950612387', 'vivin@gmail.com', 'Student'),
(8, 'Gopi', 'P', 'Male', '1999-01-31', 'Maharastra', 'Banglore', '9364599330', 'gopi@gmail.com', 'Student'),
(9, 'Jyothika', 'P', 'Female', '2001-12-19', 'Madhurai', 'Banglore', '9630147852', 'Jyo@gmail.com', 'Student'),
(10, 'Sri', 'Lochana', 'Female', '2002-09-07', 'Mysore', 'Banglore', '9999203587', 'sri@gmail.com', 'Student'),
(11, 'Thanuja', 'L', 'Female', '2001-07-28', 'UP', 'Banglore', '8963205299', 'thanu@gmail.com', 'Student'),
(12, 'Vindhya', 'A', 'Female', '2002-11-20', 'Mumbai', 'Banglore', '8965230126', 'Vindhya@gmail.com', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `sub_tbl`
--

CREATE TABLE `sub_tbl` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_tbl`
--

INSERT INTO `sub_tbl` (`sub_id`, `teacher_name`, `teacher_id`, `semester`, `sub_name`, `note`) VALUES
(1, 'Mrs. Anuradha P', 1, '2', 'Java', 'OOPs Using JAVA'),
(2, 'Mrs. Uma Mam', 2, '1', 'Web Programming', 'HTML & CSS'),
(3, 'Mrs Lakshmi Sharma ', 3, '6', 'Unix Shell Scripting', 'UNIX OS'),
(4, 'Mrs. Resmi Mam', 4, '3', 'Networking', 'Data Communication and Networks'),
(5, 'Mr. Regis Britto', 5, '4', 'OOPs using C++', 'Part of C Language'),
(6, 'Mr. Srinivas Rao', 6, '5', 'R Programming', 'Data Science');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `salary` float NOT NULL,
  `married` char(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`teacher_id`, `f_name`, `l_name`, `gender`, `dob`, `pob`, `address`, `degree`, `salary`, `married`, `phone`, `email`, `note`) VALUES
(1, 'Mrs. Anuradha', 'P', 'Female', '1985-03-05', 'Coimbatore', 'Banglore', 'MCA', 40000, 'yes', '7259702303', 'anuradha@gmail.com', 'Java and Data science'),
(2, 'Mrs. Uma', 'Mam', 'Female', '1986-03-08', 'Chennai', 'Banglore', 'MCA', 35000, 'Yes', '9483518361', 'uma@gmail.com', 'Web Programming'),
(3, 'Mrs. Lakshmi', 'Sharma', 'Female', '1990-07-03', 'Manglore', 'Manglore', 'BSC', 33000, 'Yes', '9901956655', 'lakshmisharma@gmail.com', 'Unix Shell Scripting'),
(4, 'Mrs. Resmi', 'Mam', 'Female', '1991-02-01', 'Kerla', 'Chennai', 'MSC', 30000, 'Yes', '9448904861', 'resmi@gmail.com', 'Networking'),
(5, 'Mr. Regis', 'Britto', 'Male', '1981-05-07', 'Chennai', 'Coimbatore', 'MCA', 39000, 'Yes', '9945073461', 'britto@gmail.com', 'OOPs and C++'),
(6, 'Mr. Srinivas ', 'Rao', 'Male', '1980-05-22', 'Andra Pradesh', 'Banglore', 'MSC Data Science', 45000, 'Yes', '8073697229', 'srinivas@gmail.com', 'R Programming');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` char(10) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `username`, `password`, `type`, `note`) VALUES
(1, 'rohit', '123', 'creator', 'creator'),
(2, 'appu', '206459', 'visitor', 'visitor'),
(4, 'neeraj', 'neerajkingmaker', 'creator', 'assignment\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_tbl`
--
ALTER TABLE `article_tbl`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  ADD PRIMARY KEY (`faculties_id`);

--
-- Indexes for table `location_tb`
--
ALTER TABLE `location_tb`
  ADD PRIMARY KEY (`loca_id`);

--
-- Indexes for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_tbl`
--
ALTER TABLE `article_tbl`
  MODIFY `a_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `facuties_tbl`
--
ALTER TABLE `facuties_tbl`
  MODIFY `faculties_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `location_tb`
--
ALTER TABLE `location_tb`
  MODIFY `loca_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stu_score_tbl`
--
ALTER TABLE `stu_score_tbl`
  MODIFY `ss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `stu_tbl`
--
ALTER TABLE `stu_tbl`
  MODIFY `stu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sub_tbl`
--
ALTER TABLE `sub_tbl`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
