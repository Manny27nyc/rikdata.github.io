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
-- Table structure for table `wip_wd_line_mat`
--

DROP TABLE IF EXISTS `wip_wd_line_mat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wip_wd_line_mat` (
  `wip_wd_line_mat_id` int unsigned NOT NULL AUTO_INCREMENT,
  `wip_wd_line_id` int NOT NULL,
  `item_sequence` int unsigned NOT NULL,
  `component_item_id_m` int NOT NULL,
  `component_revision` varchar(10) DEFAULT NULL,
  `usage_basis` varchar(50) DEFAULT NULL,
  `usage_quantity` decimal(15,5) NOT NULL,
  `auto_request_material_cb` tinyint(1) DEFAULT NULL,
  `effective_start_date` date DEFAULT NULL,
  `effective_end_date` date DEFAULT NULL,
  `eco_number` varchar(50) DEFAULT NULL,
  `eco_implemented_cb` tinyint(1) DEFAULT NULL,
  `planning_percentage` decimal(6,2) DEFAULT NULL,
  `yield` decimal(6,6) DEFAULT NULL,
  `include_in_cost_rollup_cb` tinyint(1) DEFAULT NULL,
  `wip_supply_type` enum('PUSH','ASSEMBLY_PULL','OPERATION_PULL','PHANTOM','BULK','SUPPLIER') DEFAULT 'PUSH',
  `supply_sub_inventory` int DEFAULT NULL,
  `supply_locator_id` int DEFAULT NULL,
  `required_quantity` int DEFAULT NULL,
  `issued_quantity` int DEFAULT NULL,
  `ef_id` int DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated_by` varchar(50) NOT NULL DEFAULT 'UNKOWN',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wip_wd_line_mat_id`),
  UNIQUE KEY `uq_wip_wd_wo_line_mat_2` (`wip_wd_line_id`,`component_item_id_m`),
  CONSTRAINT `wip_wd_line_mat_line_id` FOREIGN KEY (`wip_wd_line_id`) REFERENCES `wip_wd_line` (`wip_wd_line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wip_wd_line_mat`
--

LOCK TABLES `wip_wd_line_mat` WRITE;
/*!40000 ALTER TABLE `wip_wd_line_mat` DISABLE KEYS */;
INSERT INTO `wip_wd_line_mat` VALUES (1,16,10,10036,NULL,'1',1.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'UNKOWN','2021-10-05 10:07:26','UNKOWN','2021-10-05 10:07:26'),(5,100,10,10036,NULL,'ITEM',10.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'PUSH',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:21:34','UNKOWN','2021-10-06 13:21:34'),(6,100,30,10058,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:21:34','UNKOWN','2021-10-06 13:21:34'),(7,100,40,10042,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:21:34','UNKOWN','2021-10-06 13:21:34'),(8,100,50,10046,NULL,'ITEM',5.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'ASSEMBLY_PULL',3,9,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:21:34','UNKOWN','2021-10-06 13:21:34'),(12,103,10,10036,NULL,'ITEM',10.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'PUSH',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:13','UNKOWN','2021-10-06 13:28:13'),(13,103,30,10058,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:13','UNKOWN','2021-10-06 13:28:13'),(14,103,40,10042,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:13','UNKOWN','2021-10-06 13:28:13'),(15,103,50,10046,NULL,'ITEM',5.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'ASSEMBLY_PULL',3,9,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:13','UNKOWN','2021-10-06 13:28:13'),(19,107,10,10036,NULL,'ITEM',10.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'PUSH',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:33','UNKOWN','2021-10-06 13:28:33'),(20,106,30,10058,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:33','UNKOWN','2021-10-06 13:28:33'),(21,108,40,10042,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:33','UNKOWN','2021-10-06 13:28:33'),(22,108,50,10046,NULL,'ITEM',5.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'ASSEMBLY_PULL',3,9,NULL,NULL,NULL,'UNKOWN','2021-10-06 13:28:33','UNKOWN','2021-10-06 13:28:33'),(26,109,10,10036,NULL,'ITEM',10.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'PUSH',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 15:37:33','UNKOWN','2021-10-06 15:37:33'),(27,109,30,10058,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 15:37:33','UNKOWN','2021-10-06 15:37:33'),(28,109,40,10042,NULL,'ITEM',20.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'OPERATION_PULL',2,5,NULL,NULL,NULL,'UNKOWN','2021-10-06 15:37:33','UNKOWN','2021-10-06 15:37:33'),(29,109,50,10046,NULL,'ITEM',5.00000,NULL,NULL,NULL,NULL,NULL,NULL,0.000000,NULL,'ASSEMBLY_PULL',3,9,NULL,NULL,NULL,'UNKOWN','2021-10-06 15:37:33','UNKOWN','2021-10-06 15:37:33');
/*!40000 ALTER TABLE `wip_wd_line_mat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08  3:48:04
