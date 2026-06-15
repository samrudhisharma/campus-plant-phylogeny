-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: plantdb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `genomic_markers`
--

DROP TABLE IF EXISTS `genomic_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genomic_markers` (
  `marker_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` int NOT NULL,
  `marker_name` varchar(50) NOT NULL,
  `genbank_accession` varchar(50) NOT NULL,
  `sequence_fasta` mediumtext,
  `gc_content` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`marker_id`),
  UNIQUE KEY `genbank_accession` (`genbank_accession`),
  KEY `plant_id` (`plant_id`),
  CONSTRAINT `genomic_markers_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`plant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genomic_markers`
--

LOCK TABLES `genomic_markers` WRITE;
/*!40000 ALTER TABLE `genomic_markers` DISABLE KEYS */;
INSERT INTO `genomic_markers` VALUES (1,5,'rbcL','X91760.1',NULL,NULL),(2,6,'rbcL','U87751.1',NULL,NULL),(3,8,'rbcL','AJ402917.1',NULL,NULL),(4,9,'rbcL','PP503035.1',NULL,NULL),(5,10,'rbcL','L05030.2',NULL,NULL),(6,11,'rbcL','AY328181.1',NULL,NULL),(7,13,'rbcL','U74195.1',NULL,NULL),(8,14,'rbcL','L01893.2',NULL,NULL),(9,15,'rbcL','JX987572.1',NULL,NULL),(10,16,'rbcL','AB505956.1',NULL,NULL),(11,17,'rbcL','AY012507.1',NULL,NULL),(12,18,'rbcL','L01948.2',NULL,NULL),(13,19,'rbcL','AY056556.1',NULL,NULL),(14,20,'rbcL','Z70156.1',NULL,NULL),(15,22,'rbcL','AF500350.1',NULL,NULL),(16,25,'rbcL','MG836337.1',NULL,NULL),(17,26,'rbcL','AF197589.1',NULL,NULL),(18,28,'rbcL','AY082359.1',NULL,NULL),(19,29,'rbcL','D86315.1',NULL,NULL),(20,30,'rbcL','X83646.1',NULL,NULL),(21,31,'rbcL','AF102648.1',NULL,NULL),(22,32,'rbcL','AY036149.1',NULL,NULL),(23,33,'rbcL','KX119308.1',NULL,NULL),(24,34,'rbcL','AJ404757.1',NULL,NULL),(25,35,'rbcL','U39269.2',NULL,NULL),(26,36,'rbcL','KC737718.1',NULL,NULL),(27,37,'rbcL','L11359.2',NULL,NULL),(28,38,'rbcL','U38860.1',NULL,NULL),(29,39,'rbcL','X83652.1',NULL,NULL),(30,40,'rbcL','AY904401.1',NULL,NULL),(31,41,'rbcL','U28880.1',NULL,NULL),(32,43,'rbcL','AY319027.1',NULL,NULL),(33,44,'rbcL','AY289676.1',NULL,NULL),(34,46,'rbcL','AY012488.1',NULL,NULL),(35,47,'rbcL','Z70149.1',NULL,NULL),(36,48,'rbcL','M96959.1',NULL,NULL),(37,49,'rbcL','HM640471.1',NULL,NULL),(38,50,'rbcL','PP971777.1',NULL,NULL),(39,51,'rbcL','FJ976171.1',NULL,NULL),(40,53,'rbcL','X91772.1',NULL,NULL),(41,54,'rbcL','Z70160.1',NULL,NULL),(42,55,'rbcL','AF102655.1',NULL,NULL),(43,56,'rbcL','U28884.1',NULL,NULL),(44,57,'rbcL','U26338.2',NULL,NULL),(45,58,'rbcL','L12578.2',NULL,NULL);
/*!40000 ALTER TABLE `genomic_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_applications`
--

DROP TABLE IF EXISTS `plant_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_applications` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` int NOT NULL,
  `medicinal_uses` text,
  `economic_importance` text,
  PRIMARY KEY (`application_id`),
  KEY `plant_id` (`plant_id`),
  CONSTRAINT `plant_applications_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`plant_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_applications`
--

LOCK TABLES `plant_applications` WRITE;
/*!40000 ALTER TABLE `plant_applications` DISABLE KEYS */;
INSERT INTO `plant_applications` VALUES (1,1,'Bark used for treating diarrhea, dysentery, and skin diseases; twigs used as natural toothbrushes.','High-density timber for tool handles/carts; bark yields 12-20% tannin for leather tanning; produces gum arabic.'),(2,2,'Traditionally used to treat wounds and skin infections; latex contains cardiotoxic glycosides.','Highly valued globally in commercial horticulture and landscaping as an ornamental bonsai asset.'),(3,3,'Bark used as a febrifuge (fever reducer), tonic, and for treating chronic bronchitis and asthma.','Extremely lightweight softwood used extensively in the commercial matchstick, plywood, and packing-case industries.');
/*!40000 ALTER TABLE `plant_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plants` (
  `plant_id` int NOT NULL AUTO_INCREMENT,
  `botanical_name` varchar(150) NOT NULL,
  `common_name` varchar(150) DEFAULT NULL,
  `habit_type` varchar(100) DEFAULT NULL,
  `taxonomy_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`plant_id`),
  UNIQUE KEY `botanical_name` (`botanical_name`),
  KEY `taxonomy_id` (`taxonomy_id`),
  CONSTRAINT `plants_ibfk_1` FOREIGN KEY (`taxonomy_id`) REFERENCES `taxonomy` (`taxonomy_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES (1,'Acacia nilotica','Babul / Indian Gum Arabic Tree','Tree',1,'2026-06-11 19:32:44'),(2,'Adenium obesum','Desert Rose','Shrub, Ornamental',2,'2026-06-11 19:32:44'),(3,'Ailanthus excelsa','Tree of Heaven / Maharukh','Tree',3,'2026-06-11 19:32:44'),(4,'Allamanda cathartica','Golden Trumpet','Shrub, Climber, Ornamental',4,'2026-06-11 19:32:44'),(5,'Alstonia scholaris','Devil Tree / Saptaparni','Tree, Ornamental',5,'2026-06-11 19:32:44'),(6,'Araucaria bidwillii','Bunya Pine','Tree, Ornamental',6,'2026-06-11 19:32:44'),(7,'Asystasia gangetica','Chinese Violet','Herb, Climber, Ornamental',7,'2026-06-11 19:32:44'),(8,'Azadirachta indica','Neem','Tree',8,'2026-06-11 19:32:44'),(9,'Bauhinia variegata','Orchid Tree / Kachnar','Tree, Ornamental',9,'2026-06-11 19:32:44'),(10,'Beaucarnea recurvata','Ponytail Palm','Palm-like, Ornamental',10,'2026-06-11 19:32:44'),(11,'Bombax ceiba','Red Silk Cotton Tree','Tree',11,'2026-06-11 19:32:44'),(12,'Bougainvillea spectabilis','Bougainvillea / Paper Flower','Shrub, Climber, Ornamental',12,'2026-06-11 19:32:44'),(13,'Cassia fistula','Golden Shower Tree / Amaltas','Tree, Ornamental',13,'2026-06-11 19:32:44'),(14,'Casuarina equisetifolia','Australian Pine','Tree',14,'2026-06-11 19:32:44'),(15,'Ceiba pentandra','Kapok Tree','Tree',15,'2026-06-11 19:32:44'),(16,'Citrus limon','Lemon','Tree, Shrub',16,'2026-06-11 19:32:44'),(17,'Cocos nucifera','Coconut Palm','Palm',17,'2026-06-11 19:32:44'),(18,'Combretum indicum','Rangoon Creeper','Climber, Ornamental',18,'2026-06-11 19:32:44'),(19,'Cycas revoluta','Sago Palm','Palm-like, Ornamental',19,'2026-06-11 19:32:44'),(20,'Delonix regia','Gulmohar / Flame Tree','Tree, Ornamental',20,'2026-06-11 19:32:44'),(21,'Ficus benghalensis','Banyan','Tree',21,'2026-06-11 19:32:44'),(22,'Ficus benjamina','Weeping Fig','Tree, Ornamental',21,'2026-06-11 19:32:44'),(23,'Ficus racemosa','Cluster Fig / Gular','Tree',21,'2026-06-11 19:32:44'),(24,'Ficus religiosa','Peepal / Sacred Fig','Tree',21,'2026-06-11 19:32:44'),(25,'Gmelina arborea','Gamhar','Tree',22,'2026-06-11 19:32:44'),(26,'Grevillea robusta','Silver Oak','Tree, Ornamental',23,'2026-06-11 19:32:44'),(27,'Guazuma tomentosa','Bastard Cedar','Tree',24,'2026-06-11 19:32:44'),(28,'Hibiscus rosa-sinensis','China Rose','Shrub, Ornamental',25,'2026-06-11 19:32:44'),(29,'Holoptelea integrifolia','Indian Elm','Tree',26,'2026-06-11 19:32:44'),(30,'Ixora coccinea','Jungle Geranium','Shrub, Ornamental',27,'2026-06-11 19:32:44'),(31,'Kigelia pinnata','Sausage Tree','Tree, Ornamental',28,'2026-06-11 19:32:44'),(32,'Lagerstroemia speciosa','Queen\'s Crape Myrtle / Pride of India','Tree, Ornamental',29,'2026-06-11 19:32:44'),(33,'Leucaena leucocephala','Subabul / White Leadtree','Tree',30,'2026-06-11 19:32:44'),(34,'Livistona chinensis','Chinese Fan Palm','Palm, Ornamental',31,'2026-06-11 19:32:44'),(35,'Mangifera indica','Mango','Tree',32,'2026-06-11 19:32:44'),(36,'Mitragyna parvifolia','Kaim','Tree',33,'2026-06-11 19:32:44'),(37,'Moringa oleifera','Drumstick Tree','Tree',34,'2026-06-11 19:32:44'),(38,'Murraya paniculata','Orange Jasmine','Shrub, Ornamental',35,'2026-06-11 19:32:44'),(39,'Mussaenda erythrophylla','Red Flag Bush','Shrub, Ornamental',36,'2026-06-11 19:32:44'),(40,'Peltophorum pterocarpum','Copperpod / Yellow Flame Tree','Tree, Ornamental',37,'2026-06-11 19:32:44'),(41,'Petrea volubilis','Queen\'s Wreath','Climber, Ornamental',38,'2026-06-11 19:32:44'),(42,'Plumeria alba','White Frangipani','Tree, Shrub, Ornamental',39,'2026-06-11 19:32:44'),(43,'Polyalthia longifolia','False Ashoka / Mast Tree','Tree, Ornamental',40,'2026-06-11 19:32:44'),(44,'Pongamia pinnata','Indian Beech / Karanj','Tree',41,'2026-06-11 19:32:44'),(45,'Psidium guajava','Guava','Tree',42,'2026-06-11 19:32:44'),(46,'Roystonea regia','Royal Palm','Palm, Ornamental',43,'2026-06-11 19:32:44'),(47,'Samanea saman','Rain Tree','Tree',44,'2026-06-11 19:32:44'),(48,'Sansevieria cylindrica','Cylindrical Snake Plant','Herb, Ornamental',45,'2026-06-11 19:32:44'),(49,'Sansevieria trifasciata','Snake Plant / Mother-in-law\'s Tongue','Herb, Ornamental',45,'2026-06-11 19:32:44'),(50,'Sesbania grandiflora','Agati','Tree',46,'2026-06-11 19:32:44'),(51,'Spathodea campanulata','African Tulip Tree','Tree, Ornamental',47,'2026-06-11 19:32:44'),(52,'Syzygium cumini','Jamun / Java Plum','Tree',48,'2026-06-11 19:32:44'),(53,'Tabernaemontana divaricata','Crape Jasmine','Shrub, Ornamental',49,'2026-06-11 19:32:44'),(54,'Tamarindus indica','Tamarind','Tree',50,'2026-06-11 19:32:44'),(55,'Tecoma stans','Yellow Bells','Shrub, Ornamental',51,'2026-06-11 19:32:44'),(56,'Tectona grandis','Teak','Tree',52,'2026-06-11 19:32:44'),(57,'Terminalia catappa','Indian Almond','Tree',53,'2026-06-11 19:32:44'),(58,'Thuja occidentalis','Arborvitae / White Cedar','Tree, Shrub, Ornamental',54,'2026-06-11 19:32:44'),(59,'Ziziphus jujuba','Chinese Jujube / Ber','Tree, Shrub',55,'2026-06-11 19:32:44');
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy`
--

DROP TABLE IF EXISTS `taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxonomy` (
  `taxonomy_id` int NOT NULL AUTO_INCREMENT,
  `phylum` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `plant_order` varchar(100) NOT NULL,
  `family` varchar(100) NOT NULL,
  `genus` varchar(100) NOT NULL,
  PRIMARY KEY (`taxonomy_id`),
  UNIQUE KEY `genus` (`genus`,`family`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy`
--

LOCK TABLES `taxonomy` WRITE;
/*!40000 ALTER TABLE `taxonomy` DISABLE KEYS */;
INSERT INTO `taxonomy` VALUES (1,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Acacia'),(2,'Magnoliophyta','Magnoliopsida','Gentianales','Apocynaceae','Adenium'),(3,'Magnoliophyta','Magnoliopsida','Sapindales','Simaroubaceae','Ailanthus'),(4,'Magnoliophyta','Magnoliopsida','Gentianales','Apocynaceae','Allamanda'),(5,'Magnoliophyta','Magnoliopsida','Gentianales','Apocynaceae','Alstonia'),(6,'Pinophyta','Pinopsida','Pinales','Araucariaceae','Araucaria'),(7,'Magnoliophyta','Magnoliopsida','Lamiales','Acanthaceae','Asystasia'),(8,'Magnoliophyta','Magnoliopsida','Sapindales','Meliaceae','Azadirachta'),(9,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Bauhinia'),(10,'Magnoliophyta','Liliopsida','Asparagales','Asparagaceae','Beaucarnea'),(11,'Magnoliophyta','Magnoliopsida','Malvales','Malvaceae','Bombax'),(12,'Magnoliophyta','Magnoliopsida','Caryophyllales','Nyctaginaceae','Bougainvillea'),(13,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Cassia'),(14,'Magnoliophyta','Magnoliopsida','Fagales','Casuarinaceae','Casuarina'),(15,'Magnoliophyta','Magnoliopsida','Malvales','Malvaceae','Ceiba'),(16,'Magnoliophyta','Magnoliopsida','Sapindales','Rutaceae','Citrus'),(17,'Magnoliophyta','Liliopsida','Arecales','Arecaceae','Cocos'),(18,'Magnoliophyta','Magnoliopsida','Myrtales','Combretaceae','Combretum'),(19,'Cycadophyta','Cycadopsida','Cycadales','Cycadaceae','Cycas'),(20,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Delonix'),(21,'Magnoliophyta','Magnoliopsida','Rosales','Moraceae','Ficus'),(22,'Magnoliophyta','Magnoliopsida','Lamiales','Lamiaceae','Gmelina'),(23,'Magnoliophyta','Magnoliopsida','Proteales','Proteaceae','Grevillea'),(24,'Magnoliophyta','Magnoliopsida','Malvales','Malvaceae','Guazuma'),(25,'Magnoliophyta','Magnoliopsida','Malvales','Malvaceae','Hibiscus'),(26,'Magnoliophyta','Magnoliopsida','Rosales','Ulmaceae','Holoptelea'),(27,'Magnoliophyta','Magnoliopsida','Gentianales','Rubiaceae','Ixora'),(28,'Magnoliophyta','Magnoliopsida','Lamiales','Bignoniaceae','Kigelia'),(29,'Magnoliophyta','Magnoliopsida','Myrtales','Lythraceae','Lagerstroemia'),(30,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Leucaena'),(31,'Magnoliophyta','Liliopsida','Arecales','Arecaceae','Livistona'),(32,'Magnoliophyta','Magnoliopsida','Sapindales','Anacardiaceae','Mangifera'),(33,'Magnoliophyta','Magnoliopsida','Gentianales','Rubiaceae','Mitragyna'),(34,'Magnoliophyta','Magnoliopsida','Brassicales','Moringaceae','Moringa'),(35,'Magnoliophyta','Magnoliopsida','Sapindales','Rutaceae','Murraya'),(36,'Magnoliophyta','Magnoliopsida','Gentianales','Rubiaceae','Mussaenda'),(37,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Peltophorum'),(38,'Magnoliophyta','Magnoliopsida','Lamiales','Lamiaceae','Petrea'),(39,'Magnoliophyta','Magnoliopsida','Gentianales','Apocynaceae','Plumeria'),(40,'Magnoliophyta','Magnoliopsida','Magnoliales','Annonaceae','Polyalthia'),(41,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Pongamia'),(42,'Magnoliophyta','Magnoliopsida','Myrtales','Myrtaceae','Psidium'),(43,'Magnoliophyta','Liliopsida','Arecales','Arecaceae','Roystonea'),(44,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Samanea'),(45,'Magnoliophyta','Liliopsida','Asparagales','Asparagaceae','Sansevieria'),(46,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Sesbania'),(47,'Magnoliophyta','Magnoliopsida','Lamiales','Bignoniaceae','Spathodea'),(48,'Magnoliophyta','Magnoliopsida','Myrtales','Myrtaceae','Syzygium'),(49,'Magnoliophyta','Magnoliopsida','Gentianales','Apocynaceae','Tabernaemontana'),(50,'Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Tamarindus'),(51,'Magnoliophyta','Magnoliopsida','Lamiales','Bignoniaceae','Tecoma'),(52,'Magnoliophyta','Magnoliopsida','Lamiales','Lamiaceae','Tectona'),(53,'Magnoliophyta','Magnoliopsida','Myrtales','Combretaceae','Terminalia'),(54,'Pinophyta','Pinopsida','Pinales','Cupressaceae','Thuja'),(55,'Magnoliophyta','Magnoliopsida','Rosales','Rhamnaceae','Ziziphus');
/*!40000 ALTER TABLE `taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant_analyses`
--

DROP TABLE IF EXISTS `variant_analyses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant_analyses` (
  `analysis_id` int NOT NULL AUTO_INCREMENT,
  `plant_id` int NOT NULL,
  `vcf_file_path` varchar(255) DEFAULT NULL,
  `ppi_network_ref` varchar(255) DEFAULT NULL,
  `pipeline_version` varchar(50) DEFAULT NULL,
  `last_analyzed` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`analysis_id`),
  KEY `plant_id` (`plant_id`),
  CONSTRAINT `variant_analyses_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`plant_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant_analyses`
--

LOCK TABLES `variant_analyses` WRITE;
/*!40000 ALTER TABLE `variant_analyses` DISABLE KEYS */;
/*!40000 ALTER TABLE `variant_analyses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15 21:55:43
