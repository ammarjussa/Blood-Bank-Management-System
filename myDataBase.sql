-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: myDataBase
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Acceptor`
--

DROP TABLE IF EXISTS `Acceptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acceptor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccName` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CNIC` varchar(255) DEFAULT NULL,
  `Contact#` int(11) DEFAULT '0',
  `DateOfBirth` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acceptor`
--

LOCK TABLES `Acceptor` WRITE;
/*!40000 ALTER TABLE `Acceptor` DISABLE KEYS */;
INSERT INTO `Acceptor` VALUES (1,'Abdul','Male','ABC','Hasilpur','manan@gmail.com','31203-349839489-2',399283,'2018-11-14 00:00:00'),(3,'Ab','F','12','12','12','12',12,'2018-11-15 00:00:00'),(4,'MANAN','M','as','Lahore','abc0@gmail.com','3120348508450',26,'2011-12-12 00:00:00'),(5,'MANAN','M','as','Lahore','abc0@gmail.com','3120348508450',26,'2011-12-12 00:00:00'),(6,'MANAN','M','as','Lahore','abc0@gmail.com','3120348508450',26,'2011-12-12 00:00:00'),(7,'Ali','M','Colony 0','Lahore','abc0@gmail.com','30',1921,'2000-11-11 00:00:00'),(8,'Ahmed','F','Colony 1','Karachi','abc1@gmail.com','31',1921,'2000-11-11 00:00:00'),(9,'Bilal','M','Colony 2','Islamabad','abc2@gmail.com','32',1921,'2000-11-11 00:00:00'),(10,'Manan','F','Colony 3','Lahore','abc3@gmail.com','33',1921,'2000-11-11 00:00:00'),(11,'Abdul Manan','M','Colony 4','Karachi','abc4@gmail.com','34',1921,'2000-11-11 00:00:00'),(12,'Zia','F','Colony 5','Islamabad','abc5@gmail.com','35',1921,'2000-11-11 00:00:00'),(13,'Yasir','M','Colony 6','Lahore','abc6@gmail.com','36',1921,'2000-11-11 00:00:00'),(14,'M Danish','F','Colony 7','Karachi','abc7@gmail.com','37',1921,'2000-11-11 00:00:00'),(15,'Ali','M','Colony 8','Islamabad','abc8@gmail.com','38',1921,'2000-11-11 00:00:00'),(16,'Ahmed','F','Colony 9','Lahore','abc9@gmail.com','39',1921,'2000-11-11 00:00:00'),(17,'Bilal','M','Colony 10','Karachi','abc10@gmail.com','310',1921,'2000-11-11 00:00:00'),(18,'Manan','F','Colony 11','Islamabad','abc11@gmail.com','311',1921,'2000-11-11 00:00:00'),(19,'Abdul Manan','M','Colony 12','Lahore','abc12@gmail.com','312',1921,'2000-11-11 00:00:00'),(20,'Zia','F','Colony 13','Karachi','abc13@gmail.com','313',1921,'2000-11-11 00:00:00'),(21,'Yasir','M','Colony 14','Islamabad','abc14@gmail.com','314',1921,'2000-11-11 00:00:00'),(22,'M Danish','F','Colony 15','Lahore','abc15@gmail.com','315',1921,'2000-11-11 00:00:00'),(23,'Ali','M','Colony 16','Karachi','abc16@gmail.com','316',1921,'2000-11-11 00:00:00'),(24,'Ahmed','F','Colony 17','Islamabad','abc17@gmail.com','317',1921,'2000-11-11 00:00:00'),(25,'Bilal','M','Colony 18','Lahore','abc18@gmail.com','318',1921,'2000-11-11 00:00:00'),(26,'Manan','F','Colony 19','Karachi','abc19@gmail.com','319',1921,'2000-11-11 00:00:00'),(27,'Abdul Manan','M','Colony 20','Islamabad','abc20@gmail.com','320',1921,'2000-11-11 00:00:00'),(28,'Zia','F','Colony 21','Lahore','abc21@gmail.com','321',1921,'2000-11-11 00:00:00'),(29,'Yasir','M','Colony 22','Karachi','abc22@gmail.com','322',1921,'2000-11-11 00:00:00'),(30,'M Danish','F','Colony 23','Islamabad','abc23@gmail.com','323',1921,'2000-11-11 00:00:00'),(31,'Ali','M','Colony 24','Lahore','abc24@gmail.com','324',1921,'2000-11-11 00:00:00'),(32,'Ahmed','F','Colony 25','Karachi','abc25@gmail.com','325',1921,'2000-11-11 00:00:00'),(33,'Bilal','M','Colony 26','Islamabad','abc26@gmail.com','326',1921,'2000-11-11 00:00:00'),(34,'Manan','F','Colony 27','Lahore','abc27@gmail.com','327',1921,'2000-11-11 00:00:00'),(35,'Abdul Manan','M','Colony 28','Karachi','abc28@gmail.com','328',1921,'2000-11-11 00:00:00'),(36,'Zia','F','Colony 29','Islamabad','abc29@gmail.com','329',1921,'2000-11-11 00:00:00'),(37,'Yasir','M','Colony 30','Lahore','abc30@gmail.com','330',1921,'2000-11-11 00:00:00'),(38,'M Danish','F','Colony 31','Karachi','abc31@gmail.com','331',1921,'2000-11-11 00:00:00'),(39,'Ali','M','Colony 32','Islamabad','abc32@gmail.com','332',1921,'2000-11-11 00:00:00'),(40,'Ahmed','F','Colony 33','Lahore','abc33@gmail.com','333',1921,'2000-11-11 00:00:00'),(41,'Bilal','M','Colony 34','Karachi','abc34@gmail.com','334',1921,'2000-11-11 00:00:00'),(42,'Manan','F','Colony 35','Islamabad','abc35@gmail.com','335',1921,'2000-11-11 00:00:00'),(43,'Abdul Manan','M','Colony 36','Lahore','abc36@gmail.com','336',1921,'2000-11-11 00:00:00'),(44,'Zia','F','Colony 37','Karachi','abc37@gmail.com','337',1921,'2000-11-11 00:00:00'),(45,'Yasir','M','Colony 38','Islamabad','abc38@gmail.com','338',1921,'2000-11-11 00:00:00'),(46,'M Danish','F','Colony 39','Lahore','abc39@gmail.com','339',1921,'2000-11-11 00:00:00'),(47,'Ali','M','Colony 40','Karachi','abc40@gmail.com','340',1921,'2000-11-11 00:00:00'),(48,'Ahmed','F','Colony 41','Islamabad','abc41@gmail.com','341',1921,'2000-11-11 00:00:00'),(49,'Bilal','M','Colony 42','Lahore','abc42@gmail.com','342',1921,'2000-11-11 00:00:00'),(50,'Manan','F','Colony 43','Karachi','abc43@gmail.com','343',1921,'2000-11-11 00:00:00'),(51,'Abdul Manan','M','Colony 44','Islamabad','abc44@gmail.com','344',1921,'2000-11-11 00:00:00'),(52,'Zia','F','Colony 45','Lahore','abc45@gmail.com','345',1921,'2000-11-11 00:00:00'),(53,'Yasir','M','Colony 46','Karachi','abc46@gmail.com','346',1921,'2000-11-11 00:00:00'),(54,'M Danish','F','Colony 47','Islamabad','abc47@gmail.com','347',1921,'2000-11-11 00:00:00'),(55,'Ali','M','Colony 48','Lahore','abc48@gmail.com','348',1921,'2000-11-11 00:00:00'),(56,'Ahmed','F','Colony 49','Karachi','abc49@gmail.com','349',1921,'2000-11-11 00:00:00'),(57,'Bilal','M','Colony 50','Islamabad','abc50@gmail.com','350',1921,'2000-11-11 00:00:00'),(58,'Manan','F','Colony 51','Lahore','abc51@gmail.com','351',1921,'2000-11-11 00:00:00'),(59,'Abdul Manan','M','Colony 52','Karachi','abc52@gmail.com','352',1921,'2000-11-11 00:00:00'),(60,'Zia','F','Colony 53','Islamabad','abc53@gmail.com','353',1921,'2000-11-11 00:00:00'),(61,'Yasir','M','Colony 54','Lahore','abc54@gmail.com','354',1921,'2000-11-11 00:00:00'),(62,'M Danish','F','Colony 55','Karachi','abc55@gmail.com','355',1921,'2000-11-11 00:00:00'),(63,'Ali','M','Colony 56','Islamabad','abc56@gmail.com','356',1921,'2000-11-11 00:00:00'),(64,'Ahmed','F','Colony 57','Lahore','abc57@gmail.com','357',1921,'2000-11-11 00:00:00'),(65,'Bilal','M','Colony 58','Karachi','abc58@gmail.com','358',1921,'2000-11-11 00:00:00'),(66,'Manan','F','Colony 59','Islamabad','abc59@gmail.com','359',1921,'2000-11-11 00:00:00'),(67,'Abdul Manan','M','Colony 60','Lahore','abc60@gmail.com','360',1921,'2000-11-11 00:00:00'),(68,'Zia','F','Colony 61','Karachi','abc61@gmail.com','361',1921,'2000-11-11 00:00:00'),(69,'Yasir','M','Colony 62','Islamabad','abc62@gmail.com','362',1921,'2000-11-11 00:00:00'),(70,'M Danish','F','Colony 63','Lahore','abc63@gmail.com','363',1921,'2000-11-11 00:00:00'),(71,'Ali','M','Colony 64','Karachi','abc64@gmail.com','364',1921,'2000-11-11 00:00:00'),(72,'Ahmed','F','Colony 65','Islamabad','abc65@gmail.com','365',1921,'2000-11-11 00:00:00'),(73,'Bilal','M','Colony 66','Lahore','abc66@gmail.com','366',1921,'2000-11-11 00:00:00'),(74,'Manan','F','Colony 67','Karachi','abc67@gmail.com','367',1921,'2000-11-11 00:00:00'),(75,'Abdul Manan','M','Colony 68','Islamabad','abc68@gmail.com','368',1921,'2000-11-11 00:00:00'),(76,'Zia','F','Colony 69','Lahore','abc69@gmail.com','369',1921,'2000-11-11 00:00:00'),(77,'Yasir','M','Colony 70','Karachi','abc70@gmail.com','370',1921,'2000-11-11 00:00:00'),(78,'M Danish','F','Colony 71','Islamabad','abc71@gmail.com','371',1921,'2000-11-11 00:00:00'),(79,'Ali','M','Colony 72','Lahore','abc72@gmail.com','372',1921,'2000-11-11 00:00:00'),(80,'Ahmed','F','Colony 73','Karachi','abc73@gmail.com','373',1921,'2000-11-11 00:00:00'),(81,'Bilal','M','Colony 74','Islamabad','abc74@gmail.com','374',1921,'2000-11-11 00:00:00'),(82,'Manan','F','Colony 75','Lahore','abc75@gmail.com','375',1921,'2000-11-11 00:00:00'),(83,'Abdul Manan','M','Colony 76','Karachi','abc76@gmail.com','376',1921,'2000-11-11 00:00:00'),(84,'Zia','F','Colony 77','Islamabad','abc77@gmail.com','377',1921,'2000-11-11 00:00:00'),(85,'Yasir','M','Colony 78','Lahore','abc78@gmail.com','378',1921,'2000-11-11 00:00:00'),(86,'M Danish','F','Colony 79','Karachi','abc79@gmail.com','379',1921,'2000-11-11 00:00:00'),(87,'Ali','M','Colony 80','Islamabad','abc80@gmail.com','380',1921,'2000-11-11 00:00:00'),(88,'Ahmed','F','Colony 81','Lahore','abc81@gmail.com','381',1921,'2000-11-11 00:00:00'),(89,'Bilal','M','Colony 82','Karachi','abc82@gmail.com','382',1921,'2000-11-11 00:00:00'),(90,'Manan','F','Colony 83','Islamabad','abc83@gmail.com','383',1921,'2000-11-11 00:00:00'),(91,'Abdul Manan','M','Colony 84','Lahore','abc84@gmail.com','384',1921,'2000-11-11 00:00:00'),(92,'Zia','F','Colony 85','Karachi','abc85@gmail.com','385',1921,'2000-11-11 00:00:00'),(93,'Yasir','M','Colony 86','Islamabad','abc86@gmail.com','386',1921,'2000-11-11 00:00:00'),(94,'M Danish','F','Colony 87','Lahore','abc87@gmail.com','387',1921,'2000-11-11 00:00:00'),(95,'Ali','M','Colony 88','Karachi','abc88@gmail.com','388',1921,'2000-11-11 00:00:00'),(96,'Ahmed','F','Colony 89','Islamabad','abc89@gmail.com','389',1921,'2000-11-11 00:00:00'),(97,'Bilal','M','Colony 90','Lahore','abc90@gmail.com','390',1921,'2000-11-11 00:00:00'),(98,'Manan','F','Colony 91','Karachi','abc91@gmail.com','391',1921,'2000-11-11 00:00:00'),(99,'Abdul Manan','M','Colony 92','Islamabad','abc92@gmail.com','392',1921,'2000-11-11 00:00:00'),(100,'Zia','F','Colony 93','Lahore','abc93@gmail.com','393',1921,'2000-11-11 00:00:00'),(101,'Yasir','M','Colony 94','Karachi','abc94@gmail.com','394',1921,'2000-11-11 00:00:00'),(102,'M Danish','F','Colony 95','Islamabad','abc95@gmail.com','395',1921,'2000-11-11 00:00:00'),(103,'Ali','M','Colony 96','Lahore','abc96@gmail.com','396',1921,'2000-11-11 00:00:00'),(104,'Ahmed','F','Colony 97','Karachi','abc97@gmail.com','397',1921,'2000-11-11 00:00:00'),(105,'Bilal','M','Colony 98','Islamabad','abc98@gmail.com','398',1921,'2000-11-11 00:00:00'),(106,'Manan','F','Colony 99','Lahore','abc99@gmail.com','399',1921,'2000-11-11 00:00:00');
/*!40000 ALTER TABLE `Acceptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Acceptor Blood Groups`
--

DROP TABLE IF EXISTS `Acceptor Blood Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acceptor Blood Groups` (
  `AccID` int(11) NOT NULL AUTO_INCREMENT,
  `BloodGroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AccID`,`BloodGroupID`),
  KEY `BloodGroupID` (`BloodGroupID`),
  CONSTRAINT `Acceptor Blood Groups_ibfk_1` FOREIGN KEY (`BloodGroupID`) REFERENCES `BloodGroup` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acceptor Blood Groups`
