-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: drinks_db
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `drinks_db`
--

/*!40000 DROP DATABASE IF EXISTS `drinks_db`*/;

-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ `drinks_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

-- USE `drinks_db`;

--
-- Table structure for table `drinks`
--

DROP TABLE IF EXISTS `drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drinks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `beer_servings` smallint unsigned DEFAULT NULL,
  `spirit_servings` smallint unsigned DEFAULT NULL,
  `wine_servings` smallint unsigned DEFAULT NULL,
  `continent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drinks`
--

LOCK TABLES `drinks` WRITE;
/*!40000 ALTER TABLE `drinks` DISABLE KEYS */;
INSERT INTO `drinks` VALUES (1,'Afghanistan',0,0,0,'AS'),(2,'Albania',89,132,54,'EU'),(3,'Algeria',25,0,14,'AF'),(4,'Andorra',245,138,312,'EU'),(5,'Angola',217,57,45,'AF'),(6,'Antigua & Barbuda',102,128,45,''),(7,'Argentina',193,25,221,'SA'),(8,'Armenia',21,179,11,'EU'),(9,'Australia',261,72,212,'OC'),(10,'Austria',279,75,191,'EU'),(11,'Azerbaijan',21,46,5,'EU'),(12,'Bahamas',122,176,51,''),(13,'Bahrain',42,63,7,'AS'),(14,'Bangladesh',0,0,0,'AS'),(15,'Barbados',143,173,36,''),(16,'Belarus',142,373,42,'EU'),(17,'Belgium',295,84,212,'EU'),(18,'Belize',263,114,8,''),(19,'Benin',34,4,13,'AF'),(20,'Bhutan',23,0,0,'AS'),(21,'Bolivia',167,41,8,'SA'),(22,'Bosnia-Herzegovina',76,173,8,'EU'),(23,'Botswana',173,35,35,'AF'),(24,'Brazil',245,145,16,'SA'),(25,'Brunei',31,2,1,'AS'),(26,'Bulgaria',231,252,94,'EU'),(27,'Burkina Faso',25,7,7,'AF'),(28,'Burundi',88,0,0,'AF'),(29,'Cote d\'Ivoire',37,1,7,'AF'),(30,'Cabo Verde',144,56,16,'AF'),(31,'Cambodia',57,65,1,'AS'),(32,'Cameroon',147,1,4,'AF'),(33,'Canada',240,122,100,''),(34,'Central African Republic',17,2,1,'AF'),(35,'Chad',15,1,1,'AF'),(36,'Chile',130,124,172,'SA'),(37,'China',79,192,8,'AS'),(38,'Colombia',159,76,3,'SA'),(39,'Comoros',1,3,1,'AF'),(40,'Congo',76,1,9,'AF'),(41,'Cook Islands',0,254,74,'OC'),(42,'Costa Rica',149,87,11,''),(43,'Croatia',230,87,254,'EU'),(44,'Cuba',93,137,5,''),(45,'Cyprus',192,154,113,'EU'),(46,'Czech Republic',361,170,134,'EU'),(47,'North Korea',0,0,0,'AS'),(48,'DR Congo',32,3,1,'AF'),(49,'Denmark',224,81,278,'EU'),(50,'Djibouti',15,44,3,'AF'),(51,'Dominica',52,286,26,''),(52,'Dominican Republic',193,147,9,''),(53,'Ecuador',162,74,3,'SA'),(54,'Egypt',6,4,1,'AF'),(55,'El Salvador',52,69,2,''),(56,'Equatorial Guinea',92,0,233,'AF'),(57,'Eritrea',18,0,0,'AF'),(58,'Estonia',224,194,59,'EU'),(59,'Ethiopia',20,3,0,'AF'),(60,'Fiji',77,35,1,'OC'),(61,'Finland',263,133,97,'EU'),(62,'France',127,151,370,'EU'),(63,'Gabon',347,98,59,'AF'),(64,'Gambia',8,0,1,'AF'),(65,'Georgia',52,100,149,'EU'),(66,'Germany',346,117,175,'EU'),(67,'Ghana',31,3,10,'AF'),(68,'Greece',133,112,218,'EU'),(69,'Grenada',199,438,28,''),(70,'Guatemala',53,69,2,''),(71,'Guinea',9,0,2,'AF'),(72,'Guinea-Bissau',28,31,21,'AF'),(73,'Guyana',93,302,1,'SA'),(74,'Haiti',1,326,1,''),(75,'Honduras',69,98,2,''),(76,'Hungary',234,215,185,'EU'),(77,'Iceland',233,61,78,'EU'),(78,'India',9,114,0,'AS'),(79,'Indonesia',5,1,0,'AS'),(80,'Iran',0,0,0,'AS'),(81,'Iraq',9,3,0,'AS'),(82,'Ireland',313,118,165,'EU'),(83,'Israel',63,69,9,'AS'),(84,'Italy',85,42,237,'EU'),(85,'Jamaica',82,97,9,''),(86,'Japan',77,202,16,'AS'),(87,'Jordan',6,21,1,'AS'),(88,'Kazakhstan',124,246,12,'AS'),(89,'Kenya',58,22,2,'AF'),(90,'Kiribati',21,34,1,'OC'),(91,'Kuwait',0,0,0,'AS'),(92,'Kyrgyzstan',31,97,6,'AS'),(93,'Laos',62,0,123,'AS'),(94,'Latvia',281,216,62,'EU'),(95,'Lebanon',20,55,31,'AS'),(96,'Lesotho',82,29,0,'AF'),(97,'Liberia',19,152,2,'AF'),(98,'Libya',0,0,0,'AF'),(99,'Lithuania',343,244,56,'EU'),(100,'Luxembourg',236,133,271,'EU'),(101,'Madagascar',26,15,4,'AF'),(102,'Malawi',8,11,1,'AF'),(103,'Malaysia',13,4,0,'AS'),(104,'Maldives',0,0,0,'AS'),(105,'Mali',5,1,1,'AF'),(106,'Malta',149,100,120,'EU'),(107,'Marshall Islands',0,0,0,'OC'),(108,'Mauritania',0,0,0,'AF'),(109,'Mauritius',98,31,18,'AF'),(110,'Mexico',238,68,5,''),(111,'Micronesia',62,50,18,'OC'),(112,'Monaco',0,0,0,'EU'),(113,'Mongolia',77,189,8,'AS'),(114,'Montenegro',31,114,128,'EU'),(115,'Morocco',12,6,10,'AF'),(116,'Mozambique',47,18,5,'AF'),(117,'Myanmar',5,1,0,'AS'),(118,'Namibia',376,3,1,'AF'),(119,'Nauru',49,0,8,'OC'),(120,'Nepal',5,6,0,'AS'),(121,'Netherlands',251,88,190,'EU'),(122,'New Zealand',203,79,175,'OC'),(123,'Nicaragua',78,118,1,''),(124,'Niger',3,2,1,'AF'),(125,'Nigeria',42,5,2,'AF'),(126,'Niue',188,200,7,'OC'),(127,'Norway',169,71,129,'EU'),(128,'Oman',22,16,1,'AS'),(129,'Pakistan',0,0,0,'AS'),(130,'Palau',306,63,23,'OC'),(131,'Panama',285,104,18,''),(132,'Papua New Guinea',44,39,1,'OC'),(133,'Paraguay',213,117,74,'SA'),(134,'Peru',163,160,21,'SA'),(135,'Philippines',71,186,1,'AS'),(136,'Poland',343,215,56,'EU'),(137,'Portugal',194,67,339,'EU'),(138,'Qatar',1,42,7,'AS'),(139,'South Korea',140,16,9,'AS'),(140,'Moldova',109,226,18,'EU'),(141,'Romania',297,122,167,'EU'),(142,'Russian Federation',247,326,73,'AS'),(143,'Rwanda',43,2,0,'AF'),(144,'St. Kitts & Nevis',194,205,32,''),(145,'St. Lucia',171,315,71,''),(146,'St. Vincent & the Grenadines',120,221,11,''),(147,'Samoa',105,18,24,'OC'),(148,'San Marino',0,0,0,'EU'),(149,'Sao Tome & Principe',56,38,140,'AF'),(150,'Saudi Arabia',0,5,0,'AS'),(151,'Senegal',9,1,7,'AF'),(152,'Serbia',283,131,127,'EU'),(153,'Seychelles',157,25,51,'AF'),(154,'Sierra Leone',25,3,2,'AF'),(155,'Singapore',60,12,11,'AS'),(156,'Slovakia',196,293,116,'EU'),(157,'Slovenia',270,51,276,'EU'),(158,'Solomon Islands',56,11,1,'OC'),(159,'Somalia',0,0,0,'AF'),(160,'South Africa',225,76,81,'AF'),(161,'Spain',284,157,112,'EU'),(162,'Sri Lanka',16,104,0,'AS'),(163,'Sudan',8,13,0,'AF'),(164,'Suriname',128,178,7,'SA'),(165,'Swaziland',90,2,2,'AF'),(166,'Sweden',152,60,186,'EU'),(167,'Switzerland',185,100,280,'EU'),(168,'Syria',5,35,16,'AS'),(169,'Tajikistan',2,15,0,'AS'),(170,'Thailand',99,258,1,'AS'),(171,'Macedonia',106,27,86,'EU'),(172,'Timor-Leste',1,1,4,'AS'),(173,'Togo',36,2,19,'AF'),(174,'Tonga',36,21,5,'OC'),(175,'Trinidad & Tobago',197,156,7,''),(176,'Tunisia',51,3,20,'AF'),(177,'Turkey',51,22,7,'AS'),(178,'Turkmenistan',19,71,32,'AS'),(179,'Tuvalu',6,41,9,'OC'),(180,'Uganda',45,9,0,'AF'),(181,'Ukraine',206,237,45,'EU'),(182,'United Arab Emirates',16,135,5,'AS'),(183,'United Kingdom',219,126,195,'EU'),(184,'Tanzania',36,6,1,'AF'),(185,'USA',249,158,84,''),(186,'Uruguay',115,35,220,'SA'),(187,'Uzbekistan',25,101,8,'AS'),(188,'Vanuatu',21,18,11,'OC'),(189,'Venezuela',333,100,3,'SA'),(190,'Vietnam',111,2,1,'AS'),(191,'Yemen',6,0,0,'AS'),(192,'Zambia',32,19,4,'AF'),(193,'Zimbabwe',64,18,4,'AF');
/*!40000 ALTER TABLE `drinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 12:06:13
