-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (x86_64)
--
-- Host: localhost    Database: Sky_upCycle
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_Firstname` varchar(45) NOT NULL,
  `Customer_Lastname` varchar(45) NOT NULL,
  `Customer_DOB` datetime NOT NULL,
  `Customer_Phone` varchar(14) NOT NULL,
  `Customer_Email` varchar(45) NOT NULL,
  `Last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'james','willis','1948-07-28 00:00:00','07711224550','jameswillis@sky.com','2023-09-21 20:42:37'),(2,'dave','willis','1956-10-19 00:00:00','07711233452','davewillis@sky.com','2023-09-21 20:42:37'),(3,'john','davis','2000-01-05 00:00:00','07896362342','Johndaviss@sksy.com','2023-09-21 20:42:37'),(4,'calvin','reed','1967-02-18 00:00:00','07711233452','calivnreeds@ksy.com','2023-09-21 20:42:37'),(5,'kevin','johnson','1856-05-19 00:00:00','07140404222','kevinjohnson@sky.com','2023-09-21 20:42:37'),(6,'terry','willis','1983-03-07 00:00:00','07986543722','terrywillis@ksy.com','2023-09-21 20:42:37'),(7,'deandra','chambers','1987-05-19 00:00:00','07894546433','denadrachambers@sky.com','2023-09-21 21:31:54');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_Address`
--

DROP TABLE IF EXISTS `Customer_Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Address` (
  `Address_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `House_Number` int NOT NULL,
  `Flat_number` int NOT NULL,
  `Street_Name` varchar(50) NOT NULL,
  `Building` varchar(45) NOT NULL,
  `Town` varchar(45) NOT NULL,
  `PostCode` varchar(8) NOT NULL,
  `Last_Update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Address_ID`,`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Address`
--

LOCK TABLES `Customer_Address` WRITE;
/*!40000 ALTER TABLE `Customer_Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_Equipment`
--

DROP TABLE IF EXISTS `Customer_Equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Equipment` (
  `Customer_Equipment_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Equipment_ID` int NOT NULL,
  `Removed_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Customer_Equipment_ID`,`Customer_ID`,`Equipment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Equipment`
--

LOCK TABLES `Customer_Equipment` WRITE;
/*!40000 ALTER TABLE `Customer_Equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_Equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipment_information`
--

DROP TABLE IF EXISTS `Equipment_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipment_information` (
  `Equipment_ID` int NOT NULL AUTO_INCREMENT,
  `Equipment_Name` varchar(50) NOT NULL,
  `Equipment_Partnumber` varchar(6) NOT NULL,
  `Update_late` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Equipment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipment_information`
--

LOCK TABLES `Equipment_information` WRITE;
/*!40000 ALTER TABLE `Equipment_information` DISABLE KEYS */;
INSERT INTO `Equipment_information` VALUES (1,'Zone 2 Dish','0991','2023-09-21 21:55:24'),(2,'sky Hd Box Pvr3','2341','2023-09-21 21:55:24'),(3,'sky remote','3241','2023-09-21 21:55:24'),(4,'sky none record hd box','2334','2023-09-21 21:55:24'),(5,'sky Hub2 Router','9876','2023-09-21 21:55:24'),(6,'Zone1Dish','0111','2023-09-21 22:04:19'),(7,'Sky Hd Box Pvr3','0123','2023-09-21 22:04:19'),(8,'Sky Hd Box Pvr5','4450','2023-09-21 22:04:19'),(9,'Sky Hd Box Pvr6','6557','2023-09-21 22:04:19'),(10,'Sky Remote','3241','2023-09-21 22:04:19'),(11,'Sky None Record Hd Box','2334','2023-09-21 22:04:19'),(12,'Sky Hub2 Router','9876','2023-09-21 22:04:19'),(13,'Cables','5675','2023-09-21 22:04:19');
/*!40000 ALTER TABLE `Equipment_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-25 20:54:08
