-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: avtotonus
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.10.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add Изображение',8,'add_picture'),(23,'Can change Изображение',8,'change_picture'),(24,'Can delete Изображение',8,'delete_picture'),(25,'Can add Страница сайта',9,'add_page'),(26,'Can change Страница сайта',9,'change_page'),(27,'Can delete Страница сайта',9,'delete_page'),(28,'Can add Фото/изображение для страницы',10,'add_pagepicture'),(29,'Can change Фото/изображение для страницы',10,'change_pagepicture'),(30,'Can delete Фото/изображение для страницы',10,'delete_pagepicture'),(31,'Can add Статья',11,'add_article'),(32,'Can change Статья',11,'change_article'),(33,'Can delete Статья',11,'delete_article'),(34,'Can add Марка автомобиля',12,'add_manufacture'),(35,'Can change Марка автомобиля',12,'change_manufacture'),(36,'Can delete Марка автомобиля',12,'delete_manufacture'),(37,'Can add Модель автомобиля',13,'add_carmodel'),(38,'Can change Модель автомобиля',13,'change_carmodel'),(39,'Can delete Модель автомобиля',13,'delete_carmodel'),(40,'Can add Модификация модели автомобиля',14,'add_modification'),(41,'Can change Модификация модели автомобиля',14,'change_modification'),(42,'Can delete Модификация модели автомобиля',14,'delete_modification'),(43,'Can add Группа запчастей',15,'add_partsgroup'),(44,'Can change Группа запчастей',15,'change_partsgroup'),(45,'Can delete Группа запчастей',15,'delete_partsgroup'),(49,'Can add Автозапчасть',17,'add_parts'),(50,'Can change Автозапчасть',17,'change_parts'),(51,'Can delete Автозапчасть',17,'delete_parts'),(52,'Can add Псевдоним запчасти',18,'add_partsalias'),(53,'Can change Псевдоним запчасти',18,'change_partsalias'),(54,'Can delete Псевдоним запчасти',18,'delete_partsalias'),(55,'Can add Меню',19,'add_menu'),(56,'Can change Меню',19,'change_menu'),(57,'Can delete Меню',19,'delete_menu'),(58,'Can add Пункт меню',20,'add_menuitem'),(59,'Can change Пункт меню',20,'change_menuitem'),(60,'Can delete Пункт меню',20,'delete_menuitem'),(64,'Can add Компонент',22,'add_component'),(65,'Can change Компонент',22,'change_component'),(66,'Can delete Компонент',22,'delete_component'),(67,'Can add Составляющая деталь',23,'add_partscomponent'),(68,'Can change Составляющая деталь',23,'change_partscomponent'),(69,'Can delete Составляющая деталь',23,'delete_partscomponent'),(70,'Can add Аналог, заменитель совместимая деталь',24,'add_partscompatible'),(71,'Can change Аналог, заменитель совместимая деталь',24,'change_partscompatible'),(72,'Can delete Аналог, заменитель совместимая деталь',24,'delete_partscompatible');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'sbr','','','iqmaker@gmail.com','pbkdf2_sha256$10000$JMUpHvWHp8vo$9ZLrnZ0ZORf3haYud0VJDJqBkcZa8bQ90aNaKtZXJ7I=',1,1,1,'2013-01-11 15:35:22','2012-12-21 15:36:58');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_article`
--

