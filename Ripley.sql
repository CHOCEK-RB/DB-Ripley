/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.6.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Ripley
-- ------------------------------------------------------
-- Server version	11.6.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `Accesorios`
--

DROP TABLE IF EXISTS `Accesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accesorios` (
  `ID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Accesorios_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Moda` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accesorios`
--

LOCK TABLES `Accesorios` WRITE;
/*!40000 ALTER TABLE `Accesorios` DISABLE KEYS */;
INSERT INTO `Accesorios` VALUES
(202000),
(202001),
(202002),
(202003),
(202004),
(202005),
(202006),
(202007),
(202008),
(202009),
(202010),
(202011),
(202012),
(202013),
(202014),
(202015),
(202016),
(202017),
(202018),
(202019),
(202020),
(202021),
(202022),
(202023),
(202024),
(202025);
/*!40000 ALTER TABLE `Accesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Administrador_productos`
--

DROP TABLE IF EXISTS `Administrador_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Administrador_productos` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Administrador_productos_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrador_productos`
--

LOCK TABLES `Administrador_productos` WRITE;
/*!40000 ALTER TABLE `Administrador_productos` DISABLE KEYS */;
INSERT INTO `Administrador_productos` VALUES
(1);
/*!40000 ALTER TABLE `Administrador_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Belleza_Cuidado`
--

DROP TABLE IF EXISTS `Belleza_Cuidado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Belleza_Cuidado` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `marca` varchar(15) NOT NULL DEFAULT '',
  `tipo` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Belleza_Cuidado_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Producto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Belleza_Cuidado`
--

LOCK TABLES `Belleza_Cuidado` WRITE;
/*!40000 ALTER TABLE `Belleza_Cuidado` DISABLE KEYS */;
INSERT INTO `Belleza_Cuidado` VALUES
(401000,'TOUS','Eau de Toilette'),
(401001,'TOUS','Eau de Parfum'),
(401002,'INDEX','Eau de Parfum'),
(401003,'CAROLINAHERRERA','Eau de Toilette'),
(401004,'LANCOME','Eau de Parfum'),
(401005,'TOUS','Eau de Toilette'),
(401006,'TOUS','Eau de Toilette'),
(401007,'VERSACE','Eau de Toilette'),
(401008,'LANCOME','Eau de Parfum'),
(401009,'GIORGIO ARMANI','Eau de Parfum'),
(401010,'TOMMY HILFIGER','Eau de Toilette'),
(401011,'KENZO','Eau de Toilette'),
(401012,'MONTBLANC','Eau de Toilette'),
(401013,'GIORGIO ARMANI','Eau de Toilette'),
(401014,'PACO RABANNE','Eau de Toilette'),
(401015,'HUGO BOSS','Eau de Toilette'),
(401016,'TOUS','Eau de Toilette'),
(401017,'GIVENCHY','Eau de Parfum'),
(401018,'HUGO BOSS','Eau de Parfum'),
(401019,'PACO RABANNE','Eau de Toilette'),
(401020,'GIVENCHY','Eau de Toilette'),
(401021,'CALVIN KLEIN','Eau de Toilette'),
(401022,'CAROLINAHERRERA','Eau de Toilette'),
(401023,'GIORGIO ARMANI','Eau de Toilette'),
(401024,'CALVIN KLEIN','Eau de Toilette'),
(402000,'Johnson&Johnson','Geles'),
(402001,'LOREAL PARIS','Tratamiento'),
(402002,'NEUTROGENA','Geles'),
(402003,'MAC','Tratamiento'),
(402004,'BIODERMA','Tratamiento'),
(402005,'BIODERMA','Tratamiento'),
(402006,'ESTEE LAUDER','Tratamiento'),
(402007,'LOREAL PARIS','Cremas'),
(402008,'GARNIER','Serum'),
(402009,'GARNIER','Serum'),
(402010,'CERAVE','Geles'),
(402011,'CERAVE','Tratamiento'),
(402012,'LA ROCHE POSAY','Serum'),
(402013,'ISDIN','Bloqueador'),
(402014,'ISDIN','Bloqueador'),
(402015,'ISDIN','Bloqueador'),
(402016,'ISDIN','Bloqueador'),
(402017,'LA ROCHE POSAY','Tratamiento'),
(402018,'LA ROCHE POSAY','Tratamiento'),
(402019,'LA ROCHE POSAY','Serum'),
(402020,'CERAVE','Geles'),
(402021,'LA ROCHE POSAY','Geles'),
(402022,'LA ROCHE POSAY','Tratamiento'),
(402023,'LA ROCHE POSAY','Tratamiento'),
(402024,'ISDIN','Tratamiento'),
(403000,'FENTY BEAUTY','Labiales'),
(403001,'GIVENCHY','Polvos'),
(403002,'CLINIQUE','Labiales'),
(403003,'CLINIQUE','Labiales'),
(403004,'GIVENCHY','Polvos'),
(403005,'GIVENCHY','Polvos'),
(403006,'MAC','Delineador'),
(403007,'MAC','Fijadores'),
(403008,'MAC','Labiales'),
(403009,'MAC','Corrector'),
(403010,'MAC','Labiales'),
(403011,'MAC','Delineador'),
(403012,'MAX FACTOR','Labiales'),
(403013,'COVERGIRL','Bases'),
(403014,'MAC','Delineador'),
(403015,'MAC','Iluminador'),
(403016,'COVERGIRL','Bases'),
(403017,'MAC','Delineador'),
(403018,'CLINIQUE','Desmaquillante'),
(403019,'MAC','Sombra'),
(403020,'LOREAL PARIS','Delineador'),
(403021,'MAYBELLINE','Delineador'),
(403022,'BOBBI BROWN','Bases'),
(403023,'LOREAL PARIS','Bases'),
(403024,'LOREAL PARIS','Bases');
/*!40000 ALTER TABLE `Belleza_Cuidado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Calsado`
--

DROP TABLE IF EXISTS `Calsado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calsado` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `genero` char(1) NOT NULL DEFAULT '',
  `talla` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Calsado_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Moda` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calsado`
--

LOCK TABLES `Calsado` WRITE;
/*!40000 ALTER TABLE `Calsado` DISABLE KEYS */;
INSERT INTO `Calsado` VALUES
(203000,'M',42),
(203001,'F',37),
(203002,'M',41),
(203003,'U',42),
(203004,'F',43),
(203005,'M',44),
(203006,'M',31),
(203007,'F',43),
(203008,'F',37),
(203009,'M',43),
(203010,'F',38),
(203011,'F',39),
(203012,'F',37),
(203013,'F',41),
(203014,'F',39),
(203015,'F',40),
(203016,'M',40),
(203017,'F',39),
(203018,'M',43),
(203019,'F',37),
(203020,'F',37),
(203021,'F',36),
(203022,'F',37),
(203023,'F',38),
(203024,'M',44);
/*!40000 ALTER TABLE `Calsado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Cliente_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cocina`
--

DROP TABLE IF EXISTS `Cocina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cocina` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `numero_hornillas` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Cocina_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Electrodomestico` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cocina`
--

LOCK TABLES `Cocina` WRITE;
/*!40000 ALTER TABLE `Cocina` DISABLE KEYS */;
INSERT INTO `Cocina` VALUES
(602000,2,'eléctrica'),
(602001,4,'eléctrica'),
(602002,5,'gas'),
(602003,2,'gas'),
(602004,4,'gas'),
(602005,2,'eléctrica'),
(602006,1,'eléctrica'),
(602007,5,'electrica'),
(602008,3,'gas'),
(602009,2,'eléctrica'),
(602010,4,'eléctrica'),
(602011,1,'electrica'),
(602012,5,'gas'),
(602013,4,'gas'),
(602014,4,'gas'),
(602015,6,'gas'),
(602016,6,'gas'),
(602017,2,'gas'),
(602018,5,'eléctrica'),
(602019,4,'gas'),
(602020,2,'eléctrica'),
(602021,2,'gas'),
(602022,2,'eléctrica'),
(602023,4,'gas'),
(602024,6,'gas');
/*!40000 ALTER TABLE `Cocina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compra`
--

DROP TABLE IF EXISTS `Compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Compra` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `monto` decimal(65,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compra`
--

LOCK TABLES `Compra` WRITE;
/*!40000 ALTER TABLE `Compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Computadora`
--

DROP TABLE IF EXISTS `Computadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Computadora` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `modelo` varchar(20) NOT NULL DEFAULT '',
  `disco_dura` varchar(5) NOT NULL DEFAULT '',
  `almacenamiento` int(11) NOT NULL DEFAULT 0,
  `RAM` int(11) NOT NULL DEFAULT 0,
  `procesador` varchar(30) NOT NULL DEFAULT '',
  `tarjeta_grafica` varchar(30) NOT NULL DEFAULT '',
  `SO` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Computadora_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Electronica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Computadora`
--

LOCK TABLES `Computadora` WRITE;
/*!40000 ALTER TABLE `Computadora` DISABLE KEYS */;
INSERT INTO `Computadora` VALUES
(101000,'XPS 13','SSD',512,16,'Intel Core i7','Intel Iris Xe','Windows 11'),
(101001,'MacBook Air M2','SSD',256,8,'Apple M2','Integrada','macOS'),
(101002,'Spectre x360','SSD',512,16,'Intel Core i7','Intel Iris Xe','Windows 11'),
(101003,'Surface Laptop 5','SSD',256,8,'Intel Core i5','Intel Iris Xe','Windows 11'),
(101004,'ThinkPad X1 Carbon','SSD',512,16,'Intel Core i7','Integrada','Windows 11'),
(101005,'ROG Zephyrus G14','SSD',1,16,'AMD Ryzen 9','NVIDIA RTX 4060','Windows 11'),
(101006,'Predator Helios 300','SSD',1,16,'Intel Core i7','NVIDIA RTX 3070','Windows 11'),
(101007,'Blade 15','SSD',1,32,'Intel Core i9','NVIDIA RTX 4080','Windows 11'),
(101008,'Stealth 15M','SSD',512,16,'Intel Core i7','NVIDIA RTX 3060','Windows 11'),
(101009,'m15 R7','SSD',2,32,'Intel Core i9','NVIDIA RTX 4080','Windows 11'),
(101010,'MacBook Pro 16 M3','SSD',512,16,'Apple M3','Integrada','macOS'),
(101011,'Inspiron 15','HDD',1,8,'Intel Core i5','Integrada','Windows 11'),
(101012,'Envy 13','SSD',256,8,'Intel Core i7','Intel Iris Xe','Windows 11'),
(101013,'Legion 5 Pro','SSD',1,16,'AMD Ryzen 7','NVIDIA RTX 3070','Windows 11'),
(101014,'TUF Dash F15','SSD',512,16,'Intel Core i7','NVIDIA RTX 3050','Windows 11'),
(101015,'Aspire 5','HDD',1,8,'Intel Core i3','Integrada','Windows 11'),
(101016,'Book 13','SSD',256,16,'Intel Core i7','Intel Iris Xe','Windows 11'),
(101017,'Surface Pro 9','SSD',512,16,'Intel Core i5','Integrada','Windows 11'),
(101018,'Katana GF66','SSD',1,16,'Intel Core i7','NVIDIA RTX 3060','Windows 11'),
(101019,'x14','SSD',1,32,'Intel Core i9','NVIDIA RTX 4070','Windows 11'),
(101020,'MacBook Pro 14 M3','SSD',512,16,'Apple M3','Integrada','macOS'),
(101021,'Latitude 5420','SSD',256,8,'Intel Core i5','Integrada','Windows 11'),
(101022,'Pavilion 15','HDD',1,8,'Intel Core i3','Integrada','Windows 11'),
(101023,'IdeaPad 3','HDD',1,8,'AMD Ryzen 3','Integrada','Windows 11'),
(101024,'VivoBook S15','SSD',512,8,'Intel Core i5','Intel Iris Xe','Windows 11');
/*!40000 ALTER TABLE `Computadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Construccion`
--

DROP TABLE IF EXISTS `Construccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Construccion` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `numero_piezas` int(11) NOT NULL DEFAULT 0,
  `material` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Construccion_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Juguetes` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Construccion`
--

LOCK TABLES `Construccion` WRITE;
/*!40000 ALTER TABLE `Construccion` DISABLE KEYS */;
INSERT INTO `Construccion` VALUES
(501000,500,'Plástico'),
(501001,700,'Plástico'),
(501002,1000,'Plástico'),
(501003,600,'Plástico'),
(501004,450,'Plástico'),
(501005,400,'Plástico'),
(501006,750,'Plástico'),
(501007,900,'Plástico'),
(501008,750,'Plástico'),
(501009,550,'Plástico'),
(501010,1000,'Cartón'),
(501011,500,'Cartón'),
(501012,350,'Plástico'),
(501013,450,'Plástico'),
(501014,1200,'Plástico'),
(501015,500,'Plástico'),
(501016,700,'Plástico'),
(501017,250,'Madera'),
(501018,850,'Plástico'),
(501019,100,'Plástico'),
(501020,100,'Plástico'),
(501021,400,'Plástico'),
(501022,1600,'Plástico'),
(501023,200,'Madera'),
(501024,500,'Plástico');
/*!40000 ALTER TABLE `Construccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Crema`
--

DROP TABLE IF EXISTS `Crema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Crema` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `ingredientes` text NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Crema_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Belleza_Cuidado` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crema`
--

LOCK TABLES `Crema` WRITE;
/*!40000 ALTER TABLE `Crema` DISABLE KEYS */;
INSERT INTO `Crema` VALUES
(402000,50,'Ácido hialurónico, glicerina y extracto de oliva.'),
(402001,50,'Ácido hialuronico.'),
(402002,50,'Water gel con Ácido Hialurónico.'),
(402003,30,'Extracto de peonía japonesa, niacinamida y ceramidas.'),
(402004,500,'Agua micelar.'),
(402005,500,'Agua micelar.'),
(402006,50,'Extracto de hibisco, moringa y ácido hialurónico.'),
(402007,50,'Vitamina A.'),
(402008,30,'Vitamina C.'),
(402009,15,'Vitamina C.'),
(402010,236,'Ceramidas.'),
(402011,340,'Ceramidas, fitoesfingosina y ácido hialurónico.'),
(402012,15,'Vitamina B5'),
(402013,50,'Octocrylene, Propanediol, y agua.'),
(402014,50,'Octocrylene, Propanediol, entre otros.'),
(402015,250,'Octocrylene, Propanediol, entre otros.'),
(402016,50,'Octocrylene, Propanediol, entre otros.'),
(402017,400,'Agua micelar y vitaminas'),
(402018,40,'Vitaminas.'),
(402019,30,'Retinol y vitamina B3.'),
(402020,236,'Ácido salicílico y Niacinamida.'),
(402021,200,'Ácido salicilico y agua termal'),
(402022,400,'Manteca de karité nutritiva y niacinamida calmante.'),
(402023,150,'Agua termal.'),
(402024,50,'Melatonina y carnosina.');
/*!40000 ALTER TABLE `Crema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direcccion_Cliente`
--

DROP TABLE IF EXISTS `Direcccion_Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Direcccion_Cliente` (
  `ID_Cliente` bigint(20) unsigned NOT NULL DEFAULT 0,
  `pais` varchar(20) NOT NULL DEFAULT '',
  `departamento` varchar(20) NOT NULL DEFAULT '',
  `direccion` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID_Cliente`,`pais`,`departamento`,`direccion`),
  CONSTRAINT `Direcccion_Cliente_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `Cliente` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direcccion_Cliente`
--

LOCK TABLES `Direcccion_Cliente` WRITE;
/*!40000 ALTER TABLE `Direcccion_Cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Direcccion_Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Electrodomestico`
--

DROP TABLE IF EXISTS `Electrodomestico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Electrodomestico` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `largo` int(11) NOT NULL DEFAULT 0,
  `alto` int(11) NOT NULL DEFAULT 0,
  `ancho` int(11) NOT NULL DEFAULT 0,
  `consumo_energia` int(11) NOT NULL DEFAULT 0,
  `peso` int(11) NOT NULL DEFAULT 0,
  `marca` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Electrodomestico_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Producto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Electrodomestico`
--

LOCK TABLES `Electrodomestico` WRITE;
/*!40000 ALTER TABLE `Electrodomestico` DISABLE KEYS */;
INSERT INTO `Electrodomestico` VALUES
(601000,60,85,60,150,75,'LG'),
(601001,70,99,85,250,130,'Samsung'),
(601002,60,85,61,200,70,'LG'),
(601003,65,98,60,230,85,'Samsung'),
(601004,60,85,64,210,85,'LG'),
(601005,60,85,65,180,50,'Samsung'),
(601006,60,85,63,220,80,'LG'),
(601007,60,85,65,190,70,'Samsung'),
(601008,60,85,62,200,75,'LG'),
(601009,70,99,68,240,90,'Samsung'),
(601010,65,85,64,220,85,'LG'),
(601011,60,85,60,200,70,'Samsung'),
(601012,70,95,65,250,95,'LG'),
(601013,70,98,68,230,90,'Samsung'),
(601014,60,85,64,210,75,'LG'),
(601015,65,85,65,220,80,'Samsung'),
(601016,60,85,60,180,65,'LG'),
(601017,60,85,60,150,65,'Samsung'),
(601018,60,85,60,210,75,'Electrolux'),
(601019,60,85,60,200,70,'Electrolux'),
(601020,70,95,70,220,85,'Electrolux'),
(601021,60,85,60,210,75,'Electrolux'),
(601022,70,95,70,230,80,'Electrolux'),
(601023,65,90,65,220,85,'Electrolux'),
(601024,65,90,65,215,80,'Electrolux'),
(602000,59,6,35,3500,8,'Avera'),
(602001,59,6,52,7000,9,'Supra'),
(602002,76,5,52,0,14,'Avera'),
(602003,60,5,45,0,10,'MAXIMS'),
(602004,60,5,50,0,12,'Avera'),
(602005,58,6,35,3000,8,'Odipo'),
(602006,30,5,38,2000,3,'Avera'),
(602007,60,5,50,2000,10,'SUPRA'),
(602008,55,5,45,0,10,'Avera'),
(602009,60,6,35,3500,8,'Supra'),
(602010,59,6,45,4000,9,'Avera'),
(602011,30,5,40,1500,5,'SUPRA'),
(602012,80,10,55,0,18,'Avera'),
(602013,80,10,60,0,15,'MAXIMS'),
(602014,70,10,55,0,16,'Avera'),
(602015,100,12,80,0,20,'MAXIMS'),
(602016,90,10,60,0,22,'Avera'),
(602017,45,7,35,0,8,'ODIPO'),
(602018,70,6,50,5000,12,'Avera'),
(602019,70,8,50,0,12,'ODIPO'),
(602020,52,5,38,3000,7,'Avera'),
(602021,45,7,35,0,8,'SUPRA'),
(602022,60,5,40,3500,8,'Avera'),
(602023,70,8,50,0,12,'SUPRA'),
(602024,90,6,60,6000,18,'Avera'),
(603000,75,195,70,230,95,'LG'),
(603001,70,195,70,230,90,'LG'),
(603002,75,195,70,230,95,'LG'),
(603003,70,180,65,220,85,'LG'),
(603004,65,180,65,215,80,'LG'),
(603005,70,195,70,230,90,'LG'),
(603006,75,195,70,230,95,'LG'),
(603007,70,195,70,230,90,'LG'),
(603008,65,195,70,230,85,'LG'),
(603009,80,180,75,220,90,'Samsung'),
(603010,85,190,75,240,110,'Samsung'),
(603011,75,185,70,210,90,'Samsung'),
(603012,80,190,75,230,95,'Samsung'),
(603013,85,195,80,240,115,'Samsung'),
(603014,80,185,75,220,90,'Samsung'),
(603015,90,190,80,250,100,'Samsung'),
(603016,85,195,75,240,105,'Samsung'),
(603017,90,200,85,250,120,'Samsung'),
(603018,70,180,85,180,95,'Electrolux'),
(603019,80,190,85,220,100,'Electrolux'),
(603020,70,170,75,200,90,'Electrolux'),
(603021,75,185,80,210,105,'Electrolux'),
(603022,80,190,85,220,100,'Electrolux'),
(603023,65,175,70,190,80,'Electrolux'),
(603024,75,185,80,210,95,'Electrolux');
/*!40000 ALTER TABLE `Electrodomestico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Electronica`
--

DROP TABLE IF EXISTS `Electronica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Electronica` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `marca` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Electronica_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Producto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Electronica`
--

LOCK TABLES `Electronica` WRITE;
/*!40000 ALTER TABLE `Electronica` DISABLE KEYS */;
INSERT INTO `Electronica` VALUES
(101000,'Dell'),
(101001,'Apple'),
(101002,'HP'),
(101003,'Microsoft'),
(101004,'Lenovo'),
(101005,'Asus'),
(101006,'Acer'),
(101007,'Razer'),
(101008,'MSI'),
(101009,'Alienware'),
(101010,'Apple'),
(101011,'Dell'),
(101012,'HP'),
(101013,'Lenovo'),
(101014,'Asus'),
(101015,'Acer'),
(101016,'Razer'),
(101017,'Microsoft'),
(101018,'MSI'),
(101019,'Alienware'),
(101020,'Apple'),
(101021,'Dell'),
(101022,'HP'),
(101023,'Lenovo'),
(101024,'Asus'),
(102000,'Samsung'),
(102001,'LG'),
(102002,'Sony'),
(102003,'TCL'),
(102004,'Samsung'),
(102005,'Philips'),
(102006,'Vizio'),
(102007,'Sony'),
(102008,'Hisense'),
(102009,'LG'),
(102010,'Toshiba'),
(102011,'Sharp'),
(102012,'Samsung'),
(102013,'Samsung'),
(102014,'LG'),
(102015,'Sony'),
(102016,'Vizio'),
(102017,'Panasonic'),
(102018,'Hisense'),
(102019,'TCL'),
(102020,'Sony'),
(102021,'LG'),
(102022,'Philips'),
(102023,'TCL'),
(102024,'Sharp'),
(103000,'Samsung'),
(103001,'Apple'),
(103002,'Google'),
(103003,'OnePlus'),
(103004,'Xiaomi'),
(103005,'Samsung'),
(103006,'Apple'),
(103007,'Motorola'),
(103008,'Realme'),
(103009,'Oppo'),
(103010,'Vivo'),
(103011,'Honor'),
(103012,'Sony'),
(103013,'Asus'),
(103014,'Google'),
(103015,'Xiaomi'),
(103016,'Nokia'),
(103017,'Realme'),
(103018,'Honor'),
(103019,'Infinix'),
(103020,'Samsung'),
(103021,'Oppo'),
(103022,'Asus'),
(103023,'Lava'),
(103024,'Tecno');
/*!40000 ALTER TABLE `Electronica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Informacin_pago`
--

DROP TABLE IF EXISTS `Informacin_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Informacin_pago` (
  `ID_Cliente` bigint(20) unsigned NOT NULL DEFAULT 0,
  `numero_serie` int(11) NOT NULL DEFAULT 0,
  `fecha_caducidad` date NOT NULL,
  `nombres` varchar(30) NOT NULL DEFAULT '',
  `apellidos` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID_Cliente`,`numero_serie`),
  CONSTRAINT `Informacin_pago_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `Cliente` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Informacin_pago`
--

LOCK TABLES `Informacin_pago` WRITE;
/*!40000 ALTER TABLE `Informacin_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `Informacin_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Informacion`
--

DROP TABLE IF EXISTS `Informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Informacion` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `nombres` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `DNI` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Informacion_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Informacion`
--

LOCK TABLES `Informacion` WRITE;
/*!40000 ALTER TABLE `Informacion` DISABLE KEYS */;
INSERT INTO `Informacion` VALUES
(1,'prueba_nombre','prueba_apellido',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Informacion_compra`
--

DROP TABLE IF EXISTS `Informacion_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Informacion_compra` (
  `ID_Compra` int(11) NOT NULL DEFAULT 0,
  `ID_Producto` int(11) NOT NULL DEFAULT 0,
  `ID_Promocion` int(11) NOT NULL DEFAULT 0,
  `ID_Variante` int(11) NOT NULL DEFAULT 0,
  `monto` decimal(65,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`ID_Compra`,`ID_Producto`,`ID_Promocion`,`ID_Variante`),
  KEY `ID_Producto` (`ID_Producto`),
  KEY `ID_Promocion` (`ID_Promocion`),
  KEY `ID_Variante` (`ID_Variante`),
  CONSTRAINT `Informacion_compra_ibfk_1` FOREIGN KEY (`ID_Compra`) REFERENCES `Compra` (`ID`),
  CONSTRAINT `Informacion_compra_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `Producto` (`ID`),
  CONSTRAINT `Informacion_compra_ibfk_3` FOREIGN KEY (`ID_Promocion`) REFERENCES `Promocion` (`ID`),
  CONSTRAINT `Informacion_compra_ibfk_4` FOREIGN KEY (`ID_Variante`) REFERENCES `Variante` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Informacion_compra`
--

LOCK TABLES `Informacion_compra` WRITE;
/*!40000 ALTER TABLE `Informacion_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Informacion_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Juegos_mesa`
--

DROP TABLE IF EXISTS `Juegos_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Juegos_mesa` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `numero_jugadores` int(11) NOT NULL DEFAULT 0,
  `tematica` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Juegos_mesa_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Juguetes` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Juegos_mesa`
--

LOCK TABLES `Juegos_mesa` WRITE;
/*!40000 ALTER TABLE `Juegos_mesa` DISABLE KEYS */;
INSERT INTO `Juegos_mesa` VALUES
(502000,2,'Cartas'),
(502001,4,'Estrategia'),
(502002,4,'Palabras'),
(502003,4,'Estrategia'),
(502004,2,'Habilidad'),
(502005,2,'Estrategia'),
(502006,6,'Estrategia'),
(502007,6,'Misterio'),
(502008,4,'Físico'),
(502009,4,'Fichas'),
(502010,6,'Creativo'),
(502011,5,'Estrategia'),
(502012,4,'Cooperativo'),
(502013,5,'Estrategia'),
(502014,8,'Palabras'),
(502015,6,'Cartas'),
(502016,5,'Cartas'),
(502017,8,'Humor'),
(502018,4,'Simulación'),
(502019,7,'Cartas'),
(502020,6,'Palabras'),
(502021,6,'Dibujo'),
(502022,4,'Palabras'),
(502023,7,'Estrategia'),
(502024,6,'Cooperativo');
/*!40000 ALTER TABLE `Juegos_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Juguetes`
--

DROP TABLE IF EXISTS `Juguetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Juguetes` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `edad_recomendada` int(11) NOT NULL DEFAULT 0,
  `marca` varchar(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Juguetes_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Producto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Juguetes`
--

LOCK TABLES `Juguetes` WRITE;
/*!40000 ALTER TABLE `Juguetes` DISABLE KEYS */;
INSERT INTO `Juguetes` VALUES
(501000,6,'LEGO'),
(501001,8,'LEGO'),
(501002,10,'LEGO'),
(501003,7,'LEGO'),
(501004,6,'LEGO'),
(501005,8,'LEGO'),
(501006,10,'LEGO'),
(501007,12,'K\'NEX'),
(501008,10,'K NEX'),
(501009,8,'Mega Bloks'),
(501010,12,'Clásico'),
(501011,6,'Clásico'),
(501012,10,'Clásico'),
(501013,12,'Clásico'),
(501014,14,'LEGO'),
(501015,6,'LEGO'),
(501016,8,'LEGO'),
(501017,6,'Clásico'),
(501018,8,'LEGO'),
(501019,4,'Mega Bloks'),
(501020,3,'LEGO'),
(501021,10,'LEGO'),
(501022,12,'LEGO'),
(501023,4,'Clásico'),
(501024,5,'LEGO'),
(502000,7,'Mattel'),
(502001,8,'Hasbro'),
(502002,10,'Hasbro'),
(502003,12,'Catan'),
(502004,6,'Hasbro'),
(502005,12,'Clásico'),
(502006,10,'Hasbro'),
(502007,8,'Hasbro'),
(502008,6,'Hasbro'),
(502009,8,'Clásico'),
(502010,8,'Asmodee'),
(502011,10,'Hans im Glück'),
(502012,12,'Z-Man'),
(502013,8,'Days of Wonder'),
(502014,10,'Czech Games'),
(502015,18,'Clásico'),
(502016,7,'Exploding Kittens'),
(502017,18,'CAH'),
(502018,8,'Hasbro'),
(502019,8,'dV Giochi'),
(502020,10,'Hasbro'),
(502021,8,'Mattel'),
(502022,10,'Hasbro'),
(502023,12,'Repos Production'),
(502024,14,'CMON'),
(503000,6,'Hasbro'),
(503001,6,'Marvel'),
(503002,5,'Disney'),
(503003,8,'Marvel'),
(503004,5,'Mattel'),
(503005,7,'DC'),
(503006,7,'DC'),
(503007,5,'Disney'),
(503008,6,'Marvel'),
(503009,7,'Marvel'),
(503010,5,'Disney'),
(503011,5,'Disney'),
(503012,6,'Pixar'),
(503013,6,'Pixar'),
(503014,5,'Disney'),
(503015,7,'DC'),
(503016,7,'DC'),
(503017,8,'Marvel'),
(503018,5,'Disney'),
(503019,8,'Marvel'),
(503020,5,'Disney'),
(503021,8,'Marvel'),
(503022,7,'DC'),
(503023,5,'Disney'),
(503024,7,'Marvel');
/*!40000 ALTER TABLE `Juguetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lavadora`
--

DROP TABLE IF EXISTS `Lavadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lavadora` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `capacidad_carga` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Lavadora_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Electrodomestico` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lavadora`
--

LOCK TABLES `Lavadora` WRITE;
/*!40000 ALTER TABLE `Lavadora` DISABLE KEYS */;
INSERT INTO `Lavadora` VALUES
(601000,10,'automatica'),
(601001,26,'automatica'),
(601002,12,'automatica'),
(601003,20,'automatica'),
(601004,15,'automatica'),
(601005,9,'automatica'),
(601006,14,'automatica'),
(601007,11,'automatica'),
(601008,12,'automatica'),
(601009,22,'automatica'),
(601010,15,'automatica'),
(601011,10,'automatica'),
(601012,20,'automatica'),
(601013,17,'automatica'),
(601014,11,'automatica'),
(601015,14,'automatica'),
(601016,9,'automatica'),
(601017,17,'automatica'),
(601018,11,'automatica'),
(601019,9,'automatica'),
(601020,15,'automatica'),
(601021,11,'automatica'),
(601022,18,'automatica'),
(601023,15,'automatica'),
(601024,15,'automatica');
/*!40000 ALTER TABLE `Lavadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maquillaje`
--

DROP TABLE IF EXISTS `Maquillaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Maquillaje` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `peso` int(11) NOT NULL DEFAULT 0,
  `ingredientes` text NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Maquillaje_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Belleza_Cuidado` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maquillaje`
--

LOCK TABLES `Maquillaje` WRITE;
/*!40000 ALTER TABLE `Maquillaje` DISABLE KEYS */;
INSERT INTO `Maquillaje` VALUES
(403000,90,'Manteca de karité acondicionadora y la vitamina E.'),
(403001,100,'Polvo micronizado proporcionando un acabado cómodo y transpirable '),
(403002,80,'Ricinus Communis y aceite de sesamo.'),
(403003,50,'Copernicia Cerifera y Candelilla.'),
(403004,70,'Aceite de sesamo y polvos varios.'),
(403005,70,'Polvos Sueltos Prisme Libre.'),
(403006,5,'Lanolina y aceite de ricino'),
(403007,100,'Antioxidantes y partículas microscópicas formadoras.'),
(403008,60,'Octyldodecanol, Ricinus Communis y Paraffin.'),
(403009,11,'Ácido hialurónico, Niacinamida y Vitamina C.'),
(403010,90,'Manteca de karité y coco.'),
(403011,5,'Lanolina, aceite de ricino y ceras.'),
(403012,5,'Ácido hialurónico y escualeno.'),
(403013,30,'Ingredientes de origen natural.'),
(403014,60,'Isododecane.'),
(403015,80,'Ingredientes varios.'),
(403016,30,'Ingredientes de origen natural.'),
(403017,60,'Agua, silica, entre otros.'),
(403018,200,'Ethylhexyl Palmitate, Carthamus Tinctorius y aceite de sesamo.'),
(403019,80,'Libre de Parabenos.'),
(403020,40,'Paraffin y glicerina.'),
(403021,10,'Paraffin y glicerina.'),
(403022,60,'Polvos varios y vitaminas.'),
(403023,30,'Vitaminas y aceites varios.'),
(403024,60,'Vitaminas y aceites varios.');
/*!40000 ALTER TABLE `Maquillaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mesa`
--

DROP TABLE IF EXISTS `Mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mesa` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Mesa_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Mueble` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mesa`
--

LOCK TABLES `Mesa` WRITE;
/*!40000 ALTER TABLE `Mesa` DISABLE KEYS */;
INSERT INTO `Mesa` VALUES
(302000,'comedor'),
(302001,'escritorio'),
(302002,'oficina'),
(302003,'auxiliar'),
(302004,'centro'),
(302005,'camping'),
(302006,'comedor'),
(302007,'comedor'),
(302008,'noche'),
(302009,'bar'),
(302010,'auxiliar'),
(302011,'trabajo'),
(302012,'centro'),
(302013,'comedor'),
(302014,'gamer'),
(302015,'comedor'),
(302016,'auxiliar'),
(302017,'picnic'),
(302018,'centro'),
(302019,'infantil'),
(302020,'escritorio'),
(302021,'trabajo'),
(302022,'auxiliar'),
(302023,'jardín'),
(302024,'comedor');
/*!40000 ALTER TABLE `Mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Moda`
--

DROP TABLE IF EXISTS `Moda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Moda` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `material` varchar(20) NOT NULL DEFAULT '',
  `marca` varchar(20) NOT NULL DEFAULT '',
  `tipo` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Moda_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Producto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Moda`
--

LOCK TABLES `Moda` WRITE;
/*!40000 ALTER TABLE `Moda` DISABLE KEYS */;
INSERT INTO `Moda` VALUES
(201000,'poliéster','Poliamida','polo'),
(201001,'algodón','Zara','pantalón'),
(201002,'poliéster','Adidas','polera'),
(201003,'poliester','Zara','camisa'),
(201004,'cuero','Calvin Klein','chaqueta'),
(201005,'poliéster','Mango','falda'),
(201006,'lino','ZARA','camisa'),
(201007,'rayón','LEONISA','blusa'),
(201008,'algodón','Gap','pantalón'),
(201009,'lana','Burberry','abrigo'),
(201010,'denim','Levis','pantalón'),
(201011,'seda','Zara','blusa'),
(201012,'spandex','Under Armour','leggings'),
(201013,'algodón','Champion','sudadera'),
(201014,'algodón','Banana Republic','falda'),
(201015,'denim','H&M','short'),
(201016,'algodón','H&M','falda'),
(201017,'algodón','H&M','pantalón'),
(201018,'denim','Wrangler','camisa'),
(201019,'algodón','Supreme','camiseta'),
(201020,'denim','Wrangler','jeans'),
(201021,'nylon','The North Face','abrigo'),
(201022,'algodón','H&M','polera'),
(201023,'spandex','Nike','top'),
(201024,'algodon','Tommy Hilfiger','blazer'),
(202000,'poliester','crepier','bolso'),
(202001,'cuero','Gucci','bolso'),
(202002,'metal','Ray-Ban','gafas'),
(202003,'acero inoxidable','Seiko','reloj'),
(202004,'nylon','Michael Kors','bolso'),
(202005,'poliéster','Adidas','bolso'),
(202006,'cuero sintético','Coach','bolso'),
(202007,'cuero','Fossil','bolso'),
(202008,'satén','Chanel','bolso'),
(202009,'lona','Levis','bolso'),
(202010,'poliéster','Clio','bolso'),
(202011,'acero inoxidable','Fossil','reloj'),
(202012,'oro','Maserati','reloj'),
(202013,'bisel hueco','veanxin','reloj'),
(202014,'acero inoxidable','Cressi','reloj'),
(202015,'silicona','Apple','reloj'),
(202016,'acero inoxidable','Megalith','reloj'),
(202017,'plástico','Ray-Ban','gafas'),
(202018,'acetato','glasses','gafas'),
(202019,'plástico','marvelous','gafas'),
(202020,'acetato','Eye Wear','gafas'),
(202021,'steel','Vogue','gafas'),
(202022,'plástico','Esportivo','gafas'),
(202023,'aluminio','Kingseven','gafas'),
(202024,'acetato','Hawkers','gafas'),
(202025,'plastico','Guess','bolso'),
(203000,'tela','Adidas','zapatilla'),
(203001,'Picadilly','Quero Shoes','zapatilla'),
(203002,'gel-Sonoma','ASICS','zapatilla'),
(203003,'gamuza','Adidas','zapatilla'),
(203004,'caucho','Altra','zapatilla'),
(203005,'cuero','Dauss','zapato'),
(203006,'cuero sintético','Bata','zapato'),
(203007,'cuero sintetico','Steve Madden','zapato'),
(203008,'cuero','Viale','zapato'),
(203009,'cuero','Johnston & Murphy','zapato'),
(203010,'cuero','Mireille','sandalia'),
(203011,'cuero natural','ECCO','sandalia'),
(203012,'cuero','Emmanuela','sandalia'),
(203013,'plástico','Havaianas','sandalia'),
(203014,'cuero','Gotta','sandalia'),
(203015,'cuero','nebula','bota'),
(203016,'cuero','NortiVB','bota'),
(203017,'cuero','Caterpilla','botín'),
(203018,'cuero','La Sportiva','bota'),
(203019,'lona','Miveni','tacón'),
(203020,'cabra sintetico','50fifty','tacón'),
(203021,'plastico','Caprice','tacón'),
(203022,'piel de napa','MimaO','tacón'),
(203023,'cuero','Yosmina','tacón'),
(203024,'cuero','Allen Edmonds','zapato');
/*!40000 ALTER TABLE `Moda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Modifica`
--

DROP TABLE IF EXISTS `Modifica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Modifica` (
  `ID_Administrador` bigint(20) unsigned NOT NULL DEFAULT 0,
  `ID_Producto` int(11) NOT NULL DEFAULT 0,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`ID_Administrador`,`ID_Producto`),
  KEY `ID_Producto` (`ID_Producto`),
  CONSTRAINT `Modifica_ibfk_1` FOREIGN KEY (`ID_Administrador`) REFERENCES `Administrador_productos` (`ID`),
  CONSTRAINT `Modifica_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `Producto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Modifica`
--

LOCK TABLES `Modifica` WRITE;
/*!40000 ALTER TABLE `Modifica` DISABLE KEYS */;
/*!40000 ALTER TABLE `Modifica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mueble`
--

DROP TABLE IF EXISTS `Mueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mueble` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `largo` int(11) NOT NULL DEFAULT 0,
  `alto` int(11) NOT NULL DEFAULT 0,
  `ancho` int(11) NOT NULL DEFAULT 0,
  `peso` int(11) NOT NULL DEFAULT 0,
  `material` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Mueble_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Producto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mueble`
--

LOCK TABLES `Mueble` WRITE;
/*!40000 ALTER TABLE `Mueble` DISABLE KEYS */;
INSERT INTO `Mueble` VALUES
(301000,300,85,100,100,'tela'),
(301001,200,80,90,70,'microfibra'),
(301002,250,75,100,150,'cuero'),
(301003,280,90,100,120,'tela'),
(301004,150,80,85,50,'tela'),
(301005,300,100,110,180,'tela'),
(301006,100,60,70,20,'poliester'),
(301007,200,75,85,70,'ratán'),
(301008,180,80,90,75,'microfibra'),
(301009,220,85,90,120,'cuero'),
(301010,160,75,85,60,'tela'),
(301011,400,85,110,200,'tela'),
(301012,160,85,80,60,'tela'),
(301013,280,90,100,180,'cuero'),
(301014,250,80,85,100,'tela'),
(301015,200,85,90,90,'tela'),
(301016,300,85,100,150,'tela'),
(301017,220,90,100,140,'microfibra'),
(301018,350,85,120,180,'tela'),
(301019,180,90,100,90,'tela'),
(301020,190,75,90,70,'tela'),
(301021,280,85,100,170,'tela'),
(301022,120,60,70,30,'tela'),
(301023,400,85,120,250,'cuero'),
(301024,300,85,100,140,'tela'),
(302000,180,75,90,30,'madera'),
(302001,150,75,60,20,'mdf'),
(302002,300,75,120,100,'madera'),
(302003,50,50,50,10,'metal'),
(302004,120,45,60,25,'madera'),
(302005,120,70,60,8,'plástico'),
(302006,200,75,100,40,'madera'),
(302007,180,75,90,50,'vidrio'),
(302008,50,50,40,5,'madera'),
(302009,60,110,60,15,'madera'),
(302010,120,70,60,6,'plástico'),
(302011,160,90,80,50,'acero'),
(302012,100,40,60,15,'madera'),
(302013,250,75,100,50,'madera'),
(302014,140,75,60,25,'plástico'),
(302015,180,75,90,80,'mármol'),
(302016,100,70,50,7,'plástico'),
(302017,180,75,150,40,'madera'),
(302018,120,45,60,20,'madera'),
(302019,80,50,60,5,'plástico'),
(302020,200,75,90,50,'mdf'),
(302021,120,75,80,30,'madera'),
(302022,100,75,50,12,'metal'),
(302023,150,75,90,12,'plástico'),
(302024,180,75,100,40,'madera'),
(303000,45,90,45,6,'metal'),
(303001,60,120,60,15,'plástico'),
(303002,45,85,45,3,'plástico'),
(303003,65,130,65,18,'cuero'),
(303004,50,95,50,10,'madera'),
(303005,50,100,45,8,'madera'),
(303006,70,130,70,20,'cuero'),
(303007,35,60,35,2,'plástico'),
(303008,40,110,40,5,'metal'),
(303009,45,85,45,4,'plástico'),
(303010,45,100,50,7,'madera'),
(303011,55,100,50,10,'plástico'),
(303012,70,140,70,25,'plástico'),
(303013,50,90,45,6,'metal'),
(303014,45,85,45,4,'metal'),
(303015,65,135,65,18,'cuero'),
(303016,50,100,50,8,'madera'),
(303017,40,110,40,7,'metal'),
(303018,55,110,55,15,'cuero'),
(303019,50,90,50,10,'plástico'),
(303020,45,90,45,6,'ratán'),
(303021,45,90,45,5,'metal'),
(303022,50,90,50,7,'madera'),
(303023,45,90,45,6,'madera'),
(303024,55,120,55,12,'tela');
/*!40000 ALTER TABLE `Mueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Muñecos`
--

DROP TABLE IF EXISTS `Muñecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Muñecos` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `tamaño` int(11) NOT NULL DEFAULT 0,
  `personaje` varchar(20) NOT NULL DEFAULT '',
  `material` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Muñecos_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Juguetes` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Muñecos`
--

LOCK TABLES `Muñecos` WRITE;
/*!40000 ALTER TABLE `Muñecos` DISABLE KEYS */;
INSERT INTO `Muñecos` VALUES
(503000,30,'Spider-Man','Plástico'),
(503001,35,'Iron Man','Metal'),
(503002,25,'Elsa','Plástico'),
(503003,40,'Hulk','Plástico'),
(503004,30,'Barbie','Plástico'),
(503005,35,'Superman','Plástico'),
(503006,35,'Batman','Plástico'),
(503007,25,'Cenicienta','Tela'),
(503008,35,'Capitán América','Plástico'),
(503009,38,'Thor','Plástico'),
(503010,30,'Ariel','Plástico'),
(503011,30,'Bella','Tela'),
(503012,35,'Buzz Lightyear','Plástico'),
(503013,35,'Woody','Tela'),
(503014,30,'Rapunzel','Plástico'),
(503015,35,'Flash','Plástico'),
(503016,40,'Aquaman','Plástico'),
(503017,35,'Wolverine','Metal'),
(503018,25,'Anna','Tela'),
(503019,35,'Doctor Strange','Plástico'),
(503020,25,'Blanca Nieves','Tela'),
(503021,35,'Deadpool','Plástico'),
(503022,35,'Green Lantern','Plástico'),
(503023,30,'Moana','Tela'),
(503024,35,'Black Panther','Plástico');
/*!40000 ALTER TABLE `Muñecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Perfume`
--

DROP TABLE IF EXISTS `Perfume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Perfume` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `genero` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Perfume_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Belleza_Cuidado` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Perfume`
--

LOCK TABLES `Perfume` WRITE;
/*!40000 ALTER TABLE `Perfume` DISABLE KEYS */;
INSERT INTO `Perfume` VALUES
(401000,100,'F'),
(401001,90,'F'),
(401002,100,'F'),
(401003,50,'F'),
(401004,30,'F'),
(401005,90,'F'),
(401006,90,'F'),
(401007,50,'F'),
(401008,30,'F'),
(401009,30,'F'),
(401010,30,'M'),
(401011,110,'M'),
(401012,75,'M'),
(401013,200,'M'),
(401014,200,'M'),
(401015,200,'M'),
(401016,100,'M'),
(401017,200,'M'),
(401018,100,'M'),
(401019,200,'M'),
(401020,100,'M'),
(401021,150,'M'),
(401022,100,'M'),
(401023,100,'M'),
(401024,100,'M');
/*!40000 ALTER TABLE `Perfume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Producto` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `stock` int(11) NOT NULL DEFAULT 0,
  `precio` decimal(65,2) NOT NULL DEFAULT 0.00,
  `fecha_ingreso` date NOT NULL,
  `categoria` varchar(45) NOT NULL DEFAULT '',
  `descripcion` text NOT NULL DEFAULT '',
  `ID_Administrador` bigint(20) unsigned DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ID_Administrador` (`ID_Administrador`),
  CONSTRAINT `Producto_ibfk_1` FOREIGN KEY (`ID_Administrador`) REFERENCES `Administrador_productos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES
(101000,'Dell XPS 13',50,3799.96,'2024-11-10','computadora','Ultrabook compacta y potente para profesionales.',1),
(101001,'Apple MacBook Air M2',60,4749.96,'2024-11-05','computadora','Portátil delgada con chip M2 para alto rendimiento.',1),
(101002,'HP Spectre x360',40,4179.96,'2024-11-01','computadora','Convertible con pantalla táctil y diseño premium.',1),
(101003,'Microsoft Surface Laptop 5',35,4559.96,'2024-10-25','computadora','Portátil elegante y eficiente para trabajo y estudio.',1),
(101004,'Lenovo ThinkPad X1 Carbon',45,4939.96,'2024-10-20','computadora','Laptop robusta y ligera para profesionales.',1),
(101005,'Asus ROG Zephyrus G14',30,5699.96,'2024-10-15','computadora','Portátil gamer ultraligera con alto rendimiento.',1),
(101006,'Acer Predator Helios 300',25,5319.96,'2024-10-10','computadora','Laptop gamer con rendimiento excepcional.',1),
(101007,'Razer Blade 15',20,7599.96,'2024-10-05','computadora','Laptop gamer premium con diseño elegante.',1),
(101008,'MSI Stealth 15M',30,4939.96,'2024-10-01','computadora','Portátil gamer ligera con gran desempeño.',1),
(101009,'Alienware m15 R7',20,6839.96,'2024-09-20','computadora','Laptop gamer de alta gama.',1),
(101010,'Apple MacBook Pro 16 M3',50,9499.96,'2024-09-15','computadora','Laptop profesional con pantalla Retina.',1),
(101011,'Dell Inspiron 15',70,2849.96,'2024-09-10','computadora','Laptop versátil para uso diario.',1),
(101012,'HP Envy 13',60,3799.96,'2024-09-05','computadora','Portátil ligera y potente.',1),
(101013,'Lenovo Legion 5 Pro',35,6079.96,'2024-09-01','computadora','Portátil gamer con pantalla de alta resolución.',1),
(101014,'Asus TUF Dash F15',40,4559.96,'2024-08-25','computadora','Laptop gamer asequible y duradera.',1),
(101015,'Acer Aspire 5',80,2279.96,'2024-08-20','computadora','Laptop económica para uso diario.',1),
(101016,'Razer Book 13',25,5319.96,'2024-08-15','computadora','Laptop premium para productividad.',1),
(101017,'Microsoft Surface Pro 9',50,3799.96,'2024-08-10','computadora','Tablet convertible para trabajo y estudio.',1),
(101018,'MSI Katana GF66',30,4939.96,'2024-08-05','computadora','Laptop gamer potente y económica.',1),
(101019,'Alienware x14',15,7599.96,'2024-08-01','computadora','Laptop gamer compacta de alto rendimiento.',1),
(101020,'Apple MacBook Pro 14 M3',40,7599.96,'2024-07-25','computadora','Laptop profesional compacta.',1),
(101021,'Dell Latitude 5420',60,4939.96,'2024-07-20','computadora','Laptop empresarial confiable.',1),
(101022,'HP Pavilion 15',75,2659.96,'2024-07-15','computadora','Portátil versátil para uso personal.',1),
(101023,'Lenovo IdeaPad 3',90,2089.96,'2024-07-10','computadora','Laptop económica con gran desempeño.',1),
(101024,'Asus VivoBook S15',50,3229.96,'2024-07-05','computadora','Portátil delgada y moderna.',1),
(102000,'Samsung QLED 55\"',45,6079.96,'2024-11-15','televisor','Televisor QLED de 55\" con resolución 4K y tecnología HDR+',1),
(102001,'LG OLED 65\"',30,9499.96,'2024-11-10','televisor','Televisor OLED de 65\" con colores vibrantes y negros profundos.',1),
(102002,'Sony Bravia XR 50\"',50,4939.96,'2024-11-05','televisor','Televisor LED de 50\" con resolución 4K y procesador Cognitive Processor XR.',1),
(102003,'TCL 4K 55\"',70,2659.96,'2024-11-01','televisor','Televisor 4K de 55\" con sistema de sonido Dolby Audio.',1),
(102004,'Samsung Crystal UHD 43\"',60,1899.96,'2024-10-25','televisor','Televisor UHD de 43\" con resolución Full HD.',1),
(102005,'Philips Ambilight 55\"',40,5319.96,'2024-10-20','televisor','Televisor 55\" Ambilight con tecnología LED y resolución 4K.',1),
(102006,'Vizio 4K 65\"',35,4939.96,'2024-10-15','televisor','Televisor 4K de 65\" con colores vivos y gran rendimiento.',1),
(102007,'Sony OLED 55\"',25,7599.96,'2024-10-10','televisor','Televisor OLED de 55\" con precisión de color y diseño delgado.',1),
(102008,'Hisense 4K 75\"',50,5699.96,'2024-10-05','televisor','Televisor 4K de 75\" con resolución ultra alta y buen rendimiento de imagen.',1),
(102009,'LG NanoCell 60\"',60,4559.96,'2024-09-30','televisor','Televisor 60\" con tecnología NanoCell para colores más vivos y detalles.',1),
(102010,'Toshiba Fire TV 43\"',70,1519.96,'2024-09-25','televisor','Televisor 43\" con Fire TV integrado para acceso a aplicaciones.',1),
(102011,'Sharp 4K 55\"',50,3419.96,'2024-09-20','televisor','Televisor 4K de 55\" con calidad de imagen avanzada y diseño elegante.',1),
(102012,'Samsung QLED 75\"',20,8359.96,'2024-09-15','televisor','Televisor QLED de 75\" con resolución 4K y sonido Dolby Atmos.',1),
(102013,'Samsung Crystal UHD 65\"',45,3039.96,'2024-09-10','televisor','Televisor UHD de 65\" con brillo excepcional y contraste mejorado.',1),
(102014,'LG UHD 50\"',60,2279.96,'2024-09-05','televisor','Televisor UHD de 50\" con resolución 4K y soporte HDR10.',1),
(102015,'Sony LED 43\"',65,1899.96,'2024-09-01','televisor','Televisor LED de 43\" con resolución Full HD y Motionflow XR.',1),
(102016,'Vizio 4K 50\"',55,2849.96,'2024-08-25','televisor','Televisor 4K de 50\" con excelente calidad de sonido y alta resolución.',1),
(102017,'Panasonic 4K 55\"',40,3419.96,'2024-08-20','televisor','Televisor 4K de 55\" con tecnología HDR y excelente relación calidad-precio.',1),
(102018,'Hisense Roku TV 65\"',50,3799.96,'2024-08-15','televisor','Televisor 65\" con Roku TV integrado y acceso a múltiples aplicaciones.',1),
(102019,'TCL 55\" 4K',30,3039.96,'2024-08-10','televisor','Televisor 55\" con calidad de imagen 4K y tecnología HDR Pro.',1),
(102020,'Sony Bravia OLED 65\"',25,13299.96,'2024-08-05','televisor','Televisor OLED de 65\" con pantalla 4K HDR y diseño ultra delgado.',1),
(102021,'LG OLED 48\"',40,6079.96,'2024-08-01','televisor','Televisor OLED de 48\" con calidad de imagen excepcional y negros profundos.',1),
(102022,'Philips LED 32\"',60,1329.96,'2024-07-25','televisor','Televisor LED de 32\" con resolución HD y buena calidad de imagen.',1),
(102023,'TCL 4K 65\"',50,3419.96,'2024-07-20','televisor','Televisor 4K de 65\" con buena calidad de sonido y conexión fácil.',1),
(102024,'Sharp 4K 65\"',45,3799.96,'2024-07-15','televisor','Televisor 65\" con calidad de imagen 4K y sistema de sonido envolvente.',1),
(103000,'Samsung Galaxy S23',50,3239.96,'2024-11-15','smartphone','Smartphone premium con cámara avanzada y alto rendimiento.',1),
(103001,'Apple iPhone 15',70,3599.96,'2024-11-10','smartphone','Smartphone de alto rendimiento con chip A17 Bionic y cámara de 48MP.',1),
(103002,'Google Pixel 8',60,2879.96,'2024-11-05','smartphone','Smartphone con cámara de inteligencia artificial y software optimizado.',1),
(103003,'OnePlus 11',40,3239.96,'2024-11-01','smartphone','Smartphone con pantalla Fluid AMOLED y carga rápida de 100W.',1),
(103004,'Xiaomi 13 Pro',55,3959.96,'2024-10-25','smartphone','Smartphone con cámara Leica y pantalla curva.',1),
(103005,'Samsung Galaxy Z Fold 5',30,6479.96,'2024-10-20','smartphone','Smartphone plegable con pantalla grande y gran rendimiento.',1),
(103006,'Apple iPhone 14 Pro Max',50,4679.96,'2024-10-15','smartphone','Smartphone con pantalla ProMotion y cámara de 48MP.',1),
(103007,'Motorola Edge 40',60,2879.96,'2024-10-10','smartphone','Smartphone con diseño elegante y pantalla curva.',1),
(103008,'Realme GT 2 Pro',45,2699.96,'2024-10-05','smartphone','Smartphone con rendimiento potente y carga ultra rápida.',1),
(103009,'Oppo Find X5 Pro',35,3599.96,'2024-09-30','smartphone','Smartphone con excelente cámara y carga de 80W.',1),
(103010,'Vivo V27 Pro',40,2879.96,'2024-09-25','smartphone','Smartphone con cámara de 50MP y gran rendimiento para el día a día.',1),
(103011,'Honor Magic 5 Pro',20,3959.96,'2024-09-20','smartphone','Smartphone con cámara avanzada y diseño premium.',1),
(103012,'Sony Xperia 1 IV',30,4679.96,'2024-09-15','smartphone','Smartphone para creadores de contenido con pantalla 4K.',1),
(103013,'Asus ROG Phone 7',25,4679.96,'2024-09-10','smartphone','Smartphone gamer con gran rendimiento y sistema de refrigeración.',1),
(103014,'Google Pixel 7a',70,1799.96,'2024-09-05','smartphone','Smartphone económico con cámara de 12.2MP y Google Tensor.',1),
(103015,'Xiaomi Redmi Note 12',80,1079.96,'2024-09-01','smartphone','Smartphone económico con excelente batería y rendimiento.',1),
(103016,'Nokia X30 5G',60,2519.96,'2024-08-25','smartphone','Smartphone ecológico con cámaras de alta resolución y 5G.',1),
(103017,'Realme 11 Pro+',45,2339.96,'2024-08-20','smartphone','Smartphone con cámara de 200MP y pantalla curva.',1),
(103018,'Honor 90',55,2879.96,'2024-08-15','smartphone','Smartphone con cámara de 200MP y diseño premium.',1),
(103019,'Infinix Zero 30',30,1439.96,'2024-08-10','smartphone','Smartphone económico con cámaras de alta resolución y buena batería.',1),
(103020,'Samsung Galaxy A54',40,1799.96,'2024-08-05','smartphone','Smartphone con buen rendimiento y cámara de 50MP.',1),
(103021,'Oppo Reno 9 Pro+',60,2519.96,'2024-08-01','smartphone','Smartphone con carga rápida de 65W y cámara de 50MP.',1),
(103022,'Asus Zenfone 9',50,2699.96,'2024-11-25','smartphone','Smartphone compacto con pantalla AMOLED y gran rendimiento.',1),
(103023,'Lava Agni 2',45,1079.96,'2024-11-20','smartphone','Smartphone de bajo costo con pantalla AMOLED y buen rendimiento.',1),
(103024,'Tecno Phantom X2',40,2879.96,'2024-11-15','smartphone','Smartphone con diseño elegante y cámara de 50MP.',1),
(201000,'Polo Deportivo',50,99.99,'2023-04-15','ropa','Diseñado para todo tipo de deporte',1),
(201001,'Pantalón Chino',30,89.50,'2023-06-01','ropa','Pantalón straight fit confeccionado en tejido',1),
(201002,'Polera Deportiva',25,69.99,'2023-07-15','ropa','Lo mejor en Ropa Deportiva en la marca Adidas',1),
(201003,'Camisa Estructurada',20,129.99,'2023-09-10','ropa','Camisa formal de manga larga',1),
(201004,'Casaca de Cuero',12,599.50,'2024-02-08','ropa','Chaqueta de cuero para invierno',1),
(201005,'Falda Plisada',18,129.99,'2023-05-14','ropa','Te hará lucir un estilo casual y elegante',1),
(201006,'Camisa de Lino',14,299.99,'2023-12-10','ropa','Cuello solapa y manga larga acabada en puño con botón',1),
(201007,'Blusa Estampada',20,89.99,'2024-03-11','ropa','Blusa estampada con flores de manga larga',1),
(201008,'Pantalón Jogger',30,129.50,'2023-09-25','ropa','Pantalón jogger con diseño cómodo',1),
(201009,'Abrigo Largo',8,799.99,'2023-10-20','ropa','Abrigo largo de lana para invierno',1),
(201010,'Pantalón de Mezclilla',18,149.99,'2023-04-18','ropa','Pantalón de mezclilla con corte recto',1),
(201011,'Blusa de Encaje',20,99.50,'2023-11-17','ropa','Blusa de encaje con detalles delicados',1),
(201012,'Leggings Deportivos',40,99.99,'2023-12-01','ropa','Leggings deportivos ajustados',1),
(201013,'Sudadera Oversize',28,149.99,'2024-03-15','ropa','Sudadera oversize cómoda',1),
(201014,'Falda Lápiz',10,159.99,'2023-05-30','ropa','Falda lápiz para oficina',1),
(201015,'Short denim',18,99.99,'2023-04-12','ropa','Un short con un estilo casual',1),
(201016,'Falda Midi',12,129.99,'2024-01-18','ropa','Falda midi con pliegues',1),
(201017,'Pantalón Cargo',20,139.99,'2023-08-08','ropa','Pantalón cargo con múltiples bolsillos',1),
(201018,'Camisa Vaquera',16,149.99,'2023-11-01','ropa','Camisa vaquera con bolsillos',1),
(201019,'Camiseta Supreme',35,79.99,'2023-08-09','ropa','Camiseta con diseño exclusivo y negro',1),
(201020,'Jeans Skinny',20,199.99,'2023-07-01','ropa','Jeans skinny ajustados',1),
(201021,'Chaqueta Impermeable',15,349.99,'2024-03-10','ropa',' ideal contra el viento y lluvia',1),
(201022,'Casaca Polera',25,49.99,'2023-03-12','ropa','Para uso diario con cierre Loose',1),
(201023,'Top Deportivo',25,79.99,'2023-12-05','ropa','Top deportivo ajustado con soporte',1),
(201024,'Americana en TercioPelo',12,499.99,'2023-11-03','ropa','un clásico elegante y moderno',1),
(202000,'Bolso Satchel',20,209.40,'2020-05-12','accesorios','BOLSO SATCHEL CREPIER MUJER LINA',1),
(202001,'Bolso Tote',15,149.99,'2023-08-14','accesorios','Bolso tote elegante para mujer',1),
(202002,'Gafas Aviador',30,89.50,'2024-02-19','accesorios','Gafas de sol estilo aviador',1),
(202003,'Reloj Analógico',20,250.00,'2023-05-22','accesorios','Reloj analógico clásico para hombre',1),
(202004,'Bolso Crossbody',25,99.99,'2022-11-01','accesorios','Bolso cruzado para mujer',1),
(202005,'Bolso Mochila',10,129.99,'2023-07-30','accesorios','Bolso estilo mochila para mujer',1),
(202006,'Bolso Satchel',12,199.99,'2024-06-10','accesorios','Bolso Satchel moderno',1),
(202007,'Bolso de Hombro',20,169.99,'2023-12-01','accesorios','Bolso de hombro espacioso',1),
(202008,'Bolso Clutch',8,249.99,'2023-06-25','accesorios','Bolso pequeño de noche',1),
(202009,'Bolso Bandolera',18,159.99,'2022-05-16','accesorios','Bolso bandolera casual',1),
(202010,'Bolso de Viaje',10,259.99,'2023-07-19','accesorios','Bolso de viaje espacioso',1),
(202011,'Reloj Minimalista',28,199.99,'2023-01-18','accesorios','Reloj de diseño minimalista',1),
(202012,'Reloj Automático',6,699.00,'2024-03-14','accesorios','Reloj automático de alta gama',1),
(202013,'Reloj Esqueleto',5,450.00,'2023-10-07','accesorios','Reloj con diseño de esfera tallada',1),
(202014,'Reloj de Buceo',10,550.00,'2022-08-09','accesorios','Resistente al agua',1),
(202015,'Reloj Smartwatch',35,349.00,'2024-01-05','accesorios','Reloj inteligente con GPS',1),
(202016,'Reloj Cronógrafo',14,299.50,'2023-04-12','accesorios','Resistente al agua',1),
(202017,'Gafas Wayfarer',18,119.99,'2024-03-08','accesorios','Gafas de sol Gris Unisex',1),
(202018,'Gafas Clip-On',25,69.99,'2023-03-17','accesorios','Clip-on UV 400 negro',1),
(202019,'Gafas Cat Eye',18,69.99,'2024-04-10','accesorios','Gafas de sol Mujer',1),
(202020,'Gafas Vintage',20,79.99,'2022-09-12','accesorios','Doble Luna Redonda',1),
(202021,'Gafas Rectangulares',16,79.99,'2023-09-21','accesorios',' Montura metálica dorada',1),
(202022,'Gafas Deportivas',22,75.50,'2022-12-11','accesorios','Ciclismo, montura negra',1),
(202023,'Gafas Polarizadas',20,89.99,'2023-11-30','accesorios','marco y varilla gris',1),
(202024,'Gafas de sol carey grey',30,99.99,'2022-04-15','accesorios','proteccion 100% UV',1),
(202025,'Bolso de Mano',12,179.50,'2023-02-28','accesorios','diseñador de lujo',1),
(203000,'Zapatilla Running',25,299.99,'2023-05-01','calsado','Hombre Negro Runfalcon 5',1),
(203001,'Zapatilla Slip-On',25,199.99,'2023-04-03','calsado','Zapatilla sin cordones con plataforma Glamurosa',1),
(203002,'Zapatilla Trail',20,449.99,'2024-05-09','calsado',' Buen agarre en superficies todoterreno.',1),
(203003,'Zapatilla Samba',22,199.50,'2023-01-22','calsado','dos capas de refuerzo Adituff',1),
(203004,'Zapatilla Minimalista',20,349.99,'2023-11-03','calsado','Amortiguacion media con suela MaxTrac',1),
(203005,'Zapato de Vestir',10,399.50,'2022-11-15','calsado','Zapato de cuero para eventos formales color Azul',1),
(203006,'Zapato Escolar',50,119.99,'2023-03-11','calsado','Zapato escolar resistente para niños',1),
(203007,'Zapato Casual',20,299.99,'2023-07-15','calsado','Uso diario, negro sin tacon',1),
(203008,'Zapato Oxford',15,549.99,'2024-03-21','calsado','Estilo duradero y versátil negro',1),
(203009,'Zapato Derby',14,499.50,'2023-11-22','calsado','diseño elegante y confortable',1),
(203010,'Sandalia Plana',20,129.99,'2024-06-10','calsado','Suela plana con detallado de cristal',1),
(203011,'Sandalia de Cuña',18,199.50,'2024-05-14','calsado','Sandalia con plataforma tipo cuña',1),
(203012,'Sandalia Gladiadora',10,159.99,'2023-08-05','calsado','piel griega con ejes de cremallera',1),
(203013,'Sandalia de Playa',30,99.99,'2024-06-05','calsado','Suelo de goma SL GRAD SUNSET FC',1),
(203014,'Sandalia Plataforma',15,179.99,'2024-01-19','calsado','Sandalia con plataforma y diseño moderno negro',1),
(203015,'Bota Pirayu',12,399.50,'2024-03-25','calsado','Soporte adecuado, no provoca ampollas colo beige',1),
(203016,'Bota Militar',12,459.99,'2024-04-11','calsado','Resistente para uso urbano',1),
(203017,'Botín Cuero Full Grain',18,399.99,'2024-07-10','calsado','Suela de goma duradera para tracción',1),
(203018,'Bota de Montaña',12,599.99,'2023-12-01','calsado','bota de cuero transpirable e impermeable',1),
(203019,'Tacón de Aguja',10,699.99,'2024-02-14','calsado','Tacon alto y con punta redonda',1),
(203020,'Tacón Alto',15,499.00,'2023-09-21','calsado','Amigable con el medio ambiente',1),
(203021,'Tacón de Cuña de bailarinas',12,259.50,'2024-02-28','calsado','Tacón con diseño moderno y cómodo',1),
(203022,'Tacón de Fiesta',8,599.99,'2023-09-14','calsado','Sandalias de Tacón alto y plataforma plata',1),
(203023,'Sandalias de Tacón Bajo',16,199.99,'2023-08-17','calsado','Ideal para usarlas todo el dia comoda y elegante',1),
(203024,'Zapato Brogue',15,549.99,'2023-05-12','calsado','hechos de cuero de primera calidad',1),
(301000,'Sofá Modular Seccional',8,1200.00,'2024-11-28','sofa','Sofá de tela gris con módulos intercambiables',1),
(301001,'Sofá Cama Práctico',12,600.00,'2024-11-28','sofa','Sofá convertible en cama, ideal para espacios pequeños',1),
(301002,'Sofá Chesterfield Elegante',5,2200.00,'2024-11-28','sofa','Sofá de cuero clásico con acabados capitoné',1),
(301003,'Sofá Esquinero Amplio',6,1500.00,'2024-11-28','sofa','Sofá esquinero con cojines adicionales y tela resistente',1),
(301004,'Sofá Compacto Moderno',10,800.00,'2024-11-28','sofa','Sofá pequeño para 2 personas, ideal para apartamentos',1),
(301005,'Sofá Reclinable de lujo',8,2500.00,'2024-11-28','sofa','Sofá de cuero con múltiples posiciones reclinables',1),
(301006,'Sofá Infantil Divertido',20,400.00,'2024-11-28','sofa','Sofá pequeño y acolchado con diseños coloridos',1),
(301007,'Sofá de jardín Resistente',12,850.00,'2024-11-28','sofa','Sofá de ratán sintético para exteriores',1),
(301008,'Sofá cama Plegable',10,700.00,'2024-11-28','sofa','Sofá plegable con colchón integrado',1),
(301009,'Sofá Vintage Clásico',5,1800.00,'2024-11-28','sofa','Sofá con diseño retro y estructura de madera',1),
(301010,'Sofá cama Económico',15,500.00,'2024-11-28','sofa','Sofá compacto que se transforma en cama fácilmente',1),
(301011,'Sofá Modular XL',4,3000.00,'2024-11-28','sofa','Sofá modular para grandes espacios, diseño personalizable',1),
(301012,'Sofá Loveseat',10,650.00,'2024-11-28','sofa','Sofá pequeño para dos personas con cojines extra suaves',1),
(301013,'Sofá de cuero Italiano',6,3500.00,'2024-11-28','sofa','Sofá premium de cuero italiano, diseño contemporáneo',1),
(301014,'Sofá Minimalista',8,1200.00,'2024-11-28','sofa','Sofá de líneas simples y tapizado en tonos neutros',1),
(301015,'Sofá de esquina Compacto',10,950.00,'2024-11-28','sofa','Sofá pequeño en forma de L para espacios reducidos',1),
(301016,'Sofá lounge Relax',7,2000.00,'2024-11-28','sofa','Sofá amplio con soporte lumbar y cojines de plumas',1),
(301017,'Sofá cama XL',5,1800.00,'2024-11-28','sofa','Sofá cama grande con colchón de espuma viscoelástica',1),
(301018,'Sofá seccional con chaise longue',6,2200.00,'2024-11-28','sofa','Sofá amplio con chaise longue y cojines adicionales',1),
(301019,'Sofá reclinable Manual',8,800.00,'2024-11-28','sofa','Sofá con reclinación manual para mayor comodidad',1),
(301020,'Sofá cama Futón',12,550.00,'2024-11-28','sofa','Sofá futón con marco de madera y colchón suave',1),
(301021,'Sofá de cuero Negro',6,2500.00,'2024-11-28','sofa','Sofá clásico en cuero negro, diseño moderno',1),
(301022,'Sofá infantil con cojines',18,300.00,'2024-11-28','sofa','Sofá acolchado para niños con cojines extraíbles',1),
(301023,'Sofá seccional Premium',5,4000.00,'2024-11-28','sofa','Sofá seccional de lujo con acabados de madera y cuero',1),
(301024,'Sofá Modular Convertible de terciopelo',10,1500.00,'2024-11-28','sofa','Sofá modular que se adapta a diferentes espacios',1),
(302000,'Mesa de comedor Moderna',20,450.00,'2024-11-28','mesa','Mesa de madera para 6 personas con acabado mate',1),
(302001,'Mesa de oficina Minimalista',15,320.00,'2024-11-28','mesa','Mesa de oficina de MDF con cajonera lateral',1),
(302002,'Mesa de conferencia Grande',6,1500.00,'2024-11-28','mesa','Mesa para salas de reuniones grandes',1),
(302003,'Mesa auxiliar Redonda',30,80.00,'2024-11-28','mesa','Mesa redonda de metal para sala o balcón',1),
(302004,'Mesa de centro Vintage',12,250.00,'2024-11-28','mesa','Mesa de centro con diseño retro, madera y vidrio',1),
(302005,'Mesa plegable Portátil',50,75.00,'2024-11-28','mesa','Mesa plegable ideal para camping y actividades al aire libre',1),
(302006,'Mesa de comedor Rústica',18,500.00,'2024-11-28','mesa','Mesa de madera maciza con acabado rústico para 8 personas',1),
(302007,'Mesa de vidrio Elegante',10,700.00,'2024-11-28','mesa','Mesa de comedor con superficie de vidrio templado',1),
(302008,'Mesa de noche Compacta',25,65.00,'2024-11-28','mesa','Mesa pequeña de madera para habitaciones',1),
(302009,'Mesa alta Bar',30,150.00,'2024-11-28','mesa','Mesa alta para bares con estructura de metal y madera',1),
(302010,'Mesa plegable Económica',40,50.00,'2024-11-28','mesa','Mesa plegable sencilla de plástico',1),
(302011,'Mesa de trabajo Profesional',8,350.00,'2024-11-28','mesa','Mesa de acero inoxidable para trabajos de cocina',1),
(302012,'Mesa ratona Clásica',20,120.00,'2024-11-28','mesa','Mesa de centro pequeña para sala',1),
(302013,'Mesa de comedor Extensible',5,750.00,'2024-11-28','mesa','Mesa extensible de madera ideal para espacios pequeños y reuniones',1),
(302014,'Mesa gamer LED',15,500.00,'2024-11-28','mesa','Mesa con iluminación LED integrada',1),
(302015,'Mesa de mármol Premium',3,2000.00,'2024-11-28','mesa','Mesa de comedor con superficie de mármol auténtico',1),
(302016,'Mesa plegable Multiusos',25,60.00,'2024-11-28','mesa','Mesa plegable de uso versátil',1),
(302017,'Mesa de picnic Rústica',10,300.00,'2024-11-28','mesa','Mesa de madera con bancos integrados para exterior',1),
(302018,'Mesa de centro Escandinava',18,200.00,'2024-11-28','mesa','Mesa con diseño nórdico y patas de madera clara',1),
(302019,'Mesa infantil Colorida',40,40.00,'2024-11-28','mesa','Mesa pequeña de plástico para niños',1),
(302020,'Mesa de oficina Ejecutiva',12,600.00,'2024-11-28','mesa','Mesa amplia con acabados de lujo para oficina',1),
(302021,'Mesa para manualidades',15,180.00,'2024-11-28','mesa','Mesa resistente con múltiples compartimentos',1),
(302022,'Mesa auxiliar con ruedas',20,90.00,'2024-11-28','mesa','Mesa portátil con ruedas para uso en hospitales',1),
(302023,'Mesa para jardín',30,120.00,'2024-11-28','mesa','Mesa de plástico resistente para exteriores',1),
(302024,'Mesa rectangular Estilo industrial',10,550.00,'2024-11-28','mesa','Mesa con marco de hierro y madera reciclada',1),
(303000,'Silla de comedor Moderna',40,75.00,'2024-11-28','silla','Silla con diseño minimalista y estructura de metal',1),
(303001,'Silla de oficina Ergonómica',25,220.00,'2024-11-28','silla','Silla ajustable con soporte lumbar y reposabrazos',1),
(303002,'Silla plegable Ligera',100,25.00,'2024-11-28','silla','Silla plegable de plástico para eventos',1),
(303003,'Silla Gamer',10,350.00,'2024-11-28','silla','Silla para videojuegos con soporte cervical y reclinable',1),
(303004,'Silla Mecedora Clásica',5,180.00,'2024-11-28','silla','Silla mecedora de madera con diseño artesanal',1),
(303005,'Silla de comedor Rústica',20,90.00,'2024-11-28','silla','Silla de madera maciza con acabado envejecido',1),
(303006,'Silla de oficina Ejecutiva',15,450.00,'2024-11-28','silla','Silla de cuero con ajustes múltiples para oficinas',1),
(303007,'Silla infantil Colorida',30,30.00,'2024-11-28','silla','Silla pequeña de plástico para niños',1),
(303008,'Silla de bar Alta',25,120.00,'2024-11-28','silla','Silla alta con reposapiés y estructura de metal',1),
(303009,'Silla apilable Básica',50,50.00,'2024-11-28','silla','Silla de plástico ligera y apilable para eventos',1),
(303010,'Silla de madera Elegante',12,140.00,'2024-11-28','silla','Silla con respaldo curvo y tapizado suave',1),
(303011,'Silla de oficina Básica',30,150.00,'2024-11-28','silla','Silla ajustable con base giratoria',1),
(303012,'Silla reclinable Premium',8,600.00,'2024-11-28','silla','Silla reclinable con ruedas',1),
(303013,'Silla de terraza Colgante',20,85.00,'2024-11-28','silla','Silla de metal con estructura reforzada para exteriores',1),
(303014,'Silla de conferencia Plegable',100,45.00,'2024-11-28','silla','Silla plegable con respaldo acolchado',1),
(303015,'Silla Gamer con soporte lumbar',15,400.00,'2024-11-28','silla','Silla ergonómica con cojines extraíbles',1),
(303016,'Silla decorativa Vintage',10,200.00,'2024-11-28','silla','Silla de madera tallada con detalles modernos',1),
(303017,'Silla de bar Industrial',15,150.00,'2024-11-28','silla','Silla alta con asiento de madera y base metálica',1),
(303018,'Silla acolchada Deluxe',20,300.00,'2024-11-28','silla','Silla con asiento acolchado y reposabrazos',1),
(303019,'Silla giratoria Compacta',12,180.00,'2024-11-28','silla','Silla giratoria ideal para escritorios pequeños',1),
(303020,'Silla para jardín',30,60.00,'2024-11-28','silla','Silla de plástico resistente a la intemperie',1),
(303021,'Silla de metal Versátil',25,70.00,'2024-11-28','silla','Silla metálica apilable para interiores y exteriores',1),
(303022,'Silla de diseño Escandinavo',10,240.00,'2024-11-28','silla','Silla con patas de madera y asiento de plástico',1),
(303023,'Silla clásica con cojín',15,130.00,'2024-11-28','silla','Silla de comedor con cojín removible',1),
(303024,'Silla ergonómica de tela',8,280.00,'2024-11-28','silla','Silla de oficina con respaldo de tela transpirable',1),
(401000,'PERFUME TOUS FLORAL TOUCH MUJER EDT 100 ML',81,269.00,'2024-11-23','perfume','Flora, frutal o amaderado. Toda una variedad de fragancias dispuestas a complacer los gustos más exigentes.',1),
(401001,'EAU DE PARFUM TOUS LOVE ME THE ONYX PARA MUJER 90 ML',123,449.00,'2024-11-23','perfume','Un Parfum floral, oriental y afrutado que oscila entre lo exquisito y adictivo. La intensidad de sus notas olfativas es el fiel reflejo de la intensidad de la piedra preciosa en la que se inspira.',1),
(401002,'PERFUME INDEX BY ALEJANDRA BAIGORRIA MUJER EDP 100 ML',80,69.90,'2024-11-23','perfume','Una fragancia fresca y vibrante que evoca la esencia de un paraíso tropical. Las notas iniciales ofrecen una explosión frutal, seguidas de un corazón floral.',1),
(401003,'PERFUME CAROLINA HERRERA CH MUJER EDT 50ML',71,405.00,'2024-11-23','perfume','CH Carolina Herrera es un poder invisible, el toque final. El equilibrio perfecto entre frescura y relajación, esta optimista fragancia aporta elegancia contemporánea a todos los momentos de su vida.',1),
(401004,'PERFUME LANCOME LA VIE EST BELLE MUJER EDP 30 ML',81,199.00,'2024-11-23','perfume',' Elaborada con los ingredientes naturales más preciados, que expresan notas de iris, pachulí, praliné y vainilla, esta fragancia compleja y femenina es la interpretación moderna de una fragancia oriental con un toque gourmand.',1),
(401005,'PERFUME TOUS LOVEME THE EMERALD ELIXIR MUJER 90 ML',20,499.00,'2024-11-23','perfume','LoveMe TOUS The Emerald Elixir con vaporizador de 90 ml es un perfume que transmite lujo y una sofisticación irresistible. La combinación del néctar de pera verde, el pomelo y la naranja dulce genera un esencia oriental floral y gourmand.',1),
(401006,'TOUS NEONCANDY EDT MUJER 90ML',17,269.00,'2024-11-23','perfume','Neon Candy de Tous es una fragancia de la familia olfativa Almizcle Floral Amaderado para Mujeres.',1),
(401007,'PERFUME VERSACE MUJER EDT 50ML',70,199.00,'2024-11-23','perfume','Versense es una fragancia con un hermoso bouquet contemporáneo, que combina los elementos mediterráneos con el glamour y la sensualidad de la mujer Versace. Versense es una auténtica expresión de aromas que encantan.',1),
(401008,'PERFUME LANCOME LANCOME MUJER EDP 30 ML',14,259.00,'2024-11-23','perfume','Una combinación de lichi y freesia tan vibrante y resplandeciente como el amanecer de un nuevo día, para compartir momentos excepcionales.',1),
(401009,'PERFUME GIORGIO ARMANI MUJER EDP 30 ML',81,249.00,'2024-11-23','perfume','A la vez elegante, voluptuoso, intenso y suave, Sì Eau de Parfum permanece en la piel y encanta los sentidos. El distinguido y elegante resultado olfativo juega con la emoción, fiel al espíritu de la alta costura de Giorgio Armani.',1),
(401010,'PERFUME TOMMY HILFIGER TOMMY FOREVER HOMBRE EDT 30 ML',27,99.00,'2024-11-25','perfume','Descubre Perfume tommy hilfiger tommy forever hombre edt 30 ml al mejor precio.',1),
(401011,'EAU DE TOILETTE KENZO HOMME INTENSE HOMBRE 110 ML',35,479.00,'2024-11-25','perfume','La nueva fragancia masculina, inspirada en la intensidad del bambú y la serenidad de la brisa marina.',1),
(401012,'PERFUME MONTBLANC STARWALKER HOMBRE EDT 75 ML',4,399.00,'2024-11-25','perfume','Starwalker es una fragancia creada para una nueva generación de hombres que se enfrentan a su futuro.',1),
(401013,'PERFUME GIORGIO ARMANI ACQUA DI GIO HOMBRE EDT 200 ML',10,799.00,'2024-11-25','perfume','Acqua di Giò Eau de Toilette captura la esencia del Mediterráneo. La fragancia comienza con notas marinas y de bergamota, que crean su frescor emblemático.',1),
(401014,'PERFUME PACO RABANNE 1 MILLION HOMBRE EDT 200ML',11,749.00,'2024-11-25','perfume','Me encanta el peligro y los destellos de brillantez. No obedezcas a nadie. Excepto por tus fantasías. Perfume ONE MILLION, hermoso cuero especiado para un caballero insolente.',1),
(401015,'EAU DE TOILETTE HUGO BOSS BOTTLED UNLIMITED HOMBRE 200 ML',17,699.00,'2024-11-25','perfume','Boss Bottled Unlimited es una combinación moderna y energizante de menta, piña y jaras de hoja perenne.',1),
(401016,'PERFUME TOUS 1920 THE ORIGIN HOMBRE EDT 100 ML',12,299.00,'2024-11-25','perfume','Tous te ofrece esta exquisita Fragancia 1920 The Origin en una fresca edición de 100ml. ¡Sorpréndete con su aroma amaderado – acuosa!',1),
(401017,'PERFUME GIVENCHY GENTLEMAN SOCIETY HOMBRE EDP 200 ML',29,859.00,'2024-11-25','perfume','Givenchy redefine al caballero con su nuevo Eau de Parfum, Gentleman Society, una declaración audaz para los hombres que reinventan sus propias reglas y siempre actúan para mejorar.',1),
(401018,'PERFUME BOSS BOTTLED ABSOLU PARFUM INTENSE HOMBRE 100 ML',11,589.00,'2024-11-25','perfume','Descubre la máxima sofisticación con BOSS Bottled Absolu, un atrevido Parfum Intense con una irresistible firma. Esta fragancia distintiva es testimonio del poder de un BOSS.',1),
(401019,'PERFUME PACO RABANNE INVICTUS HOMBRE EDT 200 ML',3,679.00,'2024-11-25','perfume','Un heroico amaderado fresco. Frescura penetrante y sensualidad animal. El pomelo y el guayaco disputan una vibrante batalla dentro del aroma del perfume Invictus.',1),
(401020,'PERFUME GIVENCHY P007036DF HOMBRE EDT 100 ML',40,489.00,'2024-11-25','perfume','Gentleman Only Eau de Toilette de Givenchy es una fragancia masculino, amaderada que se destaca por su sello olfativo como un aroma vibrante y varoil. Gentleman Only es amaderada y aromática, dirigida a hombres modernos que afirman su personalidad a través de la sobriedad y la desenvoltura.',1),
(401021,'PERFUME CALVIN KLEIN IN2U HOMBRE EDT 150 ML',11,329.00,'2024-11-25','perfume','CK IN2U for Men es un oriental amaderado brillante. El gin fizz de lima audaz y penetrante contrasta con el fresco almizcle para crear un viaje efervescente.',1),
(401022,'PERFUME CAROLINA HERRERA HOMBRE EDT 100 ML',11,395.00,'2024-11-25','perfume','Engríete con los mejores productos que Ripley.com ofrece para el cuidado personal y disfruta de los aromas que recubrirán tu cuerpo durante horas.',1),
(401023,'PERFUME GIORGIO ARMANI STRONGER WITH YOU HOMBRE EDT 100 ML',13,449.00,'2024-11-25','perfume','Vive el presente con Emporio GIORGIO ARMANI y Stronger With You, un símbolo de masculinidad y fuerza que se concentra en un Eau de Toilette único que cautiva y transmite toda la potencia del hombre sin dejar atrás su elegancia.',1),
(401024,'PERFUME CALVIN KLEIN 10000007868DF HOMBRE EDT 100 ML',19,289.00,'2024-11-25','perfume','CK Free for Men Eau de Toilette de CALVIN KLEIN captura la esencia de una vida libre y aventurera. Rebosante de frescura nítida, especias exóticas y ricas maderas.',1),
(402000,'NEUTROGENA HYDRO BOOST REPUESTO',69,34.50,'2024-11-15','crema','Crema hidratante para tu carita.',1),
(402001,'CREMA FACIAL LOREAL PARIS DIA HIDRATANTE REVITALIFT ACIDO HIALURONICO 50ML',60,64.50,'2024-11-20','crema','Crema que hidrata intensamente tu piel y la rellena.',1),
(402002,'HIDRATANTE FACIAL NEUTROGENA HYDROBOOST ÁCIDO HIALURÓNICO 50G',30,41.80,'2024-11-12','crema','Renueva los niveles de agua en la piel y fortalece su barrera natural.',1),
(402003,'CREMA FACIAL MAC HYPER REAL- HIDRATANTE SKINCANVAS 30 ML',20,249.00,'2024-10-20','crema','Consiente tu piel con nuestra crema hidratante avalada por la ciencia y aprobada por artistas que hidrata en profundidad y suaviza la piel.',1),
(402004,'BIODERMA SENSIBIO H2O - 500ML',70,84.60,'2024-10-20','crema','El agua micelar dermatológica que limpia calma y desmaquilla la piel sensible',1),
(402005,'BIODERMA SEBIUM H2O 500ML PP INVERSE',92,97.20,'2024-11-15','crema','Agua micelar desmaquillante específica para pieles mixtas o grasas que imita la composición natural de la piel.',1),
(402006,'TRATAMIENTO FACIAL ESTEE LAUDER REVITALIZING SUPREME+ CELL POWER CREME 50ML',130,479.00,'2024-11-11','crema','Disfruta de los tratamientos de belleza que esta exclusiva marca trae para ti. Consiente, protege y dale vida a tu piel.',1),
(402007,'CREMA FACIAL LOREAL PARIS DIA RETINOL 50ML',110,71.90,'2024-10-21','crema',' ¡Conoce la Nueva Crema Día Retinol de Loreal Paris! Uso en cualquier momento del día. Reduce las arrugas y líneas de expresión. ',1),
(402008,'SÉRUM GARNIER SERUM EXPRESS ACLARA NOCHE 30ML',200,59.00,'2024-10-21','crema','¡Nuevo Serum Noche Express Aclara! Combate las manchas con el poder de la vitamina C.',1),
(402009,'SERUM ROSTRO Y CUELLO GARNIER VITAMINA C EXPRESS ACLARA 15ML',40,36.90,'2024-11-15','crema','Descubre Serum garnier vitamina c express aclara 15ml al mejor precio.',1),
(402010,'CERAVE GEL LIMPIADOR ESPUMOSO 236 ML',110,63.50,'2024-11-15','crema','Limpia profundamente y refresca la piel mientras remueve el exceso de grasa y maquillaje, ayudando a restaurar la barrera natural de la piel.',1),
(402011,'CERAVE CREMA HIDRATANTE 340G',89,82.50,'2024-11-15','crema','La crema hidratante CeraVe es una formula rica para piel seca a muy seca que mantiene la hidratación por 24h con la tecnología MVE',1),
(402012,'LA ROCHE POSAY HYALU B5 SERUM DE OJOS 15ML',90,120.00,'2024-10-19','crema','Serum Hyalu B5 de ojos de 15ml concentrado antiarrugas, reparador y rellenador.',1),
(402013,'ISDIN FOTOPROTECTOR FUSION WATER COLOR LIGHT OIL CONTROL SPF5+ 50 ML',97,124.90,'2024-10-10','crema','Fusion Water Color Light es un protector solar facial con color. Gracias a su fórmula ultraligera, protege tu piel a diario contra los rayos UVB y UVA.',1),
(402014,'FOTO ULTRA ISDIN ACTIVE UNIFY SIN COLOR SPF 50+',69,139.90,'2024-11-15','crema','Beneficios: FotoUltra 100 ISDIN Active Unify es un fluido con acción despigmentante, con SPF 119 y UVA in-vitro 49 que aclara y unifica el tono de la piel.',1),
(402015,'ISDIN FOTOPROTECTOR GEL CREAM 250 ML SPF 50+',69,139.90,'2024-11-15','crema','Fotoprotección diaria para todo tipo de piel, ideal para toda la familia.',1),
(402016,'ISDIN FOTOPROTECTOR FUSION WATER MAGIC SPF 50 50ML',100,124.90,'2024-11-15','crema','Fotoprotector facial de textura ultraligera y fase externa acuosa con acabado final sedoso Protege tu piel con Fusion Water MAGIC SPF 50.',1),
(402017,'LA ROCHE -POSAY EFFACLAR GEL MICRO-EXFOLIANTE 400 ML',70,135.50,'2024-11-15','crema','EFFACLAR Gel Purificante Micro-exfoliante favorece la eliminación de las células muertas sin irritar y ayuda a eliminar las impurezas y el exceso de sebo desobstruyendo los poros en profundidad.',1),
(402018,'LA ROCHE -POSAY EFFACLAR MAT 40ML',169,116.90,'2024-11-15','crema','EFFACLAR MAT es un hidratante anti-sebo que combate los brillos y reduce el tamaño de los poros en la piel grasa con tendencia acneica.',1),
(402019,'LA ROCHE -POSAY RETINOL B3 SERUM 30ML',99,126.40,'2024-11-19','crema','RETINOL B3 es un serum regenerador único, formulado con la molécula anti - arrugas de referencia Retinol [Puro + Liberación Gradual] combinada con Vitamina B3, que restaura la piel.',1),
(402020,'CERAVE GEL LIMPIADOR ANTI-RUGOSIDADES 236ML',29,64.50,'2024-11-19','crema','El Limpiador Anti-rugosidades de CeraVe está formulado para exfoliar, suavizar y limpiar de forma eficaz la piel seca, irregular y rugosa sin alterar la barrera de la piel. ',1),
(402021,'LA ROCHE -POSAY EFFACLAR GEL MICRO-EXFOLIANTE 200 ML',80,85.90,'2024-11-19','crema','EFFACLAR Gel Purificante Micro-exfoliante favorece la eliminación de las células muertas sin irritar y ayuda a eliminar las impurezas y el exceso de sebo desobstruyendo los poros en profundidad. Reduce la visibilidad de los puntos negros y controla el brillo.',1),
(402022,'LA ROCHE-POSAY LIPIKAR BAUME AP+M 400 ML',111,175.50,'2024-11-19','crema','Reequilibra el microbioma de la piel. Calma la piel de inmediato y reduce la comezón. Con su eficacia antirrecaídas, espacia los brotes. Nutre la piel y restaura la barrera cutánea.',1),
(402023,'LA ROCHE -POSAY AGUA TERMAL 150ML - LRP',100,72.90,'2024-11-19','crema','Rica en selenio y oligoelementos, el Agua Termal de La Roche-Posay tiene propiedades calmantes y protectoras científicamente demostradas.',1),
(402024,'ISDIN ISDINCEUTICS AGE REVERSE NIGHT 50ML',10,349.90,'2024-11-19','crema','Crema facial de noche formulada con Melatonina que estimula las defensas antioxidantes para combatir las agresiones recibidas durante el día, con Carnosina.',1),
(403000,'GLOSS BOMB HEAT UNIVERSAL LIP LUMINIZER + PLUMPER - HOT CHOCOLIT',10,249.00,'2024-11-27','maquillaje','Gloss Bomb Heat tiene un innovador Plump Job Complex que contiene una mezcla de ingredientes diseñados para rellenar suavemente los labios.',1),
(403001,'POLVOS SUELTOS GIVENCHY PRISME LIBRE N03 P090306',15,249.00,'2024-11-27','maquillaje','El primer polvo de 4 tonos inspirado en la ciencia de la corrección del color, materializando la visión de Hubert de Givenchy sobre la armonía del color y marcando el comienzo del maquillaje en Givenchy.',1),
(403002,'SET CLINIQUE DUO HONEY',60,278.00,'2024-11-27','maquillaje','Bálsamo Labial Almost Lipstick - Black Honey 2 g: Un clásico de Clinique. Ni del todo lápiz labial, ni del todo brillo, su textura es más como un bálsamo que puedes aplicar fácilmente.',1),
(403003,'SET CLINIQUE LABIOS BLACK HONEY ÍCONOS',30,278.00,'2024-11-27','maquillaje','La combinación de labios universalmente favorecedora que incluye nuestro fenómeno de lápiz labial número uno Almost Lipstick en Black Honey.',1),
(403004,'RUBOR GIVENCHY PRISME LIBRE BLUSH EN EN POLVOS SUELTOS N2',26,179.00,'2024-11-27','maquillaje','Prisme Libre Blush de Givenchy es el primer rubor en polvos sueltos de 4 colores que da un color sonrojado y duradero a las mejillas y esculpe a la perfección el rostro.',1),
(403005,'POLVOS SUELTOS GIVENCHY PRISME LIBRE N01 P090304',31,249.00,'2024-11-27','maquillaje','Nacido en 1989, Le Prisme de Givenchy fue el primer polvo de 4 tonos inspirado en la ciencia de la corrección del color, materializando la visión de Hubert de Givenchy sobre la armonía del color y marcando el comienzo del maquillaje en Givenchy.',1),
(403006,'DELINEADOR DE OJOS MAC BRUSHSTROKE 24HOUR LINER BRUSHBLACK',60,99.00,'2024-11-27','maquillaje','Anímate a complementar tu maquillaje diario con estos productos que te ayudarán a realzar tu belleza y a sentirte única en tu día a día.',1),
(403007,'FIJADOR MAC FIX + STAY OVER 100 ML',33,159.00,'2024-11-27','maquillaje','¡Haz que tu maquillaje perdure! Fija tu look con nuestro revolucionario spray fijador sin alcohol Fix+ Stay Over trabaja horas extras para fijar el maquillaje durante 16 horas mientras los antioxidantes protegen contra la contaminación ambiental y la luz azul.',1),
(403008,'LABIAL MAC LIP MINI COMBO TINY TREASURES EN EL TONO NEUTRAL',17,130.00,'2024-11-27','maquillaje','Labial Lustreglass Sheer-Shine 1 Delineador de labios Lip Pencil.',1),
(403009,'CORRECTOR MAC STUDIO RADIANCE 24HR LUMINOUS LIFT NC15 11 ML',60,139.00,'2024-11-27','maquillaje','Compra Corrector mac studio radiance 24hr luminous lift nc15 11 ml y todo lo que buscas. Recibe todas tus compras online en menos tiempo.',1),
(403010,'LABIAL MAC XIMAL SILKY MATTE LIPSTICK EN TONO TAUPE',100,99.00,'2024-11-27','maquillaje','Nuestro icónico lipstick ahora con más color, más confort, más duración. 12 horas de duracion. 8 horas de hidratación.',1),
(403011,'DELINEADOR LABIOS MAC CHILI RIMMED',21,95.00,'2024-11-27','maquillaje','Un delineador de labios diseñado para dar forma, delinear o rellenar el labio.',1),
(403012,'LABIAL MAX FACTOR LIPGLOSS 2000 CALORIE LIPGLAZE BERRY SORBET',70,65.90,'2024-11-27','maquillaje','*Fórmula ligera, no pegajosa y vegana. *Enriquecida con un complejo nutritivo de ácido hialurónico y escualeno.',1),
(403013,'BASE COVERGIRL SIMPLY AGELESS SKIN PERFECTOR ESSENCE LIGHT 20',30,89.90,'2024-11-27','maquillaje','La base de maquillaje Simply Ageless Skin Perfector Essence de Covergirl es un híbrido de maquillaje vegano para el cuidado de la piel.',1),
(403014,'SET WATERPROOF MAC DELINEADOR DE OJOS COLOUR EXCESS + GEL GLIDE OR DIE + MÁSCARA DE PESTAÑAS',23,200.00,'2024-11-27','maquillaje','Descubre Set waterproof mac delineador de ojos colour excess + gel glide or die + máscara de pestañas prueba de agua macstack al mejor precio.',1),
(403015,'ILUMINADOR MAC JELLY SLIME ALL-OVER / GIFT OF GOLD',19,139.00,'2024-11-27','maquillaje','Encuentra los productos que necesitas. En Ripley Perú lo tenemos todo. Compra Iluminador mac jelly slime all-over / gift of gold.',1),
(403016,'BASE COVERGIRL SIMPLY AGELESS SKIN PERFECTOR ESSENCE LIGHT MEDIUM 30',40,89.90,'2024-11-27','maquillaje','La base de maquillaje Simply Ageless Skin Perfector Essence de Covergirl es un híbrido de maquillaje vegano para el cuidado de la piel.',1),
(403017,'MÁSCARA PESTAÑAS MAC GIFT OF GOLD',27,129.00,'2024-11-27','maquillaje','Encuentra los productos que necesitas. En Ripley Perú lo tenemos todo. Compra Máscara de pestañas mac gift of gold.',1),
(403018,'BÁLSAMO FACIAL CLINIQUE DESMAQUILLANTE TAKE THE DAY OFF 200ML',24,199.00,'2024-11-27','maquillaje','Nuestro desmaquillante n1 en fórmula de bálsamo sedoso disuelve suavemente el maquillaje.',1),
(403019,'SOMBRA OJOS MAC GIFT OF GOLD EN EL TONO HIGH TAUPES',24,129.00,'2024-11-27','maquillaje','Recibe todas tus compras online. Compra con las mejores ofertas y descuentos. Sombra de ojos mac gift of gold en el tono high taupes.',1),
(403020,'MÁSCARA DE PESTAÑAS LOREAL PARIS PANORAMA WATERPROOF',11,81.90,'2024-11-27','maquillaje','Transforma tu mirada con esta máscara que realza la profundidad y es resistente al agua.',1),
(403021,'MÁSCARA PESTAÑAS MAYBELLINE LASH SENSATIONAL FIREWORK WATERPROOF',24,69.90,'2024-11-27','maquillaje','Con la tecnología del cepillo efecto súper hélice aporta volumen y longitud imitando los fuegos artificiales con cerdas largas.',1),
(403022,'DÚO BRONZER BOBBI BROWN BRUSH',11,400.00,'2024-11-27','maquillaje','Descubre Dúo bronzer bobbi brown brush al mejor precio.',1),
(403023,'BASE LOREAL PARIS TRUE MATCH TINTED SERUM 3-4 LIGHT-MEDIUM 10ML',4,119.90,'2024-11-27','maquillaje','Mejora y rejuvenece el aspecto de tu piel.',1),
(403024,'BASE LOREAL PARIS EN POLVO INFALLIBLE 24H FRESH WEAR LINEN 9GR',41,94.90,'2024-11-27','maquillaje','Mejora y rejuvenece el aspecto de tu piel.',1),
(501000,'LEGO City',200,39.99,'2024-11-15','juguetes-construccion','Set de construcción de la ciudad con vehículos y edificios.',1),
(501001,'LEGO Star Wars',180,49.99,'2024-11-10','juguetes-construccion','Set de construcción basado en la saga de Star Wars.',1),
(501002,'LEGO Technic',150,59.99,'2024-11-05','juguetes-construccion','Set avanzado de LEGO con piezas móviles y mecanismos.',1),
(501003,'LEGO Ninjago',220,44.99,'2024-11-01','juguetes-construccion','Set LEGO basado en las aventuras de los ninjas.',1),
(501004,'LEGO Friends',250,39.99,'2024-10-25','juguetes-construccion','Set de construcción con temática de amigas en la ciudad.',1),
(501005,'LEGO Creator',200,29.99,'2024-10-15','juguetes-construccion','Set LEGO para construir diferentes modelos creativos.',1),
(501006,'LEGO Minecraft',160,49.99,'2024-10-10','juguetes-construccion','Set LEGO basado en el mundo de Minecraft.',1),
(501007,'K NEX Thrill Ride',120,59.99,'2024-10-05','juguetes-construccion','Construye tu propia montaña rusa con K NEX.',1),
(501008,'K NEX Ferris Wheel',100,49.99,'2024-09-30','juguetes-construccion','Set K NEX para construir una rueda de la fortuna en miniatura.',1),
(501009,'Mega Bloks Halo',180,34.99,'2024-09-20','juguetes-construccion','Set Mega Bloks basado en el universo de Halo.',1),
(501010,'Puzzle 1000 Piezas',300,19.99,'2024-09-10','juguetes-construccion','Rompecabezas de 1000 piezas con imagen panorámica.',1),
(501011,'Puzzle 500 Piezas',250,14.99,'2024-09-01','juguetes-construccion','Rompecabezas de 500 piezas con imagen de paisajes.',1),
(501012,'Puzzle 3D Torre Eiffel',90,29.99,'2024-08-25','juguetes-construccion','Rompecabezas 3D para construir una réplica de la Torre Eiffel.',1),
(501013,'Puzzle 3D Catedral',110,39.99,'2024-08-20','juguetes-construccion','Rompecabezas 3D para construir una catedral gótica.',1),
(501014,'LEGO Architecture',95,89.99,'2024-08-15','juguetes-construccion','Set de LEGO para construir monumentos arquitectónicos.',1),
(501015,'LEGO Disney Princess',130,39.99,'2024-08-10','juguetes-construccion','Set de LEGO para crear castillos y personajes de Disney.',1),
(501016,'LEGO Super Mario',160,49.99,'2024-08-01','juguetes-construccion','Set LEGO con temática de Super Mario para crear niveles interactivos.',1),
(501017,'Wooden Puzzle',200,19.99,'2024-07-25','juguetes-construccion','Rompecabezas de madera con piezas interconectadas.',1),
(501018,'LEGO Harry Potter',170,59.99,'2024-07-15','juguetes-construccion','Set LEGO de la famosa saga de Harry Potter.',1),
(501019,'MEGA Bloks First Builders',220,29.99,'2024-07-10','juguetes-construccion','Set de bloques para niños pequeños de 1 a 5 años.',1),
(501020,'LEGO Duplo',300,24.99,'2024-07-01','juguetes-construccion','Set de LEGO Duplo para niños pequeños.',1),
(501021,'LEGO Speed Champions',130,49.99,'2024-06-25','juguetes-construccion','Set de LEGO para construir autos deportivos en miniatura.',1),
(501022,'LEGO Technic Bugatti',90,129.99,'2024-06-15','juguetes-construccion','Set avanzado LEGO Technic para construir el modelo Bugatti Chiron.',1),
(501023,'Wooden Train Set',150,39.99,'2024-06-05','juguetes-construccion','Set de trenes de madera con vías para niños pequeños.',1),
(501024,'LEGO Classic',250,19.99,'2024-05-25','juguetes-construccion','Set de LEGO básico con piezas para construir diversas figuras.',1),
(502000,'UNO',150,9.99,'2024-11-15','juegos-mesa','Juego de cartas rápido y divertido.',1),
(502001,'Monopoly Clásico',100,29.99,'2024-11-10','juegos-mesa','Versión clásica del popular juego de bienes raíces.',1),
(502002,'Scrabble',120,19.99,'2024-11-05','juegos-mesa','Juego de palabras cruzadas.',1),
(502003,'Catan',90,39.99,'2024-11-01','juegos-mesa','Juego de estrategia y comercio.',1),
(502004,'Jenga',130,14.99,'2024-10-20','juegos-mesa','Juego de bloques apilables.',1),
(502005,'Ajedrez',110,24.99,'2024-10-10','juegos-mesa','Juego de estrategia clásico.',1),
(502006,'Risk',80,34.99,'2024-10-05','juegos-mesa','Juego de conquista y estrategia militar.',1),
(502007,'Clue',100,24.50,'2024-09-25','juegos-mesa','Juego de misterio y deducción.',1),
(502008,'Twister',90,19.99,'2024-09-15','juegos-mesa','Juego físico y divertido.',1),
(502009,'Dominó',120,14.99,'2024-09-05','juegos-mesa','Juego clásico de fichas.',1),
(502010,'Dixit',80,29.99,'2024-08-20','juegos-mesa','Juego de cartas creativas con ilustraciones.',1),
(502011,'Carcassonne',95,25.99,'2024-08-10','juegos-mesa','Juego de construcción de territorios.',1),
(502012,'Pandemic',70,34.99,'2024-08-05','juegos-mesa','Juego cooperativo para salvar el mundo.',1),
(502013,'Ticket to Ride',85,32.99,'2024-07-25','juegos-mesa','Juego de construcción de rutas ferroviarias.',1),
(502014,'Codenames',100,19.50,'2024-07-15','juegos-mesa','Juego de palabras y deducción.',1),
(502015,'Poker',150,14.99,'2024-07-01','juegos-mesa','Juego clásico de cartas.',1),
(502016,'Exploding Kittens',110,19.99,'2024-06-20','juegos-mesa','Juego de cartas hilarante y estratégico.',1),
(502017,'Cards Against Humanity',95,24.99,'2024-06-10','juegos-mesa','Juego de cartas irreverente y divertido.',1),
(502018,'The Game of Life',80,29.99,'2024-05-30','juegos-mesa','Juego de simulación de la vida.',1),
(502019,'Bang!',100,21.50,'2024-05-15','juegos-mesa','Juego de cartas del salvaje oeste.',1),
(502020,'Taboo',90,19.99,'2024-05-01','juegos-mesa','Juego de palabras y pistas.',1),
(502021,'Pictionary',85,24.50,'2024-04-20','juegos-mesa','Juego de dibujo y adivinanza.',1),
(502022,'Scattergories',75,22.99,'2024-04-10','juegos-mesa','Juego de palabras rápido y divertido.',1),
(502023,'7 Wonders',70,34.99,'2024-03-25','juegos-mesa','Juego de construcción de civilizaciones.',1),
(502024,'Zombicide',60,49.99,'2024-03-10','juegos-mesa','Juego cooperativo de zombies.',1),
(503000,'Muñeco Spider-Man',100,29.99,'2024-11-15','muñeco','Figura de acción del superhéroe Spider-Man.',1),
(503001,'Muñeco Iron Man',80,34.99,'2024-11-10','muñeco','Figura de acción con armadura de Iron Man.',1),
(503002,'Muñeca Elsa',120,24.99,'2024-10-20','muñeco','Muñeca de Elsa, de Frozen.',1),
(503003,'Muñeco Hulk',70,39.99,'2024-10-05','muñeco','Figura de acción del increíble Hulk.',1),
(503004,'Muñeca Barbie Clásica',150,19.99,'2024-09-15','muñeco','Barbie clásica con vestido rosa.',1),
(503005,'Muñeco Superman',90,31.99,'2024-09-01','muñeco','Figura de acción del héroe Superman.',1),
(503006,'Muñeco Batman',100,34.50,'2024-08-20','muñeco','Figura de acción del Caballero Oscuro.',1),
(503007,'Muñeca Cenicienta',85,22.99,'2024-08-05','muñeco','Muñeca de Cenicienta con vestido azul.',1),
(503008,'Muñeco Capitán América',95,29.99,'2024-07-20','muñeco','Figura de acción con escudo del Capitán América.',1),
(503009,'Muñeco Thor',75,33.99,'2024-07-10','muñeco','Figura de acción con martillo de Thor.',1),
(503010,'Muñeca Ariel',110,21.99,'2024-06-30','muñeco','Muñeca Ariel de La Sirenita.',1),
(503011,'Muñeca Bella',100,22.49,'2024-06-10','muñeco','Muñeca Bella con vestido amarillo.',1),
(503012,'Muñeco Buzz Lightyear',80,27.99,'2024-05-25','muñeco','Figura de acción de Buzz Lightyear.',1),
(503013,'Muñeco Woody',90,26.99,'2024-05-10','muñeco','Figura de acción de Woody.',1),
(503014,'Muñeca Rapunzel',120,23.50,'2024-04-20','muñeco','Muñeca Rapunzel con cabello largo.',1),
(503015,'Muñeco Flash',70,30.99,'2024-04-05','muñeco','Figura de acción del velocista Flash.',1),
(503016,'Muñeco Aquaman',85,32.99,'2024-03-25','muñeco','Figura de acción del rey de Atlantis, Aquaman.',1),
(503017,'Muñeco Wolverine',95,36.99,'2024-03-10','muñeco','Figura de acción de Wolverine con garras.',1),
(503018,'Muñeca Anna',100,24.50,'2024-02-15','muñeco','Muñeca Anna, de Frozen.',1),
(503019,'Muñeco Doctor Strange',75,34.99,'2024-02-01','muñeco','Figura de acción del Doctor Strange.',1),
(503020,'Muñeca Blanca Nieves',85,20.99,'2024-01-20','muñeco','Muñeca Blanca Nieves con vestido rojo.',1),
(503021,'Muñeco Deadpool',70,37.99,'2024-01-10','muñeco','Figura de acción del irreverente Deadpool.',1),
(503022,'Muñeco Green Lantern',60,30.50,'2023-12-25','muñeco','Figura de acción del héroe Green Lantern.',1),
(503023,'Muñeca Moana',95,24.99,'2023-12-10','muñeco','Muñeca Moana con atuendo tradicional.',1),
(503024,'Muñeco Black Panther',85,35.99,'2023-11-25','muñeco','Figura de acción de Black Panther.',1),
(601000,'LG WM10WVC4S6',20,1999.00,'2024-11-28','lavadora','Lavadora de carga frontal, 10.5 kg, tecnología AI Direct Drive.',1),
(601001,'Samsung WD26DB8995BZPE',10,7999.00,'2024-11-24','lavadora','Lavadora-secadora 26 kg lavado / 17 kg secado.',1),
(601002,'LG WD12PVC3S6C',15,2999.00,'2024-11-28','lavadora','Lavadora-secadora 12 kg lavado / 8 kg secado, AI DD y Steam.',1),
(601003,'Samsung WD20T6000GP/PE',12,3999.00,'2024-11-22','lavadora','Lavadora-secadora 20 kg lavado / 12 kg secado.',1),
(601004,'LG WD15EG2S',8,2999.00,'2024-11-28','lavadora','Lavadora-secadora 15 kg lavado / 10 kg secado, AI DD y TrueSteam.',1),
(601005,'Samsung DV90TA040BX/PE',10,1999.00,'2024-11-16','lavadora','Lavadora-secadora 9 kg, tecnología HeatPump y Smart Control.',1),
(601006,'LG WD14BVC2S6C',12,2648.00,'2024-11-28','lavadora','Lavadora-secadora 14 kg lavado / 8 kg secado, AI DD y WiFi.',1),
(601007,'Samsung WD11T4046BX/PE',15,1899.00,'2024-11-15','lavadora','Lavadora-secadora 11 kg lavado / 7 kg secado.',1),
(601008,'LG WD12BVC2S6C',10,2049.00,'2024-11-28','lavadora','Lavadora-secadora 12 kg lavado / 8 kg secado, AI DD y TrueSteam.',1),
(601009,'Samsung WD22T6500GV/PE',7,4499.00,'2024-11-14','lavadora','Lavadora-secadora 22 kg lavado / 13 kg secado.',1),
(601010,'LG WD15BG2S',8,3099.00,'2024-11-28','lavadora','Lavadora-secadora 15 kg lavado / 10 kg secado, AI DD y Steam.',1),
(601011,'Samsung WW10TA046BX/PE',10,1699.00,'2024-11-28','lavadora','Lavadora 10 kg, EcoBubble y Digital Inverter, función de vapor.',1),
(601012,'LG WD20VV2S6R',6,3999.00,'2024-11-28','lavadora','Lavadora-secadora 20 kg lavado / 10 kg secado, AI DD y TurboWash.',1),
(601013,'Samsung DV17B9750CV/PE',5,3599.00,'2024-11-13','lavadora','Lavadora-secadora 17 kg lavado / 10 kg secado, AI Control y EcoBubble.',1),
(601014,'LG WD11PVC3S6',12,1899.00,'2024-11-28','lavadora','Lavadora-secadora 11 kg lavado / 8 kg secado, AI DD y Steam.',1),
(601015,'Samsung WD14TP04DSX/PE',8,2699.00,'2024-11-08','lavadora','Lavadora-secadora 14 kg lavado / 8 kg secado, EcoBubble y Digital Inverter.',1),
(601016,'LG WD9PVC4S6',10,1799.00,'2024-11-28','lavadora','Lavadora-secadora 9 kg lavado / 6 kg secado, AI DD y WiFi.',1),
(601017,'Samsung WA17CG6441BDPE',15,1499.00,'2024-11-21','lavadora','Lavadora 17 kg, Digital Inverter, opción de vapor y EcoBubble.',1),
(601018,'Electrolux EWIW11F2USVW',8,699.00,'2024-11-28','lavadora','Lavadora 11 kg, con tecnología EcoSilence, función Steam y Wi-Fi.',1),
(601019,'Electrolux EWIW09F2USVG',10,699.00,'2024-11-16','lavadora','Lavadora 9 kg, con tecnología EcoSilence y función de vapor SteamCare.',1),
(601020,'Electrolux LB15I',6,1399.00,'2024-11-28','lavadora','Lavadora 15 kg, con tecnología Fuzzy Logic y opción de lavado rápido.',1),
(601021,'Electrolux EWIW11F2USVG',10,849.00,'2024-11-27','lavadora','Lavadora 11 kg, con tecnología EcoSilence y opción de vapor SteamCare.',1),
(601022,'Electrolux EWIP18F2XSWG',7,1449.00,'2024-11-20','lavadora','Lavadora 18 kg, con función de vapor y optimización de carga EcoBubble.',1),
(601023,'Electrolux EWIP15F2XSWW',9,1199.00,'2024-11-19','lavadora','Lavadora 15 kg, con función de vapor y tecnología Fuzzy Logic para lavado eficiente.',1),
(601024,'Electrolux EWIX15F2ESG',6,1099.00,'2024-11-16','lavadora','Lavadora 15 kg, con función de vapor y AI Control para un lavado más eficiente.',1),
(602000,'Avera PIV2',20,4799.00,'2024-11-01','cocina','Parrilla de inducción de 2 quemadores con control táctil.',1),
(602001,'Supra 4Q-IN',10,9899.00,'2024-11-03','cocina','Parrilla eléctrica de 4 quemadores con seguridad para niños.',1),
(602002,'Avera VT5',10,5299.00,'2024-11-27','cocina','Parrilla a gas con 5 quemadores, diseño moderno, ideal para cocinas grandes.',1),
(602003,'MAXIMS JZBS2',15,3999.00,'2024-11-27','cocina','Parrilla a gas de 2 quemadores, ideal para cocinas medianas.',1),
(602004,'Avera VT4',15,4699.00,'2024-11-27','cocina','Parrilla a gas con 4 quemadores, vidrio templado. Ideal para cocinas pequeñas o medianas.',1),
(602005,'Odipo Nostromo',12,3047.00,'2024-11-05','cocina','Parrilla de inducción de 2 quemadores con diseño elegante.',1),
(602006,'Avera PIV1',25,1799.00,'2024-11-06','cocina','Parrilla portátil de inducción de 1 quemador.',1),
(602007,'SUPRA 5Q-IN',12,6799.00,'2024-11-27','cocina','Parrilla de inducción eléctrica de 5 quemadores.',1),
(602008,'Avera VT3',20,3999.00,'2024-11-27','cocina','Parrilla a gas de 3 quemadores, perfecta para cocinas pequeñas o apartamentos.',1),
(602009,'Supra 2Q-IN',20,4399.00,'2024-11-08','cocina','Parrilla de inducción de 2 quemadores con ajuste preciso.',1),
(602010,'Avera PIV4',30,9999.00,'2024-11-11','cocina','Parrilla de inducción de 4 quemadores con diseño moderno.',1),
(602011,'SUPRA 1Q-IN',20,2299.00,'2024-11-27','cocina','Parrilla de inducción eléctrica de 1 quemador, ideal para cocinas pequeñas.',1),
(602012,'Avera HEV5',10,7499.00,'2024-11-27','cocina','Parrilla a gas con 5 quemadores, ideal para cocinas grandes y familiares.',1),
(602013,'MAXIMS JZBS4',10,4999.00,'2024-11-27','cocina','Parrilla a gas de 4 quemadores, diseño robusto y eficiente.',1),
(602014,'Avera HEV4',15,6299.00,'2024-11-27','cocina','Parrilla a gas de 4 quemadores, ideal para cocinas medianas.',1),
(602015,'MAXIMS JZBS6A',8,7999.00,'2024-11-27','cocina','Parrilla a gas de 6 quemadores, ideal para cocinas grandes o comerciales.',1),
(602016,'Avera AI6',8,8999.00,'2024-11-27','cocina','Parrilla a gas de 6 quemadores, ideal para cocinas grandes o uso comercial.',1),
(602017,'ODIPO VOLTRAN',15,2899.00,'2024-11-27','cocina','Parrilla a gas de 2 quemadores, ideal para cocinas pequeñas.',1),
(602018,'Avera PIV5',18,11999.00,'2024-11-27','cocina','Parrilla de inducción de 5 quemadores con tecnología avanzada.',1),
(602019,'ODIPO VULCANO',10,4599.00,'2024-11-27','cocina','Parrilla a gas de 4 quemadores.',1),
(602020,'Avera PIV2B',15,2999.00,'2024-11-27','cocina','Placa de inducción con 2 quemadores, diseño moderno y eficiente.',1),
(602021,'SUPRA 2P TRAMONTO',20,2599.00,'2024-11-27','cocina','Parrilla a gas de 2 quemadores, ideal para cocinas pequeñas o uso ocasional.',1),
(602022,'Avera PIV2CEV60C',18,3999.00,'2024-11-27','cocina','Placa de inducción con 2 quemadores, control táctil.',1),
(602023,'SUPRA 4P TRAMONTO',15,4799.00,'2024-11-27','cocina','Parrilla a gas de 4 quemadores, ideal para cocinas medianas o grandes.',1),
(602024,'Avera VT6',10,7499.00,'2024-11-27','cocina','Parrilla a gas 6 quemadores, vidrio templado.',1),
(603000,'LG GS66SPM',8,4799.00,'2024-11-28','refrigeradora','Refrigeradora 660L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603001,'LG GS66BPM',7,2999.00,'2024-11-23','refrigeradora','Refrigeradora 660L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603002,'LG GS66SDP',9,4499.00,'2024-11-28','refrigeradora','Refrigeradora 660L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603003,'LG LS51BPP',6,2199.00,'2024-11-04','refrigeradora','Refrigeradora 510L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603004,'LG GS51MPD',8,2298.00,'2024-11-12','refrigeradora','Refrigeradora 510L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603005,'LG GS66SXN',7,4999.00,'2024-11-23','refrigeradora','Refrigeradora 660L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603006,'LG GS66SGP',8,4599.00,'2024-11-24','refrigeradora','Refrigeradora 660L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603007,'LG GS66SXT',7,5999.00,'2024-11-27','refrigeradora','Refrigeradora 660L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603008,'LG LS66SPP',6,6299.00,'2024-11-21','refrigeradora','Refrigeradora 660L, No Frost, con tecnología DoorCooling+ y compresor Inverter Linear.',1),
(603009,'SAMSUNG RT31DG5120S9PE',8,1499.00,'2024-11-28','refrigeradora','Refrigeradora 315L, No Frost, con tecnología Twin Cooling Plus y panel digital.',1),
(603010,'SAMSUNG RS60T5200B1/PE',9,4199.00,'2024-12-28','refrigeradora','Refrigeradora 600L, Side-by-Side, No Frost, con tecnología Twin Cooling Plus.',1),
(603011,'SAMSUNG RB33J3830SA/PE',7,1999.00,'2024-10-28','refrigeradora','Refrigeradora 330L, No Frost, con tecnología Digital Inverter y panel táctil.',1),
(603012,'SAMSUNG RT38DG6730B1PE',8,2049.00,'2024-12-18','refrigeradora','Refrigeradora 380L, No Frost, con tecnología Twin Cooling Plus y tecnología Digital Inverter.',1),
(603013,'SAMSUNG RS27T5561B1/PE',9,7099.00,'2024-11-14','refrigeradora','Refrigeradora 670L, Side-by-Side, No Frost, con tecnología Family Hub y FlexZone.',1),
(603014,'SAMSUNG RT31DG5220S9PE',8,1799.00,'2024-11-22','refrigeradora','Refrigeradora 320L, No Frost, con tecnología Digital Inverter y Twin Cooling Plus.',1),
(603015,'SAMSUNG RS57DG4000M9PE',9,3599.00,'2024-11-24','refrigeradora','Refrigeradora 570L, Side-by-Side, No Frost, con tecnología Twin Cooling Plus.',1),
(603016,'SAMSUNG RS57DG4100B4PE',8,3999.00,'2024-11-23','refrigeradora','Refrigeradora 570L, Side-by-Side, No Frost, con tecnología Twin Cooling Plus y panel táctil.',1),
(603017,'SAMSUNG RS65R5691B4/PE',9,4899.00,'2024-11-27','refrigeradora','Refrigeradora 650L, Side-by-Side, No Frost, con tecnología SpaceMax y tecnología Digital Inverter.',1),
(603018,'ELECTROLUX IB45S',6,1999.00,'2024-11-28','refrigeradora','Refrigeradora 450L, No Frost, con tecnología Smart Frost y control electrónico.',1),
(603019,'ELECTROLUX ERSA53V2HVG',7,1899.00,'2024-11-28','refrigeradora','Refrigeradora 530L, No Frost, con tecnología inverter y sistema de control digital.',1),
(603020,'ELECTROLUX ERT32G2KSQS',5,1299.00,'2024-11-28','refrigeradora','Refrigeradora 320L, No Frost, con control digital y tecnología de ahorro de energía.',1),
(603021,'ELECTROLUX ERFWV2HUS',6,1899.00,'2024-11-28','refrigeradora','Refrigeradora 300L, No Frost, con sistema de control electrónico y tecnología para mantener frescos los alimentos por más tiempo.',1),
(603022,'ELECTROLUX ERSA53K2HVB',7,2349.00,'2024-11-28','refrigeradora','Refrigeradora 530L, No Frost, con tecnología Smart Frost y control digital de temperatura.',1),
(603023,'ELECTROLUX ERDM26F2HPS',5,749.00,'2024-11-28','refrigeradora','Refrigeradora 260L, No Frost, con tecnología de ahorro energético y control de temperatura eficiente.',1),
(603024,'ELECTROLUX ERS432HBWD',6,2199.00,'2024-11-28','refrigeradora','Refrigeradora 430L, No Frost, con tecnología de ahorro energético y control electrónico de temperatura.',1);
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promocion`
--

DROP TABLE IF EXISTS `Promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promocion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Producto` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descuento` decimal(3,2) NOT NULL DEFAULT 0.00,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `ID_Administrador` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`ID_Producto`),
  KEY `ID_Producto` (`ID_Producto`),
  KEY `ID_Administrador` (`ID_Administrador`),
  CONSTRAINT `Promocion_ibfk_1` FOREIGN KEY (`ID_Producto`) REFERENCES `Producto` (`ID`),
  CONSTRAINT `Promocion_ibfk_2` FOREIGN KEY (`ID_Administrador`) REFERENCES `Administrador_productos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promocion`
--

LOCK TABLES `Promocion` WRITE;
/*!40000 ALTER TABLE `Promocion` DISABLE KEYS */;
INSERT INTO `Promocion` VALUES
(1,203014,'Internet',0.15,'2024-11-05','2024-12-05',1);
/*!40000 ALTER TABLE `Promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Realiza_Compra`
--

DROP TABLE IF EXISTS `Realiza_Compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Realiza_Compra` (
  `ID_Cliente` bigint(20) unsigned NOT NULL DEFAULT 0,
  `ID_Compra` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID_Cliente`,`ID_Compra`),
  KEY `ID_Compra` (`ID_Compra`),
  CONSTRAINT `Realiza_Compra_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `Cliente` (`ID`),
  CONSTRAINT `Realiza_Compra_ibfk_2` FOREIGN KEY (`ID_Compra`) REFERENCES `Compra` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Realiza_Compra`
--

LOCK TABLES `Realiza_Compra` WRITE;
/*!40000 ALTER TABLE `Realiza_Compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Realiza_Compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Refrigeradora`
--

DROP TABLE IF EXISTS `Refrigeradora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Refrigeradora` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `capacidad` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Refrigeradora_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Electrodomestico` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Refrigeradora`
--

LOCK TABLES `Refrigeradora` WRITE;
/*!40000 ALTER TABLE `Refrigeradora` DISABLE KEYS */;
INSERT INTO `Refrigeradora` VALUES
(603000,660,'doble puerta'),
(603001,660,'doble puerta'),
(603002,660,'doble puerta'),
(603003,510,'doble puerta'),
(603004,510,'doble puerta'),
(603005,660,'doble puerta'),
(603006,660,'doble puerta'),
(603007,660,'doble puerta'),
(603008,660,'doble puerta'),
(603009,315,'doble puerta'),
(603010,600,'doble puerta'),
(603011,330,'doble puerta'),
(603012,380,'doble puerta'),
(603013,670,'doble puerta'),
(603014,320,'doble puerta'),
(603015,570,'doble puerta'),
(603016,570,'doble puerta'),
(603017,650,'doble puerta'),
(603018,450,'doble puerta'),
(603019,530,'doble puerta'),
(603020,320,'doble puerta'),
(603021,530,'doble puerta'),
(603022,530,'doble puerta'),
(603023,260,'una puerta'),
(603024,430,'doble puerta');
/*!40000 ALTER TABLE `Refrigeradora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ropa`
--

DROP TABLE IF EXISTS `Ropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ropa` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `genero` char(1) NOT NULL DEFAULT '',
  `talla` char(2) NOT NULL DEFAULT '',
  `estilo` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Ropa_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Moda` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ropa`
--

LOCK TABLES `Ropa` WRITE;
/*!40000 ALTER TABLE `Ropa` DISABLE KEYS */;
INSERT INTO `Ropa` VALUES
(201000,'M','L','deportivo'),
(201001,'M','L','formal'),
(201002,'M','L','deportivo'),
(201003,'M','L','formal'),
(201004,'M','L','clásico'),
(201005,'F','M','casual'),
(201006,'M','L','casual'),
(201007,'F','S','primaveral'),
(201008,'M','L','urbano'),
(201009,'F','L','formal'),
(201010,'M','L','casual'),
(201011,'F','S','elegante'),
(201012,'F','M','deportivo'),
(201013,'U','L','casual'),
(201014,'F','S','formal'),
(201015,'F','S','veraniego'),
(201016,'F','M','moderno'),
(201017,'M','L','urbano'),
(201018,'M','M','casual'),
(201019,'M','M','urbano'),
(201020,'M','M','moderno'),
(201021,'F','L','outdoor'),
(201022,'U','M','casual'),
(201023,'F','S','deportivo'),
(201024,'M','L','formal');
/*!40000 ALTER TABLE `Ropa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Silla`
--

DROP TABLE IF EXISTS `Silla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Silla` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `tipo` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Silla_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Mueble` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Silla`
--

LOCK TABLES `Silla` WRITE;
/*!40000 ALTER TABLE `Silla` DISABLE KEYS */;
INSERT INTO `Silla` VALUES
(303000,'comedor'),
(303001,'oficina'),
(303002,'eventos'),
(303003,'gamer'),
(303004,'mecedora'),
(303005,'comedor'),
(303006,'oficina'),
(303007,'infantil'),
(303008,'bar'),
(303009,'eventos'),
(303010,'comedor'),
(303011,'oficina'),
(303012,'reclinable'),
(303013,'terraza'),
(303014,'eventos'),
(303015,'gamer'),
(303016,'decorativa'),
(303017,'bar'),
(303018,'comedor'),
(303019,'oficina'),
(303020,'jardín'),
(303021,'multiuso'),
(303022,'comedor'),
(303023,'comedor'),
(303024,'oficina');
/*!40000 ALTER TABLE `Silla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Smartphone`
--

DROP TABLE IF EXISTS `Smartphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Smartphone` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `modelo` varchar(20) NOT NULL DEFAULT '',
  `almacenamiento` int(11) NOT NULL DEFAULT 0,
  `RAM` int(11) NOT NULL DEFAULT 0,
  `resolucion_camara` int(11) NOT NULL DEFAULT 0,
  `tamaño_pantalla` int(11) NOT NULL DEFAULT 0,
  `capacidad_bateria` int(11) NOT NULL DEFAULT 0,
  `SO` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  CONSTRAINT `Smartphone_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Electronica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Smartphone`
--

LOCK TABLES `Smartphone` WRITE;
/*!40000 ALTER TABLE `Smartphone` DISABLE KEYS */;
INSERT INTO `Smartphone` VALUES
(103000,'Galaxy S23',128,8,50,6,4000,'Android'),
(103001,'iPhone 15',128,6,48,6,3300,'iOS'),
(103002,'Pixel 8',128,8,50,6,4300,'Android'),
(103003,'11',256,16,50,6,5000,'Android'),
(103004,'13 Pro',256,12,50,6,4820,'Android'),
(103005,'Galaxy Z Fold 5',512,12,50,7,4400,'Android'),
(103006,'iPhone 14 Pro Max',512,6,48,6,4323,'iOS'),
(103007,'Edge 40',128,8,50,6,4600,'Android'),
(103008,'GT 2 Pro',256,12,50,6,5000,'Android'),
(103009,'Find X5 Pro',256,12,50,6,5000,'Android'),
(103010,'V27 Pro',128,8,50,6,4600,'Android'),
(103011,'Magic 5 Pro',256,12,50,6,5100,'Android'),
(103012,'Xperia 1 IV',128,8,48,6,5000,'Android'),
(103013,'ROG Phone 7',256,16,50,6,6000,'Android'),
(103014,'Pixel 7a',128,6,12,6,4385,'Android'),
(103015,'Redmi Note 12',128,4,50,6,5000,'Android'),
(103016,'X30 5G',128,6,50,6,4200,'Android'),
(103017,'11 Pro+',256,8,200,6,5000,'Android'),
(103018,'90',128,8,200,6,5000,'Android'),
(103019,'Zero 30',128,8,108,6,5000,'Android'),
(103020,'Galaxy A54',128,6,50,6,5000,'Android'),
(103021,'Reno 9 Pro+',256,12,50,6,4500,'Android'),
(103022,'Zenfone 9',128,8,50,5,4300,'Android'),
(103023,'Agni 2',128,8,50,6,4500,'Android'),
(103024,'Phantom X2',256,12,50,6,5000,'Android');
/*!40000 ALTER TABLE `Smartphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sofa`
--

DROP TABLE IF EXISTS `Sofa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sofa` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `capacidad` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Sofa_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Mueble` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sofa`
--

LOCK TABLES `Sofa` WRITE;
/*!40000 ALTER TABLE `Sofa` DISABLE KEYS */;
INSERT INTO `Sofa` VALUES
(301000,6),
(301001,2),
(301002,3),
(301003,5),
(301004,2),
(301005,2),
(301006,1),
(301007,3),
(301008,2),
(301009,2),
(301010,2),
(301011,8),
(301012,2),
(301013,3),
(301014,1),
(301015,3),
(301016,4),
(301017,4),
(301018,3),
(301019,1),
(301020,3),
(301021,2),
(301022,2),
(301023,8),
(301024,5);
/*!40000 ALTER TABLE `Sofa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Televisor`
--

DROP TABLE IF EXISTS `Televisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Televisor` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `tipo_pantalla` varchar(10) NOT NULL DEFAULT '',
  `tamaño_pantalla` int(11) NOT NULL DEFAULT 0,
  `resolucion` varchar(10) NOT NULL DEFAULT '',
  `consumo_energia` int(11) NOT NULL DEFAULT 0,
  `smartTV` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Televisor_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Electronica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Televisor`
--

LOCK TABLES `Televisor` WRITE;
/*!40000 ALTER TABLE `Televisor` DISABLE KEYS */;
INSERT INTO `Televisor` VALUES
(102000,'QLED',55,'4K',150,1),
(102001,'OLED',65,'4K',120,1),
(102002,'LED',50,'4K',110,1),
(102003,'LED',55,'4K',100,1),
(102004,'LED',43,'Full HD',90,1),
(102005,'LED',55,'4K',120,1),
(102006,'LED',65,'4K',140,1),
(102007,'OLED',55,'4K',110,1),
(102008,'LED',75,'4K',160,1),
(102009,'LED',60,'4K',130,1),
(102010,'LED',43,'Full HD',80,1),
(102011,'LED',55,'4K',110,1),
(102012,'QLED',75,'4K',180,1),
(102013,'LED',65,'4K',120,1),
(102014,'LED',50,'4K',100,1),
(102015,'LED',43,'Full HD',90,0),
(102016,'LED',50,'4K',110,1),
(102017,'LED',55,'4K',120,1),
(102018,'LED',65,'4K',130,1),
(102019,'LED',55,'4K',120,1),
(102020,'OLED',65,'4K',130,1),
(102021,'OLED',48,'4K',100,1),
(102022,'LED',32,'HD',80,0),
(102023,'LED',65,'4K',130,1),
(102024,'LED',65,'4K',140,1);
/*!40000 ALTER TABLE `Televisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `correo` text NOT NULL DEFAULT '',
  `contraseña` text NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Variante`
--

DROP TABLE IF EXISTS `Variante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Variante` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Producto` int(11) NOT NULL DEFAULT 0,
  `color` varchar(10) NOT NULL DEFAULT '',
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `ID_Administrador` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`,`ID_Producto`),
  KEY `ID_Producto` (`ID_Producto`),
  KEY `ID_Administrador` (`ID_Administrador`),
  CONSTRAINT `Variante_ibfk_1` FOREIGN KEY (`ID_Producto`) REFERENCES `Producto` (`ID`),
  CONSTRAINT `Variante_ibfk_2` FOREIGN KEY (`ID_Administrador`) REFERENCES `Administrador_productos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Variante`
--

LOCK TABLES `Variante` WRITE;
/*!40000 ALTER TABLE `Variante` DISABLE KEYS */;
INSERT INTO `Variante` VALUES
(1,203014,'#282a36',15,1);
/*!40000 ALTER TABLE `Variante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('soJzlUufUZa8XbpyAzEzHzoMCqRtn8h7M2JTcYQ4',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidk5ZM3NHZU5KSEFqT2NhT0tvS1IxSTB1S0RNcUV1ZUREcnViR2NCVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0b3MvaW5mb3JtYXRpb24/Y2F0ZWdvcmllPWp1Z3VldGVzLWNvbnN0cnVjY2lvbiZpZD01MDEwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1734146329),
('uMbXd2fYCBK1KbqjtQWgikj7kF1ejUW0XPtnT8zb',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnduc0JWaUpUdGRVM3hnNWo0RHY5ZkRHcnA4MlczdExGU21FcUtaUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0b3M/cGFnZT0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1734144052);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'chocek@prueba.com',NULL,'$2y$12$HInTKpgQH5q86vtzg9LVMO0sFzUAhqReujDjZVDASlvH/RC/xMhvm',NULL,'2024-12-05 20:18:07','2024-12-05 20:18:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Ripley'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createPromotion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `createPromotion`(IN producto int, IN nombre varchar(100), IN descuento decimal(3,2), IN inicio date, IN fin date, IN administrador bigint(20))
BEGIN 
	INSERT INTO Promocion(ID_Producto, nombre, descuento, fecha_inicio, fecha_fin, ID_Administrador) VALUES(producto, nombre, descuento, inicio, fin, administrador);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createVariant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `createVariant`(IN producto int, IN color varchar(10), IN cantidad int, IN administrador int)
BEGIN
	INSERT INTO Variante(ID_Producto, color, cantidad, ID_Administrador) VALUES (producto, color, cantidad, administrador);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationAccessories` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationAccessories`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Moda.material AS Material,
    Moda.marca AS Marca,
    Moda.tipo AS Tipo
	FROM Producto
    INNER JOIN Moda ON Producto.ID = Moda.ID
    INNER JOIN Accesorios ON Producto.ID  = Accesorios.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InformationBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `InformationBoard`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Juguetes.edad_recomendada AS edad_recomendada,
        Juguetes.marca AS marca,
        Juegos_mesa.numero_jugadores AS numero_jugadores,
        Juegos_mesa.tematica AS tematica
    FROM Producto
    INNER JOIN Juguetes ON Producto.ID = Juguetes.ID
    INNER JOIN Juegos_mesa ON Juguetes.ID = Juegos_mesa.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationChair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationChair`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Mueble.largo AS Largo,
    Mueble.alto AS Alto,
    Mueble.ancho AS Ancho,
    Mueble.peso AS Peso,
    Mueble.material AS Material,
    Silla.tipo AS Tipo
	FROM Producto
    INNER JOIN Mueble ON Producto.ID = Mueble.ID
    INNER JOIN Silla ON Mueble.ID = Silla.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationClothes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationClothes`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Moda.material AS Material,
    Moda.marca AS Marca,
    Moda.tipo AS Tipo,
    Ropa.genero AS Genero,
    Ropa.talla AS Talla,
    Ropa.estilo AS Estilo
	FROM Producto
    INNER JOIN Moda ON Producto.ID = Moda.ID
    INNER JOIN Ropa ON Producto.ID  = Ropa.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationComputer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationComputer`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Electronica.marca AS Marca,
    Computadora.modelo AS Modelo,
    Computadora.disco_dura AS DiscoDuro,
    Computadora.almacenamiento AS Almacenamiento,
    Computadora.RAM AS RAM,
    Computadora.procesador AS Procesador,
    Computadora.tarjeta_grafica AS TarjetaGrafica,
    Computadora.SO AS SistemaOperativo
FROM Producto
    INNER JOIN Electronica ON Producto.ID = Electronica.ID
    INNER JOIN Computadora ON Producto.ID = Computadora.ID
WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationConstruction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationConstruction`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Juguetes.edad_recomendada AS edad_recomendada,
        Juguetes.marca AS marca,
        Construccion.numero_piezas AS numero_piezas,
        Construccion.material AS material
    FROM Producto
    INNER JOIN Juguetes ON Producto.ID = Juguetes.ID
    INNER JOIN Construccion ON Juguetes.ID = Construccion.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationCouch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationCouch`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Mueble.largo AS Largo,
    Mueble.alto AS Alto,
    Mueble.ancho AS Ancho,
    Mueble.peso AS Peso,
    Mueble.material AS Material,
    Sofa.capacidad AS Capacidad
	FROM Producto
    INNER JOIN Mueble ON Producto.ID = Mueble.ID
    INNER JOIN Sofa ON Mueble.ID = Sofa.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationCream` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationCream`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Belleza_Cuidado.marca AS Marca,
        Belleza_Cuidado.tipo AS Tipo,
        Crema.cantidad AS Cantidad,
        Crema.ingredientes AS Ingredientes
    FROM Producto
    INNER JOIN Belleza_Cuidado ON Producto.ID = Belleza_Cuidado.ID
    INNER JOIN Crema ON Belleza_Cuidado.ID = Crema.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationDolls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationDolls`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Juguetes.edad_recomendada AS edad_recomendada,
        Juguetes.marca AS marca,
        Muñecos.tamaño AS tamaño,
        Muñecos.personaje AS personaje,
        Muñecos.material AS material
    FROM Producto
    INNER JOIN Juguetes ON Producto.ID = Juguetes.ID
    INNER JOIN Muñecos ON Juguetes.ID = Muñecos.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationFootwear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationFootwear`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Moda.material AS Material,
    Moda.marca AS Marca,
    Moda.tipo AS Tipo,
	Calsado.genero AS Genero,
    Calsado.talla AS Talla
	FROM Producto
    INNER JOIN Moda ON Producto.ID = Moda.ID
    INNER JOIN Calsado ON Producto.ID  = Calsado.ID
  	WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationKitchen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationKitchen`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Electrodomestico.largo AS Largo,
        Electrodomestico.alto AS Alto,
        Electrodomestico.ancho AS Ancho,
        Electrodomestico.consumo_energia AS ConsumoEnergia,
        Electrodomestico.peso AS Peso,
        Electrodomestico.marca AS Marca,
        Cocina.numero_hornillas AS NumeroHornillas,
        Cocina.tipo AS Tipo
    FROM Producto
    INNER JOIN Electrodomestico ON Producto.ID = Electrodomestico.ID
    INNER JOIN Cocina ON Electrodomestico.ID = Cocina.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationMakeup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationMakeup`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Belleza_Cuidado.marca AS Marca,
        Belleza_Cuidado.tipo AS Tipo,
        Maquillaje.peso AS Peso,
        Maquillaje.ingredientes AS Ingredientes
    FROM Producto
    INNER JOIN Belleza_Cuidado ON Producto.ID = Belleza_Cuidado.ID
    INNER JOIN Maquillaje ON Belleza_Cuidado.ID = Maquillaje.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationPerfume` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationPerfume`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Belleza_Cuidado.marca AS Marca,
        Belleza_Cuidado.tipo AS Tipo,
        Perfume.cantidad AS Cantidad,
        Perfume.genero AS Genero
    FROM Producto
    INNER JOIN Belleza_Cuidado ON Producto.ID = Belleza_Cuidado.ID
    INNER JOIN Perfume ON Belleza_Cuidado.ID = Perfume.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationRefrigerator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationRefrigerator`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Electrodomestico.largo AS Largo,
        Electrodomestico.alto AS Alto,
        Electrodomestico.ancho AS Ancho,
        Electrodomestico.consumo_energia AS ConsumoEnergia,
        Electrodomestico.peso AS Peso,
        Electrodomestico.marca AS Marca,
        Refrigeradora.capacidad AS Capacidad,
        Refrigeradora.tipo AS Tipo
    FROM Producto
    INNER JOIN Electrodomestico ON Producto.ID = Electrodomestico.ID
    INNER JOIN Refrigeradora ON Electrodomestico.ID = Refrigeradora.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationSmartphone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationSmartphone`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Electronica.marca AS Marca,
    Smartphone.modelo AS Modelo,
    Smartphone.almacenamiento AS Almacenamiento,
    Smartphone.RAM AS RAM,
    Smartphone.resolucion_camara AS ResolucionCamara,
    Smartphone.tamaño_pantalla AS TamañoPantalla,
    Smartphone.capacidad_bateria AS CapacidadBateria,
    Smartphone.SO AS SistemaOperativo
FROM Producto
    INNER JOIN Electronica ON Producto.ID = Electronica.ID
    INNER JOIN Smartphone ON Producto.ID = Smartphone.ID
WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationTable`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Mueble.largo AS Largo,
    Mueble.alto AS Alto,
    Mueble.ancho AS Ancho,
    Mueble.peso AS Peso,
    Mueble.material AS Material,
    Mesa.tipo AS Tipo
	FROM Producto
    INNER JOIN Mueble ON Producto.ID = Mueble.ID
    INNER JOIN Mesa ON Mueble.ID = Mesa.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationTV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationTV`(IN `id` INT)
BEGIN
SELECT
    Producto.ID AS id,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria,
    Producto.descripcion AS descripcion,
    Electronica.marca AS Marca,
    Televisor.tipo_pantalla AS TipoPantalla,
    Televisor.tamaño_pantalla AS TamañoPantalla,
    Televisor.resolucion AS Resolucion,
    Televisor.consumo_energia AS ConsumoEnergia,
    Televisor.smartTV AS SmartTV
FROM Producto
    INNER JOIN Electronica ON Producto.ID = Electronica.ID
    INNER JOIN Televisor ON Producto.ID = Televisor.ID
WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `informationWashing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `informationWashing`(IN `id` INT)
BEGIN
    SELECT
        Producto.ID AS id,
        Producto.nombre AS nombre,
        Producto.precio AS precio,
        Producto.categoria AS categoria,
        Producto.descripcion AS descripcion,
        Electrodomestico.largo AS Largo,
        Electrodomestico.alto AS Alto,
        Electrodomestico.ancho AS Ancho,
        Electrodomestico.consumo_energia AS ConsumoEnergia,
        Electrodomestico.peso AS Peso,
        Electrodomestico.marca AS Marca,
        Lavadora.capacidad_carga AS CapacidadCarga,
        Lavadora.tipo AS Tipo
    FROM Producto
    INNER JOIN Electrodomestico ON Producto.ID = Electrodomestico.ID
    INNER JOIN Lavadora ON Electrodomestico.ID = Lavadora.ID
    WHERE Producto.ID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Accesorios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Accesorios`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `material` VARCHAR(20), IN `marca` VARCHAR(20), IN `tipo` VARCHAR(15), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Accesorios;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 202000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Moda", descripcion, administrador);
    
    INSERT INTO Moda VALUES(NEW_ID, material, marca, tipo);
    
    INSERT INTO Accesorios VALUES(NEW_ID);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Calsado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Calsado`(IN `nombre` varchar(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `material` VARCHAR(20), IN `marca` VARCHAR(20), IN `tipo` VARCHAR(15), IN `genero` CHAR(1), IN `talla` INT, IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Calsado;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 203000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Moda", descripcion, administrador);
    
    INSERT INTO Moda VALUES(NEW_ID, material, marca, tipo);
    
    INSERT INTO Calsado VALUES(NEW_ID, genero, talla);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Cocina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Cocina`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `largo` INT, IN `alto` INT, IN `ancho` INT, IN `consumo` INT, IN `peso` INT, IN `marca` VARCHAR(20), IN `hornillas` INT, IN `tipo` VARCHAR(10), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Cocina;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 602000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Electrodomestico", descripcion, administrador);
    
    INSERT INTO Electrodomestico VALUES(NEW_ID, largo, alto, ancho, consumo, peso, marca);
    
    INSERT INTO Cocina VALUES(NEW_ID, hornillas, tipo);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Computadora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Computadora`(IN `nombre` varchar(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `marca` VARCHAR(30), IN `modelo` VARCHAR(20), IN `disco` VARCHAR(5), IN `almacenamiento` INT, IN `RAM` INT, IN `procesador` VARCHAR(30), IN `tarjeta` VARCHAR(30), IN `SO` VARCHAR(30), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Computadora;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 101000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Electronica", descripcion, administrador);
    
    INSERT INTO Electronica VALUES(NEW_ID, marca);
    
    INSERT INTO Computadora VALUES(NEW_ID, modelo, disco, almacenamiento, RAM, procesador, tarjeta, SO);

    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Construccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Construccion`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `edad` INT, IN `marca` VARCHAR(35), IN `piezas` INT, IN `material` VARCHAR(10), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Construccion;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 501000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Juguetes", descripcion, administrador);
    
    INSERT INTO Juguetes VALUES(NEW_ID, edad, marca);
    
    INSERT INTO Construccion VALUES(NEW_ID, piezas, material);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Crema` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Crema`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `marca` VARCHAR(15), IN `tipo` VARCHAR(15), IN `cantidad` INT, IN `ingredientes` TEXT, IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Crema;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 402000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Belleza_Cuidado", descripcion, administrador);
    
    INSERT INTO Belleza_Cuidado VALUES(NEW_ID, marca, tipo);
    
    INSERT INTO Crema VALUES(NEW_ID, cantidad, ingredientes);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_JuegosMesa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_JuegosMesa`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `edad` INT, IN `marca` VARCHAR(35), IN `jugadores` INT, IN `tematica` VARCHAR(20), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Juegos_mesa;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 502000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Juguetes", descripcion, administrador);
    
    INSERT INTO Juguetes VALUES(NEW_ID, edad, marca);
    
    INSERT INTO Juegos_mesa VALUES(NEW_ID, jugadores, tematica);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Lavadora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Lavadora`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `largo` INT, IN `alto` INT, IN `ancho` INT, IN `consumo` INT, IN `peso` INT, IN `marca` VARCHAR(20), IN `capacidad` INT, IN `tipo` VARCHAR(15), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Lavadora;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 601000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Electrodomestico", descripcion, administrador);
    
    INSERT INTO Electrodomestico VALUES(NEW_ID, largo, alto, ancho, consumo, peso, marca);
    
    INSERT INTO Lavadora VALUES(NEW_ID, capacidad, tipo);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Maquillage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Maquillage`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `marca` VARCHAR(15), IN `tipo` VARCHAR(15), IN `peso` INT, IN `ingredientes` TEXT, IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Maquillaje;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 403000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Belleza_Cuidado", descripcion, administrador);
    
    INSERT INTO Belleza_Cuidado VALUES(NEW_ID, marca, tipo);
    
    INSERT INTO Maquillaje VALUES(NEW_ID, peso, ingredientes);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Mesa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Mesa`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `largo` INT, IN `alto` INT, IN `ancho` INT, IN `peso` INT, IN `material` VARCHAR(15), IN `tipo` VARCHAR(15), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Mesa;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 302000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Mueble", descripcion, administrador);
    
    INSERT INTO Mueble VALUES(NEW_ID, largo, alto, ancho, peso, material);
    
    INSERT INTO Mesa VALUES(NEW_ID, tipo);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Muñecos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Muñecos`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `edad` INT, IN `marca` VARCHAR(35), IN `tamaño` INT, IN `personaje` VARCHAR(20), IN `material` VARCHAR(10), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Muñecos;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 503000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Juguetes", descripcion, administrador);
    
    INSERT INTO Juguetes VALUES(NEW_ID, edad, marca);
    
    INSERT INTO Muñecos VALUES(NEW_ID, tamaño, personaje, material);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Perfume` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Perfume`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `marca` VARCHAR(15), IN `tipo` VARCHAR(15), IN `cantidad` INT, IN `genero` CHAR(1), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Perfume;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 401000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Belleza_Cuidado", descripcion, administrador);
    
    INSERT INTO Belleza_Cuidado VALUES(NEW_ID, marca, tipo);
    
    INSERT INTO Perfume VALUES(NEW_ID, cantidad, genero);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Refrigeradora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Refrigeradora`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `largo` INT, IN `alto` INT, IN `ancho` INT, IN `consumo` INT, IN `peso` INT, IN `marca` VARCHAR(20), IN `capacidad` INT, IN `tipo` VARCHAR(25), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Refrigeradora;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 603000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Electrodomestico", descripcion, administrador);
    
    INSERT INTO Electrodomestico VALUES(NEW_ID, largo, alto, ancho, consumo, peso, marca);
    
    INSERT INTO Refrigeradora VALUES(NEW_ID, capacidad, tipo);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Ropa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Ropa`(IN `nombre` varchar(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `material` VARCHAR(20), IN `marca` VARCHAR(20), IN `tipo` VARCHAR(15), IN `genero` CHAR(1), IN `talla` CHAR(1), IN `estilo` VARCHAR(15), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Ropa;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 201000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Moda", descripcion, administrador);
    
    INSERT INTO Moda VALUES(NEW_ID, material, marca, tipo);
    
    INSERT INTO Ropa VALUES(NEW_ID, genero, talla, estilo);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Silla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Silla`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `largo` INT, IN `alto` INT, IN `ancho` INT, IN `peso` INT, IN `material` VARCHAR(15), IN `tipo` VARCHAR(15), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Silla;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 303000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Mueble", descripcion, administrador);
    
    INSERT INTO Mueble VALUES(NEW_ID, largo, alto, ancho, peso, material);
    
    INSERT INTO Silla VALUES(NEW_ID, tipo);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Smartphone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Smartphone`(IN `nombre` VARCHAR(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `marca` VARCHAR(30), IN `modelo` VARCHAR(20), IN `almacenamiento` INT, IN `RAM` INT, IN `resolucion` INT, IN `tamaño` INT, IN `capacidad` INT, IN `SO` VARCHAR(10), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Smartphone;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 103000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Electronica", descripcion, administrador);
    
    INSERT INTO Electronica VALUES(NEW_ID, marca);
    
    INSERT INTO Smartphone VALUES(NEW_ID, modelo, almacenamiento, RAM, resolucion, tamaño, capacidad, SO);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Sofa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Sofa`(IN `nombre` varchar(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `largo` INT, IN `alto` INT, IN `ancho` INT, IN `peso` INT, IN `material` VARCHAR(15), IN `capacidad` INT, IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Sofa;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 301000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Mueble", descripcion, administrador);
    
    INSERT INTO Mueble VALUES(NEW_ID, largo, alto, ancho, peso, material);
    
    INSERT INTO Sofa VALUES(NEW_ID, capacidad);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_Televisor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `insert_Televisor`(IN `nombre` varchar(100), IN `stock` INT, IN `precio` DECIMAL(65,2), IN `fecha` DATE, IN `descripcion` TEXT, IN `marca` VARCHAR(30), IN `tipo` VARCHAR(10), IN `tamaño` INT, IN `resolucion` VARCHAR(10), IN `consumo` INT, IN `smart` INT(1), IN `administrador` INT(11))
BEGIN
	DECLARE NEW_ID int;
    
    SELECT MAX(ID) INTO NEW_ID FROM Televisor;
    
    IF NEW_ID IS NULL THEN SET NEW_ID = 102000;
    ELSE SET NEW_ID = NEW_ID + 1;
    END IF;
    
    INSERT INTO Producto VALUES(NEW_ID, nombre, stock, precio, fecha, "Electronica", descripcion, administrador);
    
    INSERT INTO Electronica VALUES(NEW_ID, marca);
    
    INSERT INTO Televisor VALUES(NEW_ID, tipo, tamaño, resolucion, consumo, smart);
    
    SELECT NEW_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register_administrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `register_administrador`(IN `nombres` VARCHAR(60), IN `apellidos` VARCHAR(60), IN `email` VARCHAR(255), IN `psswd` VARCHAR(255))
BEGIN    
    DECLARE user_id BIGINT(20);
    
    SELECT users.id INTO user_id FROM users WHERE users.email = email LIMIT 1;
    
    IF user_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se encontró al usuario';
    END IF;
    
    SET @account = CONCAT('CREATE USER "', email, '"@"localhost" IDENTIFIED BY "', psswd, '"');
    PREPARE stmt FROM @account;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET @role = CONCAT('GRANT Administrador_Ripley TO "', email, '"@"localhost"');
    PREPARE stmt FROM @role;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET @default = CONCAT('SET DEFAULT ROLE Administrador_Ripley FOR "', email, '"@"localhost"');
    PREPARE stmt FROM @default;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    INSERT INTO Informacion(ID, nombres, apellidos) VALUES (user_id, nombres, apellidos);
    INSERT INTO Administrador_productos(ID) VALUES (user_id);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `register_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `register_cliente`(IN `nombres` VARCHAR(60), IN `apellidos` VARCHAR(60), IN `email` VARCHAR(255), IN `psswd` VARCHAR(255))
BEGIN    
    DECLARE user_id BIGINT(20);
    
    SELECT users.id INTO user_id FROM users WHERE users.email = email LIMIT 1;
    
    IF user_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se encontró al usuario';
    END IF;
    
    SET @account = CONCAT('CREATE USER "', email, '"@"localhost" IDENTIFIED BY "', psswd, '"');
    PREPARE stmt FROM @account;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET @role = CONCAT('GRANT Cliente_Ripley TO "', email, '"@"localhost"');
    PREPARE stmt FROM @role;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    SET @default = CONCAT('SET DEFAULT ROLE Cliente_Ripley FOR "', email, '"@"localhost"');
    PREPARE stmt FROM @default;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
    INSERT INTO Informacion(ID, nombres, apellidos) VALUES (user_id, nombres, apellidos);
    INSERT INTO Cliente(ID) VALUES (user_id);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showAccessories` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showAccessories`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Moda ON Producto.ID = Moda.ID
    INNER JOIN Accesorios ON Producto.ID  = Accesorios.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showBeauty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showBeauty`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Belleza_Cuidado ON Producto.ID = Belleza_Cuidado.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showBoard`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Juguetes ON Producto.ID = Juguetes.ID
    INNER JOIN Juegos_mesa ON Producto.ID = Juegos_mesa.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showChair` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showChair`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Mueble ON Producto.ID = Mueble.ID
    INNER JOIN Silla ON Producto.ID = Silla.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showClothes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showClothes`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Moda ON Producto.ID = Moda.ID
    INNER JOIN Ropa ON Producto.ID  = Ropa.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showComputer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showComputer`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electronica ON Producto.ID = Electronica.ID
    INNER JOIN Computadora ON Producto.ID = Computadora.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showConstruction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showConstruction`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Juguetes ON Producto.ID = Juguetes.ID
    INNER JOIN Construccion ON Producto.ID = Construccion.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showCouch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showCouch`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Mueble ON Producto.ID = Mueble.ID
    INNER JOIN Sofa ON Producto.ID = Sofa.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showCream` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showCream`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Belleza_Cuidado ON Producto.ID = Belleza_Cuidado.ID
    INNER JOIN Crema ON Producto.ID = Crema.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showDolls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showDolls`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Juguetes ON Producto.ID = Juguetes.ID
    INNER JOIN Muñecos ON Producto.ID = Muñecos.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showElectrodomestics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showElectrodomestics`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electrodomestico ON Producto.ID = Electrodomestico.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showElectronics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showElectronics`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electronica ON Producto.ID = Electronica.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showFashion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showFashion`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Moda ON Producto.ID = Moda.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showFootwear` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showFootwear`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Moda ON Producto.ID = Moda.ID
    INNER JOIN Calsado ON Producto.ID  = Calsado.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showFurniture` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showFurniture`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Mueble ON Producto.ID = Mueble.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showKitchen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showKitchen`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electrodomestico ON Producto.ID = Electrodomestico.ID
    INNER JOIN Cocina ON Producto.ID = Cocina.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showMakeup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showMakeup`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Belleza_Cuidado ON Producto.ID = Belleza_Cuidado.ID
    INNER JOIN Maquillaje ON Producto.ID = Maquillaje.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showPerfume` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showPerfume`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Belleza_Cuidado ON Producto.ID = Belleza_Cuidado.ID
    INNER JOIN Perfume ON Producto.ID = Perfume.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showProducts`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showRefrigerator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showRefrigerator`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electrodomestico ON Producto.ID = Electrodomestico.ID
    INNER JOIN Refrigeradora ON Producto.ID = Refrigeradora.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showSmartphone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showSmartphone`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electronica ON Producto.ID = Electronica.ID
    INNER JOIN Smartphone ON Producto.ID = Smartphone.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showTable`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Mueble ON Producto.ID = Mueble.ID
    INNER JOIN Mesa ON Producto.ID = Mesa.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showToys` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showToys`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Juguetes ON Producto.ID = Juguetes.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showTV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showTV`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electronica ON Producto.ID = Electronica.ID
    INNER JOIN Televisor ON Producto.ID = Televisor.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showWashing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`chocek`@`localhost` PROCEDURE `showWashing`(IN `limite` INT, IN `inicio` INT)
BEGIN
SELECT
    Producto.ID AS ID,
    Producto.nombre AS nombre,
    Producto.precio AS precio,
    Producto.categoria AS categoria
	FROM Producto
    INNER JOIN Electrodomestico ON Producto.ID = Electrodomestico.ID
    INNER JOIN Lavadora ON Producto.ID = Lavadora.ID
  LIMIT limite OFFSET inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-12-13 23:04:42
