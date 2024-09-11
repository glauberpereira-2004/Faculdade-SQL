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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `matricula` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `curso_id` int DEFAULT NULL,
  `programa_formacao` enum('graduação','mestrado','doutorado') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `matricula` (`matricula`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `curso_id` (`curso_id`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Aluno 1','A001','111.111.111-01','Endereco 1','1234-5678','M',1,'graduação'),(2,'Aluno 2','A002','111.111.111-02','Endereco 2','1234-5679','F',2,'graduação'),(3,'Aluno 3','A003','111.111.111-03','Endereco 3','1234-5680','M',3,'graduação'),(4,'Aluno 4','A004','111.111.111-04','Endereco 4','1234-5681','F',4,'graduação'),(5,'Aluno 5','A005','111.111.111-05','Endereco 5','1234-5682','M',5,'graduação'),(6,'Aluno 6','A006','111.111.111-06','Endereco 6','1234-5683','F',6,'graduação'),(7,'Aluno 7','A007','111.111.111-07','Endereco 7','1234-5684','M',7,'graduação'),(8,'Aluno 8','A008','111.111.111-08','Endereco 8','1234-5685','F',8,'graduação'),(9,'Aluno 9','A009','111.111.111-09','Endereco 9','1234-5686','M',9,'graduação'),(10,'Aluno 10','A010','111.111.111-10','Endereco 10','1234-5687','F',10,'graduação'),(11,'Aluno 11','A011','111.111.111-11','Endereco 11','1234-5688','M',11,'graduação'),(12,'Aluno 12','A012','111.111.111-12','Endereco 12','1234-5689','F',12,'graduação'),(13,'Aluno 13','A013','111.111.111-13','Endereco 13','1234-5690','M',13,'graduação'),(14,'Aluno 14','A014','111.111.111-14','Endereco 14','1234-5691','F',14,'graduação'),(15,'Aluno 15','A015','111.111.111-15','Endereco 15','1234-5692','M',15,'graduação'),(16,'Aluno 16','A016','111.111.111-16','Endereco 16','1234-5693','F',16,'graduação'),(17,'Aluno 17','A017','111.111.111-17','Endereco 17','1234-5694','M',17,'graduação'),(18,'Aluno 18','A018','111.111.111-18','Endereco 18','1234-5695','F',18,'graduação'),(19,'Aluno 19','A019','111.111.111-19','Endereco 19','1234-5696','M',19,'graduação'),(20,'Aluno 20','A020','111.111.111-20','Endereco 20','1234-5697','F',20,'graduação'),(21,'Aluno 21','A021','111.111.111-21','Endereco 21','1234-5698','M',1,'graduação'),(22,'Aluno 22','A022','111.111.111-22','Endereco 22','1234-5699','F',2,'graduação'),(23,'Aluno 23','A023','111.111.111-23','Endereco 23','1234-5700','M',3,'graduação'),(24,'Aluno 24','A024','111.111.111-24','Endereco 24','1234-5701','F',4,'graduação'),(25,'Aluno 25','A025','111.111.111-25','Endereco 25','1234-5702','M',5,'graduação'),(26,'Aluno 26','A026','111.111.111-26','Endereco 26','1234-5703','F',6,'graduação'),(27,'Aluno 27','A027','111.111.111-27','Endereco 27','1234-5704','M',7,'graduação'),(28,'Aluno 28','A028','111.111.111-28','Endereco 28','1234-5705','F',8,'graduação'),(29,'Aluno 29','A029','111.111.111-29','Endereco 29','1234-5706','M',9,'graduação'),(30,'Aluno 30','A030','111.111.111-30','Endereco 30','1234-5707','F',10,'graduação'),(31,'Aluno 31','A031','111.111.111-31','Endereco 31','1234-5708','M',11,'graduação'),(32,'Aluno 32','A032','111.111.111-32','Endereco 32','1234-5709','F',12,'graduação'),(33,'Aluno 33','A033','111.111.111-33','Endereco 33','1234-5710','M',13,'graduação'),(34,'Aluno 34','A034','111.111.111-34','Endereco 34','1234-5711','F',14,'graduação'),(35,'Aluno 35','A035','111.111.111-35','Endereco 35','1234-5712','M',15,'graduação'),(36,'Aluno 36','A036','111.111.111-36','Endereco 36','1234-5713','F',16,'graduação'),(37,'Aluno 37','A037','111.111.111-37','Endereco 37','1234-5714','M',17,'graduação'),(38,'Aluno 38','A038','111.111.111-38','Endereco 38','1234-5715','F',18,'graduação'),(39,'Aluno 39','A039','111.111.111-39','Endereco 39','1234-5716','M',19,'graduação'),(40,'Aluno 40','A040','111.111.111-40','Endereco 40','1234-5717','F',20,'graduação'),(41,'Aluno 41','A041','111.111.111-41','Endereco 41','1234-5718','M',1,'graduação'),(42,'Aluno 42','A042','111.111.111-42','Endereco 42','1234-5719','F',2,'graduação'),(43,'Aluno 43','A043','111.111.111-43','Endereco 43','1234-5720','M',3,'graduação'),(44,'Aluno 44','A044','111.111.111-44','Endereco 44','1234-5721','F',4,'graduação'),(45,'Aluno 45','A045','111.111.111-45','Endereco 45','1234-5722','M',5,'graduação'),(46,'Aluno 46','A046','111.111.111-46','Endereco 46','1234-5723','F',6,'graduação'),(47,'Aluno 47','A047','111.111.111-47','Endereco 47','1234-5724','M',7,'graduação'),(48,'Aluno 48','A048','111.111.111-48','Endereco 48','1234-5725','F',8,'graduação'),(49,'Aluno 49','A049','111.111.111-49','Endereco 49','1234-5726','M',9,'graduação'),(50,'Aluno 50','A050','111.111.111-50','Endereco 50','1234-5727','F',10,'graduação'),(51,'Aluno 51','A051','111.111.111-51','Endereco 51','1234-5728','M',11,'graduação'),(52,'Aluno 52','A052','111.111.111-52','Endereco 52','1234-5729','F',12,'graduação'),(53,'Aluno 53','A053','111.111.111-53','Endereco 53','1234-5730','M',13,'graduação'),(54,'Aluno 54','A054','111.111.111-54','Endereco 54','1234-5731','F',14,'graduação'),(55,'Aluno 55','A055','111.111.111-55','Endereco 55','1234-5732','M',15,'graduação'),(56,'Aluno 56','A056','111.111.111-56','Endereco 56','1234-5733','F',16,'graduação'),(57,'Aluno 57','A057','111.111.111-57','Endereco 57','1234-5734','M',17,'graduação'),(58,'Aluno 58','A058','111.111.111-58','Endereco 58','1234-5735','F',18,'graduação'),(59,'Aluno 59','A059','111.111.111-59','Endereco 59','1234-5736','M',19,'graduação'),(60,'Aluno 60','A060','111.111.111-60','Endereco 60','1234-5737','F',20,'graduação'),(61,'Aluno 61','A061','111.111.111-61','Endereco 61','1234-5738','M',1,'graduação'),(62,'Aluno 62','A062','111.111.111-62','Endereco 62','1234-5739','F',2,'graduação'),(63,'Aluno 63','A063','111.111.111-63','Endereco 63','1234-5740','M',3,'graduação'),(64,'Aluno 64','A064','111.111.111-64','Endereco 64','1234-5741','F',4,'graduação'),(65,'Aluno 65','A065','111.111.111-65','Endereco 65','1234-5742','M',5,'graduação'),(66,'Aluno 66','A066','111.111.111-66','Endereco 66','1234-5743','F',6,'graduação'),(67,'Aluno 67','A067','111.111.111-67','Endereco 67','1234-5744','M',7,'graduação'),(68,'Aluno 68','A068','111.111.111-68','Endereco 68','1234-5745','F',8,'graduação'),(69,'Aluno 69','A069','111.111.111-69','Endereco 69','1234-5746','M',9,'graduação'),(70,'Aluno 70','A070','111.111.111-70','Endereco 70','1234-5747','F',10,'graduação'),(71,'Aluno 71','A071','111.111.111-71','Endereco 71','1234-5748','M',11,'graduação'),(72,'Aluno 72','A072','111.111.111-72','Endereco 72','1234-5749','F',12,'graduação'),(73,'Aluno 73','A073','111.111.111-73','Endereco 73','1234-5750','M',13,'graduação'),(74,'Aluno 74','A074','111.111.111-74','Endereco 74','1234-5751','F',14,'graduação'),(75,'Aluno 75','A075','111.111.111-75','Endereco 75','1234-5752','M',15,'graduação'),(76,'Aluno 76','A076','111.111.111-76','Endereco 76','1234-5753','F',16,'graduação'),(77,'Aluno 77','A077','111.111.111-77','Endereco 77','1234-5754','M',17,'graduação'),(78,'Aluno 78','A078','111.111.111-78','Endereco 78','1234-5755','F',18,'graduação'),(79,'Aluno 79','A079','111.111.111-79','Endereco 79','1234-5756','M',19,'graduação'),(80,'Aluno 80','A080','111.111.111-80','Endereco 80','1234-5757','F',20,'graduação'),(81,'Aluno 81','A081','111.111.111-81','Endereco 81','1234-5758','M',1,'graduação'),(82,'Aluno 82','A082','111.111.111-82','Endereco 82','1234-5759','F',2,'graduação'),(83,'Aluno 83','A083','111.111.111-83','Endereco 83','1234-5760','M',3,'graduação'),(84,'Aluno 84','A084','111.111.111-84','Endereco 84','1234-5761','F',4,'graduação'),(85,'Aluno 85','A085','111.111.111-85','Endereco 85','1234-5762','M',5,'graduação'),(86,'Aluno 86','A086','111.111.111-86','Endereco 86','1234-5763','F',6,'graduação'),(87,'Aluno 87','A087','111.111.111-87','Endereco 87','1234-5764','M',7,'graduação'),(88,'Aluno 88','A088','111.111.111-88','Endereco 88','1234-5765','F',8,'graduação'),(89,'Aluno 89','A089','111.111.111-89','Endereco 89','1234-5766','M',9,'graduação'),(90,'Aluno 90','A090','111.111.111-90','Endereco 90','1234-5767','F',10,'graduação'),(91,'Aluno 91','A091','111.111.111-91','Endereco 91','1234-5768','M',11,'graduação'),(92,'Aluno 92','A092','111.111.111-92','Endereco 92','1234-5769','F',12,'graduação'),(93,'Aluno 93','A093','111.111.111-93','Endereco 93','1234-5770','M',13,'graduação'),(94,'Aluno 94','A094','111.111.111-94','Endereco 94','1234-5771','F',14,'graduação'),(95,'Aluno 95','A095','111.111.111-95','Endereco 95','1234-5772','M',15,'graduação'),(96,'Aluno 96','A096','111.111.111-96','Endereco 96','1234-5773','F',16,'graduação'),(97,'Aluno 97','A097','111.111.111-97','Endereco 97','1234-5774','M',17,'graduação'),(98,'Aluno 98','A098','111.111.111-98','Endereco 98','1234-5775','F',18,'graduação'),(99,'Aluno 99','111.111.111-99','A099','Endereco 99','1234-5776','M',19,'graduação'),(100,'Aluno 100','111.111.111-100','A100','Endereco 100','1234-5777','F',20,'graduação');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
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
