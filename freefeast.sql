-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 12:48 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `freefeast`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`aid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `name`, `email`, `password`) VALUES
(1, 'admin1', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `class_name` varchar(50) NOT NULL,
  `rollno` varchar(234) NOT NULL,
  `status` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `before_update_student_tbl`
--

CREATE TABLE IF NOT EXISTS `before_update_student_tbl` (
`id` int(10) NOT NULL,
  `name_class` varchar(30) NOT NULL,
  `roll_num` varchar(30) NOT NULL,
  `before_height` varchar(30) NOT NULL,
  `before_weight` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  `bdate` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `before_update_student_tbl`
--

INSERT INTO `before_update_student_tbl` (`id`, `name_class`, `roll_num`, `before_height`, `before_weight`, `email_id`, `contact_no`, `school_name`, `bdate`) VALUES
(1, 'III', '1', '125', '52', 'abcd@gmail.com', '7845124578', 'Modern school', '2023-02-06'),
(2, 'I', '02', '120', '52', 'abcd@efg', '6523568956', 'Podar international', '2023-03-16'),
(3, 'I', '02', '120', '52', 'abcd@efg', '6523568956', 'Podar international', '2023-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `complaints_tbl`
--

CREATE TABLE IF NOT EXISTS `complaints_tbl` (
`cid` int(10) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `complaints_tbl`
--

INSERT INTO `complaints_tbl` (`cid`, `complaint`, `name`, `date`) VALUES
(1, 'bad quality of material', 'Modern school', '2023-03-01'),
(2, 'not proper ', 'Podar international', '2023-03-29'),
(3, 'dfgh', 'Podar international', '2023-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `email`, `image`, `datetime`) VALUES
(1, 't@gmail.com', '3.jpg', '2023-04-12 06:25:15'),
(2, 't@gmail.com', '2.jpg', '2023-04-18 10:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `monthlymeal_tbl`
--

CREATE TABLE IF NOT EXISTS `monthlymeal_tbl` (
`mid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `quantity` int(50) NOT NULL,
  `measure` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `monthlymeal_tbl`
--

