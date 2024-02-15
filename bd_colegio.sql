CREATE DATABASE  IF NOT EXISTS `colegio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `colegio`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: colegio
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `id_curso` int NOT NULL,
  `id_nota` int NOT NULL,
  `nombre_alumno` varchar(20) NOT NULL,
  `apellido_alumno` varchar(20) NOT NULL,
  `email_alumno` varchar(30) NOT NULL,
  `direccion_alumno` varchar(40) NOT NULL,
  PRIMARY KEY (`id_alumno`),
  KEY `id_curso` (`id_curso`),
  KEY `id_nota` (`id_nota`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`),
  CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,1,1,'JAREB','TWIGLEY','JTWIGLEY0@TMALL.COM','3 WAXWING TRAIL'),(2,2,2,'GERTA','JACQUEST','GJACQUEST1@AMAZON.DE','175 RAVEN JUNCTION'),(3,3,3,'ELLERY','MACGIBBON','EMACGIBBON2@IBM.COM','66822 MAPLE WOOD WAY'),(4,4,4,'CASPAR','FERY','CFERY3@ACCUWEATHER.COM','8057 CARBERRY HILL'),(5,5,5,'RICARD','BENIAN','RBENIAN4@TECHNORATI.COM','2262 KROPF ROAD'),(6,6,6,'KIAH','BILLIARD','KBILLIARD5@TECHCRUNCH.COM','37 ILENE JUNCTION'),(7,7,7,'DESDEMONA','SHUTTELL','DSHUTTELL6@LIVE.COM','28735 MAIN ROAD'),(8,8,8,'ODE','MOTTO','OMOTTO7@UCOZ.RU','70 BUNTING HILL'),(9,9,9,'SHARLENE','BARRAND','SBARRAND8@SAMSUNG.COM','78 STEPHEN PARK'),(10,10,10,'BRADE','SHRUBSALL','BSHRUBSALL9@PHOTOBUCKET.COM','5494 SUMMIT PARK'),(11,11,11,'MARJA','GOLLOP','MGOLLOPA@MIT.EDU','8 OLD GATE ROAD'),(12,12,12,'SUNNY','GAYTOR','SGAYTORB@GMPG.ORG','981 ABERG CENTER'),(13,13,13,'EARLY','BURREL','EBURRELC@W3.ORG','01 CROWLEY PLAZA'),(14,14,14,'LESLIE','KIRTLAND','LKIRTLANDD@ADMIN.CH','0 TALMADGE TERRACE'),(15,15,15,'QUENTIN','BODLEY','QBODLEYE@SLATE.COM','9134 LOEPRICH CENTER'),(16,16,16,'DAHLIA','O\'BRUEN','DOBRUENF@BIGCARTEL.COM','45737 ANTHES AVENUE'),(17,17,17,'MARGEAUX','AMBLER','MAMBLERG@SOHU.COM','35 CARDINAL TERRACE'),(18,18,18,'ELFRIEDA','BOME','EBOMEH@WUNDERGROUND.COM','918 HAUK DRIVE'),(19,19,19,'EMMERY','GOLLING','EGOLLINGI@SHINYSTAT.COM','88 TRANSPORT DRIVE'),(20,20,20,'MARCI','JACOBSSON','MJACOBSSONJ@UPENN.EDU','54 ONEILL ALLEY'),(21,1,21,'ESSA','PEELE','EPEELEK@SEESAA.NET','08 HARPER PLAZA'),(22,2,22,'SIB','STICHEL','SSTICHELL@INDIEGOGO.COM','59 ANDERSON COURT'),(23,3,23,'GRAEME','EMES','GEMESM@WHITEHOUSE.GOV','5294 LOEPRICH JUNCTION'),(24,4,24,'GRAYCE','GOOM','GGOOMN@INDIATIMES.COM','04741 MERCHANT POINT'),(25,5,25,'TODD','LLOYD','TLLOYDO@XING.COM','828 RAMSEY AVENUE'),(26,6,26,'KILLY','MALTER','KMALTERP@YELLOWPAGES.COM','1336 GARRISON PASS'),(27,7,27,'MARINA','UPHAM','MUPHAMQ@HOME.PL','8327 LAKEWOOD POINT'),(28,8,28,'ARDYCE','REDON','AREDONR@QUANTCAST.COM','065 MAGDELINE ROAD'),(29,9,29,'ANGELIQUE','PASCOW','APASCOWS@EBAY.COM','291 PRAIRIE ROSE TERRACE'),(30,10,30,'VITO','GLAVIS','VGLAVIST@DE.VU','7 CALYPSO CROSSING'),(31,11,31,'DONOVAN','ZOEPHEL','DZOEPHELU@NBCNEWS.COM','025 ANZINGER CENTER'),(32,12,32,'KENNEDY','WIMPRESS','KWIMPRESSV@STATE.GOV','234 DEXTER TRAIL'),(33,13,33,'RONALD','CLAY','RCLAYW@YOLASITE.COM','233 RANDY STREET'),(34,14,34,'LESHIA','ZOLLNER','LZOLLNERX@EXAMPLE.COM','1 PEARSON TRAIL'),(35,15,35,'BAY','DI CARLO','BDICARLOY@BLOGLINES.COM','750 GALE STREET'),(36,16,36,'MINNAMINNIE','CLEMENSON','MCLEMENSONZ@1688.COM','1062 IOWA ROAD'),(37,17,37,'CLEMENT','ARTINSTALL','CARTINSTALL10@FACEBOOK.COM','30533 TALMADGE ALLEY'),(38,18,38,'JOELLY','BENDA','JBENDA11@SEESAA.NET','70 MONTEREY JUNCTION'),(39,19,39,'STARLA','CASTENDA','SCASTENDA12@GNU.ORG','9 CASCADE POINT'),(40,20,40,'ALANAH','DEERY','ADEERY13@SOHU.COM','5 HARBORT TRAIL');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_insert_log` AFTER INSERT ON `alumnos` FOR EACH ROW BEGIN
    INSERT INTO log (Usuario, Fecha_modificacion, Hora_modificacion, Tabla, Operacion) VALUES (USER(), CURRENT_DATE(), CURRENT_TIME(), 'Alumnos','Insert');
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `alumnos_5toa`
--

DROP TABLE IF EXISTS `alumnos_5toa`;
/*!50001 DROP VIEW IF EXISTS `alumnos_5toa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `alumnos_5toa` AS SELECT 
 1 AS `Nombre`,
 1 AS `Curso`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(10) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'1RO A'),(2,'1RO B'),(3,'1RO C'),(4,'2DO A'),(5,'2DO B'),(6,'2DO C'),(7,'3RO A'),(8,'3RO B'),(9,'3RO C'),(10,'4TO A'),(11,'4TO B'),(12,'4TO C'),(13,'5TO A'),(14,'5TO B'),(15,'5TO C'),(16,'5TO D'),(17,'6TO A'),(18,'6TO B'),(19,'6TO C'),(20,'6TO D');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cursos_materias`
--

DROP TABLE IF EXISTS `cursos_materias`;
/*!50001 DROP VIEW IF EXISTS `cursos_materias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cursos_materias` AS SELECT 
 1 AS `Curso`,
 1 AS `Materia`,
 1 AS `Horas por semestre`,
 1 AS `Días de cursada`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cursos_profesores`
