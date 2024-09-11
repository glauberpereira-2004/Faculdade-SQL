-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `codigo_disciplina` varchar(50) NOT NULL,
  `horas_semestre` int DEFAULT NULL,
  `nivel` enum('graduação','mestrado','doutorado') DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `id_professor` int DEFAULT NULL,
  `carga_horaria` int DEFAULT NULL,
  `conclusao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_disciplina` (`codigo_disciplina`),
  KEY `id_professor` (`id_professor`),
  CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (1,'Disciplina 1','D001',60,'graduação','Departamento 1',1,120,'S'),(2,'Disciplina 2','D002',60,'graduação','Departamento 2',2,130,'S'),(3,'Disciplina 3','D003',60,'graduação','Departamento 3',3,130,'N'),(4,'Disciplina 4','D004',60,'graduação','Departamento 4',4,130,'N'),(5,'Disciplina 5','D005',60,'graduação','Departamento 5',5,130,'N'),(6,'Disciplina 6','D006',60,'graduação','Departamento 6',6,130,'S'),(7,'Disciplina 7','D007',60,'graduação','Departamento 7',7,130,'S'),(8,'Disciplina 8','D008',60,'graduação','Departamento 8',8,130,'N'),(9,'Disciplina 9','D009',60,'graduação','Departamento 9',9,130,'S'),(10,'Disciplina 10','D010',60,'graduação','Departamento 10',10,140,'N'),(11,'Disciplina 11','D011',60,'graduação','Departamento 11',11,150,'S'),(12,'Disciplina 12','D012',60,'graduação','Departamento 12',12,150,'S'),(13,'Disciplina 13','D013',60,'graduação','Departamento 13',13,140,'N'),(14,'Disciplina 14','D014',60,'graduação','Departamento 14',14,120,'N'),(15,'Disciplina 15','D015',60,'graduação','Departamento 15',15,100,'S'),(16,'Disciplina 16','D016',60,'graduação','Departamento 1',1,110,'N'),(17,'Disciplina 17','D017',60,'graduação','Departamento 2',2,100,'S'),(18,'Disciplina 18','D018',60,'graduação','Departamento 3',3,123,'N'),(19,'Disciplina 19','D019',60,'graduação','Departamento 4',4,132,'N'),(20,'Disciplina 20','D020',60,'graduação','Departamento 5',5,80,'S'),(21,'Disciplina 21','D021',60,'graduação','Departamento 6',6,90,'S'),(22,'Disciplina 22','D022',60,'graduação','Departamento 7',7,110,'S'),(23,'Disciplina 23','D023',60,'graduação','Departamento 8',8,122,'N'),(24,'Disciplina 24','D024',60,'graduação','Departamento 9',9,115,'N'),(25,'Disciplina 25','D025',60,'graduação','Departamento 10',10,112,'N'),(26,'Disciplina 26','D026',60,'graduação','Departamento 11',11,124,'S'),(27,'Disciplina 27','D027',60,'graduação','Departamento 12',12,100,'S'),(28,'Disciplina 28','D028',60,'graduação','Departamento 13',13,100,'N'),(29,'Disciplina 29','D029',60,'graduação','Departamento 14',14,90,'N'),(30,'Disciplina 30','D030',60,'graduação','Departamento 15',15,95,'S');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-28 10:25:45