INSERT INTO `monthlymeal_tbl` (`mid`, `name`, `quantity`, `measure`) VALUES
(2, 'Wheat', 5, 'KG'),
(3, 'Rice', 5, 'KG'),
(4, 'Eggs', 3, 'Dozen'),
(5, 'Banana', 2, 'Dozen'),
(6, 'Biscuits', 5, 'Dozen');

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE IF NOT EXISTS `requirements` (
`rid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `measure` varchar(50) NOT NULL,
  `deliverystatus` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `supplier_email` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`rid`, `name`, `quantity`, `measure`, `deliverystatus`, `status`, `email`, `supplier_email`) VALUES
(1, 'Banana', 6, 'Dozen', 'Delivered', 'Pending', 't@gmail.com', 'food@gmail.com'),
(2, 'Biscuits', 15, 'Dozen', 'Delivered', 'Assigned', 't@gmail.com', 'food@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `school_tbl`
--

CREATE TABLE IF NOT EXISTS `school_tbl` (
`sid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `school_tbl`
--

INSERT INTO `school_tbl` (`sid`, `name`, `address`, `email`, `mobile`, `password`, `city`) VALUES
(5, 'Podar international', 'Tapovan Link road', 't@gmail.com', '9856361452', '121212', 'nashik'),
(6, 'Modern school', 'Ashok nagar', 'm@gmail.com', '7845123325', '656565', 'Aurangabad');

-- --------------------------------------------------------

--
-- Table structure for table `stock_inventory`
--

CREATE TABLE IF NOT EXISTS `stock_inventory` (
`id` int(10) NOT NULL,
  `item` varchar(30) NOT NULL,
  `itemquantity` int(50) NOT NULL,
  `measure` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `stock_inventory`
--

INSERT INTO `stock_inventory` (`id`, `item`, `itemquantity`, `measure`) VALUES
(1, 'Rice', 33, 'KG'),
(2, 'Wheat', 50, 'KG'),
(3, 'Eggs', 21, 'Dozen'),
(4, 'Banana', 24, 'Dozen'),
(5, 'Biscuits', 10, 'Packets');

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE IF NOT EXISTS `student_tbl` (
`sid` int(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `classs` varchar(10) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `height` varchar(30) NOT NULL,
  `weight` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student_tbl`
--

INSERT INTO `student_tbl` (`sid`, `fname`, `mname`, `lname`, `classs`, `roll`, `height`, `weight`, `address`, `mobile`, `semail`, `name`, `email`, `date`) VALUES
(1, 'pranit', 'nirmal', 'pathak', 'II', 'SE01', '151', '56', 'rane nagar', '7845124578', 'pranit123@gmail.com', 'Podar international', 't@gmail.com', '2023-01-02'),
(2, 'swati', 'I', 'Baiargi', 'V', '12', '150', '60', 'asb', '6523568956', 'abc@gmail.com', 'Podar international', 't@gmail.com', '2023-01-18'),
(4, 'sffs', 'fddsg', 'dgdsg', 'III', '1', '125', '52', 'fghgh', '7845124578', 'abcd@gmail.com', 'Modern school', 'm@gmail.com', '2023-02-08'),
(5, 'trisha', 'N', 'Bairagi', 'I', '02', '100', '14', 'Nashik', '7066169806', 'smile@gmail.com', 'Podar international', 't@gmail.com', '2023-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_tbl`
--

CREATE TABLE IF NOT EXISTS `supplier_tbl` (
`sid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `supplier_tbl`
--

INSERT INTO `supplier_tbl` (`sid`, `name`, `address`, `email`, `mobile`, `password`, `city`, `status`) VALUES
(2, 'Home food industries', 'satpur midc', 'food@gmail.com', '7845123325', '123456', 'nashik', 'Approved'),
(3, 'Nisha home food', 'cidco', 'nish@gmail.com', '7066139806', '454545', 'pune', 'Disapproved'),
(4, 'ABC', 'asb', 'abc@gmail.com', '7066169806', '101010', 'Banglore', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `total_meal_school`
--

CREATE TABLE IF NOT EXISTS `total_meal_school` (
`mid` int(10) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `tquantity` int(30) NOT NULL,
  `unit` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `total_meal_school`
--

INSERT INTO `total_meal_school` (`mid`, `mname`, `tquantity`, `unit`) VALUES
(2, 'Rice', 15, 'KG'),
(3, 'Eggs', 9, 'Dozen'),
(4, 'Banana', 30, 'Dozen'),
(5, 'Biscuits', 25, 'Dozen');

-- --------------------------------------------------------

--
-- Table structure for table `updated_student_tbl`
--

CREATE TABLE IF NOT EXISTS `updated_student_tbl` (
`id` int(10) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `height_updated` varchar(50) NOT NULL,
  `weight_updated` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `school_name` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `updated_student_tbl`
--

INSERT INTO `updated_student_tbl` (`id`, `class_name`, `roll_no`, `height_updated`, `weight_updated`, `email`, `contact`, `date`, `school_name`) VALUES
(1, 'III', '1', '100', '45', 'sm@gmail.com', '6523568956', '2023-03-01', 'Modern school'),
(2, 'I', '02', '50', '25', 'pranit123@gmail.com', '7845124578', '2023-03-29', 'Podar international');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `before_update_student_tbl`
--
ALTER TABLE `before_update_student_tbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints_tbl`
--
ALTER TABLE `complaints_tbl`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthlymeal_tbl`
--
ALTER TABLE `monthlymeal_tbl`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
 ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `school_tbl`
--
ALTER TABLE `school_tbl`
 ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `stock_inventory`
--
ALTER TABLE `stock_inventory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
 ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `supplier_tbl`
--
ALTER TABLE `supplier_tbl`
 ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `total_meal_school`
--
ALTER TABLE `total_meal_school`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `updated_student_tbl`
--
ALTER TABLE `updated_student_tbl`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `before_update_student_tbl`
--
ALTER TABLE `before_update_student_tbl`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `complaints_tbl`
--
ALTER TABLE `complaints_tbl`
MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `monthlymeal_tbl`
--
ALTER TABLE `monthlymeal_tbl`
MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `school_tbl`
--
ALTER TABLE `school_tbl`
MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stock_inventory`
--
ALTER TABLE `stock_inventory`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_tbl`
--
ALTER TABLE `student_tbl`
MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `supplier_tbl`
--
ALTER TABLE `supplier_tbl`
MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `total_meal_school`
--
ALTER TABLE `total_meal_school`
MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `updated_student_tbl`
--
ALTER TABLE `updated_student_tbl`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