--

LOCK TABLES `Acceptor Blood Groups` WRITE;
/*!40000 ALTER TABLE `Acceptor Blood Groups` DISABLE KEYS */;
INSERT INTO `Acceptor Blood Groups` VALUES (1,1),(8,1),(16,1),(24,1),(32,1),(40,1),(48,1),(56,1),(64,1),(72,1),(80,1),(88,1),(96,1),(1,2),(9,2),(17,2),(25,2),(33,2),(41,2),(49,2),(57,2),(65,2),(73,2),(81,2),(89,2),(97,2),(2,3),(10,3),(18,3),(26,3),(34,3),(42,3),(50,3),(58,3),(66,3),(74,3),(82,3),(90,3),(98,3),(3,4),(11,4),(19,4),(27,4),(35,4),(43,4),(51,4),(59,4),(67,4),(75,4),(83,4),(91,4),(99,4),(4,5),(12,5),(20,5),(28,5),(36,5),(44,5),(52,5),(60,5),(68,5),(76,5),(84,5),(92,5),(5,6),(13,6),(21,6),(29,6),(37,6),(45,6),(53,6),(61,6),(69,6),(77,6),(85,6),(93,6),(6,7),(14,7),(22,7),(30,7),(38,7),(46,7),(54,7),(62,7),(70,7),(78,7),(86,7),(94,7),(7,8),(15,8),(23,8),(31,8),(39,8),(47,8),(55,8),(63,8),(71,8),(79,8),(87,8),(95,8);
/*!40000 ALTER TABLE `Acceptor Blood Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Acceptor Diseases`
--

DROP TABLE IF EXISTS `Acceptor Diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acceptor Diseases` (
  `DiseaseName` varchar(255) NOT NULL,
  `AccID` int(11) NOT NULL,
  PRIMARY KEY (`AccID`,`DiseaseName`),
  UNIQUE KEY `AccID` (`AccID`,`DiseaseName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acceptor Diseases`
--

LOCK TABLES `Acceptor Diseases` WRITE;
/*!40000 ALTER TABLE `Acceptor Diseases` DISABLE KEYS */;
INSERT INTO `Acceptor Diseases` VALUES ('A',1),('DiseaseA',1),('DiseaseA',2),('B',5),('C',5),('C',6);
/*!40000 ALTER TABLE `Acceptor Diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Acceptor Requests`
--

DROP TABLE IF EXISTS `Acceptor Requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acceptor Requests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ReqDate` datetime DEFAULT NULL,
  `AccID` int(11) DEFAULT '0',
  `AmountOfBlood` int(11) DEFAULT '0',
  `EmpID` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AccID` (`AccID`),
  KEY `EmpID` (`EmpID`),
  CONSTRAINT `Acceptor Requests_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `Employee` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acceptor Requests`
--

LOCK TABLES `Acceptor Requests` WRITE;
/*!40000 ALTER TABLE `Acceptor Requests` DISABLE KEYS */;
INSERT INTO `Acceptor Requests` VALUES (2,'2018-06-11 00:00:00',1,470,1),(3,'2018-06-10 00:00:00',0,470,1),(4,'2018-06-11 00:00:00',1,470,2),(5,'2018-06-12 00:00:00',2,470,3),(6,'2018-06-13 00:00:00',3,470,4),(7,'2018-06-14 00:00:00',4,470,5),(8,'2018-06-15 00:00:00',5,470,6),(9,'2018-06-16 00:00:00',6,470,7),(10,'2018-06-17 00:00:00',7,470,8),(11,'2018-06-18 00:00:00',8,470,9),(12,'2018-06-19 00:00:00',9,470,10),(13,'2018-06-20 00:00:00',10,470,1),(14,'2018-06-21 00:00:00',11,470,2),(15,'2018-06-22 00:00:00',12,470,3),(16,'2018-06-23 00:00:00',13,470,4),(17,'2018-06-24 00:00:00',14,470,5),(18,'2018-06-25 00:00:00',15,470,6),(19,'2018-06-26 00:00:00',16,470,7),(20,'2018-06-27 00:00:00',17,470,8),(21,'2018-06-28 00:00:00',18,470,9),(22,'2018-06-29 00:00:00',19,470,10),(23,'2018-06-10 00:00:00',20,470,1),(24,'2018-06-11 00:00:00',21,470,2),(25,'2018-06-12 00:00:00',22,470,3),(26,'2018-06-13 00:00:00',23,470,4),(27,'2018-06-14 00:00:00',24,470,5),(28,'2018-06-15 00:00:00',25,470,6),(29,'2018-06-16 00:00:00',26,470,7),(30,'2018-06-17 00:00:00',27,470,8),(31,'2018-06-18 00:00:00',28,470,9),(32,'2018-06-19 00:00:00',29,470,10),(33,'2018-06-20 00:00:00',30,470,1),(34,'2018-06-21 00:00:00',31,470,2),(35,'2018-06-22 00:00:00',32,470,3),(36,'2018-06-23 00:00:00',33,470,4),(37,'2018-06-24 00:00:00',34,470,5),(38,'2018-06-25 00:00:00',35,470,6),(39,'2018-06-26 00:00:00',36,470,7),(40,'2018-06-27 00:00:00',37,470,8),(41,'2018-06-28 00:00:00',38,470,9),(42,'2018-06-29 00:00:00',39,470,10),(43,'2018-06-10 00:00:00',40,470,1),(44,'2018-06-11 00:00:00',41,470,2),(45,'2018-06-12 00:00:00',42,470,3),(46,'2018-06-13 00:00:00',43,470,4),(47,'2018-06-14 00:00:00',44,470,5),(48,'2018-06-15 00:00:00',45,470,6),(49,'2018-06-16 00:00:00',46,470,7),(50,'2018-06-17 00:00:00',47,470,8),(51,'2018-06-18 00:00:00',48,470,9),(52,'2018-06-19 00:00:00',49,470,10),(53,'2018-06-20 00:00:00',50,470,1),(54,'2018-06-21 00:00:00',51,470,2),(55,'2018-06-22 00:00:00',52,470,3),(56,'2018-06-23 00:00:00',53,470,4),(57,'2018-06-24 00:00:00',54,470,5),(58,'2018-06-25 00:00:00',55,470,6),(59,'2018-06-26 00:00:00',56,470,7),(60,'2018-06-27 00:00:00',57,470,8),(61,'2018-06-28 00:00:00',58,470,9),(62,'2018-06-29 00:00:00',59,470,10),(63,'2018-06-10 00:00:00',60,470,1),(64,'2018-06-11 00:00:00',61,470,2),(65,'2018-06-12 00:00:00',62,470,3),(66,'2018-06-13 00:00:00',63,470,4),(67,'2018-06-14 00:00:00',64,470,5),(68,'2018-06-15 00:00:00',65,470,6),(69,'2018-06-16 00:00:00',66,470,7),(70,'2018-06-17 00:00:00',67,470,8),(71,'2018-06-18 00:00:00',68,470,9),(72,'2018-06-19 00:00:00',69,470,10),(73,'2018-06-20 00:00:00',70,470,1),(74,'2018-06-21 00:00:00',71,470,2),(75,'2018-06-22 00:00:00',72,470,3),(76,'2018-06-23 00:00:00',73,470,4),(77,'2018-06-24 00:00:00',74,470,5),(78,'2018-06-25 00:00:00',75,470,6),(79,'2018-06-26 00:00:00',76,470,7),(80,'2018-06-27 00:00:00',77,470,8),(81,'2018-06-28 00:00:00',78,470,9),(82,'2018-06-29 00:00:00',79,470,10),(83,'2018-06-10 00:00:00',80,470,1),(84,'2018-06-11 00:00:00',81,470,2),(85,'2018-06-12 00:00:00',82,470,3),(86,'2018-06-13 00:00:00',83,470,4),(87,'2018-06-14 00:00:00',84,470,5),(88,'2018-06-15 00:00:00',85,470,6),(89,'2018-06-16 00:00:00',86,470,7),(90,'2018-06-17 00:00:00',87,470,8),(91,'2018-06-18 00:00:00',88,470,9),(92,'2018-06-19 00:00:00',89,470,10),(93,'2018-06-20 00:00:00',90,470,1),(94,'2018-06-21 00:00:00',91,470,2),(95,'2018-06-22 00:00:00',92,470,3),(96,'2018-06-23 00:00:00',93,470,4),(97,'2018-06-24 00:00:00',94,470,5),(98,'2018-06-25 00:00:00',95,470,6),(99,'2018-06-26 00:00:00',96,470,7),(100,'2018-06-27 00:00:00',97,470,8),(101,'2018-06-28 00:00:00',98,470,9),(102,'2018-06-29 00:00:00',99,470,10);
/*!40000 ALTER TABLE `Acceptor Requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Acceptor Requests Status`
--

DROP TABLE IF EXISTS `Acceptor Requests Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acceptor Requests Status` (
  `ReqID` int(11) NOT NULL AUTO_INCREMENT,
  `ReqStatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ReqID`,`ReqStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acceptor Requests Status`
--

LOCK TABLES `Acceptor Requests Status` WRITE;
/*!40000 ALTER TABLE `Acceptor Requests Status` DISABLE KEYS */;
INSERT INTO `Acceptor Requests Status` VALUES (1,0),(2,1),(3,0),(4,1),(5,0),(6,1),(7,0),(8,1),(9,0),(10,1),(11,0),(12,1),(13,0),(14,1),(15,0),(16,1),(17,0),(18,1),(19,0),(20,1),(21,0),(22,1),(23,0),(24,1),(25,0),(26,1),(27,0),(28,1),(29,0),(30,1),(31,0),(32,1),(33,0),(34,1),(35,0),(36,1),(37,0),(38,1),(39,0),(40,1),(41,0),(42,1),(43,0),(44,1),(45,0),(46,1),(47,0),(48,1),(49,0),(50,1),(51,0),(52,1),(53,0),(54,1),(55,0),(56,1),(57,0),(58,1),(59,0),(60,1),(61,0),(62,1),(63,0),(64,1),(65,0),(66,1),(67,0),(68,1),(69,0),(70,1),(71,0),(72,1),(73,0),(74,1),(75,0),(76,1),(77,0),(78,1),(79,0),(80,1),(81,0),(82,1),(83,0),(84,1),(85,0),(86,1),(87,0),(88,1),(89,0),(90,1),(91,0),(92,1),(93,0),(94,1),(95,0),(96,1),(97,0),(98,1),(99,0),(100,1);
/*!40000 ALTER TABLE `Acceptor Requests Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blood Bank`
--

DROP TABLE IF EXISTS `Blood Bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blood Bank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BankName` varchar(255) DEFAULT NULL,
  `Contact#` int(11) DEFAULT '0',
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `EmailID` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blood Bank`
--

LOCK TABLES `Blood Bank` WRITE;
/*!40000 ALTER TABLE `Blood Bank` DISABLE KEYS */;
INSERT INTO `Blood Bank` VALUES (1,'A',1921,'Bank Colony 0','Lahore','bank0@gmail.com'),(2,'B',1921,'Bank Colony 1','Karachi','bank1@gmail.com'),(3,'C',1921,'Bank Colony 2','Islamabad','bank2@gmail.com'),(4,'D',1921,'Bank Colony 3','Lahore','bank3@gmail.com'),(5,'E',1921,'Bank Colony 4','Karachi','bank4@gmail.com'),(6,'F',1921,'Bank Colony 5','Islamabad','bank5@gmail.com'),(7,'G',1921,'Bank Colony 6','Lahore','bank6@gmail.com'),(8,'H',1921,'Bank Colony 7','Karachi','bank7@gmail.com'),(9,'A',1921,'Bank Colony 8','Islamabad','bank8@gmail.com'),(10,'B',1921,'Bank Colony 9','Lahore','bank9@gmail.com');
/*!40000 ALTER TABLE `Blood Bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blood Bank Manager`
--

DROP TABLE IF EXISTS `Blood Bank Manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blood Bank Manager` (
  `EmpID` int(11) NOT NULL AUTO_INCREMENT,
  `BankID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`EmpID`,`BankID`),
  KEY `BankID` (`BankID`),
  CONSTRAINT `Blood Bank Manager_ibfk_1` FOREIGN KEY (`BankID`) REFERENCES `Blood Bank` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blood Bank Manager`
--

LOCK TABLES `Blood Bank Manager` WRITE;
/*!40000 ALTER TABLE `Blood Bank Manager` DISABLE KEYS */;
INSERT INTO `Blood Bank Manager` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `Blood Bank Manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blood Drive`
--

