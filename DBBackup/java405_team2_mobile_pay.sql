-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 58.239.58.243    Database: java405_team2_mobile
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay` (
  `pay_id` bigint NOT NULL AUTO_INCREMENT,
  `minus_amt` bigint DEFAULT NULL,
  `money_id` bigint DEFAULT NULL,
  `pay_title` varchar(255) DEFAULT NULL,
  `plus_amt` bigint DEFAULT NULL,
  `trav_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `FKi9rj56brb56fmmindq2jdvtfl` (`money_id`),
  CONSTRAINT `FKi9rj56brb56fmmindq2jdvtfl` FOREIGN KEY (`money_id`) REFERENCES `money` (`money_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay`
--

LOCK TABLES `pay` WRITE;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
INSERT INTO `pay` VALUES (4,0,10,'추가입금',80000,19),(10,0,12,'입금',500000,19),(12,-100000,13,'출발',0,25),(13,-100000,13,'입국',0,25),(17,-5000,13,'지출',0,25),(18,-3600,14,'지하철',0,26),(29,-5000,12,'감자',0,19),(30,-7000,19,'감자2',0,19),(31,-20000,20,'대충	',0,24),(32,0,20,'추가버스비',50000,24),(33,-150000,21,'첫날숙박비',0,24),(35,-80000,28,'첫날',0,24),(36,0,28,'추가숙박비',50000,24),(37,-50000,29,'보쌈	',0,18),(38,-20000,29,'떡볶이',0,18),(39,0,29,'삥뜯음',100000,18);
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-21 17:42:34
