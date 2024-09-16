CREATE DATABASE  IF NOT EXISTS `foodapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `foodapp`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: foodapp
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menuId` int NOT NULL AUTO_INCREMENT,
  `restaurantId` int NOT NULL,
  `menuName` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(100) NOT NULL,
  `isActiveTable` tinyint NOT NULL,
  `imgPath` varchar(45) NOT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,'Classic Burger',9.99,'A juicy beef burger with lettuce, tomato, and cheese, served with fries.',1,'images/classic_burger.jpg'),(2,1,'Margherita Pizza',12.99,'A simple and delicious pizza topped with fresh tomatoes, mozzarella cheese, and basil.',1,'images/margherita_pizza.jpg'),(3,1,'Caesar Salad',8.99,'Crisp romaine lettuce tossed with Caesar dressing, croutons, and parmesan cheese.',1,'images/caesar_salad.jpg'),(4,2,'Sushi Roll',15.99,'A variety of sushi rolls including tuna, salmon, and avocado.',1,'images/sushi_roll.jpg'),(5,2,'Tempura',11.99,'Crispy tempura vegetables and shrimp served with dipping sauce.',1,'images/tempura.jpg'),(6,2,'Miso Soup',5.99,'Traditional miso soup with tofu and seaweed.',1,'images/miso_soup.jpg'),(7,3,'Pasta Carbonara',13.99,'Creamy pasta with pancetta, parmesan cheese, and black pepper.',1,'images/pasta_carbonara.jpg'),(8,3,'Lasagna',14.99,'Layered pasta with meat sauce, béchamel, and cheese.',1,'images/lasagna.jpg'),(9,3,'Tiramisu',6.99,'Classic Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cream.',1,'images/tiramisu.jpg'),(10,4,'Chicken Tikka',12.99,'Marinated chicken grilled to perfection with spices and herbs.',1,'images/chicken_tikka.jpg'),(11,4,'Naan Bread',3.99,'Soft and fluffy Indian bread, perfect with any curry.',1,'images/naan_bread.jpg'),(12,4,'Paneer Butter Masala',11.99,'Cottage cheese cubes in a rich and creamy tomato-based sauce.',1,'images/paneer_butter_masala.jpg'),(13,5,'Fish and Chips',14.99,'Crispy fried fish fillets with golden fries.',1,'images/fish_and_chips.jpg'),(14,5,'Shepherd\'s Pie',13.99,'Savory pie with ground beef and vegetables topped with mashed potatoes.',1,'images/shepherds_pie.jpg'),(15,5,'Sticky Toffee Pudding',7.99,'Warm and sticky pudding served with vanilla ice cream.',1,'images/sticky_toffee_pudding.jpg'),(16,6,'Falafel Wrap',10.99,'Crispy falafel wrapped in pita with hummus and veggies.',1,'images/falafel_wrap.jpg'),(17,6,'Hummus Plate',7.99,'Creamy hummus served with pita bread and vegetables.',1,'images/hummus_plate.jpg'),(18,6,'Shakshuka',11.99,'Poached eggs in a spicy tomato sauce with peppers and onions.',1,'images/shakshuka.jpg'),(19,7,'BBQ Ribs',15.99,'Tender ribs slow-cooked with BBQ sauce, served with coleslaw.',1,'images/bbq_ribs.jpg'),(20,7,'Buffalo Wings',11.99,'Spicy chicken wings with a side of celery and ranch dressing.',1,'images/buffalo_wings.jpg'),(21,7,'Cheesecake',6.99,'Rich and creamy cheesecake with a graham cracker crust.',1,'images/cheesecake.jpg'),(22,8,'Vegetable Stir-Fry',11.99,'Stir-fried vegetables in a savory sauce, served with rice.',1,'images/vegetable_stir_fry.jpg'),(23,8,'Spring Rolls',8.99,'Crispy rolls filled with vegetables and served with dipping sauce.',1,'images/spring_rolls.jpg'),(24,8,'Pad Thai',12.99,'Thai noodle dish with shrimp, tofu, peanuts, and lime.',1,'images/pad_thai.jpg');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderhistory`
--

DROP TABLE IF EXISTS `orderhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderhistory` (
  `orderhistoryId` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `userId` int NOT NULL,
  `orderDate` datetime NOT NULL,
  `totalAmount` float NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`orderhistoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderhistory`
--

LOCK TABLES `orderhistory` WRITE;
/*!40000 ALTER TABLE `orderhistory` DISABLE KEYS */;
INSERT INTO `orderhistory` VALUES (1,1,3,'2024-08-30 16:06:25',9.99,'Placed'),(2,2,3,'2024-08-30 16:08:30',18.98,'Placed'),(3,3,3,'2024-08-30 16:11:09',18.98,'Placed'),(4,4,3,'2024-08-30 16:15:42',35.97,'Placed'),(5,5,3,'2024-08-30 16:15:57',31.97,'Placed'),(6,6,3,'2024-09-03 10:19:42',22.98,'Placed'),(7,7,3,'2024-09-03 16:06:01',22.98,'Placed'),(8,8,3,'2024-09-03 16:26:45',35.96,'Placed'),(9,9,3,'2024-09-03 16:30:30',39.97,'Placed');
/*!40000 ALTER TABLE `orderhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `orderItemId` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `menuId` int NOT NULL,
  `quantity` int NOT NULL,
  `subTotal` float NOT NULL,
  PRIMARY KEY (`orderItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,0,2,2,25.98),(2,0,1,2,19.98),(3,1,1,1,9.99),(4,2,1,1,9.99),(5,2,3,1,8.99),(6,3,1,1,9.99),(7,3,3,1,8.99),(8,4,7,1,13.99),(9,4,8,1,14.99),(10,4,9,1,6.99),(11,5,1,1,9.99),(12,5,2,1,12.99),(13,5,3,1,8.99),(14,6,1,1,9.99),(15,6,2,1,12.99),(16,7,1,1,9.99),(17,7,2,1,12.99),(18,8,17,3,23.97),(19,8,18,1,11.99),(20,9,4,1,15.99),(21,9,5,2,23.98);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertable` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `restaurantId` int NOT NULL,
  `userId` int NOT NULL,
  `dateTime` datetime NOT NULL,
  `totalAmount` float NOT NULL,
  `status` varchar(45) NOT NULL,
  `paymentMode` varchar(45) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (1,1,3,'2024-08-30 16:06:24',9.99,'Placed','Card'),(2,1,3,'2024-08-30 16:08:30',18.98,'Placed','Card'),(3,1,3,'2024-08-30 16:11:09',18.98,'Placed','Card'),(4,3,3,'2024-08-30 16:15:41',35.97,'Placed','Card'),(5,1,3,'2024-08-30 16:15:57',31.97,'Placed','Card'),(6,1,3,'2024-09-03 10:19:42',22.98,'Placed','Card'),(7,1,3,'2024-09-03 16:06:01',22.98,'Placed','Card'),(8,6,3,'2024-09-03 16:26:45',35.96,'Placed','Card'),(9,2,3,'2024-09-03 16:30:30',39.97,'Placed','Card');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurantId` int NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(45) NOT NULL,
  `delivaryTime` int NOT NULL,
  `cuisineType` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `ratings` float NOT NULL,
  `isActive` tinyint NOT NULL,
  `adminId` int NOT NULL,
  PRIMARY KEY (`restaurantId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Italian Bistro',30,'Italian','123 Olive St, Rome',4.5,1,1),(2,'Sushi Haven',25,'Japanese','456 Wasabi Ave, Tokyo',4.8,1,2),(3,'Taco Fiesta',20,'Mexican','789 Tacos Blvd, Mexico City',4.2,1,3),(4,'Burger Palace',15,'American','321 Burger Rd, New York',4.7,1,4),(5,'Curry House',35,'Indian','654 Spice Ln, Mumbai',4.6,1,5),(6,'Pasta Place',40,'Italian','987 Pasta Way, Rome',4.3,1,1),(7,'Dim Sum Delight',30,'Chinese','234 Dim Sum St, Beijing',4.4,1,6),(8,'Grill & Chill',25,'Barbecue','567 Grill St, Austin',4.5,1,7);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sam','sam123@gmail.com','1234567890','12345','Btm layout','2024-07-30 12:21:34','2024-07-30 12:21:34'),(3,'abc','abc@gmail.com','123456','123','BTM','2024-08-28 15:10:17','2024-08-28 15:10:17'),(4,'xyz','xyz@gmail.com','123456','1234','BTM','2024-08-28 15:25:30','2024-08-28 15:25:30');
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

-- Dump completed on 2024-09-16 11:48:36