DROP TABLE IF EXISTS `Blood Drive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blood Drive` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DriveDate` datetime DEFAULT NULL,
  `AmountOfBlood` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blood Drive`
--

LOCK TABLES `Blood Drive` WRITE;
/*!40000 ALTER TABLE `Blood Drive` DISABLE KEYS */;
INSERT INTO `Blood Drive` VALUES (1,'2018-11-16 00:00:00',1250),(2,'2018-11-01 00:00:00',200),(3,'2018-11-04 00:00:00',900),(4,'2018-11-06 00:00:00',1100),(5,'2018-11-07 00:00:00',600),(6,'2018-11-08 00:00:00',1600),(7,'2018-11-09 00:00:00',800),(8,'2018-10-17 00:00:00',1700),(9,'2018-10-24 00:00:00',2000),(10,'2018-11-15 00:00:00',4000);
/*!40000 ALTER TABLE `Blood Drive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blood Drive Collection`
--

DROP TABLE IF EXISTS `Blood Drive Collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blood Drive Collection` (
  `DonorID` int(11) NOT NULL AUTO_INCREMENT,
  `DriveID` int(11) NOT NULL DEFAULT '0',
  `AmountOfBlood` int(11) DEFAULT '0',
  PRIMARY KEY (`DonorID`,`DriveID`),
  KEY `DriveID` (`DriveID`),
  CONSTRAINT `Blood Drive Collection_ibfk_1` FOREIGN KEY (`DriveID`) REFERENCES `Blood Drive` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blood Drive Collection`
--

LOCK TABLES `Blood Drive Collection` WRITE;
/*!40000 ALTER TABLE `Blood Drive Collection` DISABLE KEYS */;
INSERT INTO `Blood Drive Collection` VALUES (1,1,470),(1,2,470),(1,10,470),(2,2,470),(2,3,470),(2,4,470),(2,5,470),(2,10,470),(3,1,470),(3,10,470),(4,1,470),(5,1,470),(6,1,470),(7,1,470),(8,10,470),(9,1,470);
/*!40000 ALTER TABLE `Blood Drive Collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blood Issued`
--

DROP TABLE IF EXISTS `Blood Issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blood Issued` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SampleID` int(11) DEFAULT '0',
  `AccID` int(11) DEFAULT '0',
  `IssueDate` datetime DEFAULT NULL,
  `IssueTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AccID` (`AccID`),
  KEY `SampleID` (`SampleID`),
  CONSTRAINT `Blood Issued_ibfk_1` FOREIGN KEY (`AccID`) REFERENCES `Acceptor` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blood Issued`
--

LOCK TABLES `Blood Issued` WRITE;
/*!40000 ALTER TABLE `Blood Issued` DISABLE KEYS */;
INSERT INTO `Blood Issued` VALUES (1,1,1,'2010-11-12 00:00:00',NULL),(2,2,1,'2011-11-12 00:00:00',NULL),(3,3,1,'2013-11-12 00:00:00',NULL),(4,4,1,'2013-11-12 00:00:00',NULL),(5,5,4,'2013-11-12 00:00:00',NULL),(6,6,4,'2013-11-12 00:00:00',NULL),(7,7,5,'2013-11-12 00:00:00',NULL),(8,8,4,'2013-11-12 00:00:00',NULL),(9,9,6,'2010-10-12 00:00:00',NULL),(10,10,5,'2010-10-11 00:00:00',NULL);
/*!40000 ALTER TABLE `Blood Issued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blood Sample`
--

DROP TABLE IF EXISTS `Blood Sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blood Sample` (
  `SampleID` int(11) NOT NULL AUTO_INCREMENT,
  `DonorID` int(11) DEFAULT '0',
  `BloodBankID` int(11) DEFAULT '0',
  `AmountOfBlood` int(11) DEFAULT '0',
  PRIMARY KEY (`SampleID`),
  KEY `BloodBankID` (`BloodBankID`),
  KEY `DonorID` (`DonorID`),
  CONSTRAINT `Blood Sample_ibfk_1` FOREIGN KEY (`BloodBankID`) REFERENCES `Blood Bank` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blood Sample`
--

LOCK TABLES `Blood Sample` WRITE;
/*!40000 ALTER TABLE `Blood Sample` DISABLE KEYS */;
INSERT INTO `Blood Sample` VALUES (1,1,1,470),(2,1,1,470),(3,1,1,470),(4,1,1,470),(5,2,1,470),(6,3,1,470),(7,3,2,470),(8,3,1,470),(9,10,2,470),(10,5,1,470);
/*!40000 ALTER TABLE `Blood Sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BloodGroup`
--

DROP TABLE IF EXISTS `BloodGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BloodGroup` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BloodGroup` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BloodGroup`
--

LOCK TABLES `BloodGroup` WRITE;
/*!40000 ALTER TABLE `BloodGroup` DISABLE KEYS */;
INSERT INTO `BloodGroup` VALUES (1,'A+'),(2,'A-'),(3,'B+'),(4,'B-'),(5,'O+'),(6,'O-'),(7,'AB+'),(8,'AB-');
/*!40000 ALTER TABLE `BloodGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diseases`
--

DROP TABLE IF EXISTS `Diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Diseases` (
  `DiseaseName` varchar(255) NOT NULL,
  `CarrierID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DiseaseName`,`CarrierID`),
  KEY `CarrierID` (`CarrierID`),
  KEY `DiseaseName` (`DiseaseName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diseases`
--

LOCK TABLES `Diseases` WRITE;
/*!40000 ALTER TABLE `Diseases` DISABLE KEYS */;
INSERT INTO `Diseases` VALUES ('DiseaseA',1),('DiseaseE',1),('DiseaseB',2),('DiseaseF',2),('DiseaseC',3),('DiseaseG',3),('DiseaseD',4),('DiseaseH',4),('DiseaseA',5),('DiseaseE',5),('DiseaseB',6),('DiseaseF',6),('DiseaseC',7),('DiseaseG',7),('DiseaseD',8),('DiseaseH',8),('DiseaseA',9),('DiseaseE',9),('DiseaseB',10),('DiseaseF',10),('DiseaseC',11),('DiseaseD',12),('DiseaseE',13),('DiseaseF',14),('DiseaseG',15),('DiseaseH',16),('DiseaseA',17),('DiseaseB',18),('DiseaseC',19),('DiseaseD',20),('DiseaseE',21),('DiseaseF',22),('DiseaseG',23),('DiseaseH',24),('DiseaseA',25),('DiseaseB',26),('DiseaseC',27),('DiseaseD',28),('DiseaseE',29),('DiseaseF',30),('DiseaseG',31),('DiseaseH',32),('DiseaseA',33),('DiseaseB',34),('DiseaseC',35),('DiseaseD',36),('DiseaseE',37),('DiseaseF',38),('DiseaseG',39),('DiseaseH',40),('DiseaseA',41),('DiseaseB',42),('DiseaseC',43),('DiseaseD',44),('DiseaseE',45),('DiseaseF',46),('DiseaseG',47),('DiseaseH',48),('DiseaseA',49),('DiseaseB',50),('DiseaseC',51),('DiseaseD',52),('DiseaseE',53),('DiseaseF',54),('DiseaseG',55),('DiseaseH',56),('DiseaseA',57),('DiseaseB',58),('DiseaseC',59),('DiseaseD',60),('DiseaseE',61),('DiseaseF',62),('DiseaseG',63),('DiseaseH',64),('DiseaseA',65),('DiseaseB',66),('DiseaseC',67),('DiseaseD',68),('DiseaseE',69),('DiseaseF',70),('DiseaseG',71),('DiseaseH',72),('DiseaseA',73),('DiseaseB',74),('DiseaseC',75),('DiseaseD',76),('DiseaseE',77),('DiseaseF',78),('DiseaseG',79),('DiseaseH',80),('DiseaseA',81),('DiseaseB',82),('DiseaseC',83),('DiseaseD',84),('DiseaseE',85),('DiseaseF',86),('DiseaseG',87),('DiseaseH',88),('DiseaseA',89),('DiseaseB',90),('DiseaseC',91),('DiseaseD',92),('DiseaseE',93),('DiseaseF',94),('DiseaseG',95),('DiseaseH',96),('DiseaseA',97),('DiseaseB',98),('DiseaseC',99),('DiseaseD',100);
/*!40000 ALTER TABLE `Diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donor`
--

DROP TABLE IF EXISTS `Donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Donor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DonorName` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CNIC` varchar(255) DEFAULT NULL,
  `Contact#` int(11) DEFAULT '0',
  `DateOfBirth` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donor`
--

LOCK TABLES `Donor` WRITE;
/*!40000 ALTER TABLE `Donor` DISABLE KEYS */;
INSERT INTO `Donor` VALUES (1,'Ali','M','Colony 0','Lahore','abc0@gmail.com','30',1921,'2000-11-11 00:00:00'),(2,'Ahmed','F','Colony 1','Karachi','abc1@gmail.com','31',1921,'2000-11-11 00:00:00'),(3,'Bilal','M','Colony 2','Islamabad','abc2@gmail.com','32',1921,'2000-11-11 00:00:00'),(4,'Manan','F','Colony 3','Lahore','abc3@gmail.com','33',1921,'2000-11-11 00:00:00'),(5,'Abdul Manan','M','Colony 4','Karachi','abc4@gmail.com','34',1921,'2000-11-11 00:00:00'),(6,'Zia','F','Colony 5','Islamabad','abc5@gmail.com','35',1921,'2000-11-11 00:00:00'),(7,'Yasir','M','Colony 6','Lahore','abc6@gmail.com','36',1921,'2000-11-11 00:00:00'),(8,'M Danish','F','Colony 7','Karachi','abc7@gmail.com','37',1921,'2000-11-11 00:00:00'),(9,'Ali','M','Colony 8','Islamabad','abc8@gmail.com','38',1921,'2000-11-11 00:00:00'),(10,'Ahmed','F','Colony 9','Lahore','abc9@gmail.com','39',1921,'2000-11-11 00:00:00'),(11,'Bilal','M','Colony 10','Karachi','abc10@gmail.com','310',1921,'2000-11-11 00:00:00'),(12,'Manan','F','Colony 11','Islamabad','abc11@gmail.com','311',1921,'2000-11-11 00:00:00'),(13,'Abdul Manan','M','Colony 12','Lahore','abc12@gmail.com','312',1921,'2000-11-11 00:00:00'),(14,'Zia','F','Colony 13','Karachi','abc13@gmail.com','313',1921,'2000-11-11 00:00:00'),(15,'Yasir','M','Colony 14','Islamabad','abc14@gmail.com','314',1921,'2000-11-11 00:00:00'),(16,'M Danish','F','Colony 15','Lahore','abc15@gmail.com','315',1921,'2000-11-11 00:00:00'),(17,'Ali','M','Colony 16','Karachi','abc16@gmail.com','316',1921,'2000-11-11 00:00:00'),(18,'Ahmed','F','Colony 17','Islamabad','abc17@gmail.com','317',1921,'2000-11-11 00:00:00'),(19,'Bilal','M','Colony 18','Lahore','abc18@gmail.com','318',1921,'2000-11-11 00:00:00'),(20,'Manan','F','Colony 19','Karachi','abc19@gmail.com','319',1921,'2000-11-11 00:00:00'),(21,'Abdul Manan','M','Colony 20','Islamabad','abc20@gmail.com','320',1921,'2000-11-11 00:00:00'),(22,'Zia','F','Colony 21','Lahore','abc21@gmail.com','321',1921,'2000-11-11 00:00:00'),(23,'Yasir','M','Colony 22','Karachi','abc22@gmail.com','322',1921,'2000-11-11 00:00:00'),(24,'M Danish','F','Colony 23','Islamabad','abc23@gmail.com','323',1921,'2000-11-11 00:00:00'),(25,'Ali','M','Colony 24','Lahore','abc24@gmail.com','324',1921,'2000-11-11 00:00:00'),(26,'Ahmed','F','Colony 25','Karachi','abc25@gmail.com','325',1921,'2000-11-11 00:00:00'),(27,'Bilal','M','Colony 26','Islamabad','abc26@gmail.com','326',1921,'2000-11-11 00:00:00'),(28,'Manan','F','Colony 27','Lahore','abc27@gmail.com','327',1921,'2000-11-11 00:00:00'),(29,'Abdul Manan','M','Colony 28','Karachi','abc28@gmail.com','328',1921,'2000-11-11 00:00:00'),(30,'Zia','F','Colony 29','Islamabad','abc29@gmail.com','329',1921,'2000-11-11 00:00:00'),(31,'Yasir','M','Colony 30','Lahore','abc30@gmail.com','330',1921,'2000-11-11 00:00:00'),(32,'M Danish','F','Colony 31','Karachi','abc31@gmail.com','331',1921,'2000-11-11 00:00:00'),(33,'Ali','M','Colony 32','Islamabad','abc32@gmail.com','332',1921,'2000-11-11 00:00:00'),(34,'Ahmed','F','Colony 33','Lahore','abc33@gmail.com','333',1921,'2000-11-11 00:00:00'),(35,'Bilal','M','Colony 34','Karachi','abc34@gmail.com','334',1921,'2000-11-11 00:00:00'),(36,'Manan','F','Colony 35','Islamabad','abc35@gmail.com','335',1921,'2000-11-11 00:00:00'),(37,'Abdul Manan','M','Colony 36','Lahore','abc36@gmail.com','336',1921,'2000-11-11 00:00:00'),(38,'Zia','F','Colony 37','Karachi','abc37@gmail.com','337',1921,'2000-11-11 00:00:00'),(39,'Yasir','M','Colony 38','Islamabad','abc38@gmail.com','338',1921,'2000-11-11 00:00:00'),(40,'M Danish','F','Colony 39','Lahore','abc39@gmail.com','339',1921,'2000-11-11 00:00:00'),(41,'Ali','M','Colony 40','Karachi','abc40@gmail.com','340',1921,'2000-11-11 00:00:00'),(42,'Ahmed','F','Colony 41','Islamabad','abc41@gmail.com','341',1921,'2000-11-11 00:00:00'),(43,'Bilal','M','Colony 42','Lahore','abc42@gmail.com','342',1921,'2000-11-11 00:00:00'),(44,'Manan','F','Colony 43','Karachi','abc43@gmail.com','343',1921,'2000-11-11 00:00:00'),(45,'Abdul Manan','M','Colony 44','Islamabad','abc44@gmail.com','344',1921,'2000-11-11 00:00:00'),(46,'Zia','F','Colony 45','Lahore','abc45@gmail.com','345',1921,'2000-11-11 00:00:00'),(47,'Yasir','M','Colony 46','Karachi','abc46@gmail.com','346',1921,'2000-11-11 00:00:00'),(48,'M Danish','F','Colony 47','Islamabad','abc47@gmail.com','347',1921,'2000-11-11 00:00:00'),(49,'Ali','M','Colony 48','Lahore','abc48@gmail.com','348',1921,'2000-11-11 00:00:00'),(50,'Ahmed','F','Colony 49','Karachi','abc49@gmail.com','349',1921,'2000-11-11 00:00:00'),(51,'Bilal','M','Colony 50','Islamabad','abc50@gmail.com','350',1921,'2000-11-11 00:00:00'),(52,'Manan','F','Colony 51','Lahore','abc51@gmail.com','351',1921,'2000-11-11 00:00:00'),(53,'Abdul Manan','M','Colony 52','Karachi','abc52@gmail.com','352',1921,'2000-11-11 00:00:00'),(54,'Zia','F','Colony 53','Islamabad','abc53@gmail.com','353',1921,'2000-11-11 00:00:00'),(55,'Yasir','M','Colony 54','Lahore','abc54@gmail.com','354',1921,'2000-11-11 00:00:00'),(56,'M Danish','F','Colony 55','Karachi','abc55@gmail.com','355',1921,'2000-11-11 00:00:00'),(57,'Ali','M','Colony 56','Islamabad','abc56@gmail.com','356',1921,'2000-11-11 00:00:00'),(58,'Ahmed','F','Colony 57','Lahore','abc57@gmail.com','357',1921,'2000-11-11 00:00:00'),(59,'Bilal','M','Colony 58','Karachi','abc58@gmail.com','358',1921,'2000-11-11 00:00:00'),(60,'Manan','F','Colony 59','Islamabad','abc59@gmail.com','359',1921,'2000-11-11 00:00:00'),(61,'Abdul Manan','M','Colony 60','Lahore','abc60@gmail.com','360',1921,'2000-11-11 00:00:00'),(62,'Zia','F','Colony 61','Karachi','abc61@gmail.com','361',1921,'2000-11-11 00:00:00'),(63,'Yasir','M','Colony 62','Islamabad','abc62@gmail.com','362',1921,'2000-11-11 00:00:00'),(64,'M Danish','F','Colony 63','Lahore','abc63@gmail.com','363',1921,'2000-11-11 00:00:00'),(65,'Ali','M','Colony 64','Karachi','abc64@gmail.com','364',1921,'2000-11-11 00:00:00'),(66,'Ahmed','F','Colony 65','Islamabad','abc65@gmail.com','365',1921,'2000-11-11 00:00:00'),(67,'Bilal','M','Colony 66','Lahore','abc66@gmail.com','366',1921,'2000-11-11 00:00:00'),(68,'Manan','F','Colony 67','Karachi','abc67@gmail.com','367',1921,'2000-11-11 00:00:00'),(69,'Abdul Manan','M','Colony 68','Islamabad','abc68@gmail.com','368',1921,'2000-11-11 00:00:00'),(70,'Zia','F','Colony 69','Lahore','abc69@gmail.com','369',1921,'2000-11-11 00:00:00'),(71,'Yasir','M','Colony 70','Karachi','abc70@gmail.com','370',1921,'2000-11-11 00:00:00'),(72,'M Danish','F','Colony 71','Islamabad','abc71@gmail.com','371',1921,'2000-11-11 00:00:00'),(73,'Ali','M','Colony 72','Lahore','abc72@gmail.com','372',1921,'2000-11-11 00:00:00'),(74,'Ahmed','F','Colony 73','Karachi','abc73@gmail.com','373',1921,'2000-11-11 00:00:00'),(75,'Bilal','M','Colony 74','Islamabad','abc74@gmail.com','374',1921,'2000-11-11 00:00:00'),(76,'Manan','F','Colony 75','Lahore','abc75@gmail.com','375',1921,'2000-11-11 00:00:00'),(77,'Abdul Manan','M','Colony 76','Karachi','abc76@gmail.com','376',1921,'2000-11-11 00:00:00'),(78,'Zia','F','Colony 77','Islamabad','abc77@gmail.com','377',1921,'2000-11-11 00:00:00'),(79,'Yasir','M','Colony 78','Lahore','abc78@gmail.com','378',1921,'2000-11-11 00:00:00'),(80,'M Danish','F','Colony 79','Karachi','abc79@gmail.com','379',1921,'2000-11-11 00:00:00'),(81,'Ali','M','Colony 80','Islamabad','abc80@gmail.com','380',1921,'2000-11-11 00:00:00'),(82,'Ahmed','F','Colony 81','Lahore','abc81@gmail.com','381',1921,'2000-11-11 00:00:00'),(83,'Bilal','M','Colony 82','Karachi','abc82@gmail.com','382',1921,'2000-11-11 00:00:00'),(84,'Manan','F','Colony 83','Islamabad','abc83@gmail.com','383',1921,'2000-11-11 00:00:00'),(85,'Abdul Manan','M','Colony 84','Lahore','abc84@gmail.com','384',1921,'2000-11-11 00:00:00'),(86,'Zia','F','Colony 85','Karachi','abc85@gmail.com','385',1921,'2000-11-11 00:00:00'),(87,'Yasir','M','Colony 86','Islamabad','abc86@gmail.com','386',1921,'2000-11-11 00:00:00'),(88,'M Danish','F','Colony 87','Lahore','abc87@gmail.com','387',1921,'2000-11-11 00:00:00'),(89,'Ali','M','Colony 88','Karachi','abc88@gmail.com','388',1921,'2000-11-11 00:00:00'),(90,'Ahmed','F','Colony 89','Islamabad','abc89@gmail.com','389',1921,'2000-11-11 00:00:00'),(91,'Bilal','M','Colony 90','Lahore','abc90@gmail.com','390',1921,'2000-11-11 00:00:00'),(92,'Manan','F','Colony 91','Karachi','abc91@gmail.com','391',1921,'2000-11-11 00:00:00'),(93,'Abdul Manan','M','Colony 92','Islamabad','abc92@gmail.com','392',1921,'2000-11-11 00:00:00'),(94,'Zia','F','Colony 93','Lahore','abc93@gmail.com','393',1921,'2000-11-11 00:00:00'),(95,'Yasir','M','Colony 94','Karachi','abc94@gmail.com','394',1921,'2000-11-11 00:00:00'),(96,'M Danish','F','Colony 95','Islamabad','abc95@gmail.com','395',1921,'2000-11-11 00:00:00'),(97,'Ali','M','Colony 96','Lahore','abc96@gmail.com','396',1921,'2000-11-11 00:00:00'),(98,'Ahmed','F','Colony 97','Karachi','abc97@gmail.com','397',1921,'2000-11-11 00:00:00'),(99,'Bilal','M','Colony 98','Islamabad','abc98@gmail.com','398',1921,'2000-11-11 00:00:00'),(100,'Manan','F','Colony 99','Lahore','abc99@gmail.com','399',1921,'2000-11-11 00:00:00');
/*!40000 ALTER TABLE `Donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donor Blood Groups`
--

DROP TABLE IF EXISTS `Donor Blood Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Donor Blood Groups` (
  `DonorID` int(11) NOT NULL AUTO_INCREMENT,
  `BloodGroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DonorID`,`BloodGroupID`),
  KEY `BloodGroupID` (`BloodGroupID`),
  CONSTRAINT `Donor Blood Groups_ibfk_1` FOREIGN KEY (`BloodGroupID`) REFERENCES `BloodGroup` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donor Blood Groups`
--

LOCK TABLES `Donor Blood Groups` WRITE;
/*!40000 ALTER TABLE `Donor Blood Groups` DISABLE KEYS */;
INSERT INTO `Donor Blood Groups` VALUES (1,1),(8,1),(16,1),(24,1),(32,1),(40,1),(48,1),(56,1),(64,1),(72,1),(80,1),(88,1),(96,1),(9,2),(17,2),(25,2),(33,2),(41,2),(49,2),(57,2),(65,2),(73,2),(81,2),(89,2),(97,2),(2,3),(10,3),(18,3),(26,3),(34,3),(42,3),(50,3),(58,3),(66,3),(74,3),(82,3),(90,3),(98,3),(3,4),(11,4),(19,4),(27,4),(35,4),(43,4),(51,4),(59,4),(67,4),(75,4),(83,4),(91,4),(99,4),(4,5),(12,5),(20,5),(28,5),(36,5),(44,5),(52,5),(60,5),(68,5),(76,5),(84,5),(92,5),(5,6),(13,6),(21,6),(29,6),(37,6),(45,6),(53,6),(61,6),(69,6),(77,6),(85,6),(93,6),(6,7),(14,7),(22,7),(30,7),(38,7),(46,7),(54,7),(62,7),(70,7),(78,7),(86,7),(94,7),(7,8),(15,8),(23,8),(31,8),(39,8),(47,8),(55,8),(63,8),(71,8),(79,8),(87,8),(95,8);
/*!40000 ALTER TABLE `Donor Blood Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donor Requests`
--

DROP TABLE IF EXISTS `Donor Requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Donor Requests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ReqDate` datetime DEFAULT NULL,
  `DonorID` int(11) DEFAULT '0',
  `AmountOfBlood` int(11) DEFAULT '0',
  `EmpID` int(11) DEFAULT '0',
  UNIQUE KEY `ID` (`ID`),
  KEY `DonorID` (`DonorID`),
  KEY `EmpID` (`EmpID`),
  CONSTRAINT `Donor Requests_ibfk_1` FOREIGN KEY (`DonorID`) REFERENCES `Donor` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donor Requests`
--

LOCK TABLES `Donor Requests` WRITE;
/*!40000 ALTER TABLE `Donor Requests` DISABLE KEYS */;
INSERT INTO `Donor Requests` VALUES (1,'2010-01-01 00:00:00',1,470,1),(2,'2011-01-01 00:00:00',1,470,2),(3,'2019-01-01 00:00:00',1,470,2),(4,'2015-01-01 00:00:00',2,470,9);
/*!40000 ALTER TABLE `Donor Requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmpName` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CNIC` varchar(255) DEFAULT NULL,
  `Contact#` int(11) DEFAULT '0',
  `DateOfBirth` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Ali','M','Colony 0','Lahore','abc0@gmail.com','30',1921,'2000-11-11 00:00:00'),(2,'Ahmed','F','Colony 1','Karachi','abc1@gmail.com','31',1921,'2000-11-11 00:00:00'),(3,'Bilal','M','Colony 2','Islamabad','abc2@gmail.com','32',1921,'2000-11-11 00:00:00'),(4,'Manan','F','Colony 3','Lahore','abc3@gmail.com','33',1921,'2000-11-11 00:00:00'),(5,'Abdul Manan','M','Colony 4','Karachi','abc4@gmail.com','34',1921,'2000-11-11 00:00:00'),(6,'Zia','F','Colony 5','Islamabad','abc5@gmail.com','35',1921,'2000-11-11 00:00:00'),(7,'Yasir','M','Colony 6','Lahore','abc6@gmail.com','36',1921,'2000-11-11 00:00:00'),(8,'M Danish','F','Colony 7','Karachi','abc7@gmail.com','37',1921,'2000-11-11 00:00:00'),(9,'Ali','M','Colony 8','Islamabad','abc8@gmail.com','38',1921,'2000-11-11 00:00:00'),(10,'Ahmed','F','Colony 9','Lahore','abc9@gmail.com','39',1921,'2000-11-11 00:00:00');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Amount` int(11) DEFAULT '0',
  `ReqID` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ReqID` (`ReqID`),
  CONSTRAINT `Transactions_ibfk_1` FOREIGN KEY (`ReqID`) REFERENCES `Acceptor Requests` (`ID`),
  CONSTRAINT `Transactions_ibfk_2` FOREIGN KEY (`ReqID`) REFERENCES `Acceptor Requests` (`ID`),
  CONSTRAINT `Transactions_ibfk_3` FOREIGN KEY (`ReqID`) REFERENCES `Acceptor Requests` (`ID`),
  CONSTRAINT `Transactions_ibfk_4` FOREIGN KEY (`ReqID`) REFERENCES `Acceptor Requests` (`ID`),
  CONSTRAINT `Transactions_ibfk_5` FOREIGN KEY (`ReqID`) REFERENCES `Acceptor Requests` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
INSERT INTO `Transactions` VALUES (5,1728,3),(6,517,2),(7,200,4),(8,2536,6),(9,3396,8),(10,2437,10),(11,972,12),(12,2453,14),(13,2593,16),(14,1486,18),(15,2630,20),(16,2959,22),(17,1154,24),(18,729,26),(19,995,28),(20,1253,30),(21,1317,32),(22,316,34),(23,1801,36),(24,4116,38),(25,3406,40),(26,1260,42),(27,3669,44),(28,1854,46),(29,4143,48),(30,3007,50),(31,1363,52),(32,2239,54),(33,1712,56),(34,471,58),(35,2481,60),(36,366,62),(37,960,64),(38,759,66),(39,947,68),(40,1936,70),(41,1261,72),(42,365,74),(43,2465,76),(44,3876,78),(45,1332,80),(46,2888,82),(47,710,84),(48,2077,86),(49,1528,88),(50,1051,90),(51,3335,92),(52,3101,94),(53,3036,96),(54,3612,98),(55,2840,100);
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04 16:10:29
