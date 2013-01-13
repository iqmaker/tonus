-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: avtotonus
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.3

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add Изображение',8,'add_picture'),(23,'Can change Изображение',8,'change_picture'),(24,'Can delete Изображение',8,'delete_picture'),(25,'Can add Страница сайта',9,'add_htmlpage'),(26,'Can change Страница сайта',9,'change_htmlpage'),(27,'Can delete Страница сайта',9,'delete_htmlpage'),(28,'Can add Статья',10,'add_article'),(29,'Can change Статья',10,'change_article'),(30,'Can delete Статья',10,'delete_article'),(31,'Can add Марка автомобиля',11,'add_manufacture'),(32,'Can change Марка автомобиля',11,'change_manufacture'),(33,'Can delete Марка автомобиля',11,'delete_manufacture'),(37,'Can add Модификация модели автомобиля',13,'add_modification'),(38,'Can change Модификация модели автомобиля',13,'change_modification'),(39,'Can delete Модификация модели автомобиля',13,'delete_modification'),(40,'Can add Фото модификации',14,'add_modificationpicture'),(41,'Can change Фото модификации',14,'change_modificationpicture'),(42,'Can delete Фото модификации',14,'delete_modificationpicture'),(43,'Can add Группа запчастей',15,'add_partsgroup'),(44,'Can change Группа запчастей',15,'change_partsgroup'),(45,'Can delete Группа запчастей',15,'delete_partsgroup'),(46,'Can add Псевдоним',16,'add_alias'),(47,'Can change Псевдоним',16,'change_alias'),(48,'Can delete Псевдоним',16,'delete_alias'),(49,'Can add Автозапчасть',17,'add_parts'),(50,'Can change Автозапчасть',17,'change_parts'),(51,'Can delete Автозапчасть',17,'delete_parts'),(52,'Can add Псевдоним запчасти',18,'add_partsalias'),(53,'Can change Псевдоним запчасти',18,'change_partsalias'),(54,'Can delete Псевдоним запчасти',18,'delete_partsalias'),(55,'Can add Фото запчасти',19,'add_partspicture'),(56,'Can change Фото запчасти',19,'change_partspicture'),(57,'Can delete Фото запчасти',19,'delete_partspicture'),(58,'Can add Модель автомобиля',20,'add_carmodel'),(59,'Can change Модель автомобиля',20,'change_carmodel'),(60,'Can delete Модель автомобиля',20,'delete_carmodel');
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
INSERT INTO `auth_user` VALUES (1,'sbr','','','iqmaker@gmail.com','pbkdf2_sha256$10000$zHwp9teYsiPu$khwMeQPwmsXwxGfVlDYNQ/v3tFrB4u9nxjiAXxQvBIo=',1,1,1,'2012-12-16 10:10:44','2012-12-16 10:10:32');
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
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
-- Table structure for table `core_alias`
--

DROP TABLE IF EXISTS `core_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_alias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_alias`
--