DROP TABLE IF EXISTS `core_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_article` (
  `page_ptr_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `core_article_63f17a16` (`parent_id`),
  CONSTRAINT `page_ptr_id_refs_id_cb080c2f` FOREIGN KEY (`page_ptr_id`) REFERENCES `core_page` (`id`),
  CONSTRAINT `parent_id_refs_page_ptr_id_63639437` FOREIGN KEY (`parent_id`) REFERENCES `core_article` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_article`
--

LOCK TABLES `core_article` WRITE;
/*!40000 ALTER TABLE `core_article` DISABLE KEYS */;
INSERT INTO `core_article` VALUES (1,NULL),(25,NULL),(26,NULL),(27,NULL);
/*!40000 ALTER TABLE `core_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_carmodel`
--

DROP TABLE IF EXISTS `core_carmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_carmodel` (
  `page_ptr_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `en_title` varchar(64) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `core_carmodel_e1b89384` (`manufacture_id`),
  CONSTRAINT `manufacture_id_refs_page_ptr_id_1a28c04e` FOREIGN KEY (`manufacture_id`) REFERENCES `core_manufacture` (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_3f57de8f` FOREIGN KEY (`page_ptr_id`) REFERENCES `core_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_carmodel`
--

LOCK TABLES `core_carmodel` WRITE;
/*!40000 ALTER TABLE `core_carmodel` DISABLE KEYS */;
INSERT INTO `core_carmodel` VALUES (3,2,'Mazda 3'),(4,2,'Mazda 6');
/*!40000 ALTER TABLE `core_carmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_component`
--

DROP TABLE IF EXISTS `core_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_component`
--

LOCK TABLES `core_component` WRITE;
/*!40000 ALTER TABLE `core_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_manufacture`
--

DROP TABLE IF EXISTS `core_manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_manufacture` (
  `page_ptr_id` int(11) NOT NULL,
  `en_title` varchar(64) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_b496bbd0` FOREIGN KEY (`page_ptr_id`) REFERENCES `core_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_manufacture`
--

LOCK TABLES `core_manufacture` WRITE;
/*!40000 ALTER TABLE `core_manufacture` DISABLE KEYS */;
INSERT INTO `core_manufacture` VALUES (2,'Mazda');
/*!40000 ALTER TABLE `core_manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_menu`
--

DROP TABLE IF EXISTS `core_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `alias` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_menu`
--

LOCK TABLES `core_menu` WRITE;
/*!40000 ALTER TABLE `core_menu` DISABLE KEYS */;
INSERT INTO `core_menu` VALUES (1,'Навигация','main');
/*!40000 ALTER TABLE `core_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_menuitem`
--

DROP TABLE IF EXISTS `core_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `urlname` varchar(512) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `ordernumber` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_menuitem_143efa3` (`menu_id`),
  CONSTRAINT `menu_id_refs_id_59783efa` FOREIGN KEY (`menu_id`) REFERENCES `core_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_menuitem`
--

LOCK TABLES `core_menuitem` WRITE;
/*!40000 ALTER TABLE `core_menuitem` DISABLE KEYS */;
INSERT INTO `core_menuitem` VALUES (1,1,'Главная','/',1,0),(2,1,'Разборка мазда 3','/model/3_mazda_3.html',1,0),(3,1,'Разборка мазда 6','/model/4_mazda_6.html',1,0),(4,1,'Покупка битых автомобилей','/article/26_vykup_avariynyh_avtomobilyay.html',1,0),(5,1,'Контакты','/contacts.html',1,0),(6,1,'Статьи','/articles-1.html',1,0);
/*!40000 ALTER TABLE `core_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_modification`
--

DROP TABLE IF EXISTS `core_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_modification` (
  `page_ptr_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `carmodel_id` int(11) NOT NULL,
  `en_title` varchar(150) NOT NULL,
  `body_type` int(11) NOT NULL,
  `from_year` int(11) DEFAULT NULL,
  `to_year` int(11) DEFAULT NULL,
  `transmission` int(11) DEFAULT NULL,
  `engine_size` int(11) DEFAULT NULL,
  `car_power` int(11) DEFAULT NULL,
  `equipment` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `core_modification_e1b89384` (`manufacture_id`),
  KEY `core_modification_a6df9bbd` (`carmodel_id`),
  CONSTRAINT `carmodel_id_refs_page_ptr_id_70bb193e` FOREIGN KEY (`carmodel_id`) REFERENCES `core_carmodel` (`page_ptr_id`),
  CONSTRAINT `manufacture_id_refs_page_ptr_id_54c6f969` FOREIGN KEY (`manufacture_id`) REFERENCES `core_manufacture` (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_8afe297a` FOREIGN KEY (`page_ptr_id`) REFERENCES `core_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_modification`
--

LOCK TABLES `core_modification` WRITE;
/*!40000 ALTER TABLE `core_modification` DISABLE KEYS */;
INSERT INTO `core_modification` VALUES (14,2,3,'Mazda 3 (BK) Hatchback 2003-2009',2,2003,2009,NULL,NULL,NULL,NULL),(15,2,3,'Mazda 3 (BK) Sedan 2003-2009',1,2003,2009,NULL,NULL,NULL,NULL),(16,2,3,'Mazda 3 (BL) Hatchback 2009-2013',2,2009,2013,NULL,NULL,NULL,NULL),(17,2,3,'Mazda 3 (BL) Sedan 2009-2013',1,2009,2013,NULL,NULL,NULL,NULL),(18,2,4,'Mazda 6 (GH) Hatchback 2007-2012',2,2007,2012,NULL,NULL,NULL,NULL),(19,2,4,'Mazda 6 (GH) Sedan 2007-2012',1,2007,2012,NULL,NULL,NULL,NULL),(20,2,4,'Mazda 6 (GH) Wagon 2007-2012',3,2007,2012,NULL,NULL,NULL,NULL),(21,2,4,'SKYACTIV Mazda 6 III Sedan 2012 - 2014',1,2012,2014,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page`
--

DROP TABLE IF EXISTS `core_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) NOT NULL,
  `short_title` varchar(128) DEFAULT NULL,
  `description` longtext NOT NULL,
  `body` longtext,
  `urlname` varchar(256) DEFAULT NULL,
  `preview_picture` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `pagetype` int(11) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `last_editing` date DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `intro_text` longtext,
  PRIMARY KEY (`id`),
  KEY `core_page_5d52dd10` (`owner_id`),
  CONSTRAINT `owner_id_refs_id_6b773578` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,'Автотонус - разборка мазда 3 и мазда 6','Главная','Компания Автотонус специализируется на разборке и реализации бу запчастей для автомобилей Мазда 3 и Мазда 6','<h2>Наши преимущества</h2>\r\n<p>Крайне редки случаи, когда владелец Мазды 3 или Мазды 6 желал бы избавиться от такой\r\nзамечательной машины. Надёжная, комфортная, хорошо управляемая, трудолюбивая и многими другими\r\nлестными эпитетами хозяева обычно награждают свою любимую машину. И даже если в ней что-то не так,\r\nвсё равно преданный хозяин стремится отремонтировать своего верного друга, стараясь произвести такой\r\nремонт как можно качественнее.</p>\r\n\r\n<p>В такой ситуации предусмотрительный владелец ищет только качественные запчасти, и это правильно,\r\nведь от их выбора зависит очень многое, в том числе и уверенность в том, что авто не подведёт в самый\r\nнеподходящий момент. Уже давно не секрет, что оригинальные запчасти – как правило, самые лучшие\r\nзапчасти. Те, кто торгуют китайскими или другими аналогами, утверждают, что их товар «почти» не\r\nуступает оригиналу и готовы даже поклясться в этом. Но практика показала, что от обещаний до истины\r\nочень далеко. Как часто приходится вновь и вновь менять «левые» амортизаторы или пружины? А сколько\r\nслужат «левые» шланги? А разлетевшиеся после первой же ямы недорогие отбойники и потрескавшиеся\r\nпыльники из восточных стран? И всё это – вроде бы новое!</p>\r\n\r\n<p>После попытки купить такой левак, наступает следующий этап – всё только в сервис-центре! Но и тут\r\nнет гарантии, как выясняется позже! А после просмотра прайс-листа на запчасти и работу в таком центре\r\nвообще становится страшно, это цена, или номер телефона хозяина сервиса? Чтобы избежать обмана\r\nи лишних расходов, нужно найти компромиссный вариант – недорогие оригинальные запчасти! Конечно,\r\nэтот вариант можно найти только на авторазборке. Но и тут нельзя терять бдительность! К сожалению,\r\nно некоторые разборки продают запчасти с битых автомобилей. Выглядят такие б/у запчасти может и\r\nнеплохо, однако, будет ли нормально работать двигатель с битого авто? Ведь могут быть серьёзные\r\nвнутренние повреждения или скрытые дефекты.</p>\r\n\r\n<p>В отличие от таких недобросовестных торговцев наша авторазборка в Москве (Север Москвы)\r\nизначально ведёт бизнес по-другому. Для того, чтобы предлагаемые нами б.у. запчасти были только\r\nвысокого качества, мы выкупаем авто, во-первых: не после аварии, во-вторых: привозим Мазды из Европы\r\n(Польша, Германия, Австрия и т.п.) только в отличном состоянии и, в-третьих: сами их разбираем. При\r\nэтом все запчасти проходят тщательный осмотр и отбор, чтобы они не имели никаких дефектов, так как\r\nмы дорожим своей репутацией честного и надёжного партнёра. К тому же наша специализация - разборка\r\nМазда 3 и разборка Мазда 6, мы не распыляемся по всем направлениям, как некоторые конкуренты.\r\nЭто позволяет нам эффективно использовать территорию склада и предоставлять большой выбор всех\r\nтребуемых запчастей для любого модельного ряда Мазды.</p>\r\n\r\n<p>Не только детали трансмиссии, двигателя или рулевого управления будут предложены вниманию\r\nнаших клиентов. Все детали кузова, оптики и внутреннего пространства салона при наличии выбора\r\nпанелей приборов для всех модификаций Вашего автомобиля. Всё, что используется на 3 и 6 моделях\r\nМазды, Вы сможете найти, выбрать и купить вплоть до мелочей. Но наш сервис означает больше,\r\nчем просто предоставить нужную деталь, у нас Вам помогут в её установке и проверят её полную\r\nработоспособность с гарантией! Специалисты – автомеханики произведут качественную установку\r\nвыбранной оригинальной детали так, чтобы Вы могли ещё долго пользоваться отличной ЯПОНСКОЙ, а не\r\nсклеенной из кусочков со всего мира, МАЗДОЙ!</p>\r\n         \r\n \r\n            ','index','',1,1,'2012-12-21','2012-12-21',1,'<p class=\"justify\">Компания Автотонус - специализируется на продаже б.у. автозапчастей для автомобиля мазда, в частности для моделей мазда 3 и мазда 6. Необходимо заметить, что компанией реализуются запчасти на автомобиль мазда 6, только начиная с 2008 года, т.е. для кузова GH. Модель мазда 3 разбирается нами в кузовах как BK, так и BL. В нашем ассортименте вы найдете только детали, прошедшие проверку нашими специалистами. Приоритетными группами запчастей для нашей компании являются: кузовные детали ( крылья, двери, крыши, капоты, бампера, фары, фонари, зеркала), двигатели, коробки передач и все, что страдает от аварии при лобовом столкновении, в частности это: радиаторы, решетки радиатора, передняя панель ( телевизор ), корпус воздушного фильтра, диффузор, стойки, поворотные кулаки, рулевая рейка, airbag, противотуманные фары и многое другое. </p>\r\n<p>Отличительной особенностью нашей компании являются уважительное отношение к покупателю и добросовестный подход к работе компании. Будем рады ответить на вопросы касаемо автозапчастей, вопросы о покупке вашего пострадавшего авто и многие другие вопросы, ответы на которые вы хотели бы у нас узнать.</p>\r\n<img src=\"/static/images/3decoration.jpg\" height=\"283\" width=\"520\" alt=\"Компания Автотонус\">'),(2,'Мазда','Мазда','Автомобильная разборка мазда, б.у. запчасти с гарантией, оригинальное качество от производителя','Автомобильная разборка мазда, б.у. запчасти с гарантией, оригинальное качество от производителя','2_mazda','pictures/mazda-logo.png',1,1,'2012-12-21','2012-12-21',1,NULL),(3,'Мазда 3','Мазда 3','Автомобильная Разборка Мазда 3 от компании Автотонус, б.у. запчасти только самого высокого качества по доступным ценам. В ассортименте наших запчастей, вы найдете: капоты, бампера, крыши, двигатели, акпп, мкпп, двери крылья и многое другое.','<h2>Разборка Мазда 3</h2>\r\n\r\n<p>Как ни надёжна японская техника, а всё же иногда приходится что-то заменить. И часто виноваты\r\nв этом не элементы и узлы самого автомобиля, а наши дороги и наши водители. Но также, конечно,\r\nсущественный фактор – нормальный износ деталей, подвергающихся большим нагрузкам. Речь идёт\r\nо двигателе, коробке переключения передач (КПП) и других нагруженных узлах. Но и кузову может\r\nдостаться нелёгкая судьба, и повреждение могут получить крылья, двери, фары или бампера. Именно\r\nтогда и встаёт вопрос ребром: «Купить новые детали или б/у запчасти?» Конечно, сама по себе мысль\r\nо замене не кажется привлекательной, ведь сейчас так распространилась продажа различных подделок,\r\nпоэтому никому не хочется стать жертвой обмана и покупателем низкопробной дешёвки.</p>\r\n\r\n<p>Именно поэтому наша авторазборка предлагает Вашему вниманию прекрасную альтернативу покупки\r\nдеталей и узлов неизвестного происхождения, которые часто продаются в магазинах, а иногда и на\r\nфирменных сервисах. И эта альтернатива – покупка б.у. запчастей на нашей авторазборке. Но кто-то\r\nможет задать резонный вопрос: «А не будет ли такая покупка невыгодной, или, что ещё более важно, -\r\nнерациональной тратой средств?» Вопрос, конечно, резонный и справедливый. Поэтому мы и предлагаем\r\nрассмотреть несколько плюсов и минусов такой покупки, помогающих взвесить все факторы и принять\r\nобдуманное решение.</p>\r\n\r\n<p>Выпускаемые на протяжении ряда лет седаны и хэтчбеки Мазда 3 стали очень популярными по всему\r\nмиру. Это вполне обоснованно, так это – вполне современный и комфортный автомобиль. Многие тысячи\r\nтаких автомобилей преданно трудятся, перевозя своих владельцев, пассажиров и грузы на сотни тысяч\r\nкилометров. Запас прочности, заложенный в его конструкцию, огромен, что обеспечивает длительный\r\nресурс основных узлов и механизмов. Например, на большинстве форумов владельцы Мазда 3 сообщают,\r\nчто даже у старых моделей ресурс двигателя – 250-300 тыс. км, а у более новых авто – за полмиллиона!\r\nПолучается, что бу двигатель, прошедший около 100-150 тыс. км, да ещё и прошедший подготовку в\r\nнашем сервисе, будет способен преданно служить ещё столько же, как минимум, а то и гораздо дольше,\r\nособенно если он снят с одной из последних модификаций. И это не просто реклама, это – реальность!</p>\r\n\r\n<p>Точно также дело обстоит и с другими бу запчастями, которые в большинстве случаев не\r\nтолько «родные» в отношении страны-производителя, но и в отношении посадочных размеров и\r\nгабаритов. Сколько об этом уже написано! Новая запчасть, особенно неоригинальная, может выглядеть\r\nпочти «как настоящая», но чуть-чуть не такая и начинается морока! Это правда, что родное есть родное, и\r\nлучше всё равно ничего не найти. В Мазде 3 есть некоторые особенности, позволяющие успешно ставить\r\nи эксплуатировать фирменные б/у запчасти более успешно, чем новые, но «левые».</p>\r\n\r\n<p>К тому же наша авторазборка предложит выбор бу запчастей не только по состоянию и цене, но и\r\nпо другим требуемым параметрам. Например, крылья и другие детали кузова можно выбрать по цвету,\r\nчто упростит задачу по установке. А ещё Вы сможете воспользоваться услугами опытных механиков и\r\nавтослесарей, как на самой разборке, так и в партнёрском сервисе. То есть, Вы приезжаете, на месте\r\nвыбираете, покупаете и устанавливаете, а затем просто уезжаете на отремонтированном автомобиле.\r\nВсе б.у. запчасти, купленные у нас, проходят тщательный осмотр и подготовку, что обеспечивает их\r\nработоспособность и безопасность. Мы ценим наших клиентов и предлагаем только оригинальный и\r\nкачественный товар!</p>','3_mazda_3','',1,2,'2012-12-21','2012-12-21',1,'Мазда 3 (Mazda 3) это одна из моделей, которую наша компания разбирает и реализует б.у. запчасти. Мы стараемся поддерживать весь ассортимент запчастей на данную модель, но к сожалению, специфика разборок такова, что наиболее \"ходовые\" детали не залеживаются, поэтому их наличие на складе может быть с переменным успехом. В перечень модификаций данной модели, разборку которых мы производим входят автомобили мазда 3 в кузове BK (Хэтчбек, Седан) 2003-2009 годов, комплектаций Turing и Sport (Спорт) и в кузове BL 2010-2012 годов (Hatchback, Sedan, Saloon). Отдельно стоит отметить до рестайлинговую модель 2003-2005 года, данные автомобили практически не поступают к нам на разборку, но детали на них в своем большинстве совместимы с рестайлинговой моделью (2006-2009). '),(4,'Мазда 6','Мазда 6','Разборка автомобилей Мазда 6 компании Автотонус. Б/у детали исключительно высокого качества в отличном состоянии по умеренным ценам. В перечне запчастей, у нас вы найдете: двери, крыши, капоты и бампера, стекла, радиаторы, двигатели, рычаги','<h2>Разборка Мазда 6</h2>\r\n\r\n<p>Японские автомобили заслуженно считаются одними из лучших, комфортных и надёжных в мире.\r\nТакими их делают, прежде всего, качественные комплектующие плюс аккуратная сборка. Именно такие\r\nправила игры на современном авторынке. И как же хочется, чтобы такая удобная и полезная вещь\r\nслужила как можно дольше, без поломок! Классический представитель такого сегмента японского\r\nавтопрома - Мазда 6. Различные модели из этого представительского ряда, седаны, хэтчбеки и\r\nвагоны – выпускаемые с 2007 года – до сих пор одни из самых популярных авто в своём классе.\r\nТакая распространённость этих автомобилей – лучшая оценка водителей. Многие владельцы Шестой\r\nМазды говорят, что не пересядут больше ни в какой автомобиль. Такая преданность понятна, и наша\r\nавторазборка располагает очень большим ассортиментом б/у запчастей на эту замечательную машину.</p>\r\n\r\n<p>Возможно, что после незначительных повреждений требуется заменить деталь кузова, такую как\r\nдверь, капот или крыло. Мы предложим выбор не только для любых моделей, но поможем в выборе\r\nцвета. Иногда небольшие повреждения бампера можно аккуратно закрасить, но иногда их ремонт и\r\nпокраска могут обойтись значительно дороже, чем купить у нас точно такой же, но просто бу бампер на\r\nМазду 6. В большинстве случаев замена такой важной детали как одна фара становится проблемой,\r\nновую трудно подобрать по цвету стекла и рисунку на нём, а среди б.у. фар, выпущенных в том же году,\r\nчто и Ваша машина, Вам будет гораздо проще подобрать ей подходящую пару.</p>\r\n\r\n<p>Покупка б/у запчасти не только значительно сэкономит Ваши средства, но есть и другие веские\r\nоснования обратиться к нам за нужными запчастями и узлами. В отличие от новых запчастей в магазине,\r\nбольшинство из которых в лучшем случае фабрично-китайские, а в худшем их происхождение останется\r\nокутанным тайной, мы предлагаем только оригинальный и качественный товар. Нам будет крайне\r\nневыгодно продавать некачественные бу запчасти по нескольким причинам:</p>\r\n\r\n<ul>\r\n <li>Пострадает наша репутация и будет потерян хороший клиент.</li>\r\n\r\n <li>Мы отвечаем за качество и будем обязаны заменить некачественный товар, хотя деталь и б.у.</li>\r\n\r\n <li>Информация о профессионализме и надёжности распространяется очень быстро, как и негативные\r\nотзывы. Нас рекомендуют те, кто уже покупал б/у запчасти и был доволен сотрудничеством.</li>\r\n\r\n <li>Мы даже не покупаем и не предлагаем нашим клиентам детали, которые гораздо выгоднее покупать\r\nв магазине новыми, так мы сами – специалисты в данной области и не продаём то, что не купили бы сами.</li>\r\n\r\n <li>Очень часто установку и наладку бу деталей осуществляют наши специалисты или партнёры,\r\nпоэтому поставить брак – себе в убыток, ведь переделывать всё тоже нам.</li>\r\n</ul>\r\n\r\n<p>Часто бывает так, что на нашей разборке Вы сможете купить б.у. двигатель или коробку\r\nпереключения передач (КПП или АКПП), с очень незначительным или даже практически нулевым\r\nпробегом. Купленная недорогая и качественная бу запчасть сможет послужить почти столько же, сколько\r\nновая, только за цену, в три-четыре раза меньшую! Двигатель с пробегом в 100-150 тыс. км способен\r\nпройти ещё не менее 250, а то больше тыс. км, что означает примерно 10 лет нормальной работы!</p>\r\n\r\n<p>Наша авторазборка предложит широкий выбор бу запчастей по состоянию, цене и по другим\r\nпараметрам. Например, детали кузова можно будет выбрать по цвету. А ещё можете воспользоваться\r\nуслугами квалифицированных автослесарей, либо на разборке, либо в партнёрском сервисе. Это\r\nвыглядит так: Вы приезжаете, на месте выбираете, покупаете и устанавливаете, а затем просто уезжаете\r\nна уже отремонтированном автомобиле. Все, купленные у нас б.у. запчасти, проходят тщательный осмотр\r\nи подготовку, что обеспечит их полную работоспособность и безопасность. Мы ценим мнение наших\r\nклиентов и предлагаем только оригинальный, а, значит, качественный товар!</p>','4_mazda_6','',1,1,'2012-12-21','2012-12-21',1,'Вторая модель автомобиля, разборку которой мы производим это Мазда 6 (Mazda 6), отдельно стоит отметить, что мы производим реализацию б.у. запчастей только на модификации Мазда 6 после 2008 года, сюда входит кузов GH в т.ч. седан, хэтчбек, универсал ( Sedan, Saloon, Hatchback, Wagon ). Разборку автомобилей мазда 6 в предыдущем кузове до 2007, мы не производим. Детали реализуемые нами на данный автомобиль действительно отличного качества. Практически вся номенклатура запчастей доступна у нас на складе прямой сейчас. Будем рады помочь с выбором. Определить приблизительную стоимость деталей, вы можете у нас на сайте перейдя в соответствующий раздел, найдя необходимую запчасть.'),(5,'Детали двигателя','Детали двигателя','клапаны, кольца, шпонки, подушки двигателя, прокладки, маслосъемные колпачки, впускной и выпускной коллекторы, сальники, коленвал, вкладыши, поршни','<p>Сам двигатель так и его \"обвес\" для $title, очень важные элементы в работе автомобиля. В этом разделе, вы сможете определить стоимость необходимых деталей на ваш автомобиль $en_title. Здесь вы найдете стоимость непосредственно  самого двигателя $title, так сопутствующих запчастей, таких как стартер или генератор $en_title. </p>','5_detali_dvigatelya','partsgroup/engine.png',1,1,'2012-12-21','2012-12-21',1,'<p>Любой двигатель, в том числе и двигатель Мазды, нуждается в своевременном обслуживании. Среди\r\nнаиболее ответственных и важных деталей, подверженных высоким температурам, - кольца, поршни,\r\nклапаны, вкладыши, коленвал, сальники, маслосъёмные колпачки, шпонки и прокладки. Поток\r\nразогретых газов проходит через выпускной коллектор, но и впускной коллектор находится в контакте\r\nс корпусом двигателя. Для его уверенной и устойчивой работы также предназначены подушки двигателя.\r\nВажную роль играют блоки управления двигателем и катушка двигателя, и мы позаботились про их\r\nналичие на складе.</p>\r\n\r\n<p>Соответствующие б/у запчасти, которые мы предлагаем, имеют оригинальное происхождение, высокое\r\nкачество и длительный ресурс.</p>'),(6,'Трансмиссия, КПП','Трансмиссия, КПП','автоматическая и механическая трансмиссии, цилиндры сцепления, АКПП, МКПП, датчики, тросики, детали сцепления','<p>Предложен выбор коробок переключения передач для $title, так, что Вы сможете подобрать нужное: автоматическая (АКПП) и механическая КПП (МКПП) вашей $en_title, разного года выпуска.\r\nУчитывая запросы покупателей, для вашей $title могут потребоваться как 5-ти ступенчатая АКПП, так и 6-ти ступенчатая КПП. В этом разделе располагаются детали тесно связанные с работой КПП, это приводные валы, привода, шрусы автомобиля $title</p>','6_transmissiya_kpp','partsgroup/transmission.png',1,1,'2012-12-21','2012-12-21',1,'<p>Трансмиссия передаёт энергию от силового агрегата – двигателя. Среди качественных и надёжных б/\r\nу деталей трансмиссии на Мазду мы предлагаем различные элементы сцепления. Даже такие мелочи,\r\nкак датчики и тросики мы предлагаем в широком ассортименте, не будут забыты и востребованные\r\nцилиндры сцепления и гидротрансформатор.</p>\r\n\r\n<p>Предложен достойный выбор коробок переключения передач, так, что Вы сможете подобрать нужное:\r\nавтоматическая (АКПП) и механическая трансмиссии (МКПП) на любую модель, разного года выпуска.\r\nУчитывая запросы клиентов, в наличии есть как 5-ти ступенчатая КПП, так и 6-ти ступенчатая КПП.\r\nКачество и ресурс предложенных б.у. деталей однозначно будет превышать китайские или другие\r\nаналоги, а цена будет примерно втрое ниже!</p>'),(7,'Рулевое управление','Рулевое управление','рулевые тяги, рулевая колонка, шланги, ремни гидроусилителя, насос гидроусилителя, рулевая рейка, наконечники, бачки ГУР','<p>Рулевое управление $title – как система сухожилий в организме. Именно поэтому предпочтение стоит отдавать японским запчастям на Мазду. Все бу детали, приобретенные на нашей разборке на ваш $en_title, только отборного качества. Всё, что Вам потребуется: рулевая колонка или рулевая рейка $title, рулевые тяги или наконечники $en_title, к Вашим услугам. Даже более мелкие запчасти, такие, насос гидроусилителя $title,  бачки ГУР $en_title, ждут своего покупателя.</p>','7_rulevoe_upravlenie','partsgroup/steering.png',1,1,'2012-12-21','2012-12-21',1,'<p>Рулевое управление – как система сухожилий в организме. Именно поэтому предпочтение стоит\r\nотдавать японским запчастям на Мазду. Все бу детали, купленные на нашей разборке, будут только\r\nотборного качества. Всё, что Вам потребуется: рулевая колонка, рулевая рейка, рулевые тяги и\r\nнаконечники будут отобраны и установлены непосредственно у нас в боксе. Даже более мелкие запчасти, такие, как ремни гидроусилителя, насос гидроусилителя, шланги и бачки ГУР, мы имеем в наличии и готовы к их немедленной установке на Ваш автомобиль. </p>'),(8,'Выхлопная система','Выхлопная система','глушитель, крепежные элементы, катализаторы, датчики кислорода','Выхлопная система $title, в Российских условиях страдает очень сильно, это и дорожные условия, химические реагенты и ДТП. В этом случае рекомендуем приобрести именно оригинальную деталь для $en_title, которая прослужит не в пример дольше китайских аналогов, активно продвигаемых различными автосервисами. Многие автовладельцы $title, просто не в курсе, что замена выхлопной системы оригинальными запчастями с разборки не дорогое удовольствие, а качество ремонта $en_title, будет не в пример выше.','8_vyhlopnaya_sistema','partsgroup/exhaust.png',1,1,'2012-12-21','2012-12-21',1,'<p>Выхлопная система – узел вывода отработанных газов – также подвержена воздействию высоких\r\nтемператур, контрастирующих с холодным наружным воздухом и влагой. Чтобы ремонт обошёлся\r\nдешевле, мы предлагаем поставить б/у глушитель отличного качества, а к нему качественные\r\nкрепежные элементы. На Мазду в эту систему лучше ставить всё «родное», чем пытаться вварить что-\r\nнибудь «левое».</p>\r\n\r\n<p>Часто вместе с глушителем следует проверить датчики кислорода и катализаторы. Учитывая\r\nпотребности наших клиентов, мы предлагаем не один-два, а гораздо больше вариантов выбора б.у.\r\nдеталей выхлопной системы, с быстрой и простой установкой, и большим сроком службы.</p>'),(9,'Кузовные детали','Кузовные детали','стекла, петли, крылья, зеркала, бамперы, крыши, стеклоподъемники, капоты, двери, замки','Кузовные детали вашего автомобиля $title, это его лицо или парадный вход, от качества этих деталей зависит как будет выглядеть автомобиль $en_title после ремонта. Экономные владельцы $title рассчитывая сэкономить немного денег пользуются услугами дешевых автосервисов а за одно и китайскими аналогами оригинальных деталей. Как результат теряют такие хозяева $title гораздо больше, т.к. цена плохо отремонтированного авто стремится вниз. Любой разбирающийся в автомобилях человек с легкостью определит место ремонта $title китайским запчастями и его качество, которое в этом случае оставляет желать лучшего. Поэтому убедительно рекомендуем использовать только оригинальные детали $en_title.','9_kuzovnye_detali','partsgroup/exterior.png',1,1,'2012-12-21','2012-12-21',1,'<p>Часто бывает так, что мелкий ремонт царапин или вмятин или безуспешен, или слишком дорог.\r\nПокупка новой кузовной запчасти для Мазды может стоить слишком дорого. В таких случаях оправданна\r\nво всех отношениях покупка бу запчастей на авторазборке. Мы предлагаем огромный выбор кузовных\r\nдеталей: крылья, бамперы, крыши, двери, стеклоподъемники и стекла, с учётом года выпуска,\r\nмодели кузова и других особенностей Вашей Мазды. Здесь, на нашей разборке Вы найдёте всё\r\nнеобходимое.</p>\r\n\r\n<p>Все эти элементы на ваше авто могут установить наши сотрудники, в том числе капоты, петли, замки\r\nи зеркала. Качество установки, как и качество деталей – гарантируется!</p>'),(10,'Детали подвески','Детали подвески','для задней и передней подвески, амортизаторы, втулки стабилизатора, пружины, стойки стабилизатора, шаровые опоры, подшипники, ступицы, балки, сайлентблоки, рычаги, рессоры','Ремонт подвески $title - дорогое удовольствие если проводить его действительно качественно а не дешевыми китайским деталями, которые от японского качества $en_title не оставят и следа. В этом случае действительно хорошей альтернативой могут быть оригинальные бу запчасти для $title с автомобильных разборок, цена на которые сравнима с китайскими аналогами, а качество не в пример выше. ','10_detali_podveski','partsgroup/suspension.png',1,1,'2012-12-21','2012-12-21',1,'<p>Что больше всего «убивает» подвеску автомобиля – так это наши дороги! Но изменить это нам,\r\nкажется, не под силу… Однако есть то, что мы можем – поставить на Ваш автомобиль качественные бу\r\n\r\nдетали и узлы подвески. Многие жаловались на покупку таких новых узлов подвески и необходимость\r\nих замены через 2-3 недели эксплуатации. Мы поддерживаем широкий ассортимент наиболее\r\nвостребованных б/у деталей для задней и передней подвески: сайлентблоки, амортизаторы,\r\nпружины, рессоры, рычаги, ступицы, подшипники, шаровые опоры, стойки стабилизатора, втулки\r\nстабилизатора и балки.</p>\r\n\r\n<p>Именно эти детали испытывают самую сильную механическую нагрузку, поэтому нет смысла\r\nставить «левак» и платить за его установку несколько раз. Лучше поставить б.у. запчасть, родную и\r\nкачественную.</p>'),(11,'Тормозная система','Тормозная система','тормозные диски, шланги и трубки тормозной системы, вакуумные усилители, тормозные цилиндры, ABS, тормозные барабаны','Тормозная система $title действительно великолепного японского качества, но только пока это детали из группы оригинальных запчастей. Приобретение новых деталей из этой группы могут разорить владельца $en_title, и тут на выручку наша разборка автомобилей $title, т.к. цены на эти группы деталей у нас более чем демократичны, сюда относятся и суппорта и блоки abs и тормозные диски. Если вы цените качество и безопасность вашего $title, выбирайте только оригинальные запчасти. ','11_tormoznaya_sistema','partsgroup/brake.png',1,1,'2012-12-21','2012-12-21',1,'<p>Одна из сильных сторон автомобилей Мазда – отличная тормозная система. Для того, чтобы\r\nона работала безупречно, такими же безупречными должны быть все, без исключения, компоненты.\r\nЗначительную нагрузку берут на себя суппорта, требования к ним велики, поэтому не стоит платить\r\nза подделку. Практика показала, что бу детали в хорошем состоянии не только надёжнее, но и\r\nдолговечнее своих неоригинальных аналогов. В качестве достойного дополнения к дискам и тормозам мы\r\nготовы предоставить также вакуумные усилители шланги, трубки тормозной системы, тормозные\r\nцилиндры и тормозные барабаны. Всё это – настоящая Япония, оригинал!</p>\r\n\r\n<p>Среди других полезных систем мы также предлагаем блок управления ABS, устройство, не дающее\r\nавтомобилю потерять устойчивость при торможении и сокращающую тормозной путь. Тормоза сохраняют\r\nуправляемость даже при полном нажатии на педаль тормоза.</p>'),(12,'Топливная система','Топливная система','форсунки, трубки, бензонасос, ТНВД','<p>Топливная система вашего автомобиля $title, обеспечивает его надежность. От работы топливной системы напрямую зависит и состояние двигателя $en_title, поэтому своевременная замена топливного насоса ( бензонасоса ) $title, продлит жизнь вашему автомобилю на долгие годы. Новые оригинальные детали для $en_title, стоят действительно дорого и тем кому они не по карману, мы рекомендуем покупать детали на нашей авторазборке, цены деталей $title от новых отличаются в разы а то и порядки. Китайские аналоги мы брать не советуем, иначе от японского качества $en_title не останется и следа. \r\n</p>','12_toplivnaya_sistema','partsgroup/fuel.png',1,1,'2012-12-21','2012-12-21',1,'<p>Система подачи топлива похожа на кровеносную систему организма. Для корректной работы этой\r\nсистемы автомобиля Мазда требуется лишь качественные и чистые запчасти. Есть и то, что однозначно\r\nбудет выгоднее купить у нас – для бензиновых двигателей – бензонасос, а для дизельных – ТНВД\r\n(топливный насос высокого давления). В данных случаях покупка б.у. запчастей более рациональна, так\r\nкак их ресурс ещё очень велик.</p>\r\n\r\n<p>Есть и сопутствующие элементы топливной системы – форсунки и трубки, купив которые Вы сможете\r\nзначительно сэкономить средства для дополнительных товаров и услуг. А установку купленных у нас\r\nоригинальных б/у запчастей смогут провести наши автомеханики прямо на месте. Так что Вы сможете\r\nсразу же и уехать на рабочем и проверенном автомобиле.</p>'),(13,'Детали интерьера/Салон','Детали интерьера/Салон','сиденья, ремни безопасности, пепельница, обивка крыши, обшивка дверей, внутренние накладки салона, замки дверей','Элементы салона, важная часть внутреннего убранства вашего $title. Если вы захотели заменить штатный салон $en_title на кожаный или избавиться от прожженных сигаретой сидений, то вам прямой путь на автомобильную разборку т.к. цены на новые оригинальные элементы салона такие как ( сиденье, крепление сиденья, торпедо, airbag, щиток приборов, блок предохранителей, модуль BSM $title и д.р. ), заставят шевелиться волосы на голове даже у обеспеченных владельцев $en_title.','13_detali_interera_salon','partsgroup/interior.png',1,1,'2012-12-21','2012-12-21',1,'<p>Бывает, что неосторожное обращение с элементами салона может их немного повредить, или\r\nмогут быть другие случаи, когда потребуется замена сиденья. Можно значительно улучшить дизайн\r\nвнутреннего пространства, заменив обычные на кожаные сиденья, или даже осуществить мечту многих\r\nвладельцев Мазды - кожаный салон! Но вот что может понадобиться Мазде – декоративные работы,\r\nв которые может входить обшивка дверей или обивка крыши. Правила безопасности требуют, чтобы\r\nремни безопасности, как часть всей системы безопасности не имели потёртостей и надрывов. Будьте\r\nуверены, что бу ремни безопасности по прочности превосходят подделки, а значит и служить будут\r\nдольше и надёжнее. Если в сервис-центре замена AIRBAG однозначно дорогое удовольствие, то у нас\r\nзаменить Аирбэги Вы сможете за разумную цену.</p>\r\n\r\n<p>Если Вам понадобится заменить внутренние накладки салона, то у нас Вам предложат только\r\nкачественный товар с выбором. Приборная панель или Торпедо для любых моделей Мазда также\r\nпредложены Вашему вниманию. Даже такая мелочь, как пепельница доступна для наших клиентов.</p>'),(14,'Мазда 3 (BK) Хэтчбек 2003-2009','Мазда 3 (BK) Хэтчбек ','Мазда 3 (BK) Хэтчбек 2003-2009','Мазда 3 (BK) Хэтчбек 2003-2009','14_mazda_3_bk_hetchbek_2003_2009','',1,1,'2012-12-22','2012-12-22',1,NULL),(15,'Мазда 3 (BK) Седан 2003-2009','Mazda 3 (BK) Sedan','Мазда 3 (BK) Седан 2003-2009','Мазда 3 (BK) Седан 2003-2009','15_mazda_3_bk_sedan_2003_2009','',1,1,'2012-12-22','2012-12-22',1,NULL),(16,'Мазда 3 (BL) Хэтчбек 2009-2013','Mazda 3 (BL) Hatchback ','Мазда 3 (BL) Хэтчбек 2009-2013','Мазда 3 (BL) Хэтчбек 2009-2013','16_mazda_3_bl_hetchbek_2009_2013','',1,1,'2012-12-22','2012-12-22',1,NULL),(17,'Мазда 3 (BL) Седан 2009-2013','Mazda 3 (BL) Sedan','Мазда 3 (BL) Седан 2009-2013','Мазда 3 (BL) Седан 2009-2013','17_mazda_3_bl_sedan_2009_2013','',1,1,'2012-12-22','2012-12-22',1,NULL),(18,'Мазда 6 (GH) Хэтчбек 2007-2012','Mazda 6 (GH) Hatchback ','Мазда 6 (GH) Хэтчбек 2007-2012','Мазда 6 (GH) Хэтчбек 2007-2012','18_mazda_6_gh_hetchbek_2007_2012','',1,1,'2012-12-22','2012-12-22',1,NULL),(19,'Мазда 6 (GH) Седан 2007-2012','Mazda 6 (GH) Sedan ','Мазда 6 (GH) Седан 2007-2012','Мазда 6 (GH) Седан 2007-2012','19_mazda_6_gh_sedan_2007_2012','',1,1,'2012-12-22','2012-12-22',1,NULL),(20,'Мазда 6 (GH) Универсал 2007-2012','Mazda 6 (GH) Wagon ','Мазда 6 (GH) Универсал 2007-2012','Мазда 6 (GH) Универсал 2007-2012','20_mazda_6_gh_universal_2007_2012','',1,1,'2012-12-22','2012-12-22',1,NULL),(21,'Мазда 6 III SKYACTIV Седан 2012-2014','Mazda 6 III SKYACTIV Sedan','Мазда 6 III SKYACTIV Седан 2012-2014','Мазда 6 III SKYACTIV Седан 2012-2014','21_mazda_6_iii_sedan_2012_2014','',1,1,'2012-12-22','2012-12-22',1,NULL),(22,'Ксеноновые фары для Мазда 6 ','Ксеноновые фары для Мазда 6 ','Ксеноновые фары для мазда 6 в сборе. ( с блоком розжига, лампами т.д. ) . Состояние новых фар, имеется пара левая и правая. Фары с автомобиля 2010 года. Оригинал. Одна новая такая стоит голая 36000 фара + 18000 блок розжига и того 54000 руб. У нас 21000 р. за фару в сборе. Отличное предложение, довольно редко встречаются в таком состоянии и по такой цене. Если будете брать обе будет скидка 2000 руб ( по 1000 руб с фары ). итого 40000 руб. за обе оригинальные ксеноновые фары в идеальном состоянии.','Ксеноновые фары для мазда 6 в сборе. ( с блоком розжига, лампами т.д. ) . Состояние новых фар, имеется пара левая и правая. Фары с автомобиля 2010 года. Оригинал. Одна новая такая стоит голая 36000 фара + 18000 блок розжига и того 54000 руб. У нас 21000 р. за фару в сборе. Отличное предложение, довольно редко встречаются в таком состоянии и по такой цене. Если будете брать обе будет скидка 2000 руб ( по 1000 руб с фары ). итого 40000 руб. за обе оригинальные ксеноновые фары в идеальном состоянии.','22_ksenonovye_fary_dlya_mazda_6','pictures/20121026145_5089b2ff277d3.af88ea0f52d5682e4b91fe4fdbf8f9ce3324_1.jpg',1,1,'2012-12-22','2012-12-22',1,NULL),(23,'Дверь передняя правая Мазда 6','Дверь передняя правая Мазда 6','Продается передняя правая дверь для мазда 3 хэтчбэк 2003-2009 года. Дверь в сборе ( стекло, стеклоподъемник, молдинг, обшивка, ручка ). Состояние двери идеальное. Возможен небольшой торг.','Продается передняя правая дверь для мазда 3 хэтчбэк 2003-2009 года. Дверь в сборе ( стекло, стеклоподъемник, молдинг, обшивка, ручка ). Состояние двери идеальное. Возможен небольшой торг.','23_dver_perednyaya_pravaya_mazda_6','pictures/20120723722dsc08086.af88ea0f52d5682e4b91fe4fdbf8f9ce3324_1.jpg',1,1,'2012-12-22','2012-12-22',1,NULL),(24,'Электрика','Электрика','стартеры, датчики, катушки, блоки управления AIRBAG, блоки предохранителей, генераторы, проводка, блоки управления, датчики','<p>Если вам необходимы запчасти для автомобиля $title из группы \"Электрика\", то вы на верном пути. Здесь вы можете быстро определить цену детали, выбрав ее из списка деталей. Если вы не смогли найти таковую на вашу $en_title, смело звоните по указанным телефонам мы постараемся помочь.  </p>','24_elektrika','partsgroup/electric.png',1,1,'2012-12-22','2012-12-22',1,'<p>Если в отношении некоторых запчастей можно и повременить, то в случае с электрикой ремонт или\r\nзамена потребуется немедленно. Наиболее сложными и ответственными элементами являются стартеры\r\nи генераторы, поэтому к их отбору мы относимся с особой серьёзностью и тщательно проверяем их\r\nработоспособность, включая качество катушки. Иногда приходится обратить внимание на датчики и\r\nблоки управления. Мелочи, за которые не стоит переплачивать в три-четыре раза дороже. К тому же\r\nследует учесть одну простую истину – то, что установлено на автомобиль, автоматически становится б/у\r\nзапчастью, однако при этом факт того, что она – б.у. не делает её хуже!</p>\r\n\r\n<p>В некоторых случаях может потребоваться проводка, поэтому купив её у нас, Вы можете быть\r\nуверены в том, что она в точности соответствует описанию в документации и требуемым параметрам.</p>'),(25,'Контакты Автотонус','Контакты','Схема проезда, Автотонус - разборка мазда 3 и мазда 6','<h1>Контакты, компания \"Автотонус\"</h1>\r\n<hr />\r\n\r\n<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (начало) -->\r\n<div id=\"ymaps-map-id_135628553145175995727\" style=\"width: 100%; height: 350px;\"></div>\r\n<div style=\"width: 100%; text-align: right;\"></div>\r\n<script type=\"text/javascript\">\r\nfunction fid_135628553145175995727(ymaps) {\r\n    var map = new ymaps.Map(\"ymaps-map-id_135628553145175995727\", {\r\n        center: [37.41521854365548, 55.91288377249988],\r\n        zoom: 12,\r\n        type: \"yandex#map\"\r\n    });\r\n    map.controls\r\n        .add(\"zoomControl\")\r\n        .add(\"mapTools\")\r\n        .add(new ymaps.control.TypeSelector([\"yandex#map\", \"yandex#satellite\", \"yandex#hybrid\", \"yandex#publicMap\"]));\r\n    map.geoObjects\r\n        .add(new ymaps.Placemark([37.41050188359085, 55.90969467603482], {\r\n            balloonContent: \'Компания \"Автотонус\", разборка Мазда 3 и Мазда 6 в Химках\'\r\n        }, {\r\n            preset: \"twirl#nightDotIcon\"\r\n        }));\r\n};\r\n</script>\r\n<script type=\"text/javascript\" src=\"http://api-maps.yandex.ru/2.0-stable/?lang=ru-RU&coordorder=longlat&load=package.full&wizard=constructor&onload=fid_135628553145175995727\"></script>\r\n<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (конец) -->\r\n\r\n<div class=\"information\">\r\n                           <p class=\"contact-name\">Организация: <span>компания \"Автотонус\" </span> </p>  \r\n                           <p class=\"phone\">Телефон: <span>+7(916) 730-34-73</span> </p>\r\n                           <p class=\"contact-name\">Режим работы: <span>C пн.-пт. (10:00 - 17:00) сб.-вс. (10:00 - 15:00)</span> </p>                        \r\n                        <p class=\"city\">Город: <span>Москва, Химки</span></p>    \r\n                        <p class=\"parts-group\">Род деятельности: <span>Продажа б.у. запчастей для Мазда 3, Мазда 6</span></p>      \r\n                                  \r\n                        <div class=\"goods-info justify\">\r\n                           Основное направление компании это: продажа автомобильных запчастей для автомобилей Мазда 3 (2003-2012) и Мазда 6 (2008-2012), мы специализируемся на продаже б.у. запчастей. Территориально склад находится на Ленинградском шоссе 3 км. от МКАД в сторону области, возле ресторана быстрого питания МАКДОНАЛДС. Перед выездом - необходимо обязательно уведомить нас о вашем приезде, чтобы мы могли правильно спланировать график работ и все необходимые запчасти оказались у нас на складе по обговоренной цене. \r\n                        </div>             \r\n</div>','contacts','',1,1,'2012-12-23','2012-12-23',1,NULL),(26,'Покупка аварийных автомобилей','Покупка аварийных автомобилей','К великому сожалению владельцев авто иногда приходится решать и этот вопрос: «Что делать\r\nс машиной после серьёзного ДТП?» Иногда стоит вложить средства в ремонт и восстановить\r\nсвоего «железного коня», но иногда ремонт либо слишком дорог, либо восстановление нецелесообразно, так как повреждения, кроме тех, что явны, могут быть и скрытыми.','<p>К великому сожалению владельцев авто иногда приходится решать и этот вопрос: «Что делать\r\nс машиной после серьёзного ДТП?» Иногда стоит вложить средства в ремонт и восстановить\r\nсвоего «железного коня», но иногда ремонт либо слишком дорог, либо восстановление нецелесообразно,\r\nтак как повреждения, кроме тех, что явны, могут быть и скрытыми. В этом случае хозяина ожидает ремонт\r\nза ремонтом, да и надёжность автомобиля может вызывать сильные сомнения. Отметим, что автомобили\r\nиз Японии имеют несколько повышенные прочность и надёжность, но удар может быть слишком силён. В\r\nтаких ситуациях оптимальным решением является продажа битого авто. Почему это разумное решение?\r\nКроме некоторой суммы страховки, выплачиваемой в некоторых случаях, владелец может получить\r\nдополнительную «компенсацию» в своём несчастье для приобретения новой машины или других вещей. К\r\nтому же это – возможность избавиться от груды металлолома, бесполезно занимающей гараж.</p>\r\n\r\n<p>Чтобы решить этот вопрос быстро, многие пользуются советами знакомых, попавших в подобную\r\nисторию. И тут следует сделать выбор – продать частнику или компании. Мы не хотим очернять честных\r\nпредпринимателей, которые занимаются скупкой битых авто частным образом, однако нередки случаи\r\nтаких сделок, когда в выгоде оставался только скупщик, с помощью различных отработанных махинаций\r\nполучал после ДТП автомобиль, не выплачивая пострадавшему ни копейки. Учитывая возрастающее\r\nнечестие, стоит ли идти на такой неоправданный риск, к тому же чаще всего за такими «выгодными\r\nобещаниями» на самом деле стоит банальный обман, рассчитанный на эмоциональное состояние клиента\r\nи желание получить хоть какие-нибудь деньги и побыстрее. Оценка «на глазок» в таких случаях очень\r\nнеточна (в сторону покупателя), а сумма – чрезвычайно мала. Чаще всего это просто схема, позволяющая\r\nскупщику провернуть дело с максимальной (для него) выгодой. Да и что делать продавцу потом, если\r\nтакое произошло? Куда и с какими документами пойти, чтобы восстановить справедливость?</p>\r\n\r\n<p>Есть и относительно честные перекупщики, но они рассчитывают на психологию «или сейчас, или\r\nникогда». Они приводят аргументы, в защиту немедленной продажи, мол «а кто тебе за это даст больше?\r\nНечего долго думать!» Если впоследствии вы узнаёте, что могли бы получить больше, то уже заключённая\r\nсделка не считается незаконной, так как совершена по обоюдному согласию, и не может быть расторгнута.\r\nИ снова в убытке и без того пострадавший человек.</p>\r\n\r\n<p class=\"important\">Что выбрать?</p>\r\n\r\n<p>Напрашивается очевидный вывод: лучше и безопаснее найти компанию, которая занимается скупкой\r\nбитых авто профессионально. Мы, такая компания, предлагаем следующие преимущества и услуги для\r\nсотрудничества с нами:</p>\r\n\r\n<ul>\r\n<li>оценка независимого эксперта или экспертов, включающая в себя обоснованное письменное\r\nзаключение;</li>\r\n\r\n<li>только официальное заключение законной сделки со всеми вытекающими обязанностями с нашей\r\nстороны, обеспечивающими комфортные условия нашим клиентам;</li>\r\n\r\n<li>большое количество дополнительных услуг, экономящих время и силы наших клиентов, в том числе и\r\nвыкуп авто после ДТП непосредственно с места аварии;</li>\r\n\r\n<li>справедливая цена, основанная на удовлетворении обоюдных интересов.</li>\r\n</ul>\r\n<p class=\"important\">Дополнительные преимущества</p>\r\n\r\n<p>1. Вы можете выслать нам фото битого автомобиля с места аварии и получить первичную оценку\r\nстоимости авто с последующим выездом эксперта на место для уточнения стоимости и деталей\r\nоформления БЕСПЛАТНО!</p>\r\n\r\n<p>2. Стоимость продажи не будет уменьшаться, Вы получите НА РУКИ сумму, указанную в договоре, даже\r\nесли впоследствии будут найдены другие, скрытые дефекты. Порядок и сроки выплаты являются пунктами\r\nдоговора, и мы неукоснительно будем их соблюдать.</p>\r\n\r\n<p>3. Вместе с Вами мы решим, какая из сторон будет оформлять все документы, и транспортировать\r\nавтомобиль.</p>\r\n\r\n<p>4. Все формальности могут быть решены всего за несколько часов, так как наша компания уже выкупила\r\nтаким образом немало машин по честной наработанной схеме. Вам будет предоставлен законный договор\r\nкупли-продажи.</p>\r\n\r\n<p>5. Всего за несколько дней после покупки будет снят с регучёта в отделении ГИБДД, а Вам направлен\r\nполный пакет документов с подтверждением отчуждения автомобиля.</p>\r\n\r\n<p>Приоритетным направлением нашей компании являются японские автомобили. Благодаря их высокому\r\nкачеству и комфорту для водителя они реже попадают в аварии. Однако из-за роста их количества на\r\nнаших дорогах возрастает и вероятность их повреждения. Мы понимаем, что расстаться с таким уютным</p>\r\n\r\n<p>автомобилем нелегко, поэтому постарались максимально облегчить процедуру оформления документов,\r\nвзяв на себя значительную часть обязанностей.</p>\r\n\r\n<p>Мы действуем по принципу: «Сначала Вам деньги, а потом нам – автомобиль!» Предлагая нам свой\r\nавтомобиль, Вы можете быть уверены в нашей честности как партнёров и комфорте в решении проблемы\r\nпродажи битого автомобиля.</p>','26_vykup_avariynyh_avtomobilyay','pictures/chashed_car.jpg',1,1,'2012-12-24','2012-12-24',1,''),(27,'Что такое авторазборка','Что такое разборка','Счастливым владельцам автомобилей надоело читать на откровенных подделках\r\nнадпись «ОСТЕРЕГАЙТЕСЬ ПОДДЕЛОК!» Правда ведь, так хочется один раз поставить какую-то деталь\r\nи больше не мучиться в сомнениях! В поисках качественных запчастей водители часто тратят время и\r\nбензин, не зная, кому же можно доверять. ','<p>Счастливым владельцам автомобилей надоело читать на откровенных подделках\r\nнадпись «ОСТЕРЕГАЙТЕСЬ ПОДДЕЛОК!» Правда ведь, так хочется один раз поставить какую-то деталь\r\nи больше не мучиться в сомнениях!</p>\r\n\r\n<p>В поисках качественных запчастей водители часто тратят время и\r\nбензин, не зная, кому же можно доверять. Если раньше говорили: «Всё, что ни делается – к лучшему», то\r\nсейчас эта поговорка стала звучать по-другому: «Всё, что ни делается, делается в Китае!» И мы ничего\r\nплохого не хотим сказать ни про Китай, ни про китайцев. Просто мы хотим избавить наших дорогих\r\nсобратьев по оружию, то бишь владению автомобилем, от ужасного ощущения обманутых надежд.</p>\r\n\r\n<p class=\"important\">Выбор – дело личное</p>\r\n\r\n<p>Всё дело в том, что покупка новых деталей и расходников, равно как и б/у – личное дело водителя.\r\nБезусловно, в определённых ситуациях покупка б/у-шного оборудования даже нецелесообразна,\r\nоднако владельцы авторазборок отлично разбираются в своём бизнесе и такие запчасти ПРОСТО НЕ\r\nПРИВОЗЯТ! Это правда, никто и никогда не видел на разборке б.у. масляные фильтры или подобные\r\nвещи. Но что стоит отметить, что те, кто торгует новыми запчастями, тоже ведут со своей стороны\r\nрекламные кампании, утверждая, что ничего «б.ушного» брать категорически нельзя. Если вы раньше\r\nникогда не прибегали к услугам авторазборок, то и выбор сделать сложнее. Но попробуйте поговорить\r\nс «бывалыми водилами», владельцами дорогих, и не очень автомобилей, и Вы будете приятно удивлены.\r\nВот что сказал один владелец нового и дорогого японского автомобиля (марку не называем в целях\r\nконфиденциальности): «Два года с меня драли три шкуры в сервис-центре и я наивно полагал, что это и\r\nкачественнее, и дешевле. Заехал чисто случайно на разборку и узнал, что тот же самый узел ровно в ТРИ\r\nРАЗА дешевле! Так на разборке за пару копеек мне его и вытерли, и смазали, и поставили! За такую же\r\nпроцедуру на сервисе я бы…» и дальше шла непереводимая игра слов.</p>\r\n\r\n<p class=\"important\">Преимущества авторазборок</p>\r\n\r\n<p>Не будем долго говорить о ценах, чаще всего здесь они просто радуют! К тому же всегда есть\r\nвозможность обзвонить несколько точек, и выбрать подходящую. Звонок сразу даст представление\r\nо хозяине. В отличие от магазина, у нас Вы можете получить самую подробную информацию о\r\nпроисхождении и состоянии детали, выбрать подходящую ценовую категорию и качество. Если\r\nВас заинтересовали предложенные варианты, то Вы можете внимательно осмотреть выбранную\r\nдеталь и убедиться в её целостности. Добавим, что в отличие от магазина здесь вы можете не только\r\nкупить подходящую деталь и узел, такие как бампер, крыло или весь двигатель, но и проверить их\r\nработоспособность, установив их! То есть, на практике это выглядит так: позвонил, купил, поставил и\r\nуехал. Даже если на нашей разборке установка какого-то узла не представляется возможной, то в нашем\r\nраспоряжении программы партнёрского сервиса, мы звоним – они делают!</p>\r\n\r\n<p class=\"important\">Суровая реальность жизни</p>\r\n\r\n<p>К сожалению наши дороги, да и движение по ним – настоящий экстрим, а деликатные «иномарочки»\r\nне всегда в состоянии его выдержать. Частые замены и мелкие ремонты – суровая реальность. Чтобы\r\nне влететь «в копеечку» приходится считать и экономить. Вежливые сотрудники нашего сервиса-\r\nразборки готовы прийти Вам на помощь и подобрать нужные детали и узлы. При этом мы в полной мере\r\nконтролируем качество проданных запчастей и гарантируем их работоспособность. Установка будет\r\nсделана быстро и качественно. Мы не продаём то, что непригодно, мы предлагаем качественный товар по\r\nприемлемой цене!</p>','27_chto_takoe_avtorazborka','pictures/razborka.jpg',1,1,'2012-12-24','2012-12-24',1,NULL),(28,'Оптика','Оптика','отражатели, катафоты, стекла, стекла дверей, лампы освещения, фары (галогеновые и ксеноновые), габаритные огни, задние стекла, фонари, лобовые стекла','<p>На данной странице вы можете определить приблизительные цены на б.у. запчасти для автомобиля $title из категории оптика, это: отражатели и катафоты для $title, стекла и стекла дверей, лампы освещения, фары (галогеновые и ксеноновые) для автомобиля $en_title, габаритные огни, задние стекла, фонари, лобовые стекла.</p>','28_optika','partsgroup/lens.png',1,1,'2012-12-27','2012-12-27',1,'<p>О наших дорогах можно говорить много и громко, но и о том, что на них просто валяется, тоже не\r\nстоит забывать. Как обидно, когда стекло красавицы – трескается или ещё похуже – разлетается\r\nиз-за камня или болта! Или из-за обидной случайности в виде лёгкого удара лопается стекло фары…\r\nМы понимаем Ваши чувства, поэтому предлагаем Вашему вниманию огромный выбор бу запчастей из\r\nразряда оптики. Отдельным товаром являются фонари, фары и противотуманки (птф). Их модификаций\r\nна Мазде довольно много, и мы позаботились о том, чтобы на нашем складе они всегда были в наличии и\r\nсоответствовали высоким требованиям к качеству и внешнему виду.</p>\r\n\r\n<p>Среди прочих элементов кузовной оптики мы готовы предложить разнообразные стёкла: лобовые,\r\nзадние, стёкла дверей и любые другие. Таким образом, подыскивая качественные, но недорогие б/у\r\nдетали, Вы сможете найти их на нашей авторазборке.</p>'),(29,'Разное','Разное ','Разные детали на автомобиль. Детали, которые не вошли в основные группы, либо принадлежность к которым не очевидна, здесь могут находиться и трубки кондиционера и муфта и печка и другие элементы .','<p>На данной странице вы можете определить ориентировочную стоимость б.у. запчастей для автомобиля $title из категории \"разное\", это детали прямую принадлежность к той или иной группе определить сложно или нельзя. Поэтому если ваша деталь на автомобиль $title не нашлась в других группах, загляните сюда, возможно она находится именно здесь..</p>','29_raznoe_ostalnye_detali','partsgroup/others.png',1,1,'2013-01-13','2013-01-13',1,'Детали, которые не вошли в основные группы, либо принадлежность к которым не очевидна, здесь могут находиться и трубки кондиционера и муфта и печка и другие элементы .');
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_pagepicture`
--

DROP TABLE IF EXISTS `core_pagepicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_pagepicture` (
  `picture_ptr_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`picture_ptr_id`),
  KEY `core_pagepicture_32d04bc7` (`page_id`),
  CONSTRAINT `page_id_refs_id_3c7a13a6` FOREIGN KEY (`page_id`) REFERENCES `core_page` (`id`),
  CONSTRAINT `picture_ptr_id_refs_id_e998c0f8` FOREIGN KEY (`picture_ptr_id`) REFERENCES `core_picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_pagepicture`
