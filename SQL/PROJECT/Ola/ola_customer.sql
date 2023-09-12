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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_id` int DEFAULT NULL,
  `Customer_name` varchar(20) DEFAULT NULL,
  `Customer_Co_Num` varchar(50) DEFAULT NULL,
  `Customer_otp` int NOT NULL,
  `Drop_Location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Customer_otp`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Customer_otp`) REFERENCES `driver` (`Driver_otp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (31,'Smit','5698456021',1216,'Maninagar'),(32,'Khushi','7410256989',1510,'Shela'),(33,'Dhruvin','2036512045',1607,'Vasna'),(34,'Jacky','6598456120',2301,'Ghuma'),(35,'Pintu','4589745021',2508,'Nikol'),(36,'Phalak','7489562002',3021,'H.L College'),(37,'Vishruti','5698451256',3369,'Mahalaxmi'),(38,'Shreesha','1425036289',4561,'Jivraj'),(39,'Jinal','5698457894',4784,'Vaishnodevi'),(40,'Kriya','4712548745',6325,'Vadaj'),(41,'Rahil','5986457890',6326,'Khanpur'),(42,'Riya','4547845120',7108,'Shyamal'),(43,'Shailya','7485962301',7412,'Rakhiyal'),(44,'Mihir','4125698451',7458,'Ratanpol'),(45,'Prince','2255698451',9630,'Behrampura');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
