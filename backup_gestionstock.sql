-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: GestionStock
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_produit` int DEFAULT NULL,
  `quantite` int NOT NULL,
  `date_facture` datetime DEFAULT CURRENT_TIMESTAMP,
  `montant_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_produit` (`id_produit`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` VALUES (1,1,9,2,'2026-01-21 08:43:26',1399.98),(2,2,5,3,'2026-01-21 08:43:26',179.97),(3,3,13,5,'2026-01-21 08:43:26',149.95),(4,4,1,1,'2026-01-21 08:43:26',49.99),(5,5,17,10,'2026-01-21 08:43:26',59.90);
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `stock` int DEFAULT '0',
  `prix` decimal(10,2) NOT NULL,
  `id_type` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type` (`id_type`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,'Alimentation 500W',15,49.99,1),(2,'Alimentation 750W',10,79.99,1),(3,'Alimentation 1000W',5,129.99,1),(4,'Alimentation modulaire 650W',8,89.99,1),(5,'Clavier mecanique',25,59.99,2),(6,'Souris gaming',30,39.99,2),(7,'Webcam HD',20,49.99,2),(8,'Casque audio',18,79.99,2),(9,'Laptop 15 pouces',12,699.99,3),(10,'Laptop 17 pouces',8,899.99,3),(11,'Tablette 10 pouces',15,349.99,3),(12,'Batterie externe 20000mAh',40,29.99,3),(13,'Switch 8 ports',22,29.99,4),(14,'Switch 16 ports manageable',10,149.99,4),(15,'Switch 24 ports PoE',6,299.99,4),(16,'Switch 48 ports rack',4,499.99,4),(17,'Cable RJ45 Cat6 5m',100,5.99,5),(18,'Cable RJ45 Cat6 10m',80,9.99,5),(19,'Cable fibre optique 3m',50,14.99,5),(20,'Bobine cable Cat6 100m',15,89.99,5),(21,'Produit API',5,19.99,1);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeproduit`
--

DROP TABLE IF EXISTS `typeproduit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeproduit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeproduit`
--

LOCK TABLES `typeproduit` WRITE;
/*!40000 ALTER TABLE `typeproduit` DISABLE KEYS */;
INSERT INTO `typeproduit` VALUES (1,'alimentation'),(2,'peripherique'),(3,'materiel portable'),(4,'switch'),(5,'cablage');
/*!40000 ALTER TABLE `typeproduit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'client',
  `date_creation` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Dupont','Jean','jean.dupont@entreprise.fr','admin','2026-01-21 08:43:03'),(2,'Martin','Sophie','sophie.martin@entreprise.fr','manager','2026-01-21 08:43:03'),(3,'Bernard','Pierre','pierre.bernard@entreprise.fr','vendeur','2026-01-21 08:43:03'),(4,'Petit','Marie','marie.petit@entreprise.fr','client','2026-01-21 08:43:03'),(5,'Durand','Luc','luc.durand@entreprise.fr','technicien','2026-01-21 08:43:03');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-21  8:57:26