--

LOCK TABLES `core_pagepicture` WRITE;
/*!40000 ALTER TABLE `core_pagepicture` DISABLE KEYS */;
INSERT INTO `core_pagepicture` VALUES (7,14),(8,14),(9,14),(10,14),(11,14),(12,15),(13,15),(14,15),(15,15),(16,15),(17,16),(18,16),(19,16),(20,16),(21,16),(22,17),(23,17),(24,17),(25,17),(26,18),(27,18),(28,18),(29,18),(30,18),(31,19),(32,19),(33,19),(34,19),(35,19),(36,20),(37,20),(38,20),(39,20),(40,20),(41,21),(42,21),(43,21),(44,21),(45,21),(1,22),(2,22),(3,22),(4,22),(5,22),(6,23);
/*!40000 ALTER TABLE `core_pagepicture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_parts`
--

DROP TABLE IF EXISTS `core_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_parts` (
  `page_ptr_id` int(11) NOT NULL,
  `code` varchar(128) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `used_price_min` double DEFAULT NULL,
  `used_price_max` double DEFAULT NULL,
  `manufacture_id` int(11) NOT NULL,
  `carmodel_id` int(11) NOT NULL,
  `place_name` varchar(256) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `buyer_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `core_parts_e1b89384` (`manufacture_id`),
  KEY `core_parts_a6df9bbd` (`carmodel_id`),
  CONSTRAINT `carmodel_id_refs_page_ptr_id_459c9243` FOREIGN KEY (`carmodel_id`) REFERENCES `core_carmodel` (`page_ptr_id`),
  CONSTRAINT `manufacture_id_refs_page_ptr_id_112de4ea` FOREIGN KEY (`manufacture_id`) REFERENCES `core_manufacture` (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_58195327` FOREIGN KEY (`page_ptr_id`) REFERENCES `core_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_parts`
--

LOCK TABLES `core_parts` WRITE;
/*!40000 ALTER TABLE `core_parts` DISABLE KEYS */;
INSERT INTO `core_parts` VALUES (22,'GDK2-51-031',56000,20000,25000,2,4,NULL,NULL,NULL),(23,'LKJLKJLOUO',48000,9000,11000,2,4,NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_parts_group`
--

DROP TABLE IF EXISTS `core_parts_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_parts_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parts_id` int(11) NOT NULL,
  `partsgroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parts_id` (`parts_id`,`partsgroup_id`),
  KEY `core_parts_group_2c2f0ddb` (`parts_id`),
  KEY `core_parts_group_8201d657` (`partsgroup_id`),
  CONSTRAINT `partsgroup_id_refs_page_ptr_id_78c5fa61` FOREIGN KEY (`partsgroup_id`) REFERENCES `core_partsgroup` (`page_ptr_id`),
  CONSTRAINT `parts_id_refs_page_ptr_id_6689245d` FOREIGN KEY (`parts_id`) REFERENCES `core_parts` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_parts_group`
--

LOCK TABLES `core_parts_group` WRITE;
/*!40000 ALTER TABLE `core_parts_group` DISABLE KEYS */;
INSERT INTO `core_parts_group` VALUES (11,22,9),(10,23,9);
/*!40000 ALTER TABLE `core_parts_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_parts_modification`
--

DROP TABLE IF EXISTS `core_parts_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_parts_modification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parts_id` int(11) NOT NULL,
  `modification_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parts_id` (`parts_id`,`modification_id`),
  KEY `core_parts_modification_2c2f0ddb` (`parts_id`),
  KEY `core_parts_modification_e83ad52c` (`modification_id`),
  CONSTRAINT `modification_id_refs_page_ptr_id_f338a766` FOREIGN KEY (`modification_id`) REFERENCES `core_modification` (`page_ptr_id`),
  CONSTRAINT `parts_id_refs_page_ptr_id_231e2cff` FOREIGN KEY (`parts_id`) REFERENCES `core_parts` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_parts_modification`
--

LOCK TABLES `core_parts_modification` WRITE;
/*!40000 ALTER TABLE `core_parts_modification` DISABLE KEYS */;
INSERT INTO `core_parts_modification` VALUES (32,22,18),(33,22,19),(34,22,20),(35,22,21),(29,23,18),(30,23,19),(31,23,20);
/*!40000 ALTER TABLE `core_parts_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_partsalias`
--

DROP TABLE IF EXISTS `core_partsalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_partsalias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `parts_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_partsalias_2c2f0ddb` (`parts_id`),
  CONSTRAINT `parts_id_refs_page_ptr_id_a780489a` FOREIGN KEY (`parts_id`) REFERENCES `core_parts` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_partsalias`
--

LOCK TABLES `core_partsalias` WRITE;
/*!40000 ALTER TABLE `core_partsalias` DISABLE KEYS */;
INSERT INTO `core_partsalias` VALUES (1,'Передние фары',22),(2,'Передние фонари',22);
/*!40000 ALTER TABLE `core_partsalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_partscompatible`
--

DROP TABLE IF EXISTS `core_partscompatible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_partscompatible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) DEFAULT NULL,
  `parts_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_partscompatible_2c2f0ddb` (`parts_id`),
  CONSTRAINT `parts_id_refs_page_ptr_id_a8dc79e1` FOREIGN KEY (`parts_id`) REFERENCES `core_parts` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_partscompatible`
--

LOCK TABLES `core_partscompatible` WRITE;
/*!40000 ALTER TABLE `core_partscompatible` DISABLE KEYS */;
INSERT INTO `core_partscompatible` VALUES (1,'GDK2-51-031',22);
/*!40000 ALTER TABLE `core_partscompatible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_partscomponent`
--

DROP TABLE IF EXISTS `core_partscomponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_partscomponent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `title` varchar(256) NOT NULL,
  `parts_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_partscomponent_2c2f0ddb` (`parts_id`),
  CONSTRAINT `parts_id_refs_page_ptr_id_b8e0e4b9` FOREIGN KEY (`parts_id`) REFERENCES `core_parts` (`page_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_partscomponent`
--

LOCK TABLES `core_partscomponent` WRITE;
/*!40000 ALTER TABLE `core_partscomponent` DISABLE KEYS */;
INSERT INTO `core_partscomponent` VALUES (1,'GDK2-51-155','Гнездо прикуривателя',22,1500),(2,'E221-51-0A1','Крышка фары',22,NULL),(3,'GDK4-50-151','Крепление',22,NULL),(4,'9070-38-650','Лампа ближнего света',22,NULL),(5,'9070-36-350','Лампа ксенон 12v 35w',22,NULL),(6,'GS1G-51-0H3','Блок розжига ксенона',22,NULL);
/*!40000 ALTER TABLE `core_partscomponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_partsgroup`
--

DROP TABLE IF EXISTS `core_partsgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_partsgroup` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `page_ptr_id_refs_id_989e8ba5` FOREIGN KEY (`page_ptr_id`) REFERENCES `core_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_partsgroup`
--

LOCK TABLES `core_partsgroup` WRITE;
/*!40000 ALTER TABLE `core_partsgroup` DISABLE KEYS */;
INSERT INTO `core_partsgroup` VALUES (5),(6),(7),(8),(9),(10),(11),(12),(13),(24),(28),(29);
/*!40000 ALTER TABLE `core_partsgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_picture`
--

DROP TABLE IF EXISTS `core_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `pub_date` datetime NOT NULL,
  `picture` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_picture`
--

LOCK TABLES `core_picture` WRITE;
/*!40000 ALTER TABLE `core_picture` DISABLE KEYS */;
INSERT INTO `core_picture` VALUES (1,'фары мазда 6 ','2012-12-22 06:32:06','pictures/20121026145_5089b2ff277d3.af88ea0f52d5682e4b91fe4fdbf8f9ce3324.jpg'),(2,'фары мазда 6 ','2012-12-22 06:32:06','pictures/DSC_0036.af88ea0f52d5682e4b91fe4fdbf8f9ce3324.jpg'),(3,'фары мазда 6 ','2012-12-22 06:32:06','pictures/DSC_0039.af88ea0f52d5682e4b91fe4fdbf8f9ce3324.jpg'),(4,'фары мазда 6 ','2012-12-22 06:32:06','pictures/DSC_0040.af88ea0f52d5682e4b91fe4fdbf8f9ce3324.jpg'),(5,'фары мазда 6 ','2012-12-22 06:32:06','pictures/DSC_0044.af88ea0f52d5682e4b91fe4fdbf8f9ce3324.jpg'),(6,'Дверь передняя правая Мазда 6','2012-12-22 06:56:33','pictures/20120723722dsc08086.af88ea0f52d5682e4b91fe4fdbf8f9ce3324.jpg'),(7,'Мазда 3 (BK) Хэтчбек','2012-12-23 14:04:18','modifications/bkh1.jpeg'),(8,'Мазда 3 (BK) Хэтчбек','2012-12-23 14:04:18','modifications/bkh2.jpeg'),(9,'Мазда 3 (BK) Хэтчбек','2012-12-23 14:04:18','modifications/bkh3.jpeg'),(10,'Мазда 3 (BK) Хэтчбек','2012-12-23 14:04:18','modifications/bkh4.jpeg'),(11,'Мазда 3 (BK) Хэтчбек','2012-12-23 14:04:18','modifications/bkh5.jpeg'),(12,'Мазда 3 (BK) Седан','2012-12-23 14:05:24','modifications/bks1.jpeg'),(13,'Мазда 3 (BK) Седан','2012-12-23 14:05:24','modifications/bks2.jpeg'),(14,'Мазда 3 (BK) Седан','2012-12-23 14:05:24','modifications/bks3.jpeg'),(15,'Мазда 3 (BK) Седан','2012-12-23 14:05:24','modifications/bks4.jpeg'),(16,'Мазда 3 (BK) Седан','2012-12-23 14:05:24','modifications/bks5.jpeg'),(17,'Мазда 3 (BL) Хэтчбек','2012-12-23 14:06:09','modifications/blh1.jpeg'),(18,'Мазда 3 (BL) Хэтчбек','2012-12-23 14:06:09','modifications/blh2.jpeg'),(19,'Мазда 3 (BL) Хэтчбек','2012-12-23 14:06:09','modifications/blh3.jpeg'),(20,'Мазда 3 (BL) Хэтчбек','2012-12-23 14:06:09','modifications/blh4.jpeg'),(21,'Мазда 3 (BL) Хэтчбек','2012-12-23 14:06:09','modifications/blh5.jpeg'),(22,'Мазда 3 (BL) Седан ','2012-12-23 14:07:04','modifications/bls1.jpeg'),(23,'Мазда 3 (BL) Седан ','2012-12-23 14:07:04','modifications/bls2.jpeg'),(24,'Мазда 3 (BL) Седан ','2012-12-23 14:07:04','modifications/bls3.jpeg'),(25,'Мазда 3 (BL) Седан ','2012-12-23 14:07:04','modifications/bls4.jpeg'),(26,'Мазда 6 (GH) Хэтчбек','2012-12-23 14:08:14','modifications/ghh1.jpeg'),(27,'Мазда 6 (GH) Хэтчбек','2012-12-23 14:08:14','modifications/ghh2.jpeg'),(28,'Мазда 6 (GH) Хэтчбек','2012-12-23 14:08:14','modifications/ghh3.jpeg'),(29,'Мазда 6 (GH) Хэтчбек','2012-12-23 14:08:14','modifications/ghh4.jpeg'),(30,'Мазда 6 (GH) Хэтчбек','2012-12-23 14:08:14','modifications/ghh5.jpeg'),(31,'Мазда 6 (GH) Седан ','2012-12-23 14:10:05','modifications/ghs1.jpeg'),(32,'Мазда 6 (GH) Седан ','2012-12-23 14:10:05','modifications/ghs2.jpeg'),(33,'Мазда 6 (GH) Седан ','2012-12-23 14:10:05','modifications/ghs3.jpeg'),(34,'Мазда 6 (GH) Седан ','2012-12-23 14:10:05','modifications/ghs4.jpeg'),(35,'Мазда 6 (GH) Седан ','2012-12-23 14:10:05','modifications/ghs5.jpeg'),(36,'Мазда 6 (GH) Универсал','2012-12-23 14:10:37','modifications/ghu1.jpeg'),(37,'Мазда 6 (GH) Универсал','2012-12-23 14:10:37','modifications/ghu2.jpeg'),(38,'Мазда 6 (GH) Универсал','2012-12-23 14:10:37','modifications/ghu3.jpeg'),(39,'Мазда 6 (GH) Универсал','2012-12-23 14:10:37','modifications/ghu4.jpeg'),(40,'Мазда 6 (GH) Универсал','2012-12-23 14:10:37','modifications/ghu5.jpeg'),(41,'Мазда 6 SKYACTIV Седан','2012-12-23 14:11:09','modifications/6iiis1.jpeg'),(42,'Мазда 6 SKYACTIV Седан','2012-12-23 14:11:09','modifications/6iiis2.jpeg'),(43,'Мазда 6 SKYACTIV Седан','2012-12-23 14:11:09','modifications/6iiis3.jpeg'),(44,'Мазда 6 SKYACTIV Седан','2012-12-23 14:11:09','modifications/6iiis4.jpeg'),(45,'Мазда 6 SKYACTIV Седан','2012-12-23 14:11:09','modifications/6iiis5.jpeg');
/*!40000 ALTER TABLE `core_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-12-21 16:09:40',1,11,'1','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',1,''),(2,'2012-12-21 16:10:11',1,11,'1','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен body.'),(3,'2012-12-21 17:25:02',1,19,'1','Навигация',1,''),(4,'2012-12-21 17:27:07',1,19,'1','Навигация',2,'Добавлен Пункт меню \"Главная\". Добавлен Пункт меню \"Разборка мазда 3\". Добавлен Пункт меню \"Разборка мазда 6\". Добавлен Пункт меню \"Выкуп аварийных автомобилей\". Добавлен Пункт меню \"Контакты\". Добавлен Пункт меню \"Статьи\".'),(5,'2012-12-21 17:29:44',1,12,'2','Mazda',1,''),(6,'2012-12-21 17:30:49',1,13,'3','Mazda 3',1,''),(7,'2012-12-21 17:31:33',1,13,'4','Mazda 6',1,''),(8,'2012-12-21 17:33:01',1,15,'5','Детали двигателя',1,''),(9,'2012-12-21 17:34:16',1,15,'6','Трансмиссия, КПП',1,''),(10,'2012-12-21 17:34:54',1,15,'7','Рулевое управление',1,''),(11,'2012-12-21 17:35:27',1,15,'8','Выхлопная система',1,''),(12,'2012-12-21 17:36:02',1,15,'9','Кузовные детали',1,''),(13,'2012-12-21 17:37:20',1,15,'10','Детали подвески',1,''),(14,'2012-12-21 17:37:52',1,15,'11','Тормозная система ',1,''),(15,'2012-12-21 17:38:26',1,15,'12','Топливная система',1,''),(16,'2012-12-21 17:39:17',1,15,'13','Детали интерьера/Салон',1,''),(17,'2012-12-21 21:34:26',1,14,'14','Мазда 3 (BK) Хэтчбек 2003-2009',1,''),(18,'2012-12-21 21:35:38',1,14,'14','Мазда 3 (BK) Хэтчбек 2003-2009',2,'Изменен to_year.'),(19,'2012-12-21 22:07:45',1,14,'15','Мазда 3 (BK) Седан 2003-2009',2,'Изменен title,short_title,en_title,body_type,description,body и urlname.'),(20,'2012-12-21 22:12:08',1,14,'16','Мазда 3 (BL) Хэтчбек 2009-2013',2,'Изменен title,short_title,en_title,from_year,to_year,body_type,description и body.'),(21,'2012-12-21 22:13:39',1,14,'17','Мазда 3 (BL) Седан 2009-2013',2,'Изменен title,short_title,en_title,from_year,to_year,description и body.'),(22,'2012-12-21 22:21:11',1,14,'18','Мазда 6 (GH) Хэтчбек 2007-2012',2,'Изменен title,short_title,en_title,carmodel,from_year,body_type,description и body.'),(23,'2012-12-21 22:22:32',1,14,'19','Мазда 6 (GH) Седан 2007-2012',2,'Изменен title,short_title,en_title,body_type,description и body.'),(24,'2012-12-21 22:23:42',1,14,'20','Мазда 6 (GH) Универсал 2007-2012',2,'Изменен title,short_title,en_title,body_type,description и body.'),(25,'2012-12-21 22:26:39',1,14,'21','Мазда 6 III Седан 2012-2014',2,'Изменен title,short_title,en_title,from_year,to_year,body_type,description и body.'),(26,'2012-12-21 22:26:57',1,14,'17','Мазда 3 (BL) Седан 2009-2013',2,'Изменен to_year.'),(27,'2012-12-21 22:27:17',1,14,'16','Мазда 3 (BL) Хэтчбек 2009-2013',2,'Изменен to_year.'),(28,'2012-12-22 06:32:06',1,17,'22','Ксеноновые фары для Мазда 6 ',1,''),(29,'2012-12-22 06:54:03',1,17,'22','Ксеноновые фары для Мазда 6 ',2,'Ни одно поле не изменено.'),(30,'2012-12-22 06:56:33',1,17,'23','Дверь передняя правая Мазда 6',1,''),(31,'2012-12-22 07:18:29',1,19,'1','Навигация',2,'Изменены urlname для Пункт меню \"Разборка мазда 3\".'),(32,'2012-12-22 11:52:29',1,19,'1','Навигация',2,'Изменены urlname для Пункт меню \"Разборка мазда 6\".'),(33,'2012-12-22 19:40:41',1,15,'24','Электрика',1,''),(35,'2012-12-22 20:42:38',1,15,'24','Электрика',2,'Изменен preview_picture.'),(36,'2012-12-22 20:43:07',1,15,'5','Детали двигателя',2,'Изменен preview_picture.'),(37,'2012-12-22 20:43:23',1,15,'6','Трансмиссия, КПП',2,'Изменен preview_picture.'),(38,'2012-12-22 20:43:45',1,15,'7','Рулевое управление',2,'Изменен preview_picture.'),(39,'2012-12-22 20:44:03',1,15,'8','Выхлопная система',2,'Изменен preview_picture.'),(40,'2012-12-22 20:44:12',1,15,'9','Кузовные детали',2,'Изменен preview_picture.'),(41,'2012-12-22 20:44:21',1,15,'10','Детали подвески',2,'Изменен preview_picture.'),(42,'2012-12-22 20:44:29',1,15,'11','Тормозная система ',2,'Изменен preview_picture.'),(43,'2012-12-22 20:44:38',1,15,'12','Топливная система',2,'Изменен preview_picture.'),(44,'2012-12-22 20:44:48',1,15,'13','Детали интерьера/Салон',2,'Изменен preview_picture.'),(45,'2012-12-23 14:04:18',1,14,'14','Мазда 3 (BK) Хэтчбек 2003-2009',2,'Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Хэтчбек\".'),(46,'2012-12-23 14:05:24',1,14,'15','Мазда 3 (BK) Седан 2003-2009',2,'Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Седан\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Седан\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Седан\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Седан\". Добавлен Фото/изображение для страницы \"Мазда 3 (BK) Седан\".'),(47,'2012-12-23 14:06:09',1,14,'16','Мазда 3 (BL) Хэтчбек 2009-2013',2,'Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Хэтчбек\".'),(48,'2012-12-23 14:07:04',1,14,'17','Мазда 3 (BL) Седан 2009-2013',2,'Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Седан \". Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Седан \". Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Седан \". Добавлен Фото/изображение для страницы \"Мазда 3 (BL) Седан \".'),(49,'2012-12-23 14:08:14',1,14,'18','Мазда 6 (GH) Хэтчбек 2007-2012',2,'Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Хэтчбек\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Хэтчбек\".'),(50,'2012-12-23 14:10:05',1,14,'19','Мазда 6 (GH) Седан 2007-2012',2,'Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Седан \". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Седан \". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Седан \". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Седан \". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Седан \".'),(51,'2012-12-23 14:10:37',1,14,'20','Мазда 6 (GH) Универсал 2007-2012',2,'Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Универсал\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Универсал\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Универсал\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Универсал\". Добавлен Фото/изображение для страницы \"Мазда 6 (GH) Универсал\".'),(52,'2012-12-23 14:11:09',1,14,'21','Мазда 6 III Седан 2012-2014',2,'Добавлен Фото/изображение для страницы \"Мазда 6 III Седан\". Добавлен Фото/изображение для страницы \"Мазда 6 III Седан\". Добавлен Фото/изображение для страницы \"Мазда 6 III Седан\". Добавлен Фото/изображение для страницы \"Мазда 6 III Седан\". Добавлен Фото/изображение для страницы \"Мазда 6 III Седан\".'),(53,'2012-12-23 18:02:19',1,11,'25','Контакты Автотонус',1,''),(54,'2012-12-23 18:05:37',1,19,'1','Навигация',2,'Изменены urlname для Пункт меню \"Контакты\".'),(55,'2012-12-23 18:12:07',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(56,'2012-12-23 18:12:23',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(57,'2012-12-23 18:13:11',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(58,'2012-12-23 18:13:29',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(59,'2012-12-23 18:16:56',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(60,'2012-12-23 18:18:18',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(61,'2012-12-23 18:19:39',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(62,'2012-12-23 18:20:01',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(63,'2012-12-23 18:27:06',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(64,'2012-12-23 18:27:32',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(65,'2012-12-23 18:30:47',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(66,'2012-12-23 18:40:39',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(67,'2012-12-23 18:41:41',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(68,'2012-12-23 18:42:49',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(69,'2012-12-23 18:44:43',1,11,'25','Контакты Автотонус',2,'Изменен body.'),(70,'2012-12-23 21:23:42',1,11,'26','Выкуп аварийных автомобилей',1,''),(71,'2012-12-23 21:24:32',1,19,'1','Навигация',2,'Изменены urlname для Пункт меню \"Выкуп аварийных автомобилей\".'),(72,'2012-12-23 21:31:25',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен body.'),(73,'2012-12-23 21:35:36',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен body.'),(74,'2012-12-23 21:36:24',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен body.'),(75,'2012-12-23 21:36:35',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен body.'),(76,'2012-12-23 21:36:55',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен body.'),(77,'2012-12-23 21:37:26',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен body.'),(78,'2012-12-23 23:28:41',1,19,'1','Навигация',2,'Изменены urlname для Пункт меню \"Статьи\".'),(79,'2012-12-24 18:22:57',1,11,'27','Что такое авторазборка',1,''),(80,'2012-12-24 18:25:00',1,11,'27','Что такое авторазборка',2,'Изменен body.'),(81,'2012-12-24 18:27:45',1,11,'27','Что такое авторазборка',2,'Изменен body.'),(82,'2012-12-24 18:42:36',1,11,'27','Что такое авторазборка',2,'Изменен body.'),(83,'2012-12-25 17:01:34',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен description и body.'),(84,'2012-12-25 17:02:33',1,11,'26','Выкуп аварийных автомобилей',2,'Изменен body.'),(85,'2012-12-25 17:03:57',1,13,'3','Mazda 3',2,'Изменен description и body.'),(86,'2012-12-25 17:07:07',1,13,'3','Mazda 3',2,'Изменен body.'),(87,'2012-12-25 17:11:27',1,19,'1','Навигация',2,'Изменены urlname для Пункт меню \"Выкуп аварийных автомобилей\". Изменены urlname для Пункт меню \"Статьи\".'),(88,'2012-12-25 17:19:40',1,19,'1','Навигация',2,'Изменены urlname для Пункт меню \"Разборка мазда 3\". Изменены urlname для Пункт меню \"Разборка мазда 6\".'),(89,'2012-12-25 17:32:57',1,15,'28','Оптика',1,''),(90,'2012-12-25 17:33:35',1,15,'28','Оптика',3,''),(91,'2012-12-25 23:41:51',1,13,'3','Mazda 3',2,'Ни одно поле не изменено.'),(92,'2012-12-25 23:44:49',1,13,'4','Mazda 6',2,'Изменен description и body.'),(93,'2012-12-26 20:33:40',1,17,'22','Ксеноновые фары для Мазда 6 ',2,'Изменен preview_picture.'),(94,'2012-12-26 20:45:20',1,17,'23','Дверь передняя правая Мазда 6',2,'Изменен preview_picture.'),(95,'2012-12-26 21:00:56',1,15,'28','Оптика',1,''),(96,'2012-12-26 21:01:33',1,15,'28','Оптика',2,'Изменен preview_picture. Добавлен Фото/изображение для страницы \"Оптика\".'),(97,'2012-12-26 21:01:37',1,15,'28','Оптика',2,'Удален Фото/изображение для страницы \"Оптика\".'),(98,'2012-12-26 21:02:01',1,15,'28','Оптика',2,'Изменен body.'),(99,'2012-12-26 21:55:01',1,17,'22','Ксеноновые фары для Мазда 6 ',2,'Изменен code. Добавлен Аналог, заменитель совместимая деталь \"GDK2-51-031\". Добавлен Составляющая деталь \"GDK2-51-155-Гнездо прикуривателя\". Добавлен Составляющая деталь \"E221-51-0A1-Крышка фары\". Добавлен Составляющая деталь \"GDK4-50-151-Крепление\". Добавлен Составляющая деталь \"9070-38-650-Лампа ближнего света\". Добавлен Составляющая деталь \"9070-36-350-Лампа ксенон 12v 35w\". Добавлен Составляющая деталь \"GS1G-51-0H3-Блок розжига ксенона\". Добавлен Псевдоним запчасти \"Передние фары\". Добавлен Псевдоним запчасти \"Передние фонари\".'),(100,'2012-12-26 22:14:49',1,17,'22','Ксеноновые фары для Мазда 6 ',2,'Ни одно поле не изменено.'),(101,'2012-12-27 14:41:25',1,15,'5','Детали двигателя',2,'Изменен body.'),(102,'2012-12-27 14:48:17',1,15,'28','Оптика',2,'Изменен description.'),(103,'2012-12-27 14:48:46',1,15,'28','Оптика',2,'Изменен body.'),(104,'2012-12-27 15:00:41',1,15,'24','Электрика',2,'Изменен description и body.'),(105,'2012-12-27 15:00:49',1,15,'5','Детали двигателя',2,'Ни одно поле не изменено.'),(106,'2012-12-27 15:07:20',1,15,'6','Трансмиссия, КПП',2,'Изменен body.'),(107,'2012-12-27 15:07:40',1,15,'6','Трансмиссия, КПП',2,'Изменен description.'),(108,'2012-12-27 15:08:55',1,15,'7','Рулевое управление',2,'Изменен body.'),(109,'2012-12-27 15:09:30',1,15,'8','Выхлопная система',2,'Изменен body.'),(110,'2012-12-27 15:10:04',1,15,'9','Кузовные детали',2,'Изменен body.'),(111,'2012-12-27 15:12:34',1,15,'10','Детали подвески',2,'Изменен body.'),(112,'2012-12-27 15:13:27',1,15,'11','Тормозная система ',2,'Изменен description и body.'),(113,'2012-12-27 15:14:22',1,15,'12','Топливная система',2,'Изменен body.'),(114,'2012-12-27 15:14:57',1,15,'13','Детали интерьера/Салон',2,'Изменен body.'),(115,'2012-12-27 15:52:01',1,15,'5','Детали двигателя',2,'Изменен description.'),(116,'2012-12-27 15:52:19',1,15,'6','Трансмиссия, КПП',2,'Изменен description.'),(117,'2012-12-27 15:52:37',1,15,'7','Рулевое управление',2,'Изменен description.'),(118,'2012-12-27 15:52:49',1,15,'8','Выхлопная система',2,'Изменен description.'),(119,'2012-12-27 15:53:26',1,15,'8','Выхлопная система',2,'Ни одно поле не изменено.'),(120,'2012-12-27 15:53:42',1,15,'9','Кузовные детали',2,'Изменен description.'),(121,'2012-12-27 15:54:04',1,15,'10','Детали подвески',2,'Изменен description.'),(122,'2012-12-27 15:54:16',1,15,'11','Тормозная система ',2,'Изменен description.'),(123,'2012-12-27 15:54:56',1,15,'12','Топливная система',2,'Изменен description.'),(124,'2012-12-27 15:55:16',1,15,'13','Детали интерьера/Салон',2,'Изменен description.'),(125,'2012-12-27 15:55:32',1,15,'24','Электрика',2,'Изменен description.'),(126,'2012-12-27 15:55:46',1,15,'24','Электрика',2,'Изменен description.'),(127,'2012-12-27 15:55:55',1,15,'28','Оптика',2,'Изменен description.'),(128,'2012-12-28 10:50:17',1,11,'1','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен body.'),(129,'2012-12-28 17:23:06',1,11,'1','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен body.'),(130,'2012-12-28 17:28:01',1,13,'3','Mazda 3',2,'Изменен description.'),(131,'2012-12-28 17:30:00',1,13,'4','Mazda 6',2,'Изменен description.'),(132,'2012-12-28 18:34:08',1,11,'1','Автотонус  разборка мазда 3 и мазда 6',2,'Изменен title.'),(133,'2012-12-28 18:34:41',1,11,'1','Автотонус  разборка мазда 3 и мазда 6',2,'Изменен intro_text и body.'),(134,'2012-12-28 18:36:10',1,11,'1','Автотонус  разборка мазда 3 и мазда 6',2,'Изменен body.'),(135,'2012-12-28 18:53:32',1,11,'1','Автотонус  разборка мазда 3 и мазда 6',2,'Изменен intro_text.'),(136,'2012-12-28 18:53:56',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен title.'),(137,'2012-12-28 20:27:56',1,13,'3','Mazda 3',2,'Ни одно поле не изменено.'),(138,'2012-12-28 20:27:59',1,13,'4','Mazda 6',2,'Ни одно поле не изменено.'),(139,'2012-12-28 20:41:45',1,13,'3','Mazda 3',2,'Изменен intro_text.'),(140,'2012-12-28 20:43:02',1,13,'3','Mazda 3',2,'Изменен intro_text.'),(141,'2012-12-28 20:45:35',1,15,'11','Тормозная система',2,'Изменен title и short_title.'),(142,'2012-12-28 21:16:09',1,13,'4','Mazda 6',2,'Изменен intro_text.'),(143,'2012-12-28 21:17:47',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен intro_text.'),(144,'2012-12-28 22:19:55',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен intro_text.'),(145,'2012-12-28 23:00:21',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен intro_text.'),(146,'2012-12-28 23:00:53',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен body.'),(147,'2012-12-28 23:07:07',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен intro_text.'),(148,'2012-12-28 23:07:48',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен intro_text.'),(149,'2012-12-28 23:08:33',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен intro_text.'),(150,'2012-12-28 23:25:36',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен body.'),(151,'2012-12-28 23:47:54',1,11,'26','Покупка аварийных автомобилей',2,'Изменен title и short_title.'),(152,'2012-12-28 23:48:15',1,19,'1','Навигация',2,'Изменены title для Пункт меню \"Покупка аварийных автомобилей\".'),(153,'2012-12-28 23:48:58',1,19,'1','Навигация',2,'Изменены title для Пункт меню \"Покупка битых автомобилей\".'),(154,'2012-12-29 07:21:26',1,15,'28','Оптика',2,'Изменен body.'),(155,'2012-12-29 09:47:59',1,15,'28','Оптика',2,'Изменен intro_text и body.'),(156,'2012-12-29 09:49:16',1,15,'28','Оптика',2,'Изменен body.'),(157,'2012-12-29 09:53:24',1,15,'28','Оптика',2,'Изменен body.'),(158,'2012-12-29 09:55:34',1,15,'28','Оптика',2,'Изменен body.'),(159,'2012-12-29 09:56:17',1,15,'24','Электрика',2,'Изменен intro_text и body.'),(160,'2012-12-29 10:03:53',1,15,'24','Электрика',2,'Изменен body.'),(161,'2012-12-29 10:19:08',1,15,'5','Детали двигателя',2,'Изменен intro_text и body.'),(162,'2012-12-29 10:19:46',1,15,'5','Детали двигателя',2,'Изменен body.'),(163,'2012-12-29 10:20:09',1,15,'5','Детали двигателя',2,'Изменен body.'),(164,'2012-12-29 10:21:18',1,15,'5','Детали двигателя',2,'Изменен body.'),(165,'2012-12-29 10:21:41',1,15,'24','Электрика',2,'Изменен body.'),(166,'2012-12-29 10:22:12',1,15,'28','Оптика',2,'Изменен body.'),(167,'2012-12-29 10:22:40',1,15,'28','Оптика',2,'Изменен body.'),(168,'2012-12-29 10:23:41',1,15,'5','Детали двигателя',2,'Ни одно поле не изменено.'),(169,'2012-12-29 10:25:59',1,15,'6','Трансмиссия, КПП',2,'Изменен intro_text и body.'),(170,'2012-12-29 10:26:42',1,15,'6','Трансмиссия, КПП',2,'Изменен body.'),(171,'2012-12-29 10:28:30',1,15,'6','Трансмиссия, КПП',2,'Изменен body.'),(172,'2012-12-29 10:29:33',1,15,'6','Трансмиссия, КПП',2,'Ни одно поле не изменено.'),(173,'2012-12-29 10:33:37',1,15,'7','Рулевое управление',2,'Изменен intro_text и body.'),(174,'2012-12-29 10:34:06',1,15,'8','Выхлопная система',2,'Изменен intro_text и body.'),(175,'2012-12-29 10:39:03',1,15,'8','Выхлопная система',2,'Изменен body.'),(176,'2012-12-29 10:39:45',1,15,'8','Выхлопная система',2,'Изменен body.'),(177,'2012-12-29 10:40:18',1,15,'8','Выхлопная система',2,'Изменен body.'),(178,'2012-12-29 10:40:39',1,15,'8','Выхлопная система',2,'Изменен body.'),(179,'2012-12-29 10:47:29',1,15,'9','Кузовные детали',2,'Изменен intro_text и body.'),(180,'2012-12-29 10:52:30',1,15,'10','Детали подвески',2,'Изменен intro_text и body.'),(181,'2012-12-29 10:53:09',1,15,'10','Детали подвески',2,'Изменен body.'),(182,'2012-12-29 11:07:33',1,15,'11','Тормозная система',2,'Изменен intro_text и body.'),(183,'2012-12-29 11:08:03',1,15,'11','Тормозная система',2,'Изменен body.'),(184,'2012-12-29 11:14:54',1,15,'12','Топливная система',2,'Изменен intro_text и body.'),(185,'2012-12-29 11:15:33',1,15,'12','Топливная система',2,'Изменен body.'),(186,'2012-12-29 11:30:21',1,15,'13','Детали интерьера/Салон',2,'Изменен intro_text и body.'),(187,'2012-12-29 11:52:22',1,11,'1','Автотонус - разборка мазда 3 и мазда 6',2,'Изменен description.'),(188,'2012-12-29 21:58:28',1,14,'21','Мазда 6 III SKYACTIV Седан 2012-2014',2,'Изменен title,description и body.'),(189,'2012-12-29 21:58:54',1,14,'21','Мазда 6 III SKYACTIV Седан 2012-2014',2,'Изменен short_title и en_title.'),(190,'2012-12-29 21:59:33',1,14,'21','Мазда 6 III SKYACTIV Седан 2012-2014',2,'Изменены title для Фото/изображение для страницы \"Мазда 6 SKYACTIV Седан\". Изменены title для Фото/изображение для страницы \"Мазда 6 SKYACTIV Седан\". Изменены title для Фото/изображение для страницы \"Мазда 6 SKYACTIV Седан\". Изменены title для Фото/изображение для страницы \"Мазда 6 SKYACTIV Седан\". Изменены title для Фото/изображение для страницы \"Мазда 6 SKYACTIV Седан\".'),(191,'2012-12-30 12:45:38',1,15,'28','Оптика',2,'Изменен status.'),(192,'2012-12-30 12:50:24',1,13,'3','Mazda 3',2,'Изменен status.'),(193,'2012-12-30 12:50:41',1,14,'21','Мазда 6 III SKYACTIV Седан 2012-2014',2,'Изменен status.'),(194,'2012-12-30 12:51:00',1,11,'26','Покупка аварийных автомобилей',2,'Изменен status.'),(195,'2012-12-30 12:59:53',1,17,'23','Дверь передняя правая Мазда 6',2,'Изменен status.'),(196,'2012-12-30 13:00:39',1,17,'22','Ксеноновые фары для Мазда 6 ',2,'Изменен modification.'),(197,'2012-12-30 13:04:47',1,17,'23','Дверь передняя правая Мазда 6',2,'Изменен status.'),(198,'2012-12-30 13:05:07',1,15,'28','Оптика',2,'Изменен status.'),(199,'2012-12-30 13:05:51',1,13,'3','Mazda 3',2,'Изменен status.'),(200,'2012-12-30 13:06:05',1,14,'21','Мазда 6 III SKYACTIV Седан 2012-2014',2,'Изменен status.'),(201,'2012-12-30 13:06:17',1,11,'26','Покупка аварийных автомобилей',2,'Изменен status.'),(202,'2013-01-11 15:48:12',1,17,'22','Ксеноновые фары для Мазда 6 ',2,'Изменены price для Составляющая деталь \"GDK2-51-155-Гнездо прикуривателя\".'),(203,'2013-01-12 21:37:11',1,15,'29','Разное ( остальные детали )',1,''),(204,'2013-01-12 21:39:16',1,15,'29','Разное ( остальные детали )',2,'Изменен body.'),(205,'2013-01-12 21:39:41',1,15,'29','Разное (остальные детали)',2,'Изменен title.'),(206,'2013-01-12 21:42:41',1,15,'29','Разное',2,'Изменен title.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'Изображение','core','picture'),(9,'Страница сайта','core','page'),(10,'Фото/изображение для страницы','core','pagepicture'),(11,'Статья','core','article'),(12,'Марка автомобиля','core','manufacture'),(13,'Модель автомобиля','core','carmodel'),(14,'Модификация модели автомобиля','core','modification'),(15,'Группа запчастей','core','partsgroup'),(17,'Автозапчасть','core','parts'),(18,'Псевдоним запчасти','core','partsalias'),(19,'Меню','core','menu'),(20,'Пункт меню','core','menuitem'),(22,'Компонент','core','component'),(23,'Составляющая деталь','core','partscomponent'),(24,'Аналог, заменитель совместимая деталь','core','partscompatible');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('215f876c2b628da0171dacca5564c9cc','OTVhNjU1NmEzZGNlYWQ2NDk4MDE4YjVhY2Q0MjIwZDY1MWVjNDhiMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-01-04 15:37:33'),('8f84976bdbc704df4ba347015a3a5ac4','OTVhNjU1NmEzZGNlYWQ2NDk4MDE4YjVhY2Q0MjIwZDY1MWVjNDhiMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-01-25 15:35:22');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-13 13:03:07
