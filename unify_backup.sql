-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: unify
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` varchar(50) NOT NULL,
  `u_id` int NOT NULL,
  `buyDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Cart_User` (`u_id`),
  CONSTRAINT `FK_Cart_User` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('056254f6-e4eb-45f4-b102-249f7313632a',12,'2023-11-16'),('06fc7482-f737-4e28-8570-3b625c64e569',12,'2023-11-15'),('08f1c9ed-dbdb-4cc5-9694-bced22e6a352',12,'2023-11-16'),('0a3d732c-d020-4e24-bff5-76f5fe3314e3',12,'2023-11-16'),('0abf6171-b1d3-4662-96e0-742e6a1b3f00',3,'2023-11-06'),('0d46983c-fbb7-428f-938d-f171202223c3',12,'2023-11-15'),('0e16661c-a691-4fc5-9313-5f7150610ecf',12,'2023-11-16'),('0f58647e-7c99-42ff-81ba-9d456d50cbd2',12,'2023-11-16'),('11b081f4-38fb-46b4-9937-7100812af8cd',12,'2023-11-16'),('11ca5590-406a-4fd3-8788-d7123d89d299',12,'2023-11-15'),('16f9b88f-4d73-41d8-a756-588057e5d03b',12,'2023-11-15'),('18c55520-4eab-41db-bbee-9f7cf9ff6653',12,'2023-11-16'),('18dd52e8-60e9-4026-a127-556be5fc1240',12,'2023-11-16'),('19319902-5cbe-4779-abd5-72486c9a0f31',12,'2023-11-18'),('1c9f78a2-9d2e-4c2d-9317-0c73350cf9f5',11,'2023-11-06'),('1e579ab1-5a03-41f2-b1e2-a6f8755ba453',12,'2023-11-15'),('20664e03-1211-4079-9675-80de75e1918d',12,'2023-11-16'),('255541e5-8a36-4352-9355-f92690632c57',12,'2023-11-15'),('2684704f-014f-476b-b18e-ae17d9c36b75',12,'2023-11-15'),('2da5df1c-b025-4c2c-b30e-694b6f14d8f4',12,'2023-11-15'),('30127a44-fc8d-458d-ae25-72df850b486e',12,'2023-11-16'),('3139dec0-7d1c-47b8-9bce-959c18ed3a26',12,'2023-11-16'),('35ac8b20-4531-4dcd-b79c-31a34587b481',12,'2023-11-16'),('42b28bf0-a0ec-49fc-9aa8-404543bdea66',12,'2023-11-16'),('4fd5fe14-1dac-4390-88a4-61f53405b901',3,'2023-11-06'),('55b14b5b-50be-43ce-914b-54f3cda2d26a',2,'2023-11-05'),('56a5c857-ee31-41ae-8e93-ddb7e27dd3f2',12,'2023-11-15'),('633c98fd-80fd-46a6-ba5d-ea11a2594b6f',12,'2023-11-16'),('6559ef0d-cc4c-45d7-ba28-cd9333c84373',12,'2023-11-15'),('69dab286-ca24-415a-bcc5-c28f3d006a2c',12,'2023-11-15'),('6b476dc3-f356-40c1-b019-c5042208d29a',12,'2023-11-16'),('6c8b1f68-7950-4a37-902c-14b14f747ad5',12,'2023-11-16'),('6d799a7e-1841-4e81-8d12-2ddae4adcc0a',2,'2023-11-05'),('6df17b16-c3aa-41a1-9bbf-0cf12380b048',12,'2023-11-16'),('71c661ad-1790-467b-bcef-8ed3b38fadd0',12,'2023-11-16'),('72809744-7b82-42a0-b5c4-bf233a300b32',12,'2023-11-16'),('73e08a2e-f98b-4cc3-ac1d-3e7a63477668',12,'2023-11-16'),('760ffff9-6cc1-4f34-8e2f-616562d92415',2,'2023-11-05'),('788bb8b0-ac60-42fb-bdf9-27ad0df47c37',12,'2023-11-16'),('7e1726c1-2ffb-45c7-aab7-7848fff7c295',3,'2023-11-06'),('809b2de2-96a8-459c-9899-7a1dc3e7ff66',12,'2023-11-15'),('88411b26-4cb1-410f-8fa2-d5f3742ba0c7',12,'2023-11-15'),('8af5509a-5d4a-4337-88e9-a89fb432da5a',12,'2023-11-16'),('966a7bc3-343f-4944-8b06-d40fd7a54cb6',12,'2023-11-15'),('96cd0f27-c747-40d8-9f8a-5be54ab9ebb7',12,'2023-11-15'),('9872619b-4881-4988-bac3-071ba50899f3',12,'2023-11-16'),('98c0ba60-dc86-4aee-8460-a29de029baa8',12,'2023-11-18'),('9ddc1e7f-3dbe-4fdc-aa5f-f73ccec82669',12,'2023-11-16'),('9f2bd99e-3b75-4504-884a-72a97fb2b068',3,'2023-11-06'),('9fa48e70-3288-4168-905b-db389040aa43',12,'2023-11-16'),('9fd34073-4139-4819-b575-910db1d36ee4',12,'2023-11-15'),('a75f43d2-8582-4938-b495-bde35021887c',12,'2023-11-16'),('aef055d5-5a3e-4c4e-941d-63deaab90c0f',12,'2023-11-16'),('b4d4f032-0d20-4ed9-a30e-d6b77e21435a',12,'2023-11-15'),('bcd96ac6-eb00-447f-91f6-8d0b2f91caa7',12,'2023-11-16'),('bf5dd5fe-9021-47ec-88a7-260397ca7ff6',12,'2023-11-15'),('c190ca91-1637-4fed-96d4-7246eb2ffdb0',12,'2023-11-15'),('c7a39918-0e12-4241-bdba-c7965008e524',8,'2023-11-06'),('c81f5427-b87d-4a18-a596-11e7cd6f2a5a',12,'2023-11-15'),('c9378732-fa3a-4fd2-aa30-010a94829426',13,'2023-11-18'),('cf7f299c-5dbc-4626-ac36-9d77d548d663',12,'2023-11-16'),('dc28b7a6-bc2d-43c1-bf82-51377cca9a02',12,'2023-11-16'),('dca5cffa-fbfc-4e2c-a088-32b7eeb9586e',13,'2023-11-18'),('dd3b6e04-3acf-404d-8fbf-91ce28dc8d2e',12,'2023-11-15'),('e7783dad-58bc-45d6-bda6-f04155eb050a',12,'2023-11-16'),('eb18e67e-4ccd-4741-9ac1-62b88b197af3',12,'2023-11-16'),('ef4d6dc9-5012-410d-bd02-755c12b8ba0d',12,'2023-11-16'),('fde472a6-d878-4fd1-a0e6-c38b16df4e5f',11,'2023-11-06');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartitem` (
  `id` varchar(50) NOT NULL,
  `quantity` int DEFAULT NULL,
  `unitPrice` float DEFAULT NULL,
  `pro_id` int NOT NULL,
  `cat_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CartItem_Cart` (`cat_id`),
  KEY `FK_CartItem_Product` (`pro_id`),
  CONSTRAINT `FK_CartItem_Cart` FOREIGN KEY (`cat_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK_CartItem_Product` FOREIGN KEY (`pro_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES ('33adea39-c4c0-42b1-8afa-6ee7ae3085ae',1,33599000,6,'0abf6171-b1d3-4662-96e0-742e6a1b3f00'),('49e30bec-4392-4214-8eef-501c9d88b21a',2,7409000,7,'c9378732-fa3a-4fd2-aa30-010a94829426'),('50a9f2ba-ff5b-4b2f-b754-4d854145e548',2,33599000,6,'6d799a7e-1841-4e81-8d12-2ddae4adcc0a'),('72b9a7eb-a396-415c-8183-58619b9d9ce9',1,12399000,3,'9f2bd99e-3b75-4504-884a-72a97fb2b068'),('85abc49b-6db0-4bdd-9123-4bd97ad4af68',3,4799000,4,'dca5cffa-fbfc-4e2c-a088-32b7eeb9586e'),('dc43b92e-f627-4508-ba96-288215289620',5,7900000,12,'c7a39918-0e12-4241-bdba-c7965008e524');
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cate_id` int NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'RAM'),(2,'VGA'),(3,'HDD'),(4,'SSD'),(5,'KEYBOARD'),(6,'MOUSE'),(7,'SCREEN'),(8,'CPU'),(11,'LAPTOP'),(14,'MOBILE'),(15,'PC'),(16,'CARD'),(17,'HEARPHONE');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` float DEFAULT NULL,
  `cate_id` int NOT NULL,
  `des` varchar(2000) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Product_Category` (`cate_id`),
  CONSTRAINT `FK_Product_Category` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'CPU Intel Core i9-10900K',13999000,1,'CPU Intel Core i9-10900K (3.7GHz turbo up to 5.3GHz, 10 nhân 20 lượng, 20MB Cache, 125W) - Socket Intel LGA 1200','1590998039418.jpg'),(2,'CPU Intel Core i3-7100',2599000,8,'CPU Intel Core i3-7100 (3.9GHz, 2 nhân 4 lựng, 3MB Cache, 51W) - Socket Intel LGA 1151','1590999543960.jpg'),(3,'CPU AMD Ryzen 9 3900X',12399000,8,'CPU AMD Ryzen 9 3900X (3.8GHz turbo up to 4.6GHz, 12 nhân 24 lựng, 64MB Cache, 105W) - Socket AMD AM4','1590999908491.jpg'),(4,'Ram Desktop Corsair Vengeance PRO RGB (CMW32GX4M2E3200C16)',4799000,1,'Ram Desktop Corsair Vengeance PRO RGB (CMW32GX4M2E3200C16) 32GB (2x16GB) DDR4 3200MHz','1591000199662.jpg'),(5,'RAM Desktop Gskill Trident Z Neo (F4-3600C16D-16GTZNC)',3099000,1,'RAM Desktop Gskill Trident Z Neo (F4-3600C16D-16GTZNC) 16GB (2x8GB) DDR4 3600MHz','1591000276647.jpg'),(6,'Card màn hình MSI RTX 2080 Ti GAMING X TRIO',33599000,2,'Card màn hình MSI RTX 2080 Ti GAMING X TRIO (11GB GDDR6, 352-bit, HDMI+DP+Type-C, 1x8-pin+ 1x6-pin)','1591000377694.jpg'),(7,'Ổ cứng gắn trong Seagate SkyHawk AI 8TB',7409000,3,'Ổ cứng gắn trong Seagate SkyHawk AI 8TB 7200rpm SATA 3.5 inch (ST8000VE0004)','1591000465226.jpg'),(8,'Ổ cứng SSD WD Green 240GB M.2',999000,4,'Ổ cứng SSD WD Green 240GB M.2 2280 (Đọc 545MB/s - Ghi 430MB/s) - (WDS240G2G0B)','1591000543197.jpg'),(9,'Bàn phím cơ Filco Majestouch Convertible 2',4059000,5,'Bàn phím cơ Filco Majestouch Convertible 2 Red switch 104 Black - FKBC104MRL/EB2','1591000672097.jpg'),(10,'Chuột chơi game ASUS Cerberus Optical Gaming Mouse',399000,6,'Chuột chơi game ASUS Cerberus Optical Gaming Mouse','1591000750669.jpg'),(11,'Màn Hình Acer VG252QX',8999000,7,'Màn Hình Acer VG252QX (25 inch/FHD/IPS/240Hz/0.5 ms/400 nits/DP+HDMI/G-Sync)','1591000827861.png'),(12,'lenovo gaming',7900000,11,'Laptop Acer Aspire 5 A515-57-52YQ Core i5-1235U 8GB RAM 512GB SSD 15.6\" FHD Windows 11','1699203534020.jpg'),(15,'laptop',999999,11,'tggg','1700294551696.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(36) NOT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@gmail.com','admin','admin','',1),(2,'user2@example.com','user2','1234','',1),(3,'tungccvv111@gmail.com','atungne','1234',NULL,1),(8,'tung789@gmail.com','tung6','789',NULL,2),(11,'bao1@gmail.com','bao1','123',NULL,2),(12,'tung9@gmail.com','tung9','999',NULL,2),(13,'tung10@gmail.com','tung10','9999',NULL,2);
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

-- Dump completed on 2023-11-18 16:26:13
