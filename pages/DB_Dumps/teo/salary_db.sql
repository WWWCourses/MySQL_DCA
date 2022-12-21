-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.2.0.6272
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for salary
CREATE DATABASE IF NOT EXISTS `salary` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `salary`;

-- Dumping structure for table salary.people
CREATE TABLE IF NOT EXISTS `people` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Dumping data for table salary.people: 32 rows
DELETE FROM `people`;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` (`c_id`, `f_name`, `l_name`, `salary`) VALUES
	(1, 'Ivan', 'Ivanov', 1000.00),
	(2, 'Petyr', 'Petrov', 2000.00),
	(3, 'Tihomir', 'Stefanov', 1500.00),
	(4, 'Marin', 'Nikolov', 3000.00),
	(5, 'Yordan', 'Yordanov', 1800.00),
	(6, 'Bilqn', 'Hristov', 2300.00),
	(7, 'Kaloqn', 'Kostov', 2150.00),
	(8, 'Ivelin', 'Ivanov', 1900.00),
	(9, 'Иван', 'Петров', 0.00),
	(10, 'Иван', 'Петров', 0.00),
	(11, 'Иван', 'Петров', 0.00),
	(12, 'Иван', 'Петров', 0.00),
	(13, 'Иван', 'Петров', 0.00),
	(14, 'Иван', 'Петров', 0.00),
	(15, 'Иван', 'Петров', 0.00),
	(16, 'Иван', 'Петров', 0.00),
	(17, 'Иван', 'Петров', 0.00),
	(18, 'Иван', 'Петров', 0.00),
	(19, 'Иван', 'Петров', 0.00),
	(20, 'Иван', 'Петров', 0.00),
	(21, 'Иван', 'Петров', 0.00),
	(22, 'Иван', 'Петров', 0.00),
	(23, 'Иван', 'Петров', 0.00),
	(24, 'Иван', 'Петров', 0.00),
	(25, 'Иван', 'Петров', 0.00),
	(26, 'Иван', 'Петров', 0.00),
	(27, 'Иван', 'Петров', 0.00),
	(28, 'Иван', 'Петров', 0.00),
	(29, 'Иван', 'Петров', 0.00),
	(30, 'Иван', 'Петров', 0.00),
	(31, 'Иван', 'Петров', 0.00),
	(32, 'Иван', 'Петров', 0.00);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;

-- Dumping structure for table salary.tbl_salary
CREATE TABLE IF NOT EXISTS `tbl_salary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `egn` char(20) NOT NULL,
  `firstname` varchar(20) NOT NULL COMMENT '╨┐╤К╤А╨▓╨╛ ╨╕╨╝╨╡',
  `lastname` varchar(20) NOT NULL COMMENT '╤Д╨░╨╝╨╕╨╗╨╕╤П',
  `salary` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT '100.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='╤В╨░╨▒╨╗╨╕╤Ж╨░ ╨╖╨░ ╨╖╨░╨┐╨╗╨░╤В╨╕';

-- Dumping data for table salary.tbl_salary: 10 rows
DELETE FROM `tbl_salary`;
/*!40000 ALTER TABLE `tbl_salary` DISABLE KEYS */;
INSERT INTO `tbl_salary` (`id`, `egn`, `firstname`, `lastname`, `salary`, `bonus`) VALUES
	(1, '1234567771', 'Ivan', 'Popov', 705.00, 100.00),
	(2, '1234567772', 'Petar', 'Ivanov', 820.00, 100.00),
	(3, '1234567773', 'Georgi', 'Dimitrov', 930.00, 100.00),
	(4, '1234567774', 'Maria', 'Marinova', 1040.00, 100.00),
	(5, '1234567775', 'Vania', 'Ilcheva', 1250.00, 100.00),
	(6, '1234567776', 'Martin', 'Petrov', 1460.00, 100.00),
	(7, '1234567777', 'Daniel', 'Georgiev', 2070.00, 100.00),
	(8, '1234567778', 'Mihail', 'Stoichev', 2380.00, 100.00),
	(9, '1234567779', 'Diana', 'Kostova', 3590.00, 100.00),
	(10, '1234567710', 'Neli', 'Staneva', 4000.00, 100.00);
