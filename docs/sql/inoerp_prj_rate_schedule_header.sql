-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: inoerp
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
-- Table structure for table `prj_rate_schedule_header`
--

DROP TABLE IF EXISTS `prj_rate_schedule_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prj_rate_schedule_header` (
  `prj_rate_schedule_header_id` int unsigned NOT NULL AUTO_INCREMENT,
  `bu_org_id` int NOT NULL,
  `rate_type` varchar(25) NOT NULL,
  `schedule_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prj_rate_schedule_header_id`),
  UNIQUE KEY `value_group` (`schedule_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prj_rate_schedule_header`
--

LOCK TABLES `prj_rate_schedule_header` WRITE;
/*!40000 ALTER TABLE `prj_rate_schedule_header` DISABLE KEYS */;
INSERT INTO `prj_rate_schedule_header` VALUES (1,5,'EMPLOYEE','Standard Employee',NULL,NULL,NULL,'1','2021-10-04 12:32:02','1','2021-10-04 12:38:19'),(2,5,'JOB','Job Rates','Job Rates',NULL,NULL,'1','2021-10-04 12:32:02','1','2021-10-04 12:38:19'),(3,5,'NON_LABOR','NLR_IN01',NULL,NULL,NULL,'1','2021-10-04 12:32:02','1','2021-10-04 12:38:19'),(4,5,'RESOURCE_CLASS','RES_CLASS_01',NULL,NULL,NULL,'1','2021-10-04 12:32:02','1','2021-10-04 12:38:19');
/*!40000 ALTER TABLE `prj_rate_schedule_header` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08  3:47:58
