-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema library_management
--

CREATE DATABASE IF NOT EXISTS library_management;
USE library_management;

--
-- Definition of table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`username`,`name`,`password`,`security_ques`,`answer`) VALUES 
 ('cetpa','cetpa','12345','What is your mother toungue?','hindi'),
 ('jakir','Jakir Hossain','15191713','What is your mother toungue?','bangla'),
 ('Johnny','John Pandey','12345','What is your school name?','lps'),
 ('PankajP','Pankaj Pandey','iampankaj123','What is your mother toungue?','hindi'),
 ('RaviS','Ravi Shastri','iamravi123','What is your mother toungue?','hindi');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


--
-- Definition of table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int(10) unsigned NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int(8) unsigned NOT NULL,
  `stock` int(8) unsigned NOT NULL,
  PRIMARY KEY  (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`book_id`,`name`,`edition`,`publisher`,`price`,`stock`) VALUES 
 (500,'The Bluest Eye',1,'Toni Morrison',245,23),
 (501,'Palace Of Illusions',1,'Chitra Banerjee Divakaruni',300,20),
 (502,'Pashmina',1,'Nidhi Chanani',540,64),
 (503,'Geetanjoli',6,'Rabindranath Tagor',220,131);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


--
-- Definition of table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue` (
  `book_id` int(10) unsigned NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int(5) unsigned default NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(5) unsigned NOT NULL,
  `stock` int(5) unsigned NOT NULL,
  `emp_id` int(10) unsigned NOT NULL,
  `e_name` varchar(25) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` (`book_id`,`b_name`,`edition`,`publisher`,`price`,`stock`,`emp_id`,`e_name`,`phone`,`email`,`doi`) VALUES 
 (502,'Pashmina',1,'Nidhi Chanani',540,65,1002,'Varun Prajapati','8659321465','varpati67@gmail.com','2019-07-04'),
 (500,'The Bluest Eye',1,'Toni Morrison',245,24,1001,'Rishabh Chaturvedi','9658741236','rishch23@gmail.com','2019-07-04');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;


--
-- Definition of table `returntbl`
--

DROP TABLE IF EXISTS `returntbl`;
CREATE TABLE `returntbl` (
  `emp_id` int(10) unsigned NOT NULL,
  `e_name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `b_name` varchar(45) NOT NULL,
  `edition` varchar(45) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returntbl`
--

/*!40000 ALTER TABLE `returntbl` DISABLE KEYS */;
INSERT INTO `returntbl` (`emp_id`,`e_name`,`phone`,`email`,`book_id`,`b_name`,`edition`,`publisher`,`price`,`stock`,`doi`,`doreturn`) VALUES 
 (664,'Jakir Hossain','M Uddin','Dhanmondi',503,'Geetanjoli','6','Rabindranath Tagor',220,130,'2018-03-25','2019-07-04');
/*!40000 ALTER TABLE `returntbl` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(10) unsigned NOT NULL,
  `name` varchar(25) NOT NULL,
  `fathers_name` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`student_id`,`name`,`fathers_name`,`branch`) VALUES 
 (664,'Jakir Hossain','M Uddin','Dhanmondi'),
 (1001,'Rishabh Chaturvedi','9658741236','rishch23@gmail.com'),
 (1002,'Varun Prajapati','8659321465','varpati67@gmail.com'),
 (1003,'Mahesh Bhupati','7569841236','mahup54@gmail.com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
