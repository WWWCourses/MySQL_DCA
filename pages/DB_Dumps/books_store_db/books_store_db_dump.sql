-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: books_store_db
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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(250) DEFAULT NULL,
  `lname` varchar(250) NOT NULL,
  `birth_year` smallint DEFAULT NULL,
  `death_year` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lname` (`lname`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Kurt','Vonnegut',1922,2007),(2,'Douglas','Adams',1952,2001),(3,'Lewis','Carroll',1832,1898),(4,'Georgi','Gospodinov',1968,NULL),(5,'Alek','Popov',1966,NULL),(6,'Georgi','Markov',1929,1978);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int unsigned NOT NULL,
  `book_name` varchar(250) NOT NULL,
  `pub_year` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_name` (`book_name`(10)),
  KEY `author_id` (`author_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'The Sirens of Titan',1959),(2,1,'Mother Night',1961),(3,1,'Cat\'s Cradle',1963),(4,1,'God Bless You',1965),(5,1,'Slaughterhouse',1969),(6,1,'Breakfast of Champions',1973),(7,2,'The Hitchhiker\'s Guide to the Galaxy',1979),(8,2,'The Restaurant at the End of the Universe',1980),(9,2,'Life',1982),(10,2,'So Long',1984),(11,2,'Young Zaphod Plays It Safe',1986),(12,2,'Dirk Gently\'s Holistic Detective Agency',1987),(13,2,'Last Chance to See',1990),(14,2,'Mostly Harmless',1992),(15,3,'Alice\'s Adventures in Wonderland',1865),(16,3,'Through the Looking-Glass, and What Alice Found There',1871),(17,3,'Rhyme? And Reason?',NULL),(18,3,'A Tangled Tale',NULL),(19,3,'Pillow Problems',NULL),(20,3,'La Guida di Bragia, a Ballad Opera for the Marionette Theatre',1950),(21,3,'Sylvie and Bruno',NULL),(22,3,'Sylvie and Bruno Concluded',NULL),(23,3,'Three Sunsets and Other Poems',1898),(24,3,'The Hunting of the Snark',1876),(25,3,'What the Tortoise Said to Achilles',1895),(26,3,'A Syllabus of Plane Algebraic Geometry',1860),(27,3,'The Fifth Book of Euclid Treated Algebraically',1858),(28,3,'An Elementary Treatise on Determinants, With Their Application to Simultaneous Linear Equations and Algebraic Equations',NULL),(29,3,'Euclid and his Modern Rivals',1879),(30,3,'Symbolic Logic Part I',NULL),(31,3,'Symbolic Logic Part II',NULL),(32,3,'The Alphabet Cipher',1868),(33,3,'The Game of Logic',1887),(34,3,'Curiosa Mathematica I',1888),(35,3,'Curiosa Mathematica II',1892),(36,4,'Natural Novel',1999),(37,4,'And Other Stories',2001),(38,4,'The Physics of Sorrow',2012),(39,4,'Time Shelter',2020);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Sofia'),(2,'Paris'),(3,'Lodon'),(4,'New York');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Ivan',23),(2,'John',34),(3,'Merry',NULL),(4,'Peter',35),(5,'Lily',23);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_books`
--

DROP TABLE IF EXISTS `clients_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_books` (
  `client_id` int unsigned NOT NULL,
  `book_id` int unsigned NOT NULL,
  PRIMARY KEY (`client_id`,`book_id`),
  KEY `book_fk` (`book_id`),
  CONSTRAINT `clients_books_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `clients_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_books`
--

LOCK TABLES `clients_books` WRITE;
/*!40000 ALTER TABLE `clients_books` DISABLE KEYS */;
INSERT INTO `clients_books` VALUES (1,1),(1,4),(1,5),(1,7),(2,7),(2,10),(3,12),(2,15),(1,36),(5,36),(1,38),(3,38),(5,38);
/*!40000 ALTER TABLE `clients_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_cities`
--

DROP TABLE IF EXISTS `clients_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_cities` (
  `client_id` int unsigned NOT NULL,
  `city_id` int unsigned NOT NULL,
  PRIMARY KEY (`client_id`,`city_id`),
  KEY `city_fk` (`city_id`),
  CONSTRAINT `clients_cities_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `clients_cities_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_cities`
--

LOCK TABLES `clients_cities` WRITE;
/*!40000 ALTER TABLE `clients_cities` DISABLE KEYS */;
INSERT INTO `clients_cities` VALUES (1,1),(5,1),(3,2),(4,3),(1,4);
/*!40000 ALTER TABLE `clients_cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 13:06:49