/*!40000 ALTER TABLE `tbl_salary` ENABLE KEYS */;

-- Dumping structure for table salary.tbl_salary_info
CREATE TABLE IF NOT EXISTS `tbl_salary_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `egn` char(10) NOT NULL,
  `department` varchar(45) NOT NULL,
  `manager` varchar(45) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table salary.tbl_salary_info: 10 rows
DELETE FROM `tbl_salary_info`;
/*!40000 ALTER TABLE `tbl_salary_info` DISABLE KEYS */;
INSERT INTO `tbl_salary_info` (`id`, `f_name`, `l_name`, `egn`, `department`, `manager`, `salary`) VALUES
	(1, 'Cindy', 'Briones', '8904027594', 'Entity Research', 'Plamen Iliev', 3000.00),
	(2, 'Ana', 'Perez', '8904027594', 'Entity Research', 'Plamen Iliev', 2500.00),
	(3, 'Alex', 'Pulaski', '8904027594', 'Entity Research', 'Plamen Iliev', 2700.00),
	(4, 'Peter', 'Ross', '8904027594', 'Accounting', 'Plamen Iliev', 4000.00),
	(5, 'Rachal', 'Perez', '8904027594', 'Accounting', 'Plamen Iliev', 3500.00),
	(6, 'Monika', 'Geller', '8904027594', 'Sales', 'Plamen Iliev', 3000.00),
	(7, 'Kinjal', 'Briones', '8904027594', 'Sales', 'Plamen Iliev', 6000.00),
	(8, 'Tom', 'Kuster', '8904027594', 'Entity Research', 'Plamen Iliev', 4500.00),
	(9, 'Michelle', 'Beerwinkel', '8904027594', 'Entity Research', 'Plamen Iliev', 2500.00),
	(10, 'Claude', 'Creeve', '8904027594', 'Entity Research', 'Plamen Iliev', 3000.00);
/*!40000 ALTER TABLE `tbl_salary_info` ENABLE KEYS */;

-- Dumping structure for table salary.work_days
CREATE TABLE IF NOT EXISTS `work_days` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL COMMENT 'foreign key from table people',
  `w_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `w_off` tinyint(1) DEFAULT '1' COMMENT '0 - off, 1 - at work',
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Off days schedule';

-- Dumping data for table salary.work_days: ~19 rows (approximately)
DELETE FROM `work_days`;
/*!40000 ALTER TABLE `work_days` DISABLE KEYS */;
INSERT INTO `work_days` (`w_id`, `c_id`, `w_date`, `w_off`) VALUES
	(1, 1, '2021-05-10 12:30:45', 1),
	(2, 1, '2021-05-12 08:30:45', 0),
	(3, 1, '2021-05-13 08:30:45', 0),
	(4, 1, '2021-06-13 08:30:45', 0),
	(5, 2, '2021-06-13 08:30:45', 1),
	(6, 2, '2021-06-14 08:30:45', 1),
	(7, 3, '2021-06-14 08:30:45', 1),
	(8, 3, '2021-06-15 08:30:45', 0),
	(9, 3, '2021-06-17 08:30:45', 0),
	(10, 4, '2021-03-17 08:30:45', 1),
	(11, 4, '2021-03-20 08:30:45', 1),
	(12, 4, '2021-04-18 08:30:45', 1),
	(13, 4, '2021-06-19 08:30:45', 1),
	(14, 4, '2021-06-20 08:30:45', 1),
	(15, 4, '2021-06-21 08:30:45', 1),
	(16, 4, '2021-06-22 08:30:45', 0),
	(17, 4, '2021-06-23 08:30:45', 0),
	(18, 4, '2021-06-24 08:30:45', 0),
	(19, 6, '2021-06-16 08:30:45', 0);
/*!40000 ALTER TABLE `work_days` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
