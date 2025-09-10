-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemon
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `CityID` int NOT NULL AUTO_INCREMENT,
  `CityName` varchar(100) NOT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `CountryCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CityID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `countries` (`CountryCode`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Daruoyan','993-0031','CN'),(2,'Ongjin','216282','KP'),(3,'Quince Mil','663246','PE'),(4,'Susaki','987-0352','JP'),(5,'Tobruk','351 01','LY'),(6,'Rafael Hernandez Ochoa','93995','MX'),(7,'BelozÃƒÂ«rskoye','641360','RU'),(8,'PÃƒÂ³voa do Valado','3810-760','PT'),(9,'GalÃ¢â‚¬â„¢bshtadt','692769','RU'),(10,'Fuyang','649-6326','CN'),(11,'Pindiga','33619','NG'),(12,'Wakayama-shi','649-6326','JP'),(13,'Qingshan','353715','CN'),(14,'Pueblo Viejo','351 01','PA'),(15,'Chelbasskaya','353715','RU'),(16,'Leticia','910008','CO'),(17,'Bielefeld','33619','DE'),(18,'Kuzhu','993-0032','CN'),(19,'Kertamukti','1110210','ID'),(20,'Yeghegnut','1557174','AM'),(21,'Baisangguan','987-0353','CN'),(22,'FrantiÃ…Â¡kovy LÃƒÂ¡znÃ„â€º','352 01','CZ'),(23,'Tabu','1188725','ID'),(24,'DaÃ¢â‚¬â„¢anshan','1736090','CN'),(25,'Jelat','3810-761','ID'),(26,'Shuangqiao','692770','CN'),(27,'Mont-Royal','649-6327','CA'),(28,'Longzui','33620','CN'),(29,'Karanganyar','649-6327','ID'),(30,'Podkamennaya Tunguska','353716','RU'),(31,'Huangcun','352 01','CN'),(32,'Tyvriv','112351.3333','UA'),(33,'Zhuhu','-47696.66667','CN'),(34,'Zabrat','-207744.6667','AZ'),(35,'CambuÃƒÂ­','993-0033','BR'),(36,'Libei','2004138','CN'),(37,'Kubangwaru','2451102','ID'),(38,'Haradzyeya','987-0354','BY'),(39,'La Loma','353 01','PA'),(40,'El Triunfo de la Cruz','2283455','HN'),(41,'Izumi','2830820','JP'),(42,'BÃ…Â«laevo','3810-762','KZ'),(43,'Ovsyanka','692771','RU'),(44,'Pindiga','649-6328','NG'),(45,'Narathiwat','33621','TH'),(46,'Pacaraos','649-6328','PE'),(47,'Senanga','353717','ZM'),(48,'NotsÃƒÂ©','353 01','TG'),(49,'Morelos','-367792.6667','MX'),(50,'Phichai','-527840.6667','TH'),(51,'Shensuo','-687888.6667','CN'),(52,'Qulsary','993-0034','KZ'),(53,'El Alamo','2898066','MX'),(54,'Samanggen','3345030','ID'),(55,'Jinhai','987-0355','CN'),(56,'Matangshan','354 01','CN'),(57,'Ngarus','3378185','ID'),(58,'Stockholm','3925550','SE'),(59,'Petauke','3810-763','ZM'),(60,'Lorena','692772','BR'),(61,'Saint-Malo','649-6329','FR'),(62,'BÃ¡ÂºÂ¿n CÃ¡ÂºÂ§u','33622','VN'),(63,'Rancapare','649-6329','ID'),(64,'Mospyne','353718','UA'),(65,'Lewobelek','354 01','ID'),(66,'Novorossiysk','-847936.6667','RU'),(67,'Kyshtym','-1007984.667','RU'),(68,'Ntungamo','-1168032.667','UG'),(69,'Hancheng','993-0035','CN'),(70,'Dongxin','3791994','CN'),(71,'Shawan','4238958','CN'),(72,'Carromeu','987-0356','PT'),(73,'Kohila','355 01','EE'),(74,'Kizhinga','4472915','RU'),(75,'Bislig','5020280','PH'),(76,'Oji River','3810-764','NG'),(77,'Pisangkemeng','692773','ID'),(78,'Ulety','649-6330','RU'),(79,'Mogoditshane','33623','BW'),(80,'Guangshun','649-6330','CN'),(81,'Molagavita','353719','CO'),(82,'GareÃ…Â¡nica','355 01','HR'),(83,'Sanshan','-1328080.667','CN'),(84,'Youchou','-1488128.667','CN'),(85,'Voiron','-1648176.667','FR'),(86,'Leninsk','993-0036','RU'),(87,'Sinmak','4685922','KP'),(88,'Parigi','5132886','ID'),(89,'Ngedhusuba','987-0357','ID'),(90,'Mata-Utu','356 01','WF');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `CountryCode` varchar(10) NOT NULL,
  `CountryName` varchar(100) NOT NULL,
  PRIMARY KEY (`CountryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AM','Armenia'),('AZ','Azerbaijan'),('BR','Brazil'),('BW','Botswana'),('BY','Belarus'),('CA','Canada'),('CN','China'),('CO','Colombia'),('CZ','Czech Republic'),('DE','Germany'),('EE','Estonia'),('FR','France'),('HN','Honduras'),('HR','Croatia'),('ID','Indonesia'),('JP','Japan'),('KP','North Korea'),('KZ','Kazakhstan'),('LY','Libya'),('MX','Mexico'),('NG','Nigeria'),('PA','Panama'),('PE','Peru'),('PH','Philippines'),('PT','Portugal'),('RU','Russia'),('SE','Sweden'),('TG','Togo'),('TH','Thailand'),('UA','Ukraine'),('UG','Uganda'),('VN','Vietnam'),('WF','Wallis and Futuna'),('ZM','Zambia');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(100) NOT NULL,
  `CuisineName` varchar(50) DEFAULT NULL,
  `StarterName` varchar(100) DEFAULT NULL,
  `DesertName` varchar(100) DEFAULT NULL,
  `Drink` varchar(100) DEFAULT NULL,
  `Sides` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Greek salad','Greek','Olives','Greek yoghurt','Athens White wine','Tapas'),(2,'Bean soup','Italian','Flatbread','Ice cream','Corfu Red Wine','Potato salad'),(3,'Pizza','Italian','Minestrone','Cheesecake','Italian Coffee','Bruschetta'),(4,'Carbonara','Turkish','Tomato bread','Affogato','Roma Red wine','Focaccia'),(5,'Kabasa','Greek','Falafel','Turkish yoghurt','Ankara White Wine','Meatballs'),(6,'Shwarma','Italian','Hummus','Baklava','Turkish Coffee','Fries'),(7,'Greek salad','Italian','Olives','Greek yoghurt','Athens White wine','Tapas'),(8,'Bean soup','Turkish','Flatbread','Ice cream','Corfu Red Wine','Potato salad'),(9,'Pizza','Greek','Minestrone','Cheesecake','Italian Coffee','Bruschetta'),(10,'Carbonara','Italian','Tomato bread','Affogato','Roma Red wine','Focaccia'),(11,'Kabasa','Italian','Falafel','Turkish yoghurt','Ankara White Wine','Meatballs'),(12,'Shwarma','Turkish','Hummus','Baklava','Turkish Coffee','Fries'),(13,'Greek salad','Greek','Olives','Greek yoghurt','Athens White wine','Tapas'),(14,'Bean soup','Italian','Flatbread','Ice cream','Corfu Red Wine','Potato salad'),(15,'Pizza','Italian','Minestrone','Cheesecake','Italian Coffee','Bruschetta'),(16,'Carbonara','Turkish','Tomato bread','Affogato','Roma Red wine','Focaccia'),(17,'Kabasa','Greek','Falafel','Turkish yoghurt','Ankara White Wine','Meatballs'),(18,'Shwarma','Italian','Hummus','Baklava','Turkish Coffee','Fries'),(19,'Greek salad','Italian','Olives','Greek yoghurt','Athens White wine','Tapas'),(20,'Bean soup','Turkish','Olives','Ice cream','Corfu Red Wine','Potato salad'),(21,'Pizza','Greek','Flatbread','Cheesecake','Italian Coffee','Bruschetta'),(22,'Carbonara','Italian','Minestrone','Affogato','Roma Red wine','Focaccia'),(23,'Kabasa','Italian','Tomato bread','Turkish yoghurt','Ankara White Wine','Meatballs'),(24,'Shwarma','Turkish','Falafel','Baklava','Turkish Coffee','Fries'),(25,'Greek salad','Greek','Hummus','Greek yoghurt','Athens White wine','Tapas'),(26,'Bean soup','Italian','Olives','Ice cream','Corfu Red Wine','Potato salad'),(27,'Pizza','Italian','Flatbread','Cheesecake','Italian Coffee','Bruschetta'),(28,'Carbonara','Turkish','Minestrone','Affogato','Roma Red wine','Focaccia'),(29,'Kabasa','Greek','Tomato bread','Turkish yoghurt','Ankara White Wine','Meatballs'),(30,'Shwarma','Italian','Falafel','Baklava','Turkish Coffee','Fries'),(31,'Greek salad','Italian','Hummus','Greek yoghurt','Athens White wine','Tapas'),(32,'Bean soup','Turkish','Olives','Ice cream','Corfu Red Wine','Potato salad'),(33,'Pizza','Greek','Flatbread','Cheesecake','Italian Coffee','Bruschetta'),(34,'Carbonara','Italian','Minestrone','Affogato','Roma Red wine','Focaccia'),(35,'Kabasa','Italian','Tomato bread','Turkish yoghurt','Ankara White Wine','Meatballs'),(36,'Shwarma','Turkish','Falafel','Baklava','Turkish Coffee','Fries'),(37,'Greek salad','Greek','Hummus','Greek yoghurt','Athens White wine','Tapas'),(38,'Bean soup','Italian','Olives','Ice cream','Corfu Red Wine','Potato salad'),(39,'Pizza','Italian','Olives','Cheesecake','Italian Coffee','Bruschetta'),(40,'Carbonara','Turkish','Flatbread','Affogato','Roma Red wine','Focaccia'),(41,'Kabasa','Greek','Minestrone','Turkish yoghurt','Ankara White Wine','Meatballs'),(42,'Shwarma','Italian','Tomato bread','Baklava','Turkish Coffee','Fries'),(43,'Greek salad','Italian','Falafel','Greek yoghurt','Athens White wine','Tapas'),(44,'Bean soup','Turkish','Hummus','Ice cream','Corfu Red Wine','Potato salad'),(45,'Pizza','Greek','Olives','Cheesecake','Italian Coffee','Bruschetta'),(46,'Carbonara','Italian','Flatbread','Affogato','Roma Red wine','Focaccia'),(47,'Kabasa','Italian','Minestrone','Turkish yoghurt','Ankara White Wine','Meatballs'),(48,'Shwarma','Turkish','Tomato bread','Baklava','Turkish Coffee','Fries'),(49,'Greek salad','Greek','Falafel','Greek yoghurt','Athens White wine','Tapas'),(50,'Bean soup','Italian','Hummus','Ice cream','Corfu Red Wine','Potato salad'),(51,'Pizza','Italian','Olives','Cheesecake','Italian Coffee','Bruschetta'),(52,'Carbonara','Turkish','Flatbread','Affogato','Roma Red wine','Focaccia'),(53,'Kabasa','Greek','Minestrone','Turkish yoghurt','Ankara White Wine','Meatballs'),(54,'Shwarma','Italian','Tomato bread','Baklava','Turkish Coffee','Fries'),(55,'Greek salad','Italian','Falafel','Greek yoghurt','Athens White wine','Tapas'),(56,'Bean soup','Turkish','Hummus','Ice cream','Corfu Red Wine','Potato salad'),(57,'Pizza','Greek','Olives','Cheesecake','Italian Coffee','Bruschetta'),(58,'Carbonara','Italian','Olives','Affogato','Roma Red wine','Focaccia'),(59,'Kabasa','Italian','Flatbread','Turkish yoghurt','Ankara White Wine','Meatballs'),(60,'Shwarma','Turkish','Minestrone','Baklava','Turkish Coffee','Fries'),(61,'Greek salad','Greek','Tomato bread','Greek yoghurt','Athens White wine','Tapas'),(62,'Bean soup','Italian','Falafel','Ice cream','Corfu Red Wine','Potato salad'),(63,'Pizza','Italian','Hummus','Cheesecake','Italian Coffee','Bruschetta'),(64,'Carbonara','Turkish','Olives','Affogato','Roma Red wine','Focaccia'),(65,'Kabasa','Greek','Flatbread','Turkish yoghurt','Ankara White Wine','Meatballs'),(66,'Shwarma','Italian','Minestrone','Baklava','Turkish Coffee','Fries'),(67,'Greek salad','Italian','Tomato bread','Greek yoghurt','Athens White wine','Tapas'),(68,'Bean soup','Turkish','Falafel','Ice cream','Corfu Red Wine','Potato salad'),(69,'Pizza','Greek','Hummus','Cheesecake','Italian Coffee','Bruschetta'),(70,'Carbonara','Italian','Olives','Affogato','Roma Red wine','Focaccia'),(71,'Kabasa','Italian','Flatbread','Turkish yoghurt','Ankara White Wine','Meatballs'),(72,'Shwarma','Turkish','Minestrone','Baklava','Turkish Coffee','Fries'),(73,'Greek salad','Greek','Tomato bread','Greek yoghurt','Athens White wine','Tapas'),(74,'Bean soup','Italian','Falafel','Ice cream','Corfu Red Wine','Potato salad'),(75,'Pizza','Italian','Hummus','Cheesecake','Italian Coffee','Bruschetta'),(76,'Carbonara','Turkish','Olives','Affogato','Roma Red wine','Focaccia'),(77,'Kabasa','Greek','Olives','Turkish yoghurt','Ankara White Wine','Meatballs'),(78,'Shwarma','Italian','Flatbread','Baklava','Turkish Coffee','Fries'),(79,'Greek salad','Italian','Minestrone','Greek yoghurt','Athens White wine','Tapas'),(80,'Bean soup','Turkish','Tomato bread','Ice cream','Corfu Red Wine','Potato salad'),(81,'Pizza','Greek','Falafel','Cheesecake','Italian Coffee','Bruschetta'),(82,'Carbonara','Italian','Hummus','Affogato','Roma Red wine','Focaccia'),(83,'Kabasa','Italian','Olives','Turkish yoghurt','Ankara White Wine','Meatballs'),(84,'Shwarma','Turkish','Flatbread','Baklava','Turkish Coffee','Fries'),(85,'Greek salad','Greek','Minestrone','Greek yoghurt','Athens White wine','Tapas'),(86,'Bean soup','Italian','Tomato bread','Ice cream','Corfu Red Wine','Potato salad'),(87,'Pizza','Italian','Falafel','Cheesecake','Italian Coffee','Bruschetta'),(88,'Carbonara','Turkish','Hummus','Affogato','Roma Red wine','Focaccia'),(89,'Kabasa','Greek','Olives','Turkish yoghurt','Ankara White Wine','Meatballs'),(90,'Shwarma','Italian','Flatbread','Baklava','Turkish Coffee','Fries'),(91,'Greek salad','Italian','Minestrone','Greek yoghurt','Athens White wine','Tapas');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` varchar(20) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `CountryCode` varchar(10) DEFAULT NULL,
  `CityID` int DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `CityID_FK_idx` (`CityID`),
  CONSTRAINT `CityID_FK` FOREIGN KEY (`CityID`) REFERENCES `cities` (`CityID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('00-988-1489','Alard Briat','Kyshtym','Russia','-1007984.667','RU',NULL),('03-133-1843','Artair Lant','Ulety','Russia','649-6330','RU',NULL),('03-575-7094','Fielding Struys','Shensuo','China','-687888.6667','CN',NULL),('04-049-1006','Averell Joint','Hancheng','China','993-0035','CN',NULL),('04-268-9065','Sarah Plaschke','Narathiwat','Thailand','33621','TH',NULL),('04-699-2162','Margarita Mancktelow','Pindiga','Nigeria','33619','NG',NULL),('04-960-9928','Les Harmson','Podkamennaya Tunguska','Russia','353716','RU',NULL),('06-545-4037','Skipp Lowater','Pacaraos','Peru','649-6328','PE',NULL),('07-111-7669','Sabra Calbreath','FrantiÃ…Â¡kovy LÃƒÂ¡znÃ„â€º','Czech Republic','352 01','CZ',NULL),('07-925-9556','Lenci McFadzean','El Triunfo de la Cruz','Honduras','2283455','HN',NULL),('08-390-4691','Ennis Dungate','Pueblo Viejo','Panama','351 01','PA',NULL),('08-581-0238','Rosanne Zorzutti','Oji River','Nigeria','3810-764','NG',NULL),('09-427-8083','Darby McLae','Sinmak','North Korea','4685922','KP',NULL),('09-688-8521','Arthur Mathewson','Qingshan','China','353715','CN',NULL),('09-710-7305','Pincas Stearn','Bielefeld','Germany','33619','DE',NULL),('10-341-4047','Sheilah Maestro','BelozÃƒÂ«rskoye','Russia','641360','RU',NULL),('14-427-0652','Prudence Eastlake','Stockholm','Sweden','3925550','SE',NULL),('17-162-2135','Karoline Pocock','Bislig','Philippines','5020280','PH',NULL),('17-237-9919','Linc Martynov','Saint-Malo','France','649-6329','FR',NULL),('18-238-2784','Calvin Aucock','Ngarus','Indonesia','3378185','ID',NULL),('18-296-6063','Uriel Grooby','Izumi','Japan','2830820','JP',NULL),('19-112-3031','Mariquilla Labbe','NotsÃƒÂ©','Togo','353 01','TG',NULL),('21-282-1343','Magdalen Lacheze','Fuyang','China','649-6326','CN',NULL),('22-744-2112','Maighdiln Lamswood','Guangshun','China','649-6330','CN',NULL),('24-545-1124','Kaylyn Colebourne','Shuangqiao','China','692770','CN',NULL),('24-902-5422','Delilah Ayerst','Ngedhusuba','Indonesia','987-0357','ID',NULL),('25-492-4931','Deane Benbough','Dongxin','China','3791994','CN',NULL),('26-237-6257','Jillayne Gaiford','BÃ…Â«laevo','Kazakhstan','3810-762','KZ',NULL),('26-631-4044','Derry Davis','La Loma','Panama','353 01','PA',NULL),('29-631-4932','Ilario Michie','Pindiga','Nigeria','649-6328','NG',NULL),('30-395-2269','Phil Schapero','Rancapare','Indonesia','649-6329','ID',NULL),('35-042-6593','Horatio Lundy','Huangcun','China','352 01','CN',NULL),('36-854-2570','Mirna Rosita','Novorossiysk','Russia','-847936.6667','RU',NULL),('37-285-0504','Boot Burree','Baisangguan','China','987-0353','CN',NULL),('38-206-8901','Grenville Hyne','Shawan','China','4238958','CN',NULL),('38-254-0934','Cirilo Koschek','GareÃ…Â¡nica','Croatia','355 01','HR',NULL),('38-777-7517','Hynda Skeel','Mata-Utu','Wallis and Futuna','356 01','WF',NULL),('40-931-4451','Lilyan Schohier','Youchou','China','-1488128.667','CN',NULL),('42-037-9687','Roi Critzen','Leninsk','Russia','993-0036','RU',NULL),('42-286-4150','Emmalynne Hairs','Lewobelek','Indonesia','354 01','ID',NULL),('44-106-8726','Dyanne Labbet','Samanggen','Indonesia','3345030','ID',NULL),('45-879-0850','Sibley Rodder','Tyvriv','Ukraine','112351.3333','UA',NULL),('51-824-3545','Kele Bracknell','Pisangkemeng','Indonesia','692773','ID',NULL),('52-259-8758','Marielle Buffey','Mogoditshane','Botswana','33623','BW',NULL),('54-926-6336','Deina Agus','Molagavita','Colombia','353719','CO',NULL),('55-516-2272','Alison Jamieson','CambuÃƒÂ­','Brazil','993-0033','BR',NULL),('56-479-7571','Tiffani Halstead','Chelbasskaya','Russia','353715','RU',NULL),('58-749-9630','Cornelius Harkess','Morelos','Mexico','-367792.6667','MX',NULL),('59-450-2625','Jerrie Jiran','Lorena','Brazil','692772','BR',NULL),('60-238-7059','Erv Padrick','Phichai','Thailand','-527840.6667','TH',NULL),('60-742-1416','Giusto Sheavills','Mospyne','Ukraine','353718','UA',NULL),('65-353-0657','Giacopo Bramich','Ongjin','North Korea','216282','KP',NULL),('66-386-4902','Pen Pruce','Yeghegnut','Armenia','1557174','AM',NULL),('66-683-1761','Marlo McGeaney','Matangshan','China','354 01','CN',NULL),('72-013-3529','Ashil Brogini','Wakayama-shi','Japan','649-6326','JP',NULL),('72-055-7985','Laney Fadden','Daruoyan','China','993-0031','CN',NULL),('72-417-9175','Anders Stowe','DaÃ¢â‚¬â„¢anshan','China','1736090','CN',NULL),('72-486-1808','Konrad Standering','Sanshan','China','-1328080.667','CN',NULL),('73-000-6730','Christian Yeld','Parigi','Indonesia','5132886','ID',NULL),('73-873-4827','Merrill Baudon','Susaki','Japan','987-0352','JP',NULL),('75-558-6855','Roddie Winterbotham','Leticia','Colombia','910008','CO',NULL),('75-652-8475','Elsworth Stannas','Jinhai','China','987-0355','CN',NULL),('77-064-4656','Tiertza Doogan','Ovsyanka','Russia','692771','RU',NULL),('77-111-2020','Angel Veschambre','Rafael Hernandez Ochoa','Mexico','93995','MX',NULL),('78-492-1244','Dniren Copperwaite','Zhuhu','China','-47696.66667','CN',NULL),('79-082-9805','Locke Janaway','Jelat','Indonesia','3810-761','ID',NULL),('79-227-9821','Dre Danher','Libei','China','2004138','CN',NULL),('79-752-9044','Fayre Crocket','Kohila','Estonia','355 01','EE',NULL),('80-467-4735','Ferdinand Fowley','Ntungamo','Uganda','-1168032.667','UG',NULL),('80-927-5246','Tasia Fautly','Tobruk','Libya','351 01','LY',NULL),('81-286-3465','Eva Dulake','Voiron','France','-1648176.667','FR',NULL),('81-678-3234','Tony Crabtree','Kuzhu','China','993-0032','CN',NULL),('82-278-5664','Maddalena Wolfinger','Senanga','Zambia','353717','ZM',NULL),('83-465-8495','Purcell Eyer','Qulsary','Kazakhstan','993-0034','KZ',NULL),('83-800-4789','Audie Willcocks','PÃƒÂ³voa do Valado','Portugal','3810-760','PT',NULL),('83-988-2186','Tamarah Filasov','Kertamukti','Indonesia','1110210','ID',NULL),('84-136-7752','Obidiah Zanicchi','Tabu','Indonesia','1188725','ID',NULL),('84-300-6499','Noni Quickenden','Mont-Royal','Canada','649-6327','CA',NULL),('87-172-1004','Sorcha Beesley','Zabrat','Azerbaijan','-207744.6667','AZ',NULL),('87-811-2475','Chris Gummer','Kubangwaru','Indonesia','2451102','ID',NULL),('89-302-9477','Jackie Kment','BÃ¡ÂºÂ¿n CÃ¡ÂºÂ§u','Vietnam','33622','VN',NULL),('89-896-4591','Mart Malsher','GalÃ¢â‚¬â„¢bshtadt','Russia','692769','RU',NULL),('90-876-6799','Lia Bonar','Quince Mil','Peru','663246','PE',NULL),('91-251-5721','Anny Pattemore','Karanganyar','Indonesia','649-6327','ID',NULL),('93-710-1150','Asia McNess','Carromeu','Portugal','987-0356','PT',NULL),('93-913-0650','Alan Paskell','Longzui','China','33620','CN',NULL),('94-829-5714','Olive Jeannon','Kizhinga','Russia','4472915','RU',NULL),('96-883-5571','Gwenora Beauchamp','Petauke','Zambia','3810-763','ZM',NULL),('97-003-2495','Adiana Shirtliff','Haradzyeya','Belarus','987-0354','BY',NULL),('97-122-0077','Pietra Dibdall','El Alamo','Mexico','2898066','MX',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int NOT NULL AUTO_INCREMENT,
  `OrderID` varchar(20) DEFAULT NULL,
  `Quantity` int NOT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `Sales` decimal(10,2) DEFAULT NULL,
  `Discount` decimal(5,2) DEFAULT NULL,
  `DeliveryCost` decimal(10,2) DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `CountryCode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `CourseID` (`CourseID`),
  KEY `FK_CountryCode_idx` (`CountryCode`),
  CONSTRAINT `FK_CountryCode` FOREIGN KEY (`CountryCode`) REFERENCES `countries` (`CountryCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,'54-366-6861',2,125.00,187.50,20.00,60.51,NULL,NULL),(2,'63-761-3686',1,235.00,352.50,15.00,96.75,NULL,NULL),(3,'65-351-6434',3,75.00,112.50,10.52,36.37,NULL,NULL),(4,'36-917-2834',3,220.00,330.00,11.23,5.49,NULL,NULL),(5,'86-114-9232',2,320.00,480.00,51.05,63.64,NULL,NULL),(6,'67-709-5581',1,210.00,315.00,89.84,5.04,NULL,NULL),(7,'80-076-4032',2,310.00,465.00,17.40,56.95,NULL,NULL),(8,'56-271-4185',3,225.00,337.50,91.41,91.05,NULL,NULL),(9,'43-052-9931',2,190.00,285.00,9.71,86.28,NULL,NULL),(10,'15-663-0481',1,98.00,147.00,80.34,31.34,NULL,NULL),(11,'23-582-1221',3,168.27,252.41,54.08,85.08,NULL,NULL),(12,'61-057-1975',3,101.60,152.40,98.01,25.98,NULL,NULL),(13,'87-599-0366',2,93.13,139.70,99.24,96.84,NULL,NULL),(14,'85-795-3011',1,44.57,66.86,30.00,31.22,NULL,NULL),(15,'08-270-7581',2,91.84,137.76,37.04,88.76,NULL,NULL),(16,'05-410-4163',3,133.17,199.76,24.00,63.21,NULL,NULL),(17,'82-639-1298',2,52.08,78.12,10.00,17.25,NULL,NULL),(18,'81-875-5053',1,83.99,125.98,53.53,39.30,NULL,NULL),(19,'69-780-6998',3,69.38,104.07,23.00,53.56,NULL,NULL),(20,'45-989-0711',3,119.80,179.70,73.09,28.60,NULL,NULL),(21,'10-052-8149',2,125.00,187.50,20.33,61.97,NULL,NULL),(22,'87-988-3093',1,235.00,352.50,9.12,36.98,NULL,NULL),(23,'04-812-8753',2,75.00,112.50,67.77,27.07,NULL,NULL),(24,'56-331-9919',3,220.00,330.00,35.44,60.52,NULL,NULL),(25,'35-371-2486',2,320.00,480.00,31.20,56.51,NULL,NULL),(26,'24-714-2660',1,210.00,315.00,61.49,10.69,NULL,NULL),(27,'00-465-7031',3,310.00,465.00,91.14,95.63,NULL,NULL),(28,'01-975-7149',3,225.00,337.50,97.48,27.41,NULL,NULL),(29,'92-747-8084',2,190.00,285.00,68.89,41.35,NULL,NULL),(30,'81-819-6997',1,98.00,147.00,47.84,81.65,NULL,NULL),(31,'48-370-5933',2,168.27,252.41,94.76,29.39,NULL,NULL),(32,'87-939-7467',3,101.60,152.40,20.00,80.78,NULL,NULL),(33,'20-205-9814',2,93.13,139.70,15.00,89.49,NULL,NULL),(34,'37-563-3518',1,44.57,66.86,10.52,85.67,NULL,NULL),(35,'35-988-0040',3,91.84,137.76,11.23,3.41,NULL,NULL),(36,'60-197-5739',3,133.17,199.76,51.05,84.09,NULL,NULL),(37,'36-383-1600',2,52.08,78.12,89.84,49.69,NULL,NULL),(38,'61-096-3317',1,83.99,125.98,17.40,15.90,NULL,NULL),(39,'30-867-3284',2,69.38,104.07,91.41,80.86,NULL,NULL),(40,'29-601-2712',3,119.80,179.70,9.71,33.70,NULL,NULL),(41,'28-387-3547',2,125.00,187.50,80.34,18.60,NULL,NULL),(42,'33-596-6321',1,235.00,352.50,54.08,86.02,NULL,NULL),(43,'48-873-2607',3,75.00,112.50,98.01,35.33,NULL,NULL),(44,'46-671-2432',3,220.00,330.00,99.24,31.82,NULL,NULL),(45,'67-067-9693',2,320.00,480.00,30.00,54.59,NULL,NULL),(46,'94-148-7497',1,210.00,315.00,37.04,51.93,NULL,NULL),(47,'90-921-1904',2,310.00,465.00,24.00,45.57,NULL,NULL),(48,'87-546-5058',3,225.00,337.50,10.00,78.35,NULL,NULL),(49,'25-522-2006',2,190.00,285.00,53.53,17.19,NULL,NULL),(50,'69-765-1585',1,98.00,147.00,23.00,83.86,NULL,NULL),(51,'17-146-9681',3,168.27,252.41,73.09,91.47,NULL,NULL),(52,'76-063-7709',3,124.62,186.93,20.33,60.40,NULL,NULL),(53,'39-647-4894',2,144.09,216.14,9.12,22.02,NULL,NULL),(54,'84-561-9421',1,101.60,152.40,67.77,32.74,NULL,NULL),(55,'08-152-8962',2,93.13,139.70,35.44,51.13,NULL,NULL),(56,'83-499-1350',3,44.57,66.86,31.20,54.68,NULL,NULL),(57,'39-613-0627',2,91.84,137.76,61.49,62.40,NULL,NULL),(58,'56-545-1829',1,133.17,199.76,91.14,63.51,NULL,NULL),(59,'42-906-2475',3,52.08,78.12,97.48,3.76,NULL,NULL),(60,'90-989-2851',3,83.99,125.98,68.89,43.56,NULL,NULL),(61,'17-851-5705',2,69.38,104.07,47.84,9.37,NULL,NULL),(62,'20-698-8725',1,119.80,179.70,94.76,81.98,NULL,NULL),(63,'62-918-2454',2,125.00,187.50,20.00,21.45,NULL,NULL),(64,'09-019-6593',3,235.00,352.50,15.00,32.78,NULL,NULL),(65,'73-876-5941',2,75.00,112.50,10.52,46.02,NULL,NULL),(66,'05-825-9260',1,220.00,330.00,11.23,95.19,NULL,NULL),(67,'55-263-8669',3,320.00,480.00,51.05,31.52,NULL,NULL),(68,'75-655-7346',3,210.00,315.00,89.84,55.26,NULL,NULL),(69,'23-760-0421',2,310.00,465.00,17.40,82.34,NULL,NULL),(70,'02-938-1657',1,225.00,337.50,91.41,48.78,NULL,NULL),(71,'00-669-6040',2,190.00,285.00,9.71,29.71,NULL,NULL),(72,'58-064-3049',3,98.00,147.00,80.34,48.52,NULL,NULL),(73,'30-969-9125',2,168.27,252.41,54.08,26.73,NULL,NULL),(74,'89-262-2574',1,124.62,186.93,98.01,19.95,NULL,NULL),(75,'56-933-2115',3,144.09,216.14,99.24,22.75,NULL,NULL),(76,'14-210-2413',3,101.60,152.40,30.00,22.40,NULL,NULL),(77,'51-322-7429',2,93.13,139.70,37.04,65.44,NULL,NULL),(78,'57-755-0191',1,44.57,66.86,24.00,55.93,NULL,NULL),(79,'49-841-5624',2,91.84,137.76,10.00,45.30,NULL,NULL),(80,'58-287-7773',3,133.17,199.76,53.53,7.25,NULL,NULL),(81,'91-284-4644',2,52.08,78.12,23.00,69.28,NULL,NULL),(82,'49-366-5985',1,83.99,125.98,73.09,17.37,NULL,NULL),(83,'40-107-4974',3,69.38,104.07,20.33,15.72,NULL,NULL),(84,'46-301-6761',3,119.80,179.70,9.12,71.12,NULL,NULL),(85,'02-266-1313',2,125.00,187.50,67.77,9.94,NULL,NULL),(86,'60-270-8291',1,235.00,352.50,35.44,4.27,NULL,NULL),(87,'68-226-7897',2,75.00,112.50,31.20,64.77,NULL,NULL),(88,'69-624-5454',3,220.00,330.00,61.49,77.22,NULL,NULL),(89,'90-389-3298',2,320.00,480.00,91.14,29.57,NULL,NULL),(90,'84-017-7714',1,210.00,315.00,97.48,71.10,NULL,NULL),(92,'54-366-6861',2,125.00,187.50,20.00,60.51,NULL,'CN'),(93,'63-761-3686',1,235.00,352.50,15.00,96.75,NULL,'KP'),(94,'65-351-6434',3,75.00,112.50,10.52,36.37,NULL,'PE'),(95,'36-917-2834',3,220.00,330.00,11.23,5.49,NULL,'JP'),(96,'86-114-9232',2,320.00,480.00,51.05,63.64,NULL,'LY'),(97,'67-709-5581',1,210.00,315.00,89.84,5.04,NULL,'MX'),(98,'80-076-4032',2,310.00,465.00,17.40,56.95,NULL,'RU'),(99,'56-271-4185',3,225.00,337.50,91.41,91.05,NULL,'PT'),(100,'43-052-9931',2,190.00,285.00,9.71,86.28,NULL,'RU'),(101,'15-663-0481',1,98.00,147.00,80.34,31.34,NULL,'CN'),(102,'23-582-1221',3,168.27,252.41,54.08,85.08,NULL,'NG'),(103,'61-057-1975',3,101.60,152.40,98.01,25.98,NULL,'JP'),(104,'87-599-0366',2,93.13,139.70,99.24,96.84,NULL,'CN'),(105,'85-795-3011',1,44.57,66.86,30.00,31.22,NULL,'PA'),(106,'08-270-7581',2,91.84,137.76,37.04,88.76,NULL,'RU'),(107,'05-410-4163',3,133.17,199.76,24.00,63.21,NULL,'CO'),(108,'82-639-1298',2,52.08,78.12,10.00,17.25,NULL,'DE'),(109,'81-875-5053',1,83.99,125.99,53.53,39.30,NULL,'CN'),(110,'69-780-6998',3,69.38,104.07,23.00,53.56,NULL,'ID'),(111,'45-989-0711',3,119.80,179.70,73.09,28.60,NULL,'AM'),(112,'10-052-8149',2,125.00,187.50,20.33,61.97,NULL,'CN'),(113,'87-988-3093',1,235.00,352.50,9.12,36.98,NULL,'CZ'),(114,'04-812-8753',2,75.00,112.50,67.77,27.07,NULL,'ID'),(115,'56-331-9919',3,220.00,330.00,35.44,60.52,NULL,'CN'),(116,'35-371-2486',2,320.00,480.00,31.20,56.51,NULL,'ID'),(117,'24-714-2660',1,210.00,315.00,61.49,10.69,NULL,'CN'),(118,'00-465-7031',3,310.00,465.00,91.14,95.63,NULL,'CA'),(119,'01-975-7149',3,225.00,337.50,97.48,27.41,NULL,'CN'),(120,'92-747-8084',2,190.00,285.00,68.89,41.35,NULL,'ID'),(121,'81-819-6997',1,98.00,147.00,47.84,81.65,NULL,'RU'),(122,'48-370-5933',2,168.27,252.41,94.76,29.39,NULL,'CN'),(123,'87-939-7467',3,101.60,152.40,20.00,80.78,NULL,'UA'),(124,'20-205-9814',2,93.13,139.70,15.00,89.49,NULL,'CN'),(125,'37-563-3518',1,44.57,66.86,10.52,85.67,NULL,'AZ'),(126,'35-988-0040',3,91.84,137.76,11.23,3.41,NULL,'BR'),(127,'60-197-5739',3,133.17,199.76,51.05,84.09,NULL,'CN'),(128,'36-383-1600',2,52.08,78.12,89.84,49.69,NULL,'ID'),(129,'61-096-3317',1,83.99,125.99,17.40,15.90,NULL,'BY'),(130,'30-867-3284',2,69.38,104.07,91.41,80.86,NULL,'PA'),(131,'29-601-2712',3,119.80,179.70,9.71,33.70,NULL,'HN'),(132,'28-387-3547',2,125.00,187.50,80.34,18.60,NULL,'JP'),(133,'33-596-6321',1,235.00,352.50,54.08,86.02,NULL,'KZ'),(134,'48-873-2607',3,75.00,112.50,98.01,35.33,NULL,'RU'),(135,'46-671-2432',3,220.00,330.00,99.24,31.82,NULL,'NG'),(136,'67-067-9693',2,320.00,480.00,30.00,54.59,NULL,'TH'),(137,'94-148-7497',1,210.00,315.00,37.04,51.93,NULL,'PE'),(138,'90-921-1904',2,310.00,465.00,24.00,45.57,NULL,'ZM'),(139,'87-546-5058',3,225.00,337.50,10.00,78.35,NULL,'TG'),(140,'25-522-2006',2,190.00,285.00,53.53,17.19,NULL,'MX'),(141,'69-765-1585',1,98.00,147.00,23.00,83.86,NULL,'TH'),(142,'17-146-9681',3,168.27,252.41,73.09,91.47,NULL,'CN'),(143,'76-063-7709',3,124.62,186.93,20.33,60.40,NULL,'KZ'),(144,'39-647-4894',2,144.09,216.14,9.12,22.02,NULL,'MX'),(145,'84-561-9421',1,101.60,152.40,67.77,32.74,NULL,'ID'),(146,'08-152-8962',2,93.13,139.70,35.44,51.13,NULL,'CN'),(147,'83-499-1350',3,44.57,66.86,31.20,54.68,NULL,'CN'),(148,'39-613-0627',2,91.84,137.76,61.49,62.40,NULL,'ID'),(149,'56-545-1829',1,133.17,199.76,91.14,63.51,NULL,'SE'),(150,'42-906-2475',3,52.08,78.12,97.48,3.76,NULL,'ZM'),(151,'90-989-2851',3,83.99,125.99,68.89,43.56,NULL,'BR'),(152,'17-851-5705',2,69.38,104.07,47.84,9.37,NULL,'FR'),(153,'20-698-8725',1,119.80,179.70,94.76,81.98,NULL,'VN'),(154,'62-918-2454',2,125.00,187.50,20.00,21.45,NULL,'ID'),(155,'09-019-6593',3,235.00,352.50,15.00,32.78,NULL,'UA'),(156,'73-876-5941',2,75.00,112.50,10.52,46.02,NULL,'ID'),(157,'05-825-9260',1,220.00,330.00,11.23,95.19,NULL,'RU'),(158,'55-263-8669',3,320.00,480.00,51.05,31.52,NULL,'RU'),(159,'75-655-7346',3,210.00,315.00,89.84,55.26,NULL,'UG'),(160,'23-760-0421',2,310.00,465.00,17.40,82.34,NULL,'CN'),(161,'02-938-1657',1,225.00,337.50,91.41,48.78,NULL,'CN'),(162,'00-669-6040',2,190.00,285.00,9.71,29.71,NULL,'CN'),(163,'58-064-3049',3,98.00,147.00,80.34,48.52,NULL,'PT'),(164,'30-969-9125',2,168.27,252.41,54.08,26.73,NULL,'EE'),(165,'89-262-2574',1,124.62,186.93,98.01,19.95,NULL,'RU'),(166,'56-933-2115',3,144.09,216.14,99.24,22.75,NULL,'PH'),(167,'14-210-2413',3,101.60,152.40,30.00,22.40,NULL,'NG'),(168,'51-322-7429',2,93.13,139.70,37.04,65.44,NULL,'ID'),(169,'57-755-0191',1,44.57,66.86,24.00,55.93,NULL,'RU'),(170,'49-841-5624',2,91.84,137.76,10.00,45.30,NULL,'BW'),(171,'58-287-7773',3,133.17,199.76,53.53,7.25,NULL,'CN'),(172,'91-284-4644',2,52.08,78.12,23.00,69.28,NULL,'CO'),(173,'49-366-5985',1,83.99,125.99,73.09,17.37,NULL,'HR'),(174,'40-107-4974',3,69.38,104.07,20.33,15.72,NULL,'CN'),(175,'46-301-6761',3,119.80,179.70,9.12,71.12,NULL,'CN'),(176,'02-266-1313',2,125.00,187.50,67.77,9.94,NULL,'FR'),(177,'60-270-8291',1,235.00,352.50,35.44,4.27,NULL,'RU'),(178,'68-226-7897',2,75.00,112.50,31.20,64.77,NULL,'KP'),(179,'69-624-5454',3,220.00,330.00,61.49,77.22,NULL,'ID'),(180,'90-389-3298',2,320.00,480.00,91.14,29.57,NULL,'ID'),(181,'84-017-7714',1,210.00,315.00,97.48,71.10,NULL,'WF'),(182,'54-366-6861',2,125.00,187.50,20.00,60.51,NULL,'CN'),(183,'63-761-3686',1,235.00,352.50,15.00,96.75,NULL,'KP'),(184,'65-351-6434',3,75.00,112.50,10.52,36.37,NULL,'PE'),(185,'36-917-2834',3,220.00,330.00,11.23,5.49,NULL,'JP'),(186,'86-114-9232',2,320.00,480.00,51.05,63.64,NULL,'LY'),(187,'67-709-5581',1,210.00,315.00,89.84,5.04,NULL,'MX'),(188,'80-076-4032',2,310.00,465.00,17.40,56.95,NULL,'RU'),(189,'56-271-4185',3,225.00,337.50,91.41,91.05,NULL,'PT'),(190,'43-052-9931',2,190.00,285.00,9.71,86.28,NULL,'RU'),(191,'15-663-0481',1,98.00,147.00,80.34,31.34,NULL,'CN'),(192,'23-582-1221',3,168.27,252.41,54.08,85.08,NULL,'NG'),(193,'61-057-1975',3,101.60,152.40,98.01,25.98,NULL,'JP'),(194,'87-599-0366',2,93.13,139.70,99.24,96.84,NULL,'CN'),(195,'85-795-3011',1,44.57,66.86,30.00,31.22,NULL,'PA'),(196,'08-270-7581',2,91.84,137.76,37.04,88.76,NULL,'RU'),(197,'05-410-4163',3,133.17,199.76,24.00,63.21,NULL,'CO'),(198,'82-639-1298',2,52.08,78.12,10.00,17.25,NULL,'DE'),(199,'81-875-5053',1,83.99,125.99,53.53,39.30,NULL,'CN'),(200,'69-780-6998',3,69.38,104.07,23.00,53.56,NULL,'ID'),(201,'45-989-0711',3,119.80,179.70,73.09,28.60,NULL,'AM'),(202,'10-052-8149',2,125.00,187.50,20.33,61.97,NULL,'CN'),(203,'87-988-3093',1,235.00,352.50,9.12,36.98,NULL,'CZ'),(204,'04-812-8753',2,75.00,112.50,67.77,27.07,NULL,'ID'),(205,'56-331-9919',3,220.00,330.00,35.44,60.52,NULL,'CN'),(206,'35-371-2486',2,320.00,480.00,31.20,56.51,NULL,'ID'),(207,'24-714-2660',1,210.00,315.00,61.49,10.69,NULL,'CN'),(208,'00-465-7031',3,310.00,465.00,91.14,95.63,NULL,'CA'),(209,'01-975-7149',3,225.00,337.50,97.48,27.41,NULL,'CN'),(210,'92-747-8084',2,190.00,285.00,68.89,41.35,NULL,'ID'),(211,'81-819-6997',1,98.00,147.00,47.84,81.65,NULL,'RU'),(212,'48-370-5933',2,168.27,252.41,94.76,29.39,NULL,'CN'),(213,'87-939-7467',3,101.60,152.40,20.00,80.78,NULL,'UA'),(214,'20-205-9814',2,93.13,139.70,15.00,89.49,NULL,'CN'),(215,'37-563-3518',1,44.57,66.86,10.52,85.67,NULL,'AZ'),(216,'35-988-0040',3,91.84,137.76,11.23,3.41,NULL,'BR'),(217,'60-197-5739',3,133.17,199.76,51.05,84.09,NULL,'CN'),(218,'36-383-1600',2,52.08,78.12,89.84,49.69,NULL,'ID'),(219,'61-096-3317',1,83.99,125.99,17.40,15.90,NULL,'BY'),(220,'30-867-3284',2,69.38,104.07,91.41,80.86,NULL,'PA'),(221,'29-601-2712',3,119.80,179.70,9.71,33.70,NULL,'HN'),(222,'28-387-3547',2,125.00,187.50,80.34,18.60,NULL,'JP'),(223,'33-596-6321',1,235.00,352.50,54.08,86.02,NULL,'KZ'),(224,'48-873-2607',3,75.00,112.50,98.01,35.33,NULL,'RU'),(225,'46-671-2432',3,220.00,330.00,99.24,31.82,NULL,'NG'),(226,'67-067-9693',2,320.00,480.00,30.00,54.59,NULL,'TH'),(227,'94-148-7497',1,210.00,315.00,37.04,51.93,NULL,'PE'),(228,'90-921-1904',2,310.00,465.00,24.00,45.57,NULL,'ZM'),(229,'87-546-5058',3,225.00,337.50,10.00,78.35,NULL,'TG'),(230,'25-522-2006',2,190.00,285.00,53.53,17.19,NULL,'MX'),(231,'69-765-1585',1,98.00,147.00,23.00,83.86,NULL,'TH'),(232,'17-146-9681',3,168.27,252.41,73.09,91.47,NULL,'CN'),(233,'76-063-7709',3,124.62,186.93,20.33,60.40,NULL,'KZ'),(234,'39-647-4894',2,144.09,216.14,9.12,22.02,NULL,'MX'),(235,'84-561-9421',1,101.60,152.40,67.77,32.74,NULL,'ID'),(236,'08-152-8962',2,93.13,139.70,35.44,51.13,NULL,'CN'),(237,'83-499-1350',3,44.57,66.86,31.20,54.68,NULL,'CN'),(238,'39-613-0627',2,91.84,137.76,61.49,62.40,NULL,'ID'),(239,'56-545-1829',1,133.17,199.76,91.14,63.51,NULL,'SE'),(240,'42-906-2475',3,52.08,78.12,97.48,3.76,NULL,'ZM'),(241,'90-989-2851',3,83.99,125.99,68.89,43.56,NULL,'BR'),(242,'17-851-5705',2,69.38,104.07,47.84,9.37,NULL,'FR'),(243,'20-698-8725',1,119.80,179.70,94.76,81.98,NULL,'VN'),(244,'62-918-2454',2,125.00,187.50,20.00,21.45,NULL,'ID'),(245,'09-019-6593',3,235.00,352.50,15.00,32.78,NULL,'UA'),(246,'73-876-5941',2,75.00,112.50,10.52,46.02,NULL,'ID'),(247,'05-825-9260',1,220.00,330.00,11.23,95.19,NULL,'RU'),(248,'55-263-8669',3,320.00,480.00,51.05,31.52,NULL,'RU'),(249,'75-655-7346',3,210.00,315.00,89.84,55.26,NULL,'UG'),(250,'23-760-0421',2,310.00,465.00,17.40,82.34,NULL,'CN'),(251,'02-938-1657',1,225.00,337.50,91.41,48.78,NULL,'CN'),(252,'00-669-6040',2,190.00,285.00,9.71,29.71,NULL,'CN'),(253,'58-064-3049',3,98.00,147.00,80.34,48.52,NULL,'PT'),(254,'30-969-9125',2,168.27,252.41,54.08,26.73,NULL,'EE'),(255,'89-262-2574',1,124.62,186.93,98.01,19.95,NULL,'RU'),(256,'56-933-2115',3,144.09,216.14,99.24,22.75,NULL,'PH'),(257,'14-210-2413',3,101.60,152.40,30.00,22.40,NULL,'NG'),(258,'51-322-7429',2,93.13,139.70,37.04,65.44,NULL,'ID'),(259,'57-755-0191',1,44.57,66.86,24.00,55.93,NULL,'RU'),(260,'49-841-5624',2,91.84,137.76,10.00,45.30,NULL,'BW'),(261,'58-287-7773',3,133.17,199.76,53.53,7.25,NULL,'CN'),(262,'91-284-4644',2,52.08,78.12,23.00,69.28,NULL,'CO'),(263,'49-366-5985',1,83.99,125.99,73.09,17.37,NULL,'HR'),(264,'40-107-4974',3,69.38,104.07,20.33,15.72,NULL,'CN'),(265,'46-301-6761',3,119.80,179.70,9.12,71.12,NULL,'CN'),(266,'02-266-1313',2,125.00,187.50,67.77,9.94,NULL,'FR'),(267,'60-270-8291',1,235.00,352.50,35.44,4.27,NULL,'RU'),(268,'68-226-7897',2,75.00,112.50,31.20,64.77,NULL,'KP'),(269,'69-624-5454',3,220.00,330.00,61.49,77.22,NULL,'ID'),(270,'90-389-3298',2,320.00,480.00,91.14,29.57,NULL,'ID'),(271,'84-017-7714',1,210.00,315.00,97.48,71.10,NULL,'WF');
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` varchar(20) NOT NULL,
  `OrderDate` date NOT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `CustomerID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('00-465-7031','2020-08-25','2022-09-03','84-300-6499'),('00-669-6040','2021-12-19','2021-10-21','38-206-8901'),('01-975-7149','2021-04-22','2020-04-19','93-913-0650'),('02-266-1313','2022-08-19','2021-06-24','81-286-3465'),('02-938-1657','2022-10-16','2020-01-10','25-492-4931'),('04-812-8753','2020-06-01','2021-09-28','84-136-7752'),('05-410-4163','2020-09-30','2021-11-27','75-558-6855'),('05-825-9260','2021-10-09','2021-04-25','36-854-2570'),('08-152-8962','2021-01-12','2021-01-02','75-652-8475'),('08-270-7581','2020-08-22','2020-03-17','56-479-7571'),('09-019-6593','2019-11-03','2022-08-28','60-742-1416'),('10-052-8149','2019-09-30','2020-12-30','37-285-0504'),('14-210-2413','2021-06-06','2021-01-13','08-581-0238'),('15-663-0481','2020-03-05','2021-11-13','21-282-1343'),('17-146-9681','2022-12-02','2020-11-08','03-575-7094'),('17-851-5705','2021-06-17','2022-06-10','17-237-9919'),('20-205-9814','2021-11-23','2020-08-25','78-492-1244'),('20-698-8725','2021-01-12','2021-08-24','89-302-9477'),('23-582-1221','2019-07-20','2019-11-28','04-699-2162'),('23-760-0421','2019-08-05','2020-05-06','04-049-1006'),('24-714-2660','2019-09-13','2020-10-11','24-545-1124'),('25-522-2006','2021-02-02','2021-12-28','58-749-9630'),('28-387-3547','2019-08-14','2022-01-07','18-296-6063'),('29-601-2712','2021-01-27','2021-01-25','07-925-9556'),('30-867-3284','2020-10-05','2022-12-19','26-631-4044'),('30-969-9125','2020-05-28','2021-02-28','79-752-9044'),('33-596-6321','2021-11-25','2020-12-05','26-237-6257'),('35-371-2486','2020-02-02','2020-02-04','79-082-9805'),('35-988-0040','2019-08-10','2022-01-24','55-516-2272'),('36-383-1600','2019-08-08','2020-10-09','87-811-2475'),('36-917-2834','2021-08-14','2020-04-13','73-873-4827'),('37-563-3518','2022-04-05','2019-12-16','87-172-1004'),('39-613-0627','2022-03-27','2020-05-12','18-238-2784'),('39-647-4894','2022-05-27','2021-11-26','97-122-0077'),('40-107-4974','2022-07-06','2022-07-01','72-486-1808'),('42-906-2475','2021-10-11','2021-06-02','96-883-5571'),('43-052-9931','2021-12-27','2021-04-16','89-896-4591'),('45-989-0711','2020-04-24','2019-12-29','66-386-4902'),('46-301-6761','2020-07-01','2021-03-22','40-931-4451'),('46-671-2432','2022-04-13','2021-03-18','29-631-4932'),('48-370-5933','2022-01-28','2021-03-12','35-042-6593'),('48-873-2607','2019-09-29','2022-03-12','77-064-4656'),('49-366-5985','2021-01-08','2021-06-22','38-254-0934'),('49-841-5624','2021-08-15','2021-04-07','52-259-8758'),('51-322-7429','2021-04-28','2021-07-07','51-824-3545'),('54-366-6861','2020-06-15','2020-03-26','72-055-7985'),('55-263-8669','2021-09-06','2021-06-24','00-988-1489'),('56-271-4185','2021-10-09','2020-12-27','83-800-4789'),('56-331-9919','2021-11-03','2020-01-05','72-417-9175'),('56-545-1829','2022-02-15','2020-08-26','14-427-0652'),('56-933-2115','2022-05-15','2021-07-14','17-162-2135'),('57-755-0191','2022-01-22','2022-02-13','03-133-1843'),('58-064-3049','2019-08-15','2021-05-15','93-710-1150'),('58-287-7773','2019-07-17','2020-09-25','22-744-2112'),('60-197-5739','2022-02-27','2021-04-04','79-227-9821'),('60-270-8291','2020-11-20','2021-04-19','42-037-9687'),('61-057-1975','2022-06-26','2021-04-17','72-013-3529'),('61-096-3317','2022-05-04','2021-05-06','97-003-2495'),('62-918-2454','2021-12-03','2021-10-05','30-395-2269'),('63-761-3686','2020-08-25','2020-07-17','65-353-0657'),('65-351-6434','2021-08-17','2020-04-24','90-876-6799'),('67-067-9693','2020-12-10','2019-11-12','04-268-9065'),('67-709-5581','2020-03-01','2020-01-13','77-111-2020'),('68-226-7897','2020-12-14','2022-07-03','09-427-8083'),('69-624-5454','2019-10-30','2022-07-19','73-000-6730'),('69-765-1585','2022-03-07','2021-09-08','60-238-7059'),('69-780-6998','2020-04-14','2022-04-06','83-988-2186'),('73-876-5941','2019-07-03','2022-10-22','42-286-4150'),('75-655-7346','2020-08-30','2020-05-21','80-467-4735'),('76-063-7709','2019-12-16','2022-09-01','83-465-8495'),('80-076-4032','2021-10-04','2019-10-26','10-341-4047'),('81-819-6997','2022-04-12','2022-11-19','04-960-9928'),('81-875-5053','2021-04-29','2019-12-03','81-678-3234'),('82-639-1298','2019-09-04','2022-10-14','09-710-7305'),('83-499-1350','2022-08-12','2022-02-20','66-683-1761'),('84-017-7714','2020-02-22','2022-02-22','38-777-7517'),('84-561-9421','2020-03-29','2021-03-21','44-106-8726'),('85-795-3011','2022-04-13','2020-07-05','08-390-4691'),('86-114-9232','2020-12-20','2021-02-02','80-927-5246'),('87-546-5058','2021-06-13','2022-08-31','19-112-3031'),('87-599-0366','2020-12-03','2022-01-07','09-688-8521'),('87-939-7467','2021-04-02','2022-08-31','45-879-0850'),('87-988-3093','2021-06-08','2021-12-15','07-111-7669'),('89-262-2574','2019-12-11','2021-03-27','94-829-5714'),('90-389-3298','2022-08-24','2021-06-08','24-902-5422'),('90-921-1904','2021-08-16','2021-04-17','82-278-5664'),('90-989-2851','2020-08-24','2020-07-17','59-450-2625'),('91-284-4644','2022-08-10','2022-06-11','54-926-6336'),('92-747-8084','2019-08-09','2020-11-06','91-251-5721'),('94-148-7497','2022-11-19','2022-12-30','06-545-4037');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'littlelemon'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(
    IN p_CustomerID VARCHAR(20),
    IN p_OrderDate DATE,
    IN p_DeliveryDate DATE
)
BEGIN
    INSERT INTO orders (OrderID, OrderDate, DeliveryDate, CustomerID)
    VALUES (UUID(), p_OrderDate, p_DeliveryDate, p_CustomerID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(
    IN p_OrderID VARCHAR(20)
)
BEGIN
    -- First delete order details linked to the order
    DELETE FROM orderdetails
    WHERE OrderID = p_OrderID;

    -- Then delete the order itself
    DELETE FROM orders
    WHERE OrderID = p_OrderID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMaxQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
begin
select max(Quantity) AS MaxQuantity
from orderdetails;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ManageBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ManageBooking`(
    IN p_Action VARCHAR(10),  -- 'ADD', 'UPDATE', 'CANCEL'
    IN p_OrderID VARCHAR(20),
    IN p_CustomerID VARCHAR(20),
    IN p_OrderDate DATE,
    IN p_DeliveryDate DATE
)
BEGIN
    IF UPPER(p_Action) = 'ADD' THEN
        CALL AddBooking(p_CustomerID, p_OrderDate, p_DeliveryDate);

    ELSEIF UPPER(p_Action) = 'UPDATE' THEN
        CALL UpdateBooking(p_OrderID, p_DeliveryDate);

    ELSEIF UPPER(p_Action) = 'CANCEL' THEN
        CALL CancelBooking(p_OrderID);

    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(
    IN p_OrderID VARCHAR(20),
    IN p_NewDeliveryDate DATE
)
BEGIN
    UPDATE orders
    SET DeliveryDate = p_NewDeliveryDate
    WHERE OrderID = p_OrderID;
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
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-10 15:44:33