LOCK TABLES `core_alias` WRITE;
/*!40000 ALTER TABLE `core_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_article`
--

DROP TABLE IF EXISTS `core_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_article` (
  `htmlpage_ptr_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`htmlpage_ptr_id`),
  KEY `core_article_63f17a16` (`parent_id`),
  CONSTRAINT `parent_id_refs_htmlpage_ptr_id_63639437` FOREIGN KEY (`parent_id`) REFERENCES `core_article` (`htmlpage_ptr_id`),
  CONSTRAINT `htmlpage_ptr_id_refs_id_b70552e8` FOREIGN KEY (`htmlpage_ptr_id`) REFERENCES `core_htmlpage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_article`
--

LOCK TABLES `core_article` WRITE;
/*!40000 ALTER TABLE `core_article` DISABLE KEYS */;
INSERT INTO `core_article` VALUES (4,NULL),(6,NULL);
/*!40000 ALTER TABLE `core_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_carmodel`
--

DROP TABLE IF EXISTS `core_carmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_carmodel` (
  `htmlpage_ptr_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `en_title` varchar(64) NOT NULL,
  PRIMARY KEY (`htmlpage_ptr_id`),
  KEY `core_model_e1b89384` (`manufacture_id`),
  CONSTRAINT `manufacture_id_refs_htmlpage_ptr_id_6e7535f9` FOREIGN KEY (`manufacture_id`) REFERENCES `core_manufacture` (`htmlpage_ptr_id`),
  CONSTRAINT `htmlpage_ptr_id_refs_id_3bca07d3` FOREIGN KEY (`htmlpage_ptr_id`) REFERENCES `core_htmlpage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_carmodel`
--

LOCK TABLES `core_carmodel` WRITE;
/*!40000 ALTER TABLE `core_carmodel` DISABLE KEYS */;
INSERT INTO `core_carmodel` VALUES (8,7,'Mazda 3'),(9,7,'Mazda 6');
/*!40000 ALTER TABLE `core_carmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_htmlpage`
--

DROP TABLE IF EXISTS `core_htmlpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_htmlpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `description` varchar(256) NOT NULL,
  `body` longtext,
  `urlname` varchar(64) DEFAULT NULL,
  `preview_picture` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `last_editing` date DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `short_title` varchar(256) DEFAULT NULL,
  `pagetype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_htmlpage_5d52dd10` (`owner_id`),
  CONSTRAINT `owner_id_refs_id_c837a4b9` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_htmlpage`
--

LOCK TABLES `core_htmlpage` WRITE;
/*!40000 ALTER TABLE `core_htmlpage` DISABLE KEYS */;
INSERT INTO `core_htmlpage` VALUES (4,'Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках','Компания автотонус специализируется на бу запчастях для автомобилей Мазда 3 и Мазда 6','        <h1>Разборка Мазда 3 и Мазда 6</h1>\r\n            <hr>\r\n            <p>Вашему автомобилю требуется диагностика, тюнинг,  ремонт или окраска? Автосервис «Химки Моторс» поможет решить эти задачи. Мы  работаем на рынке обслуживания автомобилей уже 9 лет и заслужили прочную  репутацию профессионалов своего дела. Мы гарантируем цены ниже среднерыночных и  безупречный сервис.</p>\r\n            <p><img src=\"/static/images/3decoration.jpg\" height=\"283\" width=\"520\" alt=\"Компания Автотонус\" ></p>\r\n            <p>Почему следует выбрать именно наш сервис, ремонт  авто поручить нашим специалистам? Потому что обращаясь в наш техцентр, вы  получаете следующие преимущества:</p>\r\n            <ul>\r\n                <li>грамотное       исполнение всех работ - в нашем коллективе работают только те, кто       действительно увлечен своей профессией и имеет необходимое образование, а       также опыт. Нужны узкопрофильные специалисты? К вашим услугам самые       опытные мастера, к тому же любящие свое дело и прекрасно разбирающиеся во       всех нюансах;</li>\r\n                <li>низкую цену       всех услуг – мы абсолютно адекватно подходим к вопросу       ценообразования и держим цены ниже среднерыночных, хотя и не являемся       гаражным сервисом. А некоторые виды работ мы выполняем откровенно дешево; </li>\r\n                <li>гарантию на       работу до 6 месяцев - мы уверены в том, что мы делаем, и всегда готовы ответить       за свои действия;</li>\r\n                <li>высокую скорость       исполнения заказов – мы предлагаем самые короткие сроки выполнения работ,       потому наш технический центр работает в конвейерном режиме, а все мастера       – с полной самоотдачей;</li>\r\n                <li>Полный       комплекс услуг – в нашем центре вы сможете решить все задачи, связанные с       ремонтом и диагностикой, окраской и тюнингом любого автомобиля, включая       кузовные и слесарные работы, а также установку дополнительного       оборудования.</li>\r\n            </ul>\r\n            <p>Мы уверены, что обратившись к нам один раз, вы  станете нашим постоянным клиентом, потому что мы не пытаемся экономить в ущерб  вашим интересам. Просто мы знаем, какова стоимость той или иной услуги на самом  деле.<br> Ищете хороший и надежный техцентр в Химках, вбивая в  поисковые системы запрос «автосервис г Химки»? Вы нашли то, что искали! Если  вам нужны действительно адекватные цены в сочетании неизменно высоким сервисом,  наш автосервис на Ленинградке идеально подойдет вам.</p>\r\n        </div>\r\n','index','pictures/3decoration_2.jpg',1,'2012-12-16','2012-12-16',1,'Главная',1),(6,'Тестовая статья','Тестовая статья','<p class=\"font14\">Будущие автомобили</p>\r\n<p><span class=\"font5\">За последнее десятилетие в мире автомобилей произошли огромные изменения. Приоритеты в разработке смещаются от наращивания мощности к экологически чистым   технологиям, которые позволят автомобилям существовать в гармонии с планетой. Давайте заглянем в будущее автомобилестроения и узнаем, какие источники энергии будут использоваться в машинах будущего. </span></p>\r\n<table border=\"0\" cellpadding=\"6pt\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;\"><span class=\"font2\">За 120 лет своей истории автомобиль вобрал в себя множество технологий. Став самым универсальным видом транспорта, он постоянно развивается и распространяется по всему миру. Однако вместе с тем его влияние на окружающую среду становится все сильнее и сильнее. Запасы углеводородного топлива рано или поздно иссякнут, и возникает вопрос, от ответа на который зависит дальнейшая</span> <span class=\"font2\">автомобиля: откуда машины будут черпать энергию завтра?</span></p>\r\n</td>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Примерами могут служить моторы нового поколения Mazda SKY-G и SKY-D, представленные на выставке в Токио в 2009 году. Эти двигатели обладают пониженным механическим сопротивлением и оснащены прямым впрыском топлива, а также регулируемыми фазами газораспределения. Концепт-кар Kiyora с двигателем SKY-G расходует всего 3,1 л топлива на 100 км - это сравнимо с показателями лучших гибридных автомобилей.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<table border=\"0\" cellpadding=\"5pt\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;padding:0pt 3pt 0pt 5pt;\"><span class=\"font2\">Автопроизводители ведут исследования в нескольких направлениях, но пока не находят однозначного ответа на этот вопрос. В этом разделе мы выясним,</span> <span class=\"font2\">какие задачи поят перед ними. Но прежде чем рассматривать новые источники энергии, вернемся к основным этапам эволюции бензиновых и дизельных  двигателей внутреннего сгорания. Хотя есть мнение, что ДВС уже уходит в прошлое, он еще не достиг пика своего развития и наверняка еще долго будет играть важную роль в жизни человека. Сейчас основной задачей конструкторов ДВС является повышение рабочих характеристик при одновременном уменьшении массы и габаритов. </span></p>\r\n<p style=\"text-align:justify;padding:0pt 3pt 0pt 5pt;\"><span class=\"font2\">Производители уверяют что КПД двигателей внутреннего сгорания можно повысить с текущих 25% (бензин) или 30% (дизель) до 35%, а это уже сравнимо показателями гибридных автомобилей.</span></p>\r\n</td>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Ради снижения массы конструкторы уменьшают рабочие объемы двигателей, а недостаток мощности компенсируют с помощью турбонаддува или других усовершенствований. Например, для моделей Volkswagen Golf и Scirocco замена стандартных 2-литровых двигателей на 1,4-литровые моторы с турбонаддувом     снизила расход топлива на 20%. Более того, не так давно концерны Volkswagen, Daihatsu и Fiat один за другим анонсировали новые модели двухцилиндровых двигателей, задав новое направления в развитии малолитражных автомобилей, набирающих популярность в последнее время. Стремление уменьшить габариты и массу становится повсеместным и оказывает влияние даже на такие категории машин, как спорткары и автомобили представительского класса.</span><span style=\"text-align:justify;padding:0pt 0pt 3pt 0pt;\"><span class=\"font2\"> </span></span><span class=\"font2\">Как видите, двигатели внутреннего сгорания рано списывать со счетов. </span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<p><span class=\"font2\"><strong>Эта технология еще послужит человечеству</strong></span></p>\r\n<table border=\"0\" cellpadding=\"6pt\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Когда появились первые ДВС, паровые машины и электродвигатели считались более надежными и перспективными.</span></p>\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Прошло 120 лет. Золотой век ДВС уже позади, и электромобили начинают возвращать себе позиции. В 2009 году Mitsubishi выпустила на японский рынок модель i-MiEV. В это же время Subaru представила свою новую разработку под названием Plug-in Stella, а в 2010 году Nissan должен запустить в производство электромобиль Leaf. Помимо собственно машин стремительно развиваются смежные технологии, ведутся работы над созданием аккумуляторных батарей, способных сделать электромобиль полноценным видом современного транспорта.</span></p>\r\n</td>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Базовая конструкция электромобиля сравнительно проста. Электроэнергия, полученная из внешнего источника, временно запасается в аккумуляторной батарее и питает двигатель, вращение вала которого передается на колеса. В отличие от ДВС электромобилю не требуются сложные узлы вроде радиаторной системы охлаждения или системы подвода воздуха. Типичный современный автомобиль состоит примерно из 20 ООО деталей, и электропривод может существенно уменьшить это число.</span></p>\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Бесспорным лидером среди электромобилей является спортивный Tesla Roadster производства Tesla Motors, впервые появившийся на дорогах в 2008 году.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<table border=\"0\" cellpadding=\"42pt\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;padding:0pt 1pt 0pt 1pt;\"><span class=\"font2\">Возможно, для многих электромобиль все еще ассоциируется с поездками по городу на короткие расстояния, но специалист Tesla приложили огромные усилия, чтобы сделать Roadster полноценной спортивной машиной. Очертания его </span><span class=\"font2\">позаимствованы у Lotus Elise, а дополнительная масса аккумулятора компенсируется снижением веса</span><span style=\"text-decoration: underline;\"> за с</span><span class=\"font2\">чет применения углепластика. Несмотря на 450 килограммовую литий-ионную батарею, общая</span><span class=\"font0\" style=\"font-style:italic;\"> масса</span><span class=\"font2\"> машины на удивление всею 1350 кг. Кроме того, чтобы достичь оптимальной развесовки, </span><span class=\"font3\">аккумулятор ра</span><span class=\"font2\">зместили по центру за сиденьями. Б</span><span class=\"font3\">атарея</span><span class=\"font2\"> автомобиля </span><span class=\"font2\">позволяет развить мощность 215 кВт (около 292 л.с.)</span><span class=\"font3\"><sub>а двигагель.</sub></span><span class=\"font2\"><sub>обеспечивает крутящий момент 370 И м (37,/ кгм), что</sub></span><span class=\"font3\"><sub> эквивалентно</sub></span><span class=\"font2\"><sub> характеристикам</sub></span><span class=\"font3\"><sub> 3,5</sub></span><span class=\"font2\"><sub>- лигровото ЛВС. Скоростные характеристики</sub></span><span class=\"font3\"><sub> тоже</sub></span><span class=\"font2\"><sub> на</sub></span><span class=\"font3\"><sub> высоте</sub></span><span class=\"font2\"><sub> автомобиль разюняется до 100 км/ч за 3,9</sub></span><sub>секунды и развивает максимальную скорость около 200 км/ч. без подзарядки батареи он может проехать примерно 377 км. <span class=\"font2\"> Изделие </span><span class=\"font2\">Tesla - наглядный пример того, что электромобиль может быть эффективным </span><span class=\"font2\">транспортным средством. Тем, кто считает, что для быстрой и комфортной езды </span><span class=\"font2\">необходим бензиновый двигатель, стоит прокатиться на «Родстере», чтобы </span><span class=\"font2\">изменить свое мнение.</span> <span class=\"font2\">Тем не менее электромобили до сих пор</span><span class=\"font2\"> не получили массового признания, в частности, из-за несовершенства аккумуляторов и отсутствия инфраструктуры их подзарядки. Тем не менее соглашение</span><span class=\"font3\"> о</span><span class=\"font2\"> сотрудничестве, подписанное компаниями Tesla Motors и Toyota в 2010 году выглядит многообещающе. Кромер того, многие страны развернули программы внедрения высокотехнологичных </span><span class=\"font2\">\"интеллектуальных электросетей\" Со станциями подзарядки электромобилей</span></sub></p>\r\n<sub> </sub>\r\n<p style=\"text-align:justify;padding:0pt 1pt 0pt 1pt;\"><span style=\"layout-flow:horizontal;\"><sub><img src=\"/images/stories/car_objects/car_object_f4.jpg\" border=\"0\" alt=\"Tesla Roadster\" style=\"width: 100%;\"></sub></span></p>\r\n</td>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;padding:0pt 1pt 21pt 1pt;\"><span class=\"font2\">Компания Subaru начала выпуск этого электромобиля в июне 2009 г. Размер батареи оптимален для поездок по городу; предусмотрена возможность быстрой подзарядки.</span></p>\r\n<div style=\"layout-flow:horizontal;\"><img src=\"/images/stories/car_objects/car_object_f1.jpg\" border=\"0\" style=\"width: 100%;\"></div>\r\n<div style=\"layout-flow:horizontal;\"><img src=\"/images/stories/car_objects/car_object_f2.jpg\" border=\"0\" style=\"width: 100%;\"></div>\r\n<p style=\"text-align:justify;padding:21pt 1pt 0pt 1pt;\"><span class=\"font2\">Этот сравнительно недорогой электромобиль был анонсирован в июне. 2009 года, а его поставки качались месяцем позже. Размещение батареи под         днищем кузова позволило понизить центр тяжести.</span></p>\r\n<p style=\"text-align:justify;padding:21pt 1pt 0pt 1pt;\"><img src=\"/images/stories/car_objects/car_object_f3.jpg\" border=\"0\" alt=\"Nissan Leaf\" style=\"width: 100%;\"></p>\r\n<p style=\"text-align:justify;padding:21pt 1pt 0pt 1pt;\">Nissan Leaf</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<p style=\"padding:0pt 0pt 6pt 8pt;\"><span class=\"font14\">Другие источники «чистой» энергии</span></p>\r\n<p style=\"padding:0pt 0pt 6pt 8pt;\"><span class=\"font5\"><strong>Альтернативное топливо</strong></span></p>\r\n<p><img src=\"/images/stories/car_objects/car_object_f5.jpg\" border=\"0\" style=\"width: 100%;\"></p>\r\n<table border=\"0\" cellpadding=\"6pt\">\r\n<tbody>\r\n<tr>\r\n<td width=\"49%\" valign=\"top\">\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Электричество - только одна из возможных альтернатив углеводородному топливу. Ученые всего мира ищут и другие способы избавления человечества от нефтяной зависимости. Один из них - переход на использование водорода. Конверсия современного ДВС в водородный двигатель не требует особых затрат, поэтому данное направление особенно популярно среди автопроизводителей. В отличие от бензиновых и дизельных моторов водородные двигатели не загрязняют окружающую среду: их выхлоп состоит из водяного пара с небольшой примесью оксидов азота.</span></p>\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Одна из причин популярности концепции водородного двигателя заключается в том, что водород входит в состав воды и множества органических соединений, поэтому его запасы практически неисчерпаемы. Кроме того, энергоемкость водорода выше, чем у других видов горючего, а отработанный водяной пар можно снова превратить в топливо.</span></p>\r\n<p style=\"text-align:justify;\"><span class=\"font2\">Наиболее активные разработки в сфере водородных двигателей ведут компании BMW и Mazda. Начиная с февраля 2007 года Mazda предлагает в аренду</span></p>\r\n</td>\r\n<td width=\"50%\" valign=\"top\">\r\n<p><span class=\"font2\">модификацию RX-8 Hydrogen RE с водородным двигателем. </span></p>\r\n<p><span class=\"font2\">Специалисты BMW </span> <span class=\"font2\" style=\"text-align:justify\">проводят испытания Hydrogen 7 - первого в мире автомобиля, изначально спроектированного под водородное топливо. Mazda использует роторную схему двигателя - благодаря тому, что впрыск и сгорание топлива происходят в разных местах, такая схема обеспечивает более надежную работу. Но и это еще не все. Другое Перспективное применение водорода в качестве источника питания - это топливные элементы, которые выделяют электроэнергию благодаря химической реакции между водородом и кислородом.Поскольку запасы этих элементов неисчерпаемы, а продуктом их реакций является обычная вода, исследования в области топливных элементов ведутся по всему миру. Существует мнение, что машины на такихэлементах вытеснят гибридные, и электрические, и водородные автомобили.     Тем не менее, главный вопрос, на который у специалистов пока нет ответа, - как производить водород в требуемых количествах и где его хранить?</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"1313\">\r\n<p style=\"text-align:left;padding:0pt 0pt 0pt 1pt;\"><span class=\"font1\">Mazda RX-3 Hydrogen RE       Роторный двигатель этой машины может работать как на бензине,       так и на водороде. Машины с такими двигателями уже проходят       испытания в ряде компаний и государственных     организаций Японии.</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align:left;padding:9pt 2pt 9pt 3pt;\"><span class=\"font2\">Наиболее реалистичным сейчас выглядит выделение водорода из природных   газов и его хранение в сжатом виде. Все альтернативные технологии пока   недостаточно проработаны. В связи с этим многие полагают, что широкое распространение водородных источников энергии начнется не раньше 2050 года.</span></p>\r\n<p style=\"text-align:left;padding:9pt 2pt 0pt 3pt;\"><span class=\"font2\">Однако автопроизводители делают все возможное, чтобы приблизить этот момент,многие из них уже анонсировали концепт-кары, работающие на водородных топливных элементах. В частности, работы над моделью FCX Clarity, впервые анонсированной компанией Honda в 2007 году, близки к завершению - экспериментальные образцы уже предоставляются в аренду в Америке и Японии.   Кроме того, рассматривается возможности применения топливных элементов в электромобилях и гибридных системах. Если эти идеи удастся воплотить в жизнь, полноценный автомобиль с таким источником энергии появится очень скоро.</span></p>\r\n<div style=\"layout-flow:horizontal;\">\r\n<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"1321\">\r\n<p style=\"text-align:justify;\"><span class=\"font1\">Идея использования экологически чистого и восполняемого водорода в качестве автомобильного         топлива становится все ближе к воплощению. BMW Hydrogen 7, Mazda RX-8 с водородным         двигателем и машины на топливных элементах - подобные Honda FCX Clarity - заслуживают       самого пристального внимания.</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"/images/stories/car_objects/car_object_f7.jpg\" border=\"0\" style=\"width: 50%;\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div style=\"layout-flow:horizontal;\"><img src=\"/images/stories/car_objects/car_object_f8.jpg\" border=\"0\" style=\"width: 50%;\"></div>\r\n<p style=\"padding:9pt 0pt 0pt 1pt;\"><span class=\"font14\"><a name=\"bookmark2\"></a>Гибриды: качественный скачок</span></p>\r\n<table border=\"0\" cellpadding=\"6pt\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;padding:0pt 0pt 9pt 0pt;\"><span class=\"font2\">В 1997 году Toyota Prius стала первым серийным гибридным автомобилем. Спустя десятилетие гибриды окончательно заняли свою рыночную нишу. Сейчас на рынке гибридных моделей лидируют Toyota Prius и Honda Insight, но в феврале 2010-го Honda выпустила новый гибридный спорткар CR-Z, сочетающий эколотичность и отличные скоростные качества. Тем временем Prius также претерпел ряд усовершенствований - его новые модификации стало можно заряжать от бытовой электрической розетки.</span></p>\r\n<p style=\"text-align:justify;padding:9pt 0pt 0pt 0pt;\"><span class=\"font2\">Остальные автогиганты также не стоят в стороне: Mercedes и BMW уже добавили гибридные модели в свои флагманские линейки S-Class и 7 Series. Их силовые установки интересны тем, что электромотор в них может использоваться не только для экономии топлива, но и для повышения мощности ДВС - в одном из режимов работы он приводит в движение нагнетатель. Скоро на рынке появится гибридный вариант Audi А8 - высокоэкологичный автомобиль представительского класса с четырехцилиндровым двухлитровым турбодвигателем.</span></p>\r\n</td>\r\n<td width=\"50%\" valign=\"top\">\r\n<p style=\"text-align:justify;padding:0pt 2pt 9pt 0pt;\"><span class=\"font2\">Американские гибриды представлены моделью GM Volt. Хотя изначально он создавалась как электромобиль, для увеличения запаса хода конструкция была дополнена обычным бензиновым мотором. На одной зарядке аккумулятора Volt может проехать до 64 км, после чего он переходит в. гибридный режим, подзаряжаясь от генератора, который приводится в действие бензиновым двигателем.</span></p>\r\n<p style=\"text-align:justify;padding:9pt 2pt 0pt 0pt;\"><span class=\"font2\">Волна популярности гибридов затронула даже рынок спорткаров - на Женевской автосалоне в 2010 года компания Porsche анонсировала сразу три гибридных новинки: Cayenne, 911 GT3 Hybrid и 918 Spider. Последняя модель представляет собой спорткар класса люкс, выходящий за рамки традиционных представлений о гибридных машинах. На той же выставке Ferrari представила модель 599 Hybrid, доказав, что гибриды уже прокладывают себе дорогу в мир автоспорта.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<table style=\"width: 100%; height: 276px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\"><img src=\"/images/stories/car_objects/car_object_f9_1.jpg\" border=\"0\" width=\"403\" style=\"width: 100%;\"></td>\r\n<td width=\"50%\">\r\n<p><span class=\"font2\" style=\"text-align:justify\">Модификация Piius Plug-in Hybrid предусматривает       возможность подзарядки аккумулятором       бытовой электрической розетки (слева). </span></p>\r\n<p><span class=\"font2\" style=\"text-align:justify\">Е300 BlueTec Hybrid, дизельный гибрид         производства Mercedes, поступит в продажу в 2011        году (справа).</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img src=\"/images/stories/car_objects/car_object_f9_2.jpg\" border=\"0\" style=\"width: 100%;\"></td>\r\n<td>\r\n<p><span class=\"font2\">Модель CR-Z (слева) выделяется среди гибридных автомобилей отличной динамикой, высокой       управляемостью и стильным дизайном! </span></p>\r\n<p><span class=\"font2\">Двухместный гибрид VWL1 (справа), оснащенный         двухцилиндровым дизельным двигатели         объемом 800 смЗ, обеспечивает сверхнизкий     расход топлива.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div style=\"layout-flow:horizontal;\">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<!-- START of joscomment --><div id=\"comment\">\r\n<a name=\"JOSC_TOP\"></a>\r\n\r\n<table align=\"center\" class=\"sectiontableheader\" id=\"CommentMenu\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n  <tbody><tr>\r\n    <td align=\"left\" class=\"label\">Комментарии</td>\r\n	<td align=\"right\" class=\"buttons\">\r\n	  <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n	    <tbody><tr>\r\n		\r\n		<td class=\"button\"><a id=\"_JOOMLACOMMENT_ADDNEW\" href=\'javascript:JOSC_afterAjaxResponse(\"show\");JOSC_addNew()\'>Добавить новый</a></td>\r\n		\r\n		\r\n		\r\n		<td class=\"button\"><a id=\"_JOOMLACOMMENT_SEARCH\" href=\"javascript:JOSC_searchForm()\">Поиск</a></td>\r\n		\r\n		\r\n	    </tr>\r\n	  </tbody></table>\r\n	</td>\r\n  </tr>\r\n</tbody></table>\r\n\r\n\r\n<div id=\"JOSC_formpos\">\r\n\r\n<form name=\"joomlacommentform\" method=\"post\" action=\"index.php\">\r\n  <a name=\"CommentForm\"></a>\r\n  <input type=\"hidden\" name=\"content_id\" value=\"35\"><input type=\"hidden\" name=\"component\" value=\"\"><input type=\"hidden\" name=\"joscsectionid\" value=\"1\">\r\n  <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"form\">\r\n    <tbody><tr>\r\n      <td colspan=\"2\">\r\n      	<div class=\"sectiontableheader\">\r\n        	<table cellpadding=\"0\" cellspacing=\"0\"><tbody><tr>\r\n        		<td align=\"left\"><a href=\"javascript:JOSC_toogle(\'JOSCSHstretcherFORM\');\"><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/templates/SSlide-emotop/images/new.png\" alt=\"+/-\"></a></td>\r\n        		<td align=\"left\">\r\n        			<div id=\"CommentFormTitle\" align=\"center\">Оставить комментарий</div>\r\n        		</td>        		\r\n        	</tr></tbody></table>\r\n        </div>\r\n      </td>\r\n    </tr>\r\n    <tr><td>    \r\n   <table align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" id=\"JOSCSHstretcherFORM\" style=\"visibility: hidden; display: none; \">    \r\n    <tbody><tr class=\"sectiontableentry1\">\r\n      <td><div class=\"item\">Имя:</div></td>\r\n      <td><div class=\"item\">\r\n          <input name=\"tname\" type=\"text\" class=\"inputbox\" size=\"40\" value=\"\">\r\n        </div></td>\r\n    </tr>\r\n    \r\n    <tr class=\"sectiontableentry1\">\r\n      <td><div class=\"item\">Email:</div></td>\r\n      <td><div class=\"item\">\r\n          <input name=\"temail\" type=\"text\" class=\"inputbox\" size=\"30\" value=\"\">\r\n          &nbsp;<select name=\"tnotify\" class=\"inputbox\"><option value=\"0\" selected=\"selected\">не уведомлять</option><option value=\"1\">уведомлять</option></select>\r\n        </div></td>\r\n    </tr>\r\n    \r\n    \r\n    <tr class=\"sectiontableentry1\">\r\n      <td><div class=\"item\">Тема:</div></td>\r\n      <td><div class=\"item\">\r\n          <input name=\"ttitle\" type=\"text\" class=\"inputbox\" size=\"40\">\r\n        </div></td>\r\n    </tr>\r\n    \r\n    <tr id=\"CommentToolbar\" class=\"sectiontableentry2\">\r\n      <td><div class=\"item\">UBB-Код:</div></td>\r\n      <td><div class=\"buttoncontainer\">\r\n          <div style=\"float: left;\"> <a href=\'javascript:JOSC_insertUBBTag(\"b\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/images/ubb_bold.gif\" class=\"buttonBB\" name=\"bb\" alt=\"[b]\"></a>&nbsp;<a href=\'javascript:JOSC_insertUBBTag(\"i\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/images/ubb_italicize.gif\" class=\"buttonBB\" name=\"bi\" alt=\"[i]\"></a>&nbsp;<a href=\'javascript:JOSC_insertUBBTag(\"u\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/images/ubb_underline.gif\" class=\"buttonBB\" name=\"bu\" alt=\"[u]\"></a>&nbsp;<a href=\'javascript:JOSC_insertUBBTag(\"url\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/images/ubb_url.gif\" class=\"buttonBB\" name=\"burl\" alt=\"[url]\"></a>&nbsp;<a href=\'javascript:JOSC_insertUBBTag(\"quote\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/images/ubb_quote.gif\" class=\"buttonBB\" name=\"bquote\" alt=\"[quote]\"></a>&nbsp;<a href=\'javascript:JOSC_insertUBBTag(\"code\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/images/ubb_code.gif\" class=\"buttonBB\" name=\"bcode\" alt=\"[code]\"></a>&nbsp;<a href=\'javascript:JOSC_insertUBBTag(\"img\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/images/ubb_image.gif\" class=\"buttonBB\" name=\"bimg\" alt=\"[img]\"></a>&nbsp; </div>\r\n          <div style=\"float: left;\"> <select name=\"menuColor\" class=\"select\" onchange=\"JOSC_fontColor()\"><option>-цвет-</option><option>aqua</option><option>black</option><option>blue</option><option>fuchsia</option><option>gray</option><option>green</option><option>lime</option><option>maroon</option><option>navy</option><option>olive</option><option>purple</option><option>red</option><option>silver</option><option>teal</option><option>white</option><option>yellow</option></select>&nbsp;<select name=\"menuSize\" class=\"select\" onchange=\"JOSC_fontSize()\"><option>-размер-</option><option>крошечный</option><option>маленький</option><option>средний</option><option>большой</option><option>огромный</option></select> </div>\r\n        </div></td>\r\n    </tr>\r\n    \r\n    \r\n    <tr class=\"sectiontableentry1\">\r\n      <td>&nbsp;</td>\r\n      <td valign=\"middle\"><div><div class=\"emoticoncontainer\"><div class=\"emoticonseparator\"></div><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":angry:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/angry-grey.png\" border=\"0\" alt=\":angry:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":0\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/blink-grey.png\" border=\"0\" alt=\":0\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":confused:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/blush-grey.png\" border=\"0\" alt=\":confused:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":cheer:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/cheerful-grey.png\" border=\"0\" alt=\":cheer:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\"B)\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/cool-grey.png\" border=\"0\" alt=\"B)\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":evil:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/devil-grey.png\" border=\"0\" alt=\":evil:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":silly:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/silly-grey.png\" border=\"0\" alt=\":silly:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":dry:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/ermm-grey.png\" border=\"0\" alt=\":dry:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":lol:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/grin-grey.png\" border=\"0\" alt=\":lol:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":kiss:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/kissing-grey.png\" border=\"0\" alt=\":kiss:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":D\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/laughing-grey.png\" border=\"0\" alt=\":D\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":pinch:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/pinch-grey.png\" border=\"0\" alt=\":pinch:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":(\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/sad-grey.png\" border=\"0\" alt=\":(\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":shock:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/shocked-grey.png\" border=\"0\" alt=\":shock:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":X\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/sick-grey.png\" border=\"0\" alt=\":X\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":side:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/sideways-grey.png\" border=\"0\" alt=\":side:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":)\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/smile-grey.png\" border=\"0\" alt=\":)\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":P\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/tongue-grey.png\" border=\"0\" alt=\":P\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":unsure:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/unsure-grey.png\" border=\"0\" alt=\":unsure:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":woohoo:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/w00t-grey.png\" border=\"0\" alt=\":woohoo:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":huh:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/wassat-grey.png\" border=\"0\" alt=\":huh:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":whistle:\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/whistling-grey.png\" border=\"0\" alt=\":whistle:\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\";)\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/wink-grey.png\" border=\"0\" alt=\";)\"></a></span></span><span class=\"emoticonseparator\"><span class=\"emoticon\"><a href=\'javascript:JOSC_emoticon(\":s\")\'><img src=\"http://www.avtotonus.ru/components/com_comment/joscomment/emoticons/funny-grey/images/dizzy-grey.png\" border=\"0\" alt=\":s\"></a></span></span><div class=\"emoticonseparator\"></div></div></div></td>\r\n    </tr>\r\n    \r\n    <tr class=\"sectiontableentry1\">\r\n      <td>&nbsp;</td>\r\n      <td><div class=\"item\">\r\n          <textarea name=\"tcomment\" class=\"inputbox\" cols=\"40\" rows=\"10\"></textarea>\r\n        </div></td>\r\n    </tr>\r\n    <tr>\r\n      <td class=\"sectiontableentry2\">\r\n	  <table class=\"buttoncontainer\" cellpadding=\"0\" cellspacing=\"0\">\r\n        <tbody><tr>\r\n          <td><input type=\"button\" class=\"button\" name=\"bsend\" value=\"Отправить\" onclick=\"JOSC_editPost(-1,-1)\"></td>\r\n          <td id=\"JOSC_busy\"></td>\r\n        </tr>\r\n      </tbody></table>\r\n      </td>\r\n      <td class=\"sectiontableentry2\">\r\n      \r\n      </td>\r\n    </tr>\r\n    \r\n  </tbody></table>\r\n  </td></tr>\r\n  </tbody></table>\r\n<script type=\"text/javascript\">\r\n	function JOSC_afterAjaxResponse(action) {\r\n		switch(action) {\r\n			case \'show\':\r\n			case \'response_reply\':\r\n			case \'response_edit\':\r\n			case \'response_quote\':\r\n				JOSC_ShowHide(\'\',\'JOSCSHstretcherFORM\',\'\'); /* open */\r\n				return 0;\r\n				break;\r\n			\r\n			case \'hide\':\r\n			case \'response_editpost\':\r\n			case \'response_posted\':\r\n			case \'response_approval\':\r\n		    	JOSC_ShowHide(\'\',\'\',\"JOSCSHstretcherFORM\"); /* hide */\r\n				return 0;\r\n				break;\r\n			default:\r\n				return 0;\r\n		}\r\n	}\r\n	if (window.document.URL.indexOf(\"#CommentForm\")<0)\r\n    	JOSC_afterAjaxResponse(\"hide\");\r\n</script>    \r\n</form>\r\n\r\n</div>\r\n\r\n<table align=\"center\" id=\"CommentPageNav\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n<tbody><tr><td>\r\n<div id=\"joscPageNav\"></div>\r\n</td><td id=\"JOSC_busypage\"></td></tr>\r\n</tbody></table>\r\n\r\n<div id=\"Comments\">\r\n<script type=\"text/javascript\"> var JOSC_postCSS=1;</script></div>\r\n\r\n\r\n<h4 style=\"display:none;\">3.26 Copyright (C) 2008 Compojoom.com / Copyright (C) 2007 Alain Georgette / Copyright (C) 2006 Frantisek Hliva. All rights reserved.\"</h4></div>\r\n<script type=\"text/javascript\">\r\nvar JOSC_ajaxEnabled=1;if (!JOSC_http) JOSC_ajaxEnabled=false;var JOSC_sortDownward=\'1\';var JOSC_captchaEnabled=false;var JOSC_template=\'http://www.avtotonus.ru/components/com_comment/joscomment/templates/SSlide-emotop\';var JOSC_liveSite=\'http://www.avtotonus.ru/components/com_comment/joscomment\';var JOSC_ConfigLiveSite=\'http://www.avtotonus.ru\';var JOSC_linkToContent=\'http://www.avtotonus.ru/tuning-i-regulirovka/35-dvigateli-i-avtomobili-buduschego.html\';var JOSC_autopublish=\'1\';\r\n</script>\r\n','6_testovaya_statya','',1,'2012-12-16','2012-12-16',1,'Тест',1),(7,'Мазда','Разборка автомобилей Мазда. Настоящее японское качество, отличное качество запчастей','Разборка автомобилей Мазда. Настоящее японское качество, отличное качество запчастей','None_mazda','pictures/mazda3-engine-undefined-climate-gallery_7_1.jpg',1,'2012-12-17','2012-12-17',1,'Мазда',2),(8,'Мазда 3','Мазда 3','Мазда 3','8_mazda_3','',1,'2012-12-17','2012-12-17',1,'Мазда 3',2),(9,'Мазда 6','Мазда 6','Мазда 6','9_mazda_6','',1,'2012-12-17','2012-12-17',1,'Мазда 6',2),(10,'Кузовные детали','Кузовные детали','Кузовные детали','10_kuzovnye_detali','',1,'2012-12-17','2012-12-17',1,'Кузовные детали',1),(11,'Детали салона','Детали салона','Детали салона','11_detali_salona','',1,'2012-12-17','2012-12-17',1,'Детали салона',1),(13,'Ходовая часть','Ходовая часть','Ходовая часть','13_hodovaya_chast','',1,'2012-12-17','2012-12-17',1,'Ходовая часть',1);
/*!40000 ALTER TABLE `core_htmlpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_manufacture`
--

DROP TABLE IF EXISTS `core_manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_manufacture` (
  `htmlpage_ptr_id` int(11) NOT NULL,
  `en_title` varchar(64) NOT NULL,
  PRIMARY KEY (`htmlpage_ptr_id`),
  CONSTRAINT `htmlpage_ptr_id_refs_id_43744747` FOREIGN KEY (`htmlpage_ptr_id`) REFERENCES `core_htmlpage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_manufacture`
--

LOCK TABLES `core_manufacture` WRITE;
/*!40000 ALTER TABLE `core_manufacture` DISABLE KEYS */;
INSERT INTO `core_manufacture` VALUES (7,'Mazda');
/*!40000 ALTER TABLE `core_manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_modification`
--

DROP TABLE IF EXISTS `core_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_modification` (
  `htmlpage_ptr_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `en_title` varchar(150) NOT NULL,
  `body_type` int(11) NOT NULL,
  `from_year` int(11) DEFAULT NULL,
  `to_year` int(11) DEFAULT NULL,
  `transmission` int(11) DEFAULT NULL,
  `engine_size` int(11) DEFAULT NULL,
  `car_power` int(11) DEFAULT NULL,
  `equipment` int(11) DEFAULT NULL,
  PRIMARY KEY (`htmlpage_ptr_id`),
  KEY `core_modification_e1b89384` (`manufacture_id`),
  KEY `core_modification_aff30766` (`model_id`),
  CONSTRAINT `htmlpage_ptr_id_refs_id_77662f9d` FOREIGN KEY (`htmlpage_ptr_id`) REFERENCES `core_htmlpage` (`id`),
  CONSTRAINT `manufacture_id_refs_htmlpage_ptr_id_54c6f969` FOREIGN KEY (`manufacture_id`) REFERENCES `core_manufacture` (`htmlpage_ptr_id`),
  CONSTRAINT `model_id_refs_htmlpage_ptr_id_7a5376f5` FOREIGN KEY (`model_id`) REFERENCES `core_carmodel` (`htmlpage_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_modification`
--

LOCK TABLES `core_modification` WRITE;
/*!40000 ALTER TABLE `core_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_modificationpicture`
--

DROP TABLE IF EXISTS `core_modificationpicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_modificationpicture` (
  `picture_ptr_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`picture_ptr_id`),
  KEY `core_modificationpicture_6f479607` (`car_id`),
  CONSTRAINT `car_id_refs_htmlpage_ptr_id_31574456` FOREIGN KEY (`car_id`) REFERENCES `core_modification` (`htmlpage_ptr_id`),
  CONSTRAINT `picture_ptr_id_refs_id_d58d6061` FOREIGN KEY (`picture_ptr_id`) REFERENCES `core_picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_modificationpicture`
--

LOCK TABLES `core_modificationpicture` WRITE;
/*!40000 ALTER TABLE `core_modificationpicture` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_modificationpicture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_parts`
--

DROP TABLE IF EXISTS `core_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_parts` (
  `htmlpage_ptr_id` int(11) NOT NULL,
  `code` varchar(128) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `used_price_min` double DEFAULT NULL,
  `used_price_max` double DEFAULT NULL,
  PRIMARY KEY (`htmlpage_ptr_id`),
  CONSTRAINT `htmlpage_ptr_id_refs_id_4a2ce162` FOREIGN KEY (`htmlpage_ptr_id`) REFERENCES `core_htmlpage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_parts`
--

LOCK TABLES `core_parts` WRITE;
/*!40000 ALTER TABLE `core_parts` DISABLE KEYS */;
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
  CONSTRAINT `parts_id_refs_htmlpage_ptr_id_6689245d` FOREIGN KEY (`parts_id`) REFERENCES `core_parts` (`htmlpage_ptr_id`),
  CONSTRAINT `partsgroup_id_refs_htmlpage_ptr_id_78c5fa61` FOREIGN KEY (`partsgroup_id`) REFERENCES `core_partsgroup` (`htmlpage_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_parts_group`
--

LOCK TABLES `core_parts_group` WRITE;
/*!40000 ALTER TABLE `core_parts_group` DISABLE KEYS */;
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
  CONSTRAINT `parts_id_refs_htmlpage_ptr_id_231e2cff` FOREIGN KEY (`parts_id`) REFERENCES `core_parts` (`htmlpage_ptr_id`),
  CONSTRAINT `modification_id_refs_htmlpage_ptr_id_f338a766` FOREIGN KEY (`modification_id`) REFERENCES `core_modification` (`htmlpage_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_parts_modification`
--

LOCK TABLES `core_parts_modification` WRITE;
/*!40000 ALTER TABLE `core_parts_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_parts_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_partsalias`
--

DROP TABLE IF EXISTS `core_partsalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_partsalias` (
  `alias_ptr_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`alias_ptr_id`),
  KEY `core_partsalias_6f479607` (`car_id`),
  CONSTRAINT `car_id_refs_htmlpage_ptr_id_a780489a` FOREIGN KEY (`car_id`) REFERENCES `core_parts` (`htmlpage_ptr_id`),
  CONSTRAINT `alias_ptr_id_refs_id_a476e8c0` FOREIGN KEY (`alias_ptr_id`) REFERENCES `core_alias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_partsalias`
--

LOCK TABLES `core_partsalias` WRITE;
/*!40000 ALTER TABLE `core_partsalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_partsalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_partsgroup`
--

DROP TABLE IF EXISTS `core_partsgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_partsgroup` (
  `htmlpage_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`htmlpage_ptr_id`),
  CONSTRAINT `htmlpage_ptr_id_refs_id_a4efe32` FOREIGN KEY (`htmlpage_ptr_id`) REFERENCES `core_htmlpage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_partsgroup`
--

LOCK TABLES `core_partsgroup` WRITE;
/*!40000 ALTER TABLE `core_partsgroup` DISABLE KEYS */;
INSERT INTO `core_partsgroup` VALUES (10),(11),(13);
/*!40000 ALTER TABLE `core_partsgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_partspicture`
--

DROP TABLE IF EXISTS `core_partspicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_partspicture` (
  `picture_ptr_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`picture_ptr_id`),
  KEY `core_partspicture_6f479607` (`car_id`),
  CONSTRAINT `car_id_refs_htmlpage_ptr_id_9a43147e` FOREIGN KEY (`car_id`) REFERENCES `core_parts` (`htmlpage_ptr_id`),
  CONSTRAINT `picture_ptr_id_refs_id_98f4c0` FOREIGN KEY (`picture_ptr_id`) REFERENCES `core_picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_partspicture`
--

LOCK TABLES `core_partspicture` WRITE;
/*!40000 ALTER TABLE `core_partspicture` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_partspicture` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_picture`
--

LOCK TABLES `core_picture` WRITE;
/*!40000 ALTER TABLE `core_picture` DISABLE KEYS */;
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
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (4,'2012-12-16 10:22:37',1,10,'4','Главная',1,''),(5,'2012-12-16 10:22:50',1,10,'5','ава',1,''),(6,'2012-12-16 10:23:00',1,10,'5','ава',3,''),(7,'2012-12-16 10:29:00',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен title,description,body,preview_picture и urlname.'),(8,'2012-12-16 10:33:17',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен body.'),(9,'2012-12-16 11:36:39',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен body.'),(10,'2012-12-16 19:34:43',1,10,'6','Тестовая статья',1,''),(11,'2012-12-16 20:37:56',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен short_title.'),(12,'2012-12-16 20:38:04',1,10,'6','Тестовая статья',2,'Изменен short_title.'),(13,'2012-12-16 22:14:10',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен pagetype.'),(14,'2012-12-16 22:14:13',1,10,'6','Тестовая статья',2,'Изменен pagetype.'),(15,'2012-12-16 22:21:35',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Ни одно поле не изменено.'),(16,'2012-12-17 01:23:31',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен urlname.'),(17,'2012-12-17 01:23:58',1,10,'4','Автотонус  разборка мазда 3 и мазда 6 в Москве и Химках',2,'Изменен urlname.'),(18,'2012-12-17 01:24:04',1,10,'6','Тестовая статья',2,'Изменен urlname.'),(19,'2012-12-17 01:32:16',1,11,'7','Mazda',1,''),(20,'2012-12-17 01:33:11',1,20,'8','Mazda 3',1,''),(21,'2012-12-17 01:33:43',1,20,'9','Mazda 6',1,''),(22,'2012-12-17 01:39:34',1,15,'10','Кузовные детали',1,''),(23,'2012-12-17 01:39:54',1,15,'11','Детали салона',1,''),(24,'2012-12-17 01:41:34',1,15,'10','Кузовные детали',2,'Изменен urlname.'),(25,'2012-12-17 01:41:44',1,15,'11','Детали салона',2,'Изменен urlname.'),(26,'2012-12-17 01:49:46',1,15,'11','Детали салона',2,'Изменен urlname.'),(27,'2012-12-17 01:49:51',1,15,'11','Детали салона',2,'Изменен urlname.'),(28,'2012-12-17 01:49:55',1,15,'11','Детали салона',2,'Изменен urlname.'),(29,'2012-12-17 01:50:33',1,15,'12','Ходовая часть',1,''),(30,'2012-12-17 01:51:39',1,15,'12','Ходовая часть',3,''),(31,'2012-12-17 01:51:56',1,15,'13','Ходовая часть',1,''),(32,'2012-12-17 01:52:11',1,15,'13','Ходовая часть',2,'Изменен urlname.'),(33,'2012-12-17 01:52:13',1,15,'13','Ходовая часть',2,'Ни одно поле не изменено.'),(34,'2012-12-17 01:52:18',1,15,'13','Ходовая часть',2,'Изменен urlname.'),(35,'2012-12-17 17:03:37',1,15,'10','Кузовные детали',2,'Ни одно поле не изменено.'),(36,'2012-12-17 17:03:41',1,15,'11','Детали салона',2,'Ни одно поле не изменено.'),(37,'2012-12-17 17:07:16',1,20,'8','Mazda 3',2,'Изменен urlname.'),(38,'2012-12-17 17:07:22',1,20,'9','Mazda 6',2,'Изменен urlname.');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'Изображение','core','picture'),(9,'Страница сайта','core','htmlpage'),(10,'Статья','core','article'),(11,'Марка автомобиля','core','manufacture'),(13,'Модификация модели автомобиля','core','modification'),(14,'Фото модификации','core','modificationpicture'),(15,'Группа запчастей','core','partsgroup'),(16,'Псевдоним','core','alias'),(17,'Автозапчасть','core','parts'),(18,'Псевдоним запчасти','core','partsalias'),(19,'Фото запчасти','core','partspicture'),(20,'Модель автомобиля','core','carmodel');
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
INSERT INTO `django_session` VALUES ('8bf30c73bd310413d06980438361e1d9','OTVhNjU1NmEzZGNlYWQ2NDk4MDE4YjVhY2Q0MjIwZDY1MWVjNDhiMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-30 10:10:45');
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

-- Dump completed on 2012-12-18  1:55:52
