-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: blog_schema
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogs`
--

USE db;

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'My Blog',NULL,NULL),(2,'Another Blog',NULL,NULL),(3,'Some other blog',NULL,NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `blog_id` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'News','1',NULL,NULL),(2,'Sports','1',NULL,NULL),(3,'Thoughts','1',NULL,NULL),(4,'Personal','1',NULL,NULL),(5,'Work','1',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryposts`
--

DROP TABLE IF EXISTS `categoryposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoryposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `categoryposts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `categoryposts_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryposts`
--

LOCK TABLES `categoryposts` WRITE;
/*!40000 ALTER TABLE `categoryposts` DISABLE KEYS */;
INSERT INTO `categoryposts` VALUES (1,4,1,NULL,NULL),(2,4,2,NULL,NULL),(3,4,3,NULL,NULL),(4,4,4,NULL,NULL);
/*!40000 ALTER TABLE `categoryposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'A post title','Nisi deserunt et sunt consequat ipsum pariatur laboris est do aliquip elit. Ex esse culpa excepteur adipisicing. Reprehenderit cupidatat est amet dolor non culpa nisi sunt velit cupidatat amet. Consequat mollit et laborum quis nisi ad consequat qui. Enim ut laboris pariatur est reprehenderit elit deserunt nulla officia. Ea et exercitation laboris pariatur laboris. Commodo ullamco aliquip enim cupidatat in.\n\nDeserunt qui nostrud Lorem aliqua aliquip sunt sunt occaecat nostrud ea occaecat qui aute ea. Exercitation cupidatat exercitation quis pariatur eiusmod sint do dolore. Enim voluptate commodo dolore mollit duis est ea esse mollit ex.\n\nLaborum aliquip dolor veniam ullamco in eiusmod ex nisi qui. Voluptate magna adipisicing occaecat officia labore esse ea occaecat laborum veniam nostrud ex. Est nulla dolore nisi voluptate sint id et sunt. Esse esse pariatur deserunt id sunt magna consequat elit aliqua nulla excepteur. Proident quis magna nostrud sunt ipsum. Nulla eiusmod ullamco eu officia amet ullamco.',NULL,NULL),(2,'Another post title','Nisi deserunt et sunt consequat ipsum pariatur laboris est do aliquip elit. Ex esse culpa excepteur adipisicing. Reprehenderit cupidatat est amet dolor non culpa nisi sunt velit cupidatat amet. Consequat mollit et laborum quis nisi ad consequat qui. Enim ut laboris pariatur est reprehenderit elit deserunt nulla officia. Ea et exercitation laboris pariatur laboris. Commodo ullamco aliquip enim cupidatat in.\n\nDeserunt qui nostrud Lorem aliqua aliquip sunt sunt occaecat nostrud ea occaecat qui aute ea. Exercitation cupidatat exercitation quis pariatur eiusmod sint do dolore. Enim voluptate commodo dolore mollit duis est ea esse mollit ex.\n\nLaborum aliquip dolor veniam ullamco in eiusmod ex nisi qui. Voluptate magna adipisicing occaecat officia labore esse ea occaecat laborum veniam nostrud ex. Est nulla dolore nisi voluptate sint id et sunt. Esse esse pariatur deserunt id sunt magna consequat elit aliqua nulla excepteur. Proident quis magna nostrud sunt ipsum. Nulla eiusmod ullamco eu officia amet ullamco.',NULL,NULL),(3,'Cool title','Nisi deserunt et sunt consequat ipsum pariatur laboris est do aliquip elit. Ex esse culpa excepteur adipisicing. Reprehenderit cupidatat est amet dolor non culpa nisi sunt velit cupidatat amet. Consequat mollit et laborum quis nisi ad consequat qui. Enim ut laboris pariatur est reprehenderit elit deserunt nulla officia. Ea et exercitation laboris pariatur laboris. Commodo ullamco aliquip enim cupidatat in.\n\nDeserunt qui nostrud Lorem aliqua aliquip sunt sunt occaecat nostrud ea occaecat qui aute ea. Exercitation cupidatat exercitation quis pariatur eiusmod sint do dolore. Enim voluptate commodo dolore mollit duis est ea esse mollit ex.\n\nLaborum aliquip dolor veniam ullamco in eiusmod ex nisi qui. Voluptate magna adipisicing occaecat officia labore esse ea occaecat laborum veniam nostrud ex. Est nulla dolore nisi voluptate sint id et sunt. Esse esse pariatur deserunt id sunt magna consequat elit aliqua nulla excepteur. Proident quis magna nostrud sunt ipsum. Nulla eiusmod ullamco eu officia amet ullamco.',NULL,NULL),(4,'Some thoughts','Nisi deserunt et sunt consequat ipsum pariatur laboris est do aliquip elit. Ex esse culpa excepteur adipisicing. Reprehenderit cupidatat est amet dolor non culpa nisi sunt velit cupidatat amet. Consequat mollit et laborum quis nisi ad consequat qui. Enim ut laboris pariatur est reprehenderit elit deserunt nulla officia. Ea et exercitation laboris pariatur laboris. Commodo ullamco aliquip enim cupidatat in.\n\nDeserunt qui nostrud Lorem aliqua aliquip sunt sunt occaecat nostrud ea occaecat qui aute ea. Exercitation cupidatat exercitation quis pariatur eiusmod sint do dolore. Enim voluptate commodo dolore mollit duis est ea esse mollit ex.\n\nLaborum aliquip dolor veniam ullamco in eiusmod ex nisi qui. Voluptate magna adipisicing occaecat officia labore esse ea occaecat laborum veniam nostrud ex. Est nulla dolore nisi voluptate sint id et sunt. Esse esse pariatur deserunt id sunt magna consequat elit aliqua nulla excepteur. Proident quis magna nostrud sunt ipsum. Nulla eiusmod ullamco eu officia amet ullamco.',NULL,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'charkops','example@gmail.com','password',1,NULL,NULL),(2,'admin','admin@gmail.com','admin',2,NULL,NULL),(3,'example','ex@gmail.com','example',3,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 20:16:26
