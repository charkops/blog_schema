-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.32

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryposts`
--

LOCK TABLES `categoryposts` WRITE;
/*!40000 ALTER TABLE `categoryposts` DISABLE KEYS */;
INSERT INTO `categoryposts` VALUES (1,1,1,'2021-01-24 19:26:23','2021-01-24 19:26:23'),(2,2,2,'2021-01-24 19:26:32','2021-01-24 19:26:32'),(3,3,3,'2021-01-24 19:26:44','2021-01-24 19:26:44'),(4,4,4,'2021-01-24 19:26:55','2021-01-24 19:26:55'),(5,4,5,'2021-01-24 19:27:06','2021-01-24 19:27:06'),(6,4,6,'2021-01-24 19:27:22','2021-01-24 19:27:22'),(7,4,7,'2021-01-24 19:27:33','2021-01-24 19:27:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'A good news title','Pariatur veniam proident ad ipsum. Anim nostrud consectetur consectetur duis pariatur ex nulla. Minim esse culpa ea culpa et ad aliquip ea. Nostrud minim irure occaecat Lorem velit nulla. Anim irure ad eiusmod duis laborum commodo sunt commodo. Cillum ullamco mollit ullamco quis sint.\n\nQui occaecat qui amet Lorem ullamco nulla fugiat et nostrud. Consequat labore commodo magna mollit eu sint do veniam dolore est fugiat velit do enim. Pariatur veniam aute eiusmod laborum anim velit nisi pariatur ad dolore ullamco cillum. Anim enim qui nostrud id. Culpa duis eu excepteur ex irure culpa reprehenderit fugiat. Irure fugiat in dolore occaecat ex tempor dolore et consequat ipsum deserunt quis laboris amet. Deserunt sint fugiat ex nulla labore labore nulla quis occaecat anim magna et consequat.\n\nAnim nulla voluptate dolor nisi cillum exercitation ut deserunt mollit dolor sunt adipisicing. Nostrud exercitation duis sit dolore irure veniam aliqua exercitation adipisicing eiusmod. Dolor tempor excepteur mollit ea adipisicing aliquip. Est velit occaecat cillum sunt adipisicing exercitation nostrud non laboris commodo ea voluptate. Do sint tempor cillum nisi magna tempor eu labore fugiat. Amet quis cillum irure sit esse aliqua mollit. Labore nisi deserunt irure ipsum est ipsum aliqua ea.\n\nEsse ex labore sunt ex minim eiusmod magna proident. Aliqua ea aliquip laboris adipisicing voluptate tempor laboris nostrud consequat minim excepteur. Quis eu aute reprehenderit dolor exercitation minim amet excepteur cupidatat dolor nulla irure eu fugiat. Ea mollit mollit tempor ex tempor voluptate. Tempor elit ad labore anim nisi. Ad cupidatat Lorem pariatur sint eu.\n\nOccaecat in velit et nisi nulla mollit laboris exercitation. Velit labore ullamco irure laboris minim laboris voluptate nisi qui aute qui excepteur nostrud. Cupidatat adipisicing non elit velit esse ut occaecat nostrud exercitation. Duis id reprehenderit magna irure eu cupidatat nulla sint deserunt eiusmod sunt ullamco proident. Excepteur ad adipisicing aliquip est. Cupidatat elit commodo do non ut fugiat adipisicing.','2021-01-24 19:26:23','2021-01-24 19:26:23'),(2,'A good sports title','Pariatur veniam proident ad ipsum. Anim nostrud consectetur consectetur duis pariatur ex nulla. Minim esse culpa ea culpa et ad aliquip ea. Nostrud minim irure occaecat Lorem velit nulla. Anim irure ad eiusmod duis laborum commodo sunt commodo. Cillum ullamco mollit ullamco quis sint.\n\nQui occaecat qui amet Lorem ullamco nulla fugiat et nostrud. Consequat labore commodo magna mollit eu sint do veniam dolore est fugiat velit do enim. Pariatur veniam aute eiusmod laborum anim velit nisi pariatur ad dolore ullamco cillum. Anim enim qui nostrud id. Culpa duis eu excepteur ex irure culpa reprehenderit fugiat. Irure fugiat in dolore occaecat ex tempor dolore et consequat ipsum deserunt quis laboris amet. Deserunt sint fugiat ex nulla labore labore nulla quis occaecat anim magna et consequat.\n\nAnim nulla voluptate dolor nisi cillum exercitation ut deserunt mollit dolor sunt adipisicing. Nostrud exercitation duis sit dolore irure veniam aliqua exercitation adipisicing eiusmod. Dolor tempor excepteur mollit ea adipisicing aliquip. Est velit occaecat cillum sunt adipisicing exercitation nostrud non laboris commodo ea voluptate. Do sint tempor cillum nisi magna tempor eu labore fugiat. Amet quis cillum irure sit esse aliqua mollit. Labore nisi deserunt irure ipsum est ipsum aliqua ea.\n\nEsse ex labore sunt ex minim eiusmod magna proident. Aliqua ea aliquip laboris adipisicing voluptate tempor laboris nostrud consequat minim excepteur. Quis eu aute reprehenderit dolor exercitation minim amet excepteur cupidatat dolor nulla irure eu fugiat. Ea mollit mollit tempor ex tempor voluptate. Tempor elit ad labore anim nisi. Ad cupidatat Lorem pariatur sint eu.\n\nOccaecat in velit et nisi nulla mollit laboris exercitation. Velit labore ullamco irure laboris minim laboris voluptate nisi qui aute qui excepteur nostrud. Cupidatat adipisicing non elit velit esse ut occaecat nostrud exercitation. Duis id reprehenderit magna irure eu cupidatat nulla sint deserunt eiusmod sunt ullamco proident. Excepteur ad adipisicing aliquip est. Cupidatat elit commodo do non ut fugiat adipisicing.','2021-01-24 19:26:32','2021-01-24 19:26:32'),(3,'A good thoughts title','Pariatur veniam proident ad ipsum. Anim nostrud consectetur consectetur duis pariatur ex nulla. Minim esse culpa ea culpa et ad aliquip ea. Nostrud minim irure occaecat Lorem velit nulla. Anim irure ad eiusmod duis laborum commodo sunt commodo. Cillum ullamco mollit ullamco quis sint.\n\nQui occaecat qui amet Lorem ullamco nulla fugiat et nostrud. Consequat labore commodo magna mollit eu sint do veniam dolore est fugiat velit do enim. Pariatur veniam aute eiusmod laborum anim velit nisi pariatur ad dolore ullamco cillum. Anim enim qui nostrud id. Culpa duis eu excepteur ex irure culpa reprehenderit fugiat. Irure fugiat in dolore occaecat ex tempor dolore et consequat ipsum deserunt quis laboris amet. Deserunt sint fugiat ex nulla labore labore nulla quis occaecat anim magna et consequat.\n\nAnim nulla voluptate dolor nisi cillum exercitation ut deserunt mollit dolor sunt adipisicing. Nostrud exercitation duis sit dolore irure veniam aliqua exercitation adipisicing eiusmod. Dolor tempor excepteur mollit ea adipisicing aliquip. Est velit occaecat cillum sunt adipisicing exercitation nostrud non laboris commodo ea voluptate. Do sint tempor cillum nisi magna tempor eu labore fugiat. Amet quis cillum irure sit esse aliqua mollit. Labore nisi deserunt irure ipsum est ipsum aliqua ea.\n\nEsse ex labore sunt ex minim eiusmod magna proident. Aliqua ea aliquip laboris adipisicing voluptate tempor laboris nostrud consequat minim excepteur. Quis eu aute reprehenderit dolor exercitation minim amet excepteur cupidatat dolor nulla irure eu fugiat. Ea mollit mollit tempor ex tempor voluptate. Tempor elit ad labore anim nisi. Ad cupidatat Lorem pariatur sint eu.\n\nOccaecat in velit et nisi nulla mollit laboris exercitation. Velit labore ullamco irure laboris minim laboris voluptate nisi qui aute qui excepteur nostrud. Cupidatat adipisicing non elit velit esse ut occaecat nostrud exercitation. Duis id reprehenderit magna irure eu cupidatat nulla sint deserunt eiusmod sunt ullamco proident. Excepteur ad adipisicing aliquip est. Cupidatat elit commodo do non ut fugiat adipisicing.','2021-01-24 19:26:44','2021-01-24 19:26:44'),(4,'A personal title','Pariatur veniam proident ad ipsum. Anim nostrud consectetur consectetur duis pariatur ex nulla. Minim esse culpa ea culpa et ad aliquip ea. Nostrud minim irure occaecat Lorem velit nulla. Anim irure ad eiusmod duis laborum commodo sunt commodo. Cillum ullamco mollit ullamco quis sint.\n\nQui occaecat qui amet Lorem ullamco nulla fugiat et nostrud. Consequat labore commodo magna mollit eu sint do veniam dolore est fugiat velit do enim. Pariatur veniam aute eiusmod laborum anim velit nisi pariatur ad dolore ullamco cillum. Anim enim qui nostrud id. Culpa duis eu excepteur ex irure culpa reprehenderit fugiat. Irure fugiat in dolore occaecat ex tempor dolore et consequat ipsum deserunt quis laboris amet. Deserunt sint fugiat ex nulla labore labore nulla quis occaecat anim magna et consequat.\n\nAnim nulla voluptate dolor nisi cillum exercitation ut deserunt mollit dolor sunt adipisicing. Nostrud exercitation duis sit dolore irure veniam aliqua exercitation adipisicing eiusmod. Dolor tempor excepteur mollit ea adipisicing aliquip. Est velit occaecat cillum sunt adipisicing exercitation nostrud non laboris commodo ea voluptate. Do sint tempor cillum nisi magna tempor eu labore fugiat. Amet quis cillum irure sit esse aliqua mollit. Labore nisi deserunt irure ipsum est ipsum aliqua ea.\n\nEsse ex labore sunt ex minim eiusmod magna proident. Aliqua ea aliquip laboris adipisicing voluptate tempor laboris nostrud consequat minim excepteur. Quis eu aute reprehenderit dolor exercitation minim amet excepteur cupidatat dolor nulla irure eu fugiat. Ea mollit mollit tempor ex tempor voluptate. Tempor elit ad labore anim nisi. Ad cupidatat Lorem pariatur sint eu.\n\nOccaecat in velit et nisi nulla mollit laboris exercitation. Velit labore ullamco irure laboris minim laboris voluptate nisi qui aute qui excepteur nostrud. Cupidatat adipisicing non elit velit esse ut occaecat nostrud exercitation. Duis id reprehenderit magna irure eu cupidatat nulla sint deserunt eiusmod sunt ullamco proident. Excepteur ad adipisicing aliquip est. Cupidatat elit commodo do non ut fugiat adipisicing.','2021-01-24 19:26:55','2021-01-24 19:26:55'),(5,'Another personal title','Pariatur veniam proident ad ipsum. Anim nostrud consectetur consectetur duis pariatur ex nulla. Minim esse culpa ea culpa et ad aliquip ea. Nostrud minim irure occaecat Lorem velit nulla. Anim irure ad eiusmod duis laborum commodo sunt commodo. Cillum ullamco mollit ullamco quis sint.\n\nQui occaecat qui amet Lorem ullamco nulla fugiat et nostrud. Consequat labore commodo magna mollit eu sint do veniam dolore est fugiat velit do enim. Pariatur veniam aute eiusmod laborum anim velit nisi pariatur ad dolore ullamco cillum. Anim enim qui nostrud id. Culpa duis eu excepteur ex irure culpa reprehenderit fugiat. Irure fugiat in dolore occaecat ex tempor dolore et consequat ipsum deserunt quis laboris amet. Deserunt sint fugiat ex nulla labore labore nulla quis occaecat anim magna et consequat.\n\nAnim nulla voluptate dolor nisi cillum exercitation ut deserunt mollit dolor sunt adipisicing. Nostrud exercitation duis sit dolore irure veniam aliqua exercitation adipisicing eiusmod. Dolor tempor excepteur mollit ea adipisicing aliquip. Est velit occaecat cillum sunt adipisicing exercitation nostrud non laboris commodo ea voluptate. Do sint tempor cillum nisi magna tempor eu labore fugiat. Amet quis cillum irure sit esse aliqua mollit. Labore nisi deserunt irure ipsum est ipsum aliqua ea.\n\nEsse ex labore sunt ex minim eiusmod magna proident. Aliqua ea aliquip laboris adipisicing voluptate tempor laboris nostrud consequat minim excepteur. Quis eu aute reprehenderit dolor exercitation minim amet excepteur cupidatat dolor nulla irure eu fugiat. Ea mollit mollit tempor ex tempor voluptate. Tempor elit ad labore anim nisi. Ad cupidatat Lorem pariatur sint eu.\n\nOccaecat in velit et nisi nulla mollit laboris exercitation. Velit labore ullamco irure laboris minim laboris voluptate nisi qui aute qui excepteur nostrud. Cupidatat adipisicing non elit velit esse ut occaecat nostrud exercitation. Duis id reprehenderit magna irure eu cupidatat nulla sint deserunt eiusmod sunt ullamco proident. Excepteur ad adipisicing aliquip est. Cupidatat elit commodo do non ut fugiat adipisicing.','2021-01-24 19:27:06','2021-01-24 19:27:06'),(6,'So many posts in this category','Pariatur veniam proident ad ipsum. Anim nostrud consectetur consectetur duis pariatur ex nulla. Minim esse culpa ea culpa et ad aliquip ea. Nostrud minim irure occaecat Lorem velit nulla. Anim irure ad eiusmod duis laborum commodo sunt commodo. Cillum ullamco mollit ullamco quis sint.\n\nQui occaecat qui amet Lorem ullamco nulla fugiat et nostrud. Consequat labore commodo magna mollit eu sint do veniam dolore est fugiat velit do enim. Pariatur veniam aute eiusmod laborum anim velit nisi pariatur ad dolore ullamco cillum. Anim enim qui nostrud id. Culpa duis eu excepteur ex irure culpa reprehenderit fugiat. Irure fugiat in dolore occaecat ex tempor dolore et consequat ipsum deserunt quis laboris amet. Deserunt sint fugiat ex nulla labore labore nulla quis occaecat anim magna et consequat.\n\nAnim nulla voluptate dolor nisi cillum exercitation ut deserunt mollit dolor sunt adipisicing. Nostrud exercitation duis sit dolore irure veniam aliqua exercitation adipisicing eiusmod. Dolor tempor excepteur mollit ea adipisicing aliquip. Est velit occaecat cillum sunt adipisicing exercitation nostrud non laboris commodo ea voluptate. Do sint tempor cillum nisi magna tempor eu labore fugiat. Amet quis cillum irure sit esse aliqua mollit. Labore nisi deserunt irure ipsum est ipsum aliqua ea.\n\nEsse ex labore sunt ex minim eiusmod magna proident. Aliqua ea aliquip laboris adipisicing voluptate tempor laboris nostrud consequat minim excepteur. Quis eu aute reprehenderit dolor exercitation minim amet excepteur cupidatat dolor nulla irure eu fugiat. Ea mollit mollit tempor ex tempor voluptate. Tempor elit ad labore anim nisi. Ad cupidatat Lorem pariatur sint eu.\n\nOccaecat in velit et nisi nulla mollit laboris exercitation. Velit labore ullamco irure laboris minim laboris voluptate nisi qui aute qui excepteur nostrud. Cupidatat adipisicing non elit velit esse ut occaecat nostrud exercitation. Duis id reprehenderit magna irure eu cupidatat nulla sint deserunt eiusmod sunt ullamco proident. Excepteur ad adipisicing aliquip est. Cupidatat elit commodo do non ut fugiat adipisicing.','2021-01-24 19:27:22','2021-01-24 19:27:22'),(7,'Am i hired now ?','Pariatur veniam proident ad ipsum. Anim nostrud consectetur consectetur duis pariatur ex nulla. Minim esse culpa ea culpa et ad aliquip ea. Nostrud minim irure occaecat Lorem velit nulla. Anim irure ad eiusmod duis laborum commodo sunt commodo. Cillum ullamco mollit ullamco quis sint.\n\nQui occaecat qui amet Lorem ullamco nulla fugiat et nostrud. Consequat labore commodo magna mollit eu sint do veniam dolore est fugiat velit do enim. Pariatur veniam aute eiusmod laborum anim velit nisi pariatur ad dolore ullamco cillum. Anim enim qui nostrud id. Culpa duis eu excepteur ex irure culpa reprehenderit fugiat. Irure fugiat in dolore occaecat ex tempor dolore et consequat ipsum deserunt quis laboris amet. Deserunt sint fugiat ex nulla labore labore nulla quis occaecat anim magna et consequat.\n\nAnim nulla voluptate dolor nisi cillum exercitation ut deserunt mollit dolor sunt adipisicing. Nostrud exercitation duis sit dolore irure veniam aliqua exercitation adipisicing eiusmod. Dolor tempor excepteur mollit ea adipisicing aliquip. Est velit occaecat cillum sunt adipisicing exercitation nostrud non laboris commodo ea voluptate. Do sint tempor cillum nisi magna tempor eu labore fugiat. Amet quis cillum irure sit esse aliqua mollit. Labore nisi deserunt irure ipsum est ipsum aliqua ea.\n\nEsse ex labore sunt ex minim eiusmod magna proident. Aliqua ea aliquip laboris adipisicing voluptate tempor laboris nostrud consequat minim excepteur. Quis eu aute reprehenderit dolor exercitation minim amet excepteur cupidatat dolor nulla irure eu fugiat. Ea mollit mollit tempor ex tempor voluptate. Tempor elit ad labore anim nisi. Ad cupidatat Lorem pariatur sint eu.\n\nOccaecat in velit et nisi nulla mollit laboris exercitation. Velit labore ullamco irure laboris minim laboris voluptate nisi qui aute qui excepteur nostrud. Cupidatat adipisicing non elit velit esse ut occaecat nostrud exercitation. Duis id reprehenderit magna irure eu cupidatat nulla sint deserunt eiusmod sunt ullamco proident. Excepteur ad adipisicing aliquip est. Cupidatat elit commodo do non ut fugiat adipisicing.','2021-01-24 19:27:33','2021-01-24 19:27:33');
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

-- Dump completed on 2021-01-24 19:27:46
