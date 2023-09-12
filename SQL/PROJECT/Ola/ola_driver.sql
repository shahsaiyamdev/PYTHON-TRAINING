CREATE DATABASE  IF NOT EXISTS `ola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ola`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ola
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `Driver_id` int DEFAULT NULL,
  `Driver_Name` varchar(20) DEFAULT NULL,
  `Driver_Co_Num` varchar(20) DEFAULT NULL,
  `Ride_Fare` int DEFAULT NULL,
  `Pickup_Location` varchar(20) DEFAULT NULL,
  `Driver_otp` int NOT NULL,
  `Pickup_Date` datetime DEFAULT NULL,
  `Available_Vehicle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Driver_otp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (9,'Shivam','5569841256',300,'Jivraj Park',1216,'1998-09-20 08:20:30','Not Available'),(10,'Jigar','9654120363',250,'Vaishnodevi',1510,'1999-05-05 10:50:51','Not Available'),(14,'Mohit','632514500',960,'Shyamal',1607,'1944-06-25 04:06:10','Not Available'),(7,'Raghu','3620159894',1100,'H.L College',2301,'1196-08-18 01:50:05','Available'),(15,'Dharmik','412569852',1010,'Parimal Garden',2508,'1977-10-30 10:10:50','Available'),(13,'Rutul','123659845',360,'Paldi',3021,'1966-05-20 09:08:07','Available'),(4,'Rahul','7412589630',600,'Vijay Cross Road',3369,'2005-10-29 04:55:40','Not Available'),(12,'Malav','445896231',460,'Khanpur',4561,'1974-02-01 04:03:50','Available'),(2,'Amisha','5698412305',1000,'Memnagar',4784,'2000-10-28 10:50:25','Not Available'),(5,'Yash','5625369845',1500,'Shela',6325,'2009-12-25 02:10:44','Not Availabe'),(6,'Nikunj','7489562103',1200,'Nikol',6326,'1998-05-25 03:50:04','Available'),(1,'Ramesh','1254896250',500,'Naroda',7108,'2002-06-15 12:00:01','Available'),(3,'Vicky','5569821036',750,'Thaltej',7412,'2010-07-12 09:08:50','Available'),(11,'Nanu','5698451233',560,'Vadaj',7458,'1992-04-12 07:06:05','Available'),(8,'Maulik','5698415203',450,'Mahalaxmi',9630,'1996-08-18 11:50:55','Available');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13  0:27:55