--

DROP TABLE IF EXISTS `cursos_profesores`;
/*!50001 DROP VIEW IF EXISTS `cursos_profesores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cursos_profesores` AS SELECT 
 1 AS `Curso`,
 1 AS `Profesor a cargo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dias_examen`
--

DROP TABLE IF EXISTS `dias_examen`;
/*!50001 DROP VIEW IF EXISTS `dias_examen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dias_examen` AS SELECT 
 1 AS `Materia`,
 1 AS `Fecha primer examen`,
 1 AS `Fecha segundo examen`,
 1 AS `Días entre exámenes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `examenes`
--

DROP TABLE IF EXISTS `examenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examenes` (
  `id_examen` int NOT NULL AUTO_INCREMENT,
  `tipo_examen` varchar(30) NOT NULL,
  `fecha_examen1` date DEFAULT NULL,
  `fecha_examen2` date DEFAULT NULL,
  PRIMARY KEY (`id_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examenes`
--

LOCK TABLES `examenes` WRITE;
/*!40000 ALTER TABLE `examenes` DISABLE KEYS */;
INSERT INTO `examenes` VALUES (1,'MULTIPLE CHOICE','2023-06-21','2023-12-03'),(2,'PRESENTACION ORAL','2023-05-26','2023-11-28'),(3,'PROYECTO INDIVIDUAL','2023-06-06','2023-12-18'),(4,'AUTOCOMPLETAR','2023-07-02','2023-12-19'),(5,'RESOLVER ACTIVIDADES','2023-06-15','2023-12-17'),(6,'PROYECTO GRUPAL','2023-06-02','2023-12-09'),(7,'TESIS','2023-06-15','2023-11-24'),(8,'MONOGRAFIA','2023-05-16','2023-11-30'),(9,'PRACTICAS','2023-07-06','2023-12-03'),(10,'INVESTIGACION','2023-07-02','2023-12-19'),(11,'MULTIPLE CHOICE II','2023-06-01','2023-12-03'),(12,'PRESENTACION ORAL II','2023-05-26','2023-12-02'),(13,'PROYECTO INDIVIDUAL II','2023-07-06','2023-12-23'),(14,'AUTOCOMPLETAR II','2023-06-29','2023-11-30'),(15,'RESOLVER ACTIVIDADES II','2023-05-28','2023-12-17'),(16,'PROYECTO GRUPAL II','2023-06-02','2023-12-18'),(17,'TESIS II','2023-06-20','2023-11-30'),(18,'MONOGRAFIA II','2023-05-16','2023-11-30'),(19,'PRACTICAS II','2023-05-25','2023-12-18'),(20,'INVESTIGACION II','2023-07-08','2023-12-04');
/*!40000 ALTER TABLE `examenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `Usuario` varchar(20) DEFAULT NULL,
  `Fecha_modificacion` date DEFAULT NULL,
  `Hora_modificacion` time DEFAULT NULL,
  `Tabla` varchar(15) DEFAULT NULL,
  `Operacion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:14','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:15','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:16','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:16','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:16','Alumnos','Insert'),('root@localhost','2023-03-26','16:39:16','Alumnos','Insert');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `id_curso` int NOT NULL,
  `id_examen` int NOT NULL,
  `nombre_materia` varchar(30) NOT NULL,
  `horas_semestre` int NOT NULL,
  `dias_cursada` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_materia`),
  KEY `id_curso` (`id_curso`),
  KEY `id_examen` (`id_examen`),
  CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`),
  CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`id_examen`) REFERENCES `examenes` (`id_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,1,1,'MATEMATICA I',96,'MARTES'),(2,2,2,'MATEMATICA II',96,'MIERCOLES'),(3,3,3,'MATEMATICA III',86,'VIERNES'),(4,4,4,'HISTORIA MUNDIAL I',80,'MARTES'),(5,5,5,'HISTORIA MUNDIAL II',78,'JUEVES'),(6,6,6,'HISTORIA MUNDIAL III',84,'LUNES'),(7,7,7,'PSICOLOGIA I',86,'MIERCOLES'),(8,8,8,'PSICOLOGIA II',96,'MARTES'),(9,9,9,'BIOLOGIA I',96,'VIERNES'),(10,10,10,'BIOLOGIA II',80,'LUNES'),(11,11,11,'ALGEBRA I',96,'MARTES'),(12,12,12,'LITERATURA I',96,'MIERCOLES'),(13,13,13,'LITERATURA II',86,'VIERNES'),(14,14,14,'HISTORIA ARGENTINA I',80,'MARTES'),(15,15,15,'HISTORIA ARGENTINA II',78,'JUEVES'),(16,16,16,'HISTORIA ARGENTINA III',84,'LUNES'),(17,17,17,'INFORMATICA I',86,'MIERCOLES'),(18,18,18,'INFORMATICA II',96,'MARTES'),(19,19,19,'INFORMATICA III',96,'VIERNES'),(20,20,20,'SOCIOLOGIA',80,'LUNES'),(21,1,20,'SOCIOLOGIA I',96,'MARTES'),(22,2,19,'SOCIOLOGIA II',96,'MIERCOLES'),(23,3,18,'SOCIOLOGIA III',86,'VIERNES'),(24,4,17,'HISTORIA MUNDIAL IV',80,'MARTES'),(25,5,16,'HISTORIA MUNDIAL V',78,'JUEVES'),(26,6,15,'HISTORIA MUNDIAL VI',84,'LUNES'),(27,7,14,'PSICOLOGIA III',86,'MIERCOLES'),(28,8,13,'PSICOLOGIA IV',96,'MARTES'),(29,9,12,'BIOLOGIA III',96,'VIERNES'),(30,10,11,'BIOLOGIA IV',80,'LUNES'),(31,11,10,'ALGEBRA II',96,'MARTES'),(32,12,9,'LITERATURA III',96,'MIERCOLES'),(33,13,8,'LITERATURA IV',86,'VIERNES'),(34,14,7,'HISTORIA ARGENTINA IV',80,'MARTES'),(35,15,6,'HISTORIA ARGENTINA V',78,'JUEVES'),(36,16,5,'HISTORIA ARGENTINA VI',84,'LUNES'),(37,17,4,'INFORMATICA IV',86,'MIERCOLES'),(38,18,3,'INFORMATICA V',96,'MARTES'),(39,19,2,'INFORMATICA VI',96,'VIERNES'),(40,20,1,'SOCIOLOGIA IV',80,'LUNES');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id_nota` int NOT NULL AUTO_INCREMENT,
  `primer_semestre` int NOT NULL,
  `segundo_semestre` int NOT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,10,10),(2,3,1),(3,1,3),(4,7,3),(5,3,6),(6,7,1),(7,2,6),(8,1,2),(9,3,3),(10,7,7),(11,3,1),(12,7,2),(13,3,4),(14,2,6),(15,5,8),(16,4,7),(17,8,3),(18,7,1),(19,10,3),(20,4,7),(21,6,8),(22,5,6),(23,4,10),(24,2,3),(25,4,9),(26,9,6),(27,10,9),(28,6,5),(29,3,3),(30,4,1),(31,5,9),(32,10,10),(33,4,7),(34,3,2),(35,5,5),(36,7,5),(37,2,8),(38,8,10),(39,3,4),(40,7,6);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `notas_promedio`
--

DROP TABLE IF EXISTS `notas_promedio`;
/*!50001 DROP VIEW IF EXISTS `notas_promedio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `notas_promedio` AS SELECT 
 1 AS `Nombre`,
 1 AS `Primera nota`,
 1 AS `Segunda nota`,
 1 AS `Nota promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id_profesor` int NOT NULL AUTO_INCREMENT,
  `id_curso` int NOT NULL,
  `nombre_profesor` varchar(20) NOT NULL,
  `apellido_profesor` varchar(20) NOT NULL,
  `telefono_profesor` varchar(20) NOT NULL,
  `email_profesor` varchar(30) NOT NULL,
  PRIMARY KEY (`id_profesor`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (1,1,'Forbes','Dowgill','270-821-8149','fdowgill0@wired.com'),(2,2,'Harland','Kneath','852-516-2919','hkneath1@ed.gov'),(3,3,'Troy','Trebble','619-221-6403','ttrebble2@godaddy.com'),(4,4,'Corbet','Cowerd','624-799-5483','ccowerd3@rambler.ru'),(5,5,'Port','Zmitruk','300-900-1037','pzmitruk4@amazon.de'),(6,6,'Vito','Back','168-884-6364','vback5@xing.com'),(7,7,'Barrett','Mapes','127-466-1361','bmapes6@zdnet.com'),(8,8,'Reg','Pinnington','153-166-1138','rpinnington7@admin.ch'),(9,9,'Hale','McCosh','241-664-0050','hmccosh8@tinyurl.com'),(10,10,'Mel','Garoghan','606-457-4639','mgaroghan9@omniture.com'),(11,11,'Gustave','Ferencowicz','993-921-6658','gferencowicza@mlb.com'),(12,12,'Ogdan','Jablonski','896-574-4910','ojablonskib@apache.org'),(13,13,'Glen','Downey','329-130-7022','gdowneyc@phoca.cz'),(14,14,'Taddeo','Kneebone','370-996-3709','tkneeboned@hibu.com'),(15,15,'Fabian','McGrirl','770-795-4150','fmcgrirle@opensource.org'),(16,16,'Dannie','Mangeot','638-171-8674','dmangeotf@i2i.jp'),(17,17,'Ignazio','Dundridge','300-572-0670','idundridgeg@google.cn'),(18,18,'Arni','Claremont','513-371-3260','aclaremonth@chicagotribune.com'),(19,19,'Lincoln','Montes','631-210-3047','lmontesi@bravesites.com'),(20,20,'Rutherford','Lardner','542-213-6437','rlardnerj@networksolutions.com');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'colegio'
--

--
-- Dumping routines for database 'colegio'
--
/*!50003 DROP FUNCTION IF EXISTS `curso_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `curso_alumno`(id INT) RETURNS char(10) CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE curso CHAR(10);
    SELECT nombre_curso INTO curso FROM cursos INNER JOIN alumnos ON cursos.id_curso = alumnos.id_curso WHERE id_alumno=id;
	RETURN curso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `dia_primer_examen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `dia_primer_examen`(id INT) RETURNS char(15) CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE fecha CHAR(15);
    SELECT dayname(fecha_examen1) INTO fecha FROM examenes WHERE id_examen=id;
	RETURN fecha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_nota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_nota`(IN nota_primer_semestre INT, IN nota_segundo_semestre INT)
BEGIN
    INSERT INTO notas (primer_semestre, segundo_semestre) VALUES (nota_primer_semestre, nota_segundo_semestre); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ordenar_por_campo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordenar_por_campo`(IN campo CHAR(30), IN orden CHAR(15))
BEGIN
    IF orden = 'ascendente' THEN
		SET @orden = ' ASC';
	ELSE
		IF orden = 'descendente' THEN
			SET @orden = ' DESC';
		END IF;
	END IF;
    SET @campo_ordenado = concat('SELECT * FROM materias ORDER BY ', campo, @orden);
    PREPARE runSQL FROM @campo_ordenado;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `alumnos_5toa`
--

/*!50001 DROP VIEW IF EXISTS `alumnos_5toa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnos_5toa` AS select concat(`a`.`nombre_alumno`,' ',`a`.`apellido_alumno`) AS `Nombre`,`c`.`nombre_curso` AS `Curso` from (`alumnos` `a` join `cursos` `c` on((`a`.`id_curso` = `c`.`id_curso`))) where (`a`.`id_curso` = 13) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cursos_materias`
--

/*!50001 DROP VIEW IF EXISTS `cursos_materias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cursos_materias` AS select `c`.`nombre_curso` AS `Curso`,`m`.`nombre_materia` AS `Materia`,`m`.`horas_semestre` AS `Horas por semestre`,`m`.`dias_cursada` AS `Días de cursada` from (`cursos` `c` join `materias` `m` on((`c`.`id_curso` = `m`.`id_curso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cursos_profesores`
--

/*!50001 DROP VIEW IF EXISTS `cursos_profesores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cursos_profesores` AS select `c`.`nombre_curso` AS `Curso`,concat(`p`.`nombre_profesor`,' ',`p`.`apellido_profesor`) AS `Profesor a cargo` from (`cursos` `c` join `profesores` `p` on((`c`.`id_curso` = `p`.`id_curso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dias_examen`
--

/*!50001 DROP VIEW IF EXISTS `dias_examen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dias_examen` AS select `m`.`nombre_materia` AS `Materia`,`e`.`fecha_examen1` AS `Fecha primer examen`,`e`.`fecha_examen2` AS `Fecha segundo examen`,(to_days(`e`.`fecha_examen2`) - to_days(`e`.`fecha_examen1`)) AS `Días entre exámenes` from (`materias` `m` join `examenes` `e` on((`m`.`id_examen` = `e`.`id_examen`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notas_promedio`
--

/*!50001 DROP VIEW IF EXISTS `notas_promedio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notas_promedio` AS select concat(`a`.`nombre_alumno`,' ',`a`.`apellido_alumno`) AS `Nombre`,`n`.`primer_semestre` AS `Primera nota`,`n`.`segundo_semestre` AS `Segunda nota`,truncate(((`n`.`primer_semestre` + `n`.`segundo_semestre`) / 2),1) AS `Nota promedio` from (`alumnos` `a` join `notas` `n` on((`a`.`id_nota` = `n`.`id_nota`))) order by ((`n`.`primer_semestre` + `n`.`segundo_semestre`) / 2) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 18:16:43
