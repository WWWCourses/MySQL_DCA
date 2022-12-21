CREATE DATABASE  IF NOT EXISTS `kino` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kino`;


DROP TABLE IF EXISTS `tbl_actors`;

CREATE TABLE `tbl_actors` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(100) NOT NULL COMMENT 'aktiori',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Актьори';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_actors`
--

LOCK TABLES `tbl_actors` WRITE;
/*!40000 ALTER TABLE `tbl_actors` DISABLE KEYS */;
INSERT INTO `tbl_actors` VALUES (1,'Johnny Depp'),(2,'Al Pacino'),(3,'Robert De Niro'),(4,'Kevin Spacey'),(5,'Denzel Washington'),(6,'Russell Crowe'),(7,'Brad Pitt'),(8,'Angelina Jolie'),(9,'Richard Gere'),(10,'Tom Cruise'),(11,'Kate Winslet'),(12,'Christian Bale'),(13,'Keanu Reeves'),(14,'Charlize Theron'),(15,'Matt Damon'),(16,'Catherine Zeta-Jones'),(17,'Джон Доу'),(18,'Джон Доу1'),(19,'Джон Доу2'),(20,'Jon'),(21,'Doe'),(22,'Jon1'),(23,'Doe1');
/*!40000 ALTER TABLE `tbl_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genres`
--

DROP TABLE IF EXISTS `tbl_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_genres` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(100) NOT NULL COMMENT 'janr',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Жанрове';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genres`
--

LOCK TABLES `tbl_genres` WRITE;
/*!40000 ALTER TABLE `tbl_genres` DISABLE KEYS */;
INSERT INTO `tbl_genres` VALUES (1,'Comedy'),(2,'Thriller'),(3,'Horror'),(4,'Romance'),(5,'Military'),(6,'Gangster'),(7,'Drama'),(8,'Fantasy'),(9,'Action'),(10,'Adventure'),(11,'Animation'),(12,'Sci-Fi'),(13,'Bulgarian'),(14,'French'),(15,'Spanish'),(16,'Serbian'),(17,'Italian');
/*!40000 ALTER TABLE `tbl_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lang`
--

DROP TABLE IF EXISTS `tbl_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_lang` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='езици';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lang`
--

LOCK TABLES `tbl_lang` WRITE;
/*!40000 ALTER TABLE `tbl_lang` DISABLE KEYS */;
INSERT INTO `tbl_lang` VALUES (1,'English');
/*!40000 ALTER TABLE `tbl_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movies` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(100) NOT NULL,
  `m_year` int(4) NOT NULL,
  `m_duration` int(3) DEFAULT NULL COMMENT 'in minutes',
  `m_desc` varchar(200) DEFAULT NULL,
  `m_rating` decimal(2,1) DEFAULT NULL COMMENT 'Рейтинг',
  `m_lang` int(11) DEFAULT NULL COMMENT 'Вид прожекция (3D, 2D, ...)',
  `m_sub` BOOL DEFAULT 0 COMMENT 'Субтитри',
  `m_premire` int(1) DEFAULT NULL COMMENT '1 Предпримиера / 2 за примиера / 3 регулярно излъчване',
  PRIMARY KEY (`m_id`),
  KEY `fk_tbl_movies_tbl_type1_idx` (`m_type`),
  CONSTRAINT `fk_tbl_movies_tbl_type1` FOREIGN KEY (`m_type`) REFERENCES `tbl_type` (`ty_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Филми';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies`
--

LOCK TABLES `tbl_movies` WRITE;
/*!40000 ALTER TABLE `tbl_movies` DISABLE KEYS */;
INSERT INTO `tbl_movies` VALUES (1,'Rambo 1',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(2,'Rambo 2',201,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(3,'Star Wars 1',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(4,'Star Wars 2',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(5,'Star Wars 3',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(6,'Star Wars 4',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(7,'Star Wars 5',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(8,'Star Wars 6',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(9,'Star Wars 7',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary ''),(10,'Almighty Bruce',2019,90,'mnogo boi',3,16,'https://123.com',1,4.5,1,_binary '',1,1,NULL,_binary '');
/*!40000 ALTER TABLE `tbl_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movies_actors`
--

DROP TABLE IF EXISTS `tbl_movies_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movies_actors` (
  `m_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`,`a_id`),
  KEY `a_id` (`a_id`),
  CONSTRAINT `tbl_movies_actors_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `tbl_movies` (`m_id`),
  CONSTRAINT `tbl_movies_actors_ibfk_2` FOREIGN KEY (`a_id`) REFERENCES `tbl_actors` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3D/2D';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies_actors`
--

LOCK TABLES `tbl_movies_actors` WRITE;
/*!40000 ALTER TABLE `tbl_movies_actors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movies_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movies_genres`
--

DROP TABLE IF EXISTS `tbl_movies_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movies_genres` (
  `m_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`,`g_id`),
  KEY `g_id` (`g_id`),
  CONSTRAINT `tbl_movies_genres_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `tbl_movies` (`m_id`),
  CONSTRAINT `tbl_movies_genres_ibfk_2` FOREIGN KEY (`g_id`) REFERENCES `tbl_genres` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3D/2D';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies_genres`
--

LOCK TABLES `tbl_movies_genres` WRITE;
/*!40000 ALTER TABLE `tbl_movies_genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movies_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movies_lang`
--

DROP TABLE IF EXISTS `tbl_movies_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movies_lang` (
  `m_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`,`l_id`),
  KEY `l_id` (`l_id`),
  CONSTRAINT `tbl_movies_lang_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `tbl_movies` (`m_id`),
  CONSTRAINT `tbl_movies_lang_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `tbl_lang` (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3D/2D';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies_lang`
--

LOCK TABLES `tbl_movies_lang` WRITE;
/*!40000 ALTER TABLE `tbl_movies_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movies_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_movies_producer`
--

DROP TABLE IF EXISTS `tbl_movies_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movies_producer` (
  `m_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`,`p_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `tbl_movies_producer_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `tbl_movies` (`m_id`),
  CONSTRAINT `tbl_movies_producer_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `tbl_producer` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3D/2D';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_movies_producer`
--

LOCK TABLES `tbl_movies_producer` WRITE;
/*!40000 ALTER TABLE `tbl_movies_producer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movies_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producer`
--

DROP TABLE IF EXISTS `tbl_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_producer` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL COMMENT 'Име',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Продуцент/Режисьор';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producer`
--

LOCK TABLES `tbl_producer` WRITE;
/*!40000 ALTER TABLE `tbl_producer` DISABLE KEYS */;
INSERT INTO `tbl_producer` VALUES (1,'Francis Ford Coppola'),(2,'Steven Spielberg'),(3,'George Lucas'),(4,'Clint Eastwood'),(5,'James Cameron'),(6,'Michael Bay'),(7,'Tim Burton'),(8,'Christopher Nolan'),(9,'Justin Lin'),(10,'Joe Johnston');
/*!40000 ALTER TABLE `tbl_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_programa`
--

DROP TABLE IF EXISTS `tbl_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_programa` (
  `pg_id` int(11) NOT NULL AUTO_INCREMENT,
  `pg_date` datetime DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL,
  `pg_seats` int(3) DEFAULT '100',
  PRIMARY KEY (`pg_id`),
  KEY `m_id` (`m_id`),
  CONSTRAINT `tbl_programa_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `tbl_movies` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Програма';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_programa`
--

LOCK TABLES `tbl_programa` WRITE;
/*!40000 ALTER TABLE `tbl_programa` DISABLE KEYS */;
INSERT INTO `tbl_programa` VALUES (1,'2019-11-14 08:00:00',1,100),(2,'2019-11-14 10:00:00',2,100),(3,'2019-11-14 12:00:00',3,98),(4,'2019-11-14 14:00:00',4,100),(5,'2019-11-14 16:00:00',5,92),(6,'2019-11-14 18:00:00',6,100),(7,'2019-11-14 20:00:00',7,100),(8,'2019-11-15 08:00:00',3,100),(9,'2019-11-15 10:00:00',5,100),(10,'2019-11-15 12:00:00',8,97),(11,'2019-11-15 14:00:00',9,100),(12,'2019-11-15 16:00:00',10,100),(13,'2019-11-15 18:00:00',2,100),(14,'2019-11-15 20:00:00',3,100);
/*!40000 ALTER TABLE `tbl_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales`
--

DROP TABLE IF EXISTS `tbl_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sales` (
  `sl_id` int(11) NOT NULL AUTO_INCREMENT,
  `sl_date` datetime DEFAULT NULL,
  `pg_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `sl_row` int(2) DEFAULT NULL,
  `sl_seat` int(3) DEFAULT NULL,
  `t_no` int(11) DEFAULT NULL,
  `sl_price` decimal(4,2) DEFAULT '0.00',
  PRIMARY KEY (`sl_id`),
  KEY `t_id` (`t_id`),
  KEY `pg_id` (`pg_id`),
  CONSTRAINT `tbl_sales_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `tbl_tickets` (`t_id`),
  CONSTRAINT `tbl_sales_ibfk_2` FOREIGN KEY (`pg_id`) REFERENCES `tbl_programa` (`pg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='продажби';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales`
--

LOCK TABLES `tbl_sales` WRITE;
/*!40000 ALTER TABLE `tbl_sales` DISABLE KEYS */;
INSERT INTO `tbl_sales` VALUES (1,'2019-10-11 09:00:00',1,4,7,7,1,6.50),(2,'2019-10-11 09:00:00',1,4,3,7,2,6.50),(3,'2019-10-11 09:00:00',1,4,6,7,3,6.50),(4,'2019-10-11 09:00:00',1,4,7,3,4,6.50),(5,'2019-10-11 09:00:00',1,4,6,7,5,6.50),(6,'2019-10-11 09:00:00',1,4,7,2,6,6.50),(7,'2019-10-11 09:00:00',1,4,1,7,7,6.50),(8,'2019-10-11 09:00:00',1,4,7,7,8,6.50),(9,NULL,3,2,4,13,9,12.00),(10,NULL,3,2,4,13,10,12.00),(11,NULL,10,2,4,13,11,12.00),(12,NULL,10,2,4,13,12,12.00),(13,NULL,10,2,4,13,13,12.00),(14,NULL,5,2,4,13,14,12.00),(15,NULL,5,2,4,13,15,12.00),(16,NULL,5,2,4,13,16,12.00),(17,NULL,5,2,4,13,17,12.00),(18,NULL,5,2,4,13,18,12.00),(19,NULL,5,2,4,13,19,12.00),(20,NULL,5,2,4,13,20,12.00),(21,NULL,5,2,4,13,21,12.00);
/*!40000 ALTER TABLE `tbl_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_settings` (
  `s_id` tinyint(1) NOT NULL,
  `s_hall_seats` int(6) DEFAULT NULL,
  `s_ticket_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3D/2D';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` VALUES (1,100,21);
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tickets`
--

DROP TABLE IF EXISTS `tbl_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tickets` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_price` decimal(4,2) DEFAULT '0.00' COMMENT 'cena',
  `t_title` varchar(50) NOT NULL COMMENT 'ime',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Билети';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tickets`
--

LOCK TABLES `tbl_tickets` WRITE;
/*!40000 ALTER TABLE `tbl_tickets` DISABLE KEYS */;
INSERT INTO `tbl_tickets` VALUES (1,15.00,'regular'),(2,6.00,'Student'),(3,8.00,'Retired'),(4,5.00,'Kids'),(5,50.00,'Билет 1'),(6,50.00,'Билет 2'),(7,50.00,'Билет 3');
/*!40000 ALTER TABLE `tbl_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_type`
--

DROP TABLE IF EXISTS `tbl_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_type` (
  `ty_id` int(11) NOT NULL AUTO_INCREMENT,
  `ty_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='3D/2D';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_type`
--

LOCK TABLES `tbl_type` WRITE;
/*!40000 ALTER TABLE `tbl_type` DISABLE KEYS */;
INSERT INTO `tbl_type` VALUES (1,'2D'),(2,'3D'),(3,'IMAX'),(4,'Luxe');
/*!40000 ALTER TABLE `tbl_type` ENABLE KEYS */;
UNLOCK TABLES;
