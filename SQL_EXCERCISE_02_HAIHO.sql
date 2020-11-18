-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: QLDiemThi
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Student` (
  `RN` int NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` int DEFAULT NULL,
  PRIMARY KEY (`RN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1,'My Linh',19,0),(2,'Dam Vinh Hung',20,1),(3,'Kim Tu Long',19,1),(4,'Tai Ling',20,0),(5,'My Le',21,0),(6,'Ngoc Oanh',21,NULL);
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentSubject`
--

DROP TABLE IF EXISTS `StudentSubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `StudentSubject` (
  `ssPK` int NOT NULL AUTO_INCREMENT,
  `RN` int DEFAULT NULL,
  `sID` int DEFAULT NULL,
  `Mark` float DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  PRIMARY KEY (`ssPK`),
  KEY `RN` (`RN`),
  KEY `sID` (`sID`),
  CONSTRAINT `studentsubject_ibfk_1` FOREIGN KEY (`RN`) REFERENCES `Student` (`RN`),
  CONSTRAINT `studentsubject_ibfk_2` FOREIGN KEY (`sID`) REFERENCES `Subject` (`sID`),
  CONSTRAINT `studentsubject_chk_1` CHECK (((`Mark` < 10) and (`Mark` > 0)))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentSubject`
--

LOCK TABLES `StudentSubject` WRITE;
/*!40000 ALTER TABLE `StudentSubject` DISABLE KEYS */;
INSERT INTO `StudentSubject` VALUES (1,1,1,8,'2005-07-28'),(2,2,2,3,'2005-07-29'),(3,3,3,9,'2005-07-31'),(4,4,1,5,'2005-07-30'),(5,5,4,9.9,'2005-07-19'),(6,6,1,9,'2005-07-25');
/*!40000 ALTER TABLE `StudentSubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subject`
--

DROP TABLE IF EXISTS `Subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Subject` (
  `sID` int NOT NULL,
  `sName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subject`
--

LOCK TABLES `Subject` WRITE;
/*!40000 ALTER TABLE `Subject` DISABLE KEYS */;
INSERT INTO `Subject` VALUES (1,'SQL'),(2,'LGC'),(3,'HTML'),(4,'CF'),(5,'Java Core'),(6,'VB.Net');
/*!40000 ALTER TABLE `Subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-18 22:10:16
