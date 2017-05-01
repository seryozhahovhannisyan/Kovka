/*
SQLyog Community v12.4.1 (64 bit)
MySQL - 5.7.17-log : Database - kovka
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kovka` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `kovka`;

/*Table structure for table `a_user` */

DROP TABLE IF EXISTS `a_user`;

CREATE TABLE `a_user` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `surname` varchar(64) COLLATE utf8_bin NOT NULL,
  `password` varchar(256) COLLATE utf8_bin NOT NULL,
  `email` varchar(64) COLLATE utf8_bin NOT NULL,
  `phone_code` varchar(3) COLLATE utf8_bin NOT NULL,
  `phone` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `a_user` */

insert  into `a_user`(`id`,`username`,`name`,`surname`,`password`,`email`,`phone_code`,`phone`) values 
(1,'admin','Seryozha','Hovhannisyan','c4ca4238a0b923820dcc509a6f75849b','1','374','93787377');

/*Table structure for table `about` */

DROP TABLE IF EXISTS `about`;

CREATE TABLE `about` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `coords` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `emails` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `phones` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `about` */

insert  into `about`(`id`,`coords`,`emails`,`phones`) values 
(2,'40.177200,44.503490','seryozha.hovhannisyan@gmail.com','37493787377,37441658595');

/*Table structure for table `about_info` */

DROP TABLE IF EXISTS `about_info`;

CREATE TABLE `about_info` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `about_id` int(15) unsigned DEFAULT NULL,
  `lang` int(1) unsigned DEFAULT NULL,
  `address` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `short_desc` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `FK_a_info_s` (`about_id`),
  KEY `FK_about_info_l` (`lang`),
  CONSTRAINT `FK_a_info_s` FOREIGN KEY (`about_id`) REFERENCES `about` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_about_info_l` FOREIGN KEY (`lang`) REFERENCES `g_language_lcp` (`value`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `about_info` */

insert  into `about_info`(`id`,`about_id`,`lang`,`address`,`short_desc`,`title`,`description`) values 
(9,2,1,'109390 г.Москва, ул. 1-я Текстильщиков д. 12/9 офис 2222',NULL,'Общество с ограниченной ответственностью «Техпромстрой»','«Желдор Ковка» была организована в 2007 году и располагает собственными мощностями, строительными материалами и оборудованием в Железнодорожном Московской области, а так же высококвалифицированными как ИТР, так и рабочими для производства работ. Основная специализация нашего производства —  ковка различных художественных изделий, комплексный капитальный ремонт и реконструкция многоквартирных жилых домов, детских дошкольных учреждений, общеобразовательных школ, больниц и поликлиник.'),
(10,2,2,'109390 г.Москва, ул. 1-я Текстильщиков д. 12/9 офис 2333',NULL,'Общество с ограниченной ответственностью «Техпромстрой»','«Желдор Ковка» была организована в 2007 году и располагает собственными мощностями, строительными материалами и оборудованием в Железнодорожном Московской области, а так же высококвалифицированными как ИТР, так и рабочими для производства работ. Основная специализация нашего производства —  ковка различных художественных изделий, комплексный капитальный ремонт и реконструкция многоквартирных жилых домов, детских дошкольных учреждений, общеобразовательных школ, больниц и поликлиник.'),
(11,2,3,'109390 г.Москва, ул. 1-я Текстильщиков д. 12/9 офис 2444',NULL,'Общество с ограниченной ответственностью «Техпромстрой»','«Желдор Ковка» была организована в 2007 году и располагает собственными мощностями, строительными материалами и оборудованием в Железнодорожном Московской области, а так же высококвалифицированными как ИТР, так и рабочими для производства работ. Основная специализация нашего производства —  ковка различных художественных изделий, комплексный капитальный ремонт и реконструкция многоквартирных жилых домов, детских дошкольных учреждений, общеобразовательных школ, больниц и поликлиник.'),
(12,2,6,'109390 г.Москва, ул. 1-я Текстильщиков д. 12/9 офис 2555',NULL,'Общество с ограниченной ответственностью «Техпромстрой»','«Желдор Ковка» была организована в 2007 году и располагает собственными мощностями, строительными материалами и оборудованием в Железнодорожном Московской области, а так же высококвалифицированными как ИТР, так и рабочими для производства работ. Основная специализация нашего производства —  ковка различных художественных изделий, комплексный капитальный ремонт и реконструкция многоквартирных жилых домов, детских дошкольных учреждений, общеобразовательных школ, больниц и поликлиник.');

/*Table structure for table `f_data` */

DROP TABLE IF EXISTS `f_data`;

CREATE TABLE `f_data` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(256) COLLATE utf8_bin NOT NULL,
  `content_type` varchar(256) COLLATE utf8_bin NOT NULL,
  `size` int(15) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `status` int(1) unsigned NOT NULL,
  `order` int(8) unsigned DEFAULT NULL,
  `sketch_id` int(15) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f_data_s` (`sketch_id`),
  CONSTRAINT `FK_f_data_s` FOREIGN KEY (`sketch_id`) REFERENCES `sketch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `f_data` */

insert  into `f_data`(`id`,`file_name`,`content_type`,`size`,`creation_date`,`status`,`order`,`sketch_id`) values 
(1,'sketch_1.jpg','image/jpeg',27114,'2017-04-22 22:00:39',1,0,1),
(2,'sketch_2.jpg','image/jpeg',18819,'2017-04-22 22:00:39',1,0,1),
(3,'sketch_3.jpg','image/jpeg',22404,'2017-04-22 22:00:39',1,0,1),
(4,'sketch_4.jpg','image/jpeg',25436,'2017-04-22 22:00:39',1,0,1),
(5,'sketch_5.jpg','image/jpeg',24531,'2017-04-22 22:00:39',1,0,1),
(6,'sketch_6.jpg','image/jpeg',20984,'2017-04-22 22:00:39',1,0,1),
(7,'sketch_7.jpg','image/jpeg',15540,'2017-04-22 22:00:40',1,0,1),
(8,'sketch_8.jpg','image/jpeg',27741,'2017-04-22 22:00:40',1,0,1),
(9,'sketch_9.jpg','image/jpeg',16532,'2017-04-22 22:00:40',1,0,1),
(10,'sketch_10.jpg','image/jpeg',26542,'2017-04-22 22:00:40',1,0,1),
(11,'sketch_11.jpg','image/jpeg',13874,'2017-04-22 22:01:22',1,0,2),
(12,'sketch_12.jpg','image/jpeg',12267,'2017-04-22 22:01:22',1,0,2),
(13,'sketch_13.jpg','image/jpeg',11917,'2017-04-22 22:01:22',1,0,2),
(14,'sketch_14.jpg','image/jpeg',11196,'2017-04-22 22:01:22',1,0,2),
(15,'sketch_15.jpg','image/jpeg',14744,'2017-04-22 22:01:22',1,0,2),
(16,'sketch_16.jpg','image/jpeg',14787,'2017-04-22 22:01:22',1,0,2),
(17,'product_17.jpg','image/jpeg',19257,'2017-04-22 22:27:43',1,0,NULL),
(18,'product_18.jpg','image/jpeg',24034,'2017-04-22 22:27:43',1,0,NULL),
(19,'product_19.jpg','image/jpeg',23691,'2017-04-22 22:27:43',1,0,NULL),
(20,'product_20.jpg','image/jpeg',20363,'2017-04-22 22:27:43',1,0,NULL),
(21,'product_21.jpg','image/jpeg',18025,'2017-04-22 22:27:44',1,0,NULL),
(22,'product_22.jpg','image/jpeg',15454,'2017-04-22 22:27:44',1,0,NULL),
(23,'product_23.jpg','image/jpeg',18278,'2017-04-22 22:27:45',1,0,NULL),
(24,'product_24.jpg','image/jpeg',18580,'2017-04-22 22:27:47',1,0,NULL),
(25,'product_25.jpg','image/jpeg',19729,'2017-04-22 22:27:49',1,0,NULL),
(26,'product_26.jpg','image/jpeg',18403,'2017-04-22 22:27:51',1,0,NULL),
(27,'product_27.jpg','image/jpeg',14990,'2017-04-22 22:27:53',1,0,NULL),
(28,'product_28.jpg','image/jpeg',23360,'2017-04-22 22:27:53',1,0,NULL),
(29,'product_29.jpg','image/jpeg',17753,'2017-04-22 22:27:53',1,0,NULL),
(30,'product_30.jpg','image/jpeg',18571,'2017-04-22 22:27:53',1,0,NULL),
(31,'product_31.jpg','image/jpeg',16382,'2017-04-22 22:27:53',1,0,NULL),
(32,'product_32.jpg','image/jpeg',19009,'2017-04-22 22:27:54',1,0,NULL),
(33,'product_33.jpg','image/jpeg',26306,'2017-04-22 22:27:54',1,0,NULL),
(34,'product_34.jpg','image/jpeg',18381,'2017-04-22 22:27:54',1,0,NULL),
(35,'product_35.jpg','image/jpeg',22097,'2017-04-22 22:27:54',1,0,NULL),
(36,'product_36.jpg','image/jpeg',25074,'2017-04-22 22:27:54',1,0,NULL),
(37,'product_37.jpg','image/jpeg',27481,'2017-04-22 22:27:54',1,0,NULL),
(38,'product_38.jpg','image/jpeg',28401,'2017-04-22 22:27:55',1,0,NULL),
(39,'product_39.jpg','image/jpeg',18995,'2017-04-22 22:27:55',1,0,NULL),
(40,'product_40.jpg','image/jpeg',30039,'2017-04-22 22:27:55',1,0,NULL),
(41,'product_41.jpg','image/jpeg',21420,'2017-04-22 22:27:55',1,0,NULL),
(42,'product_42.jpg','image/jpeg',24577,'2017-04-22 22:27:55',1,0,NULL),
(43,'product_43.jpg','image/jpeg',27965,'2017-04-22 22:27:55',1,0,NULL),
(44,'product_44.jpg','image/jpeg',20415,'2017-04-22 22:27:55',1,0,NULL),
(45,'product_45.jpg','image/jpeg',17704,'2017-04-22 22:27:56',1,0,NULL),
(46,'product_46.jpg','image/jpeg',15520,'2017-04-22 22:27:56',1,0,NULL),
(47,'product_47.jpg','image/jpeg',13668,'2017-04-22 22:27:56',1,0,NULL),
(48,'product_48.jpg','image/jpeg',17212,'2017-04-22 22:27:56',1,0,NULL),
(49,'product_49.jpg','image/jpeg',17531,'2017-04-22 22:27:56',1,0,NULL),
(50,'product_50.jpg','image/jpeg',19883,'2017-04-22 22:27:56',1,0,NULL),
(51,'product_51.jpg','image/jpeg',20770,'2017-04-22 22:27:56',1,0,NULL),
(52,'product_52.jpg','image/jpeg',15358,'2017-04-22 22:27:56',1,0,NULL),
(53,'product_53.jpg','image/jpeg',19211,'2017-04-22 22:27:57',1,0,NULL),
(54,'product_54.jpg','image/jpeg',15936,'2017-04-22 22:27:57',1,0,NULL),
(55,'product_55.jpg','image/jpeg',24618,'2017-04-22 22:27:57',1,0,NULL),
(56,'product_56.jpg','image/jpeg',23674,'2017-04-22 22:27:57',1,0,NULL),
(57,'product_57.jpg','image/jpeg',20083,'2017-04-22 22:27:57',1,0,NULL),
(58,'product_58.jpg','image/jpeg',26452,'2017-04-22 22:27:57',1,0,NULL),
(59,'product_59.jpg','image/jpeg',17197,'2017-04-22 22:33:03',1,0,NULL),
(60,'product_60.jpg','image/jpeg',20797,'2017-04-22 22:33:03',1,0,NULL),
(61,'product_61.jpg','image/jpeg',19476,'2017-04-22 22:33:03',1,0,NULL),
(62,'product_62.jpg','image/jpeg',18887,'2017-04-22 22:33:03',1,0,NULL),
(63,'product_63.jpg','image/jpeg',17254,'2017-04-22 22:33:03',1,0,NULL),
(64,'product_64.jpg','image/jpeg',15967,'2017-04-22 22:33:03',1,0,NULL),
(65,'product_65.jpg','image/jpeg',24615,'2017-04-22 22:33:03',1,0,NULL),
(66,'product_66.jpg','image/jpeg',22036,'2017-04-22 22:33:04',1,0,NULL),
(67,'product_67.jpg','image/jpeg',21123,'2017-04-22 22:33:04',1,0,NULL),
(68,'product_68.jpg','image/jpeg',22329,'2017-04-22 22:33:04',1,0,NULL),
(69,'product_69.jpg','image/jpeg',22870,'2017-04-22 22:33:04',1,0,NULL),
(70,'product_70.jpg','image/jpeg',20212,'2017-04-22 22:33:04',1,0,NULL),
(71,'product_71.jpg','image/jpeg',19175,'2017-04-22 22:33:04',1,0,NULL),
(72,'product_72.jpg','image/jpeg',19441,'2017-04-22 22:33:04',1,0,NULL),
(73,'product_73.jpg','image/jpeg',22499,'2017-04-22 22:33:04',1,0,NULL),
(74,'product_74.jpg','image/jpeg',25118,'2017-04-22 22:33:05',1,0,NULL),
(75,'product_75.jpg','image/jpeg',22285,'2017-04-22 22:33:05',1,0,NULL),
(76,'product_76.jpg','image/jpeg',20484,'2017-04-22 22:33:05',1,0,NULL),
(77,'product_77.jpg','image/jpeg',20431,'2017-04-22 22:33:05',1,0,NULL),
(78,'product_78.jpg','image/jpeg',22467,'2017-04-22 22:33:05',1,0,NULL),
(79,'product_79.jpg','image/jpeg',23634,'2017-04-22 22:33:05',1,0,NULL),
(80,'product_80.jpg','image/jpeg',22036,'2017-04-22 22:33:05',1,0,NULL),
(81,'product_81.jpg','image/jpeg',22870,'2017-04-22 22:33:05',1,0,NULL),
(82,'product_82.jpg','image/jpeg',24615,'2017-04-22 22:33:05',1,0,NULL),
(83,'product_83.jpg','image/jpeg',21123,'2017-04-22 22:33:06',1,0,NULL),
(84,'product_84.jpg','image/jpeg',20491,'2017-04-22 22:33:06',1,0,NULL),
(85,'product_85.jpg','image/jpeg',20088,'2017-04-22 22:33:06',1,0,NULL),
(86,'product_86.jpg','image/jpeg',25753,'2017-04-22 22:33:06',1,0,NULL),
(87,'product_87.jpg','image/jpeg',21525,'2017-04-22 22:33:06',1,0,NULL),
(88,'product_88.gif','image/gif',19633,'2017-04-22 22:33:06',1,0,NULL),
(89,'product_89.gif','image/gif',20889,'2017-04-22 22:33:06',1,0,NULL),
(90,'product_90.gif','image/gif',24572,'2017-04-22 22:33:06',1,0,NULL),
(91,'product_91.jpg','image/jpeg',21859,'2017-04-22 22:33:07',1,0,NULL),
(92,'product_92.gif','image/gif',28364,'2017-04-22 22:33:07',1,0,NULL),
(93,'product_93.gif','image/gif',28883,'2017-04-22 22:33:07',1,0,NULL),
(94,'product_94.gif','image/gif',31160,'2017-04-22 22:33:07',1,0,NULL),
(95,'product_95.gif','image/gif',32638,'2017-04-22 22:33:07',1,0,NULL),
(96,'product_96.gif','image/gif',35649,'2017-04-22 22:33:07',1,0,NULL),
(97,'product_97.gif','image/gif',30245,'2017-04-22 22:33:07',1,0,NULL),
(98,'product_98.gif','image/gif',30018,'2017-04-22 22:33:07',1,0,NULL),
(99,'product_99.gif','image/gif',33778,'2017-04-22 22:33:07',1,0,NULL),
(100,'product_100.gif','image/gif',37437,'2017-04-22 22:33:07',1,0,NULL),
(101,'product_101.jpg','image/jpeg',18795,'2017-04-22 22:33:07',1,0,NULL),
(102,'product_102.gif','image/gif',26535,'2017-04-22 22:33:07',1,0,NULL),
(103,'product_103.gif','image/gif',34007,'2017-04-22 22:33:08',1,0,NULL),
(104,'product_104.gif','image/gif',33713,'2017-04-22 22:33:08',1,0,NULL),
(105,'product_105.jpg','image/jpeg',23078,'2017-04-22 22:33:08',1,0,NULL),
(106,'product_106.jpg','image/jpeg',21158,'2017-04-22 22:33:08',1,0,NULL),
(107,'product_107.jpg','image/jpeg',24496,'2017-04-22 22:33:08',1,0,NULL),
(108,'product_108.jpg','image/jpeg',23544,'2017-04-22 22:33:08',1,0,NULL),
(109,'product_109.jpg','image/jpeg',25767,'2017-04-22 22:33:08',1,0,NULL),
(110,'product_110.jpg','image/jpeg',23167,'2017-04-22 22:33:08',1,0,NULL),
(111,'product_111.jpg','image/jpeg',26249,'2017-04-22 22:33:08',1,0,NULL),
(112,'product_112.jpg','image/jpeg',17205,'2017-04-22 22:33:09',1,0,NULL),
(113,'product_113.jpg','image/jpeg',22668,'2017-04-22 22:33:09',1,0,NULL),
(114,'product_114.jpg','image/jpeg',22186,'2017-04-22 22:33:09',1,0,NULL),
(115,'product_115.jpg','image/jpeg',18892,'2017-04-22 22:33:09',1,0,NULL),
(116,'product_116.jpg','image/jpeg',21189,'2017-04-22 22:33:09',1,0,NULL),
(117,'product_117.jpg','image/jpeg',20718,'2017-04-22 22:33:09',1,0,NULL),
(118,'product_118.jpg','image/jpeg',20098,'2017-04-22 22:33:09',1,0,NULL),
(119,'product_119.jpg','image/jpeg',23184,'2017-04-22 22:33:09',1,0,NULL),
(120,'product_120.jpg','image/jpeg',20459,'2017-04-22 22:33:09',1,0,NULL),
(121,'product_121.jpg','image/jpeg',19969,'2017-04-22 22:33:09',1,0,NULL);

/*Table structure for table `g_language_lcp` */

DROP TABLE IF EXISTS `g_language_lcp`;

CREATE TABLE `g_language_lcp` (
  `value` int(2) unsigned NOT NULL,
  `key` varchar(32) COLLATE utf8_bin NOT NULL,
  `title` varchar(32) COLLATE utf8_bin NOT NULL,
  `locale` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `g_language_lcp` */

insert  into `g_language_lcp`(`value`,`key`,`title`,`locale`) values 
(1,'hy','Armenian','hy'),
(2,'en','English','en'),
(3,'ru','Russian','ru'),
(4,'fr','France','fr'),
(5,'es','Spanish','es'),
(6,'fa','Persian','fa');

/*Table structure for table `price_list_info` */

DROP TABLE IF EXISTS `price_list_info`;

CREATE TABLE `price_list_info` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `lang` int(1) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `budgetary` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `standard` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `premium` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `production_time` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_price_list_info` (`lang`),
  CONSTRAINT `FK_price_list_info` FOREIGN KEY (`lang`) REFERENCES `g_language_lcp` (`value`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `price_list_info` */

/*Table structure for table `sketch` */

DROP TABLE IF EXISTS `sketch`;

CREATE TABLE `sketch` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(1) unsigned NOT NULL,
  `order` int(8) unsigned DEFAULT NULL,
  `main_image_id` int(15) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sketch` */

insert  into `sketch`(`id`,`status`,`order`,`main_image_id`) values 
(1,1,0,1),
(2,1,0,11);

/*Table structure for table `sketch_info` */

DROP TABLE IF EXISTS `sketch_info`;

CREATE TABLE `sketch_info` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `sketch_id` int(15) unsigned DEFAULT NULL,
  `lang` int(1) unsigned DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `short_desc` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `FK_s_info_s` (`sketch_id`),
  KEY `FK_sketch_info_l` (`lang`),
  CONSTRAINT `FK_s_info_s` FOREIGN KEY (`sketch_id`) REFERENCES `sketch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sketch_info_l` FOREIGN KEY (`lang`) REFERENCES `g_language_lcp` (`value`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sketch_info` */

insert  into `sketch_info`(`id`,`sketch_id`,`lang`,`name`,`short_desc`,`title`,`description`) values 
(1,1,1,'Ворота1','Кованые ворота1','Кованые ворота (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-8\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<p><span style=\"color: #000000;\"><strong>Кованые ворота</strong>, \r\nоставаясь элегантными, создают ощущение надежности и защищенности. Так \r\nже они служат прекрасной визитной карточкой хозяев, поэтому, если вам не\r\n безразлично впечатление, которое производит ваша дача или усадьба &nbsp;на \r\nокружающих, не пожалейте денег и закажите для себя в нашей компании.</span></p>\r\n<p><span style=\"color: #000000;\">В наше время многие владельцы загородных домов стали отдавать предпочтение <strong>кованым воротам</strong>,\r\n которые не только являются прекрасным украшением, но и представляют \r\nсобой отличную защиту от нежелательного проникновения внутрь \r\nпосторонних. Такие ворота ценятся, прежде всего, благодаря своей \r\nдолговечности, прочности, а также неповторимости.</span></p>\r\n<p><span style=\"color: #000000;\">Помимо надежности к их преимуществам \r\nможно отнести красоту, повышенную прочность, устойчивость к воздействиям\r\n внешней среды. Они практически не нуждаются в уходе или ремонте. Еще \r\nодним достоинством, которыми они обладают, является их хорошее сочетание\r\n с практически любым стилем ландшафтного дизайна или интерьера. \r\nПрекрасным дополнением к ним станут кованые заборы, решетки и козырьки. \r\nВсе эти атрибуты не только повысят безопасность и защищенность вашей \r\nтерритории, но и послужат для нее неповторимым украшением и эффектным \r\nдополнением ее архитектурного облика.</span></p>\r\n<p><span style=\"color: #000000;\">При подборе узора рекомендуется \r\nобязательно учитывать желаемую плотность рисунка. Если вы хотите \r\nпродемонстрировать свой прекрасный сад или двор, узор может быть самым \r\nлегким. Тем, кто не любит, когда на него непрерывно глядят с улицы, \r\nпредлагаются более густые узоры, скрывающие столь же надежно, как дерево\r\n или гранит. По желанию заказчика применяют сочетанные композиции, \r\nсодержащие вкрапления стекла, древесины и кремня.</span></p>\r\n<p><span style=\"color: #000000;\">Наши мастера кузнечного дела, освоившие\r\n все тонкости художественной ковки, воплотят затем эти замыслы в жизнь. \r\nОбращайтесь в нашу компанию и вы никогда не пожалеете об этом решении, \r\nпоскольку изготовленные у нас ворота будут служить практически вечно.</span></p>\r\n\r\n		</div>\r\n	</div>\r\n</div></div></div><div class=\"wpb_single_image wpb_content_element vc_align_left\">\r\n		\r\n		<figure class=\"wpb_wrapper vc_figure\">\r\n			<a data-rel=\"prettyPhoto[rel-89-2127828930]\" href=\"http://zheldor-kovka.ru/wp-content/uploads/2016/12/894023_d95372117cfa45629d69e9425008cbe7-mv2.jpg\" target=\"_self\" class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\"></a>\r\n		</figure>\r\n	</div>'),
(2,1,2,'Ворота2','Кованые ворота2','Кованые ворота (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-8\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<p><span style=\"color: #000000;\"><strong>Кованые ворота</strong>, \r\nоставаясь элегантными, создают ощущение надежности и защищенности. Так \r\nже они служат прекрасной визитной карточкой хозяев, поэтому, если вам не\r\n безразлично впечатление, которое производит ваша дача или усадьба &nbsp;на \r\nокружающих, не пожалейте денег и закажите для себя в нашей компании.</span></p>\r\n<p><span style=\"color: #000000;\">В наше время многие владельцы загородных домов стали отдавать предпочтение <strong>кованым воротам</strong>,\r\n которые не только являются прекрасным украшением, но и представляют \r\nсобой отличную защиту от нежелательного проникновения внутрь \r\nпосторонних. Такие ворота ценятся, прежде всего, благодаря своей \r\nдолговечности, прочности, а также неповторимости.</span></p>\r\n<p><span style=\"color: #000000;\">Помимо надежности к их преимуществам \r\nможно отнести красоту, повышенную прочность, устойчивость к воздействиям\r\n внешней среды. Они практически не нуждаются в уходе или ремонте. Еще \r\nодним достоинством, которыми они обладают, является их хорошее сочетание\r\n с практически любым стилем ландшафтного дизайна или интерьера. \r\nПрекрасным дополнением к ним станут кованые заборы, решетки и козырьки. \r\nВсе эти атрибуты не только повысят безопасность и защищенность вашей \r\nтерритории, но и послужат для нее неповторимым украшением и эффектным \r\nдополнением ее архитектурного облика.</span></p>\r\n<p><span style=\"color: #000000;\">При подборе узора рекомендуется \r\nобязательно учитывать желаемую плотность рисунка. Если вы хотите \r\nпродемонстрировать свой прекрасный сад или двор, узор может быть самым \r\nлегким. Тем, кто не любит, когда на него непрерывно глядят с улицы, \r\nпредлагаются более густые узоры, скрывающие столь же надежно, как дерево\r\n или гранит. По желанию заказчика применяют сочетанные композиции, \r\nсодержащие вкрапления стекла, древесины и кремня.</span></p>\r\n<p><span style=\"color: #000000;\">Наши мастера кузнечного дела, освоившие\r\n все тонкости художественной ковки, воплотят затем эти замыслы в жизнь. \r\nОбращайтесь в нашу компанию и вы никогда не пожалеете об этом решении, \r\nпоскольку изготовленные у нас ворота будут служить практически вечно.</span></p>\r\n\r\n		</div>\r\n	</div>\r\n</div></div></div><div class=\"wpb_single_image wpb_content_element vc_align_left\">\r\n		\r\n		<figure class=\"wpb_wrapper vc_figure\">\r\n			<a data-rel=\"prettyPhoto[rel-89-2127828930]\" href=\"http://zheldor-kovka.ru/wp-content/uploads/2016/12/894023_d95372117cfa45629d69e9425008cbe7-mv2.jpg\" target=\"_self\" class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\"></a>\r\n		</figure>\r\n	</div>'),
(3,1,3,'Ворота3','Кованые ворота3','Кованые ворота (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-8\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<p><span style=\"color: #000000;\"><strong>Кованые ворота</strong>, \r\nоставаясь элегантными, создают ощущение надежности и защищенности. Так \r\nже они служат прекрасной визитной карточкой хозяев, поэтому, если вам не\r\n безразлично впечатление, которое производит ваша дача или усадьба &nbsp;на \r\nокружающих, не пожалейте денег и закажите для себя в нашей компании.</span></p>\r\n<p><span style=\"color: #000000;\">В наше время многие владельцы загородных домов стали отдавать предпочтение <strong>кованым воротам</strong>,\r\n которые не только являются прекрасным украшением, но и представляют \r\nсобой отличную защиту от нежелательного проникновения внутрь \r\nпосторонних. Такие ворота ценятся, прежде всего, благодаря своей \r\nдолговечности, прочности, а также неповторимости.</span></p>\r\n<p><span style=\"color: #000000;\">Помимо надежности к их преимуществам \r\nможно отнести красоту, повышенную прочность, устойчивость к воздействиям\r\n внешней среды. Они практически не нуждаются в уходе или ремонте. Еще \r\nодним достоинством, которыми они обладают, является их хорошее сочетание\r\n с практически любым стилем ландшафтного дизайна или интерьера. \r\nПрекрасным дополнением к ним станут кованые заборы, решетки и козырьки. \r\nВсе эти атрибуты не только повысят безопасность и защищенность вашей \r\nтерритории, но и послужат для нее неповторимым украшением и эффектным \r\nдополнением ее архитектурного облика.</span></p>\r\n<p><span style=\"color: #000000;\">При подборе узора рекомендуется \r\nобязательно учитывать желаемую плотность рисунка. Если вы хотите \r\nпродемонстрировать свой прекрасный сад или двор, узор может быть самым \r\nлегким. Тем, кто не любит, когда на него непрерывно глядят с улицы, \r\nпредлагаются более густые узоры, скрывающие столь же надежно, как дерево\r\n или гранит. По желанию заказчика применяют сочетанные композиции, \r\nсодержащие вкрапления стекла, древесины и кремня.</span></p>\r\n<p><span style=\"color: #000000;\">Наши мастера кузнечного дела, освоившие\r\n все тонкости художественной ковки, воплотят затем эти замыслы в жизнь. \r\nОбращайтесь в нашу компанию и вы никогда не пожалеете об этом решении, \r\nпоскольку изготовленные у нас ворота будут служить практически вечно.</span></p>\r\n\r\n		</div>\r\n	</div>\r\n</div></div></div><div class=\"wpb_single_image wpb_content_element vc_align_left\">\r\n		\r\n		<figure class=\"wpb_wrapper vc_figure\">\r\n			<a data-rel=\"prettyPhoto[rel-89-2127828930]\" href=\"http://zheldor-kovka.ru/wp-content/uploads/2016/12/894023_d95372117cfa45629d69e9425008cbe7-mv2.jpg\" target=\"_self\" class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\"></a>\r\n		</figure>\r\n	</div>'),
(4,1,6,'Ворота4','Кованые ворота4','Кованые ворота (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-8\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<p><span style=\"color: #000000;\"><strong>Кованые ворота</strong>, \r\nоставаясь элегантными, создают ощущение надежности и защищенности. Так \r\nже они служат прекрасной визитной карточкой хозяев, поэтому, если вам не\r\n безразлично впечатление, которое производит ваша дача или усадьба &nbsp;на \r\nокружающих, не пожалейте денег и закажите для себя в нашей компании.</span></p>\r\n<p><span style=\"color: #000000;\">В наше время многие владельцы загородных домов стали отдавать предпочтение <strong>кованым воротам</strong>,\r\n которые не только являются прекрасным украшением, но и представляют \r\nсобой отличную защиту от нежелательного проникновения внутрь \r\nпосторонних. Такие ворота ценятся, прежде всего, благодаря своей \r\nдолговечности, прочности, а также неповторимости.</span></p>\r\n<p><span style=\"color: #000000;\">Помимо надежности к их преимуществам \r\nможно отнести красоту, повышенную прочность, устойчивость к воздействиям\r\n внешней среды. Они практически не нуждаются в уходе или ремонте. Еще \r\nодним достоинством, которыми они обладают, является их хорошее сочетание\r\n с практически любым стилем ландшафтного дизайна или интерьера. \r\nПрекрасным дополнением к ним станут кованые заборы, решетки и козырьки. \r\nВсе эти атрибуты не только повысят безопасность и защищенность вашей \r\nтерритории, но и послужат для нее неповторимым украшением и эффектным \r\nдополнением ее архитектурного облика.</span></p>\r\n<p><span style=\"color: #000000;\">При подборе узора рекомендуется \r\nобязательно учитывать желаемую плотность рисунка. Если вы хотите \r\nпродемонстрировать свой прекрасный сад или двор, узор может быть самым \r\nлегким. Тем, кто не любит, когда на него непрерывно глядят с улицы, \r\nпредлагаются более густые узоры, скрывающие столь же надежно, как дерево\r\n или гранит. По желанию заказчика применяют сочетанные композиции, \r\nсодержащие вкрапления стекла, древесины и кремня.</span></p>\r\n<p><span style=\"color: #000000;\">Наши мастера кузнечного дела, освоившие\r\n все тонкости художественной ковки, воплотят затем эти замыслы в жизнь. \r\nОбращайтесь в нашу компанию и вы никогда не пожалеете об этом решении, \r\nпоскольку изготовленные у нас ворота будут служить практически вечно.</span></p>\r\n\r\n		</div>\r\n	</div>\r\n</div></div></div><div class=\"wpb_single_image wpb_content_element vc_align_left\">\r\n		\r\n		<figure class=\"wpb_wrapper vc_figure\">\r\n			<a data-rel=\"prettyPhoto[rel-89-2127828930]\" href=\"http://zheldor-kovka.ru/wp-content/uploads/2016/12/894023_d95372117cfa45629d69e9425008cbe7-mv2.jpg\" target=\"_self\" class=\"vc_single_image-wrapper   vc_box_border_grey prettyphoto\"></a>\r\n		</figure>\r\n	</div>'),
(5,2,1,'Заборы','Кованые заборы и ограждения','Кованые заборы и ограждения (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-10\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<h2 style=\"text-align: center;\"><span style=\"color: #ff0000;\">Эскизы с ценами немного ниже…</span></h2>\r\n<p><span style=\"color: #000000;\">Основное направление деятельности компании — <strong>изготовление кованых, а так же сварных и других видов заборов и ограждений</strong>. Кованый забор «под ключ» — это отличный выбор для:</span></p>\r\n<p><span style=\"color: #000000;\">-Защиты территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Благоустройства территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Украшения территории;</span></p>\r\n<p><span style=\"color: #000000;\">Наша компания «Техпромстрой» готова \r\nпредложить заказчикам, весь ряд услуг по изготовлению и монтажу заборов \r\nвсех видов. Собственное производство в городе Железнодорожном(Балашиха).\r\n Благодаря собственному производству в Балашихе, мы имеем возможность \r\nпредоставить прекрасные условия для изготовление и монтажа продукции для\r\n Москвы и Московской области, используя современное оборудование.</span></p>\r\n<h4><span style=\"color: #000000;\">Кованые заборы и ограждения</span></h4>\r\n<p><span style=\"color: #000000;\">изготовление которых занимаются \r\nэксперты нашей компании, являются не только важным элементом \r\nландшафтного дизайна, но и гарантируют вам:</span><br>\r\n<span style=\"color: #000000;\">-высокий уровень безопасности;</span></p>\r\n<p><span style=\"color: #000000;\">-надежную защиту участка;</span></p>\r\n<p><span style=\"color: #000000;\">Кованые заборы для дачи, для коттеджа. Ограждения любого вида и типа:</span></p>\r\n<p><span style=\"color: #000000;\">-услуги по проведению замеров и разметки участка;</span></p>\r\n<p><span style=\"color: #000000;\">-Установка столбов, устройство фундамента для забора</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #000000;\">Элитное качество по низким ценам. Забор\r\n или ограждение — Мы изготовим и установим быстро. Обращайтесь! &nbsp;Москва и\r\n Московская область!</span></p></div></div></div></div></div>'),
(6,2,2,'Заборы','Кованые заборы и ограждения','Кованые заборы и ограждения (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-10\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<h2 style=\"text-align: center;\"><span style=\"color: #ff0000;\">Эскизы с ценами немного ниже…</span></h2>\r\n<p><span style=\"color: #000000;\">Основное направление деятельности компании — <strong>изготовление кованых, а так же сварных и других видов заборов и ограждений</strong>. Кованый забор «под ключ» — это отличный выбор для:</span></p>\r\n<p><span style=\"color: #000000;\">-Защиты территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Благоустройства территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Украшения территории;</span></p>\r\n<p><span style=\"color: #000000;\">Наша компания «Техпромстрой» готова \r\nпредложить заказчикам, весь ряд услуг по изготовлению и монтажу заборов \r\nвсех видов. Собственное производство в городе Железнодорожном(Балашиха).\r\n Благодаря собственному производству в Балашихе, мы имеем возможность \r\nпредоставить прекрасные условия для изготовление и монтажа продукции для\r\n Москвы и Московской области, используя современное оборудование.</span></p>\r\n<h4><span style=\"color: #000000;\">Кованые заборы и ограждения</span></h4>\r\n<p><span style=\"color: #000000;\">изготовление которых занимаются \r\nэксперты нашей компании, являются не только важным элементом \r\nландшафтного дизайна, но и гарантируют вам:</span><br>\r\n<span style=\"color: #000000;\">-высокий уровень безопасности;</span></p>\r\n<p><span style=\"color: #000000;\">-надежную защиту участка;</span></p>\r\n<p><span style=\"color: #000000;\">Кованые заборы для дачи, для коттеджа. Ограждения любого вида и типа:</span></p>\r\n<p><span style=\"color: #000000;\">-услуги по проведению замеров и разметки участка;</span></p>\r\n<p><span style=\"color: #000000;\">-Установка столбов, устройство фундамента для забора</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #000000;\">Элитное качество по низким ценам. Забор\r\n или ограждение — Мы изготовим и установим быстро. Обращайтесь! &nbsp;Москва и\r\n Московская область!</span></p></div></div></div></div></div>'),
(7,2,3,'Заборы','Кованые заборы и ограждения','Кованые заборы и ограждения (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-10\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<h2 style=\"text-align: center;\"><span style=\"color: #ff0000;\">Эскизы с ценами немного ниже…</span></h2>\r\n<p><span style=\"color: #000000;\">Основное направление деятельности компании — <strong>изготовление кованых, а так же сварных и других видов заборов и ограждений</strong>. Кованый забор «под ключ» — это отличный выбор для:</span></p>\r\n<p><span style=\"color: #000000;\">-Защиты территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Благоустройства территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Украшения территории;</span></p>\r\n<p><span style=\"color: #000000;\">Наша компания «Техпромстрой» готова \r\nпредложить заказчикам, весь ряд услуг по изготовлению и монтажу заборов \r\nвсех видов. Собственное производство в городе Железнодорожном(Балашиха).\r\n Благодаря собственному производству в Балашихе, мы имеем возможность \r\nпредоставить прекрасные условия для изготовление и монтажа продукции для\r\n Москвы и Московской области, используя современное оборудование.</span></p>\r\n<h4><span style=\"color: #000000;\">Кованые заборы и ограждения</span></h4>\r\n<p><span style=\"color: #000000;\">изготовление которых занимаются \r\nэксперты нашей компании, являются не только важным элементом \r\nландшафтного дизайна, но и гарантируют вам:</span><br>\r\n<span style=\"color: #000000;\">-высокий уровень безопасности;</span></p>\r\n<p><span style=\"color: #000000;\">-надежную защиту участка;</span></p>\r\n<p><span style=\"color: #000000;\">Кованые заборы для дачи, для коттеджа. Ограждения любого вида и типа:</span></p>\r\n<p><span style=\"color: #000000;\">-услуги по проведению замеров и разметки участка;</span></p>\r\n<p><span style=\"color: #000000;\">-Установка столбов, устройство фундамента для забора</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #000000;\">Элитное качество по низким ценам. Забор\r\n или ограждение — Мы изготовим и установим быстро. Обращайтесь! &nbsp;Москва и\r\n Московская область!</span></p></div></div></div></div></div>'),
(8,2,6,'Заборы','Кованые заборы и ограждения','Кованые заборы и ограждения (Эскизы)','<div class=\"wpb_column vc_column_container vc_col-sm-10\"><div class=\"vc_column-inner \"><div class=\"wpb_wrapper\">\r\n	<div class=\"wpb_text_column wpb_content_element \">\r\n		<div class=\"wpb_wrapper\">\r\n			<h2 style=\"text-align: center;\"><span style=\"color: #ff0000;\">Эскизы с ценами немного ниже…</span></h2>\r\n<p><span style=\"color: #000000;\">Основное направление деятельности компании — <strong>изготовление кованых, а так же сварных и других видов заборов и ограждений</strong>. Кованый забор «под ключ» — это отличный выбор для:</span></p>\r\n<p><span style=\"color: #000000;\">-Защиты территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Благоустройства территории;</span></p>\r\n<p><span style=\"color: #000000;\">-Украшения территории;</span></p>\r\n<p><span style=\"color: #000000;\">Наша компания «Техпромстрой» готова \r\nпредложить заказчикам, весь ряд услуг по изготовлению и монтажу заборов \r\nвсех видов. Собственное производство в городе Железнодорожном(Балашиха).\r\n Благодаря собственному производству в Балашихе, мы имеем возможность \r\nпредоставить прекрасные условия для изготовление и монтажа продукции для\r\n Москвы и Московской области, используя современное оборудование.</span></p>\r\n<h4><span style=\"color: #000000;\">Кованые заборы и ограждения</span></h4>\r\n<p><span style=\"color: #000000;\">изготовление которых занимаются \r\nэксперты нашей компании, являются не только важным элементом \r\nландшафтного дизайна, но и гарантируют вам:</span><br>\r\n<span style=\"color: #000000;\">-высокий уровень безопасности;</span></p>\r\n<p><span style=\"color: #000000;\">-надежную защиту участка;</span></p>\r\n<p><span style=\"color: #000000;\">Кованые заборы для дачи, для коттеджа. Ограждения любого вида и типа:</span></p>\r\n<p><span style=\"color: #000000;\">-услуги по проведению замеров и разметки участка;</span></p>\r\n<p><span style=\"color: #000000;\">-Установка столбов, устройство фундамента для забора</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #000000;\">Элитное качество по низким ценам. Забор\r\n или ограждение — Мы изготовим и установим быстро. Обращайтесь! &nbsp;Москва и\r\n Московская область!</span></p></div></div></div></div></div>');

/*Table structure for table `sketch_product` */

DROP TABLE IF EXISTS `sketch_product`;

CREATE TABLE `sketch_product` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `sketch_id` int(15) unsigned NOT NULL,
  `price` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `image_id` int(15) unsigned NOT NULL,
  `status` int(1) unsigned NOT NULL,
  `order` int(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sketch_product` (`sketch_id`),
  KEY `FK_sketch_product_f` (`image_id`),
  CONSTRAINT `FK_sketch_product` FOREIGN KEY (`sketch_id`) REFERENCES `sketch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sketch_product_f` FOREIGN KEY (`image_id`) REFERENCES `f_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sketch_product` */

insert  into `sketch_product`(`id`,`sketch_id`,`price`,`image_id`,`status`,`order`) values 
(1,1,'2145',17,1,0),
(2,1,NULL,18,1,0),
(3,1,NULL,19,1,0),
(4,1,NULL,20,1,0),
(5,1,NULL,21,1,0),
(6,1,NULL,22,1,0),
(7,1,NULL,23,1,0),
(8,1,NULL,24,1,0),
(9,1,NULL,25,1,0),
(10,1,NULL,26,1,0),
(11,1,NULL,27,1,0),
(12,1,NULL,28,1,0),
(13,1,NULL,29,1,0),
(14,1,NULL,30,1,0),
(15,1,NULL,31,1,0),
(16,1,NULL,32,1,0),
(17,1,NULL,33,1,0),
(18,1,NULL,34,1,0),
(19,1,NULL,35,1,0),
(20,1,NULL,36,1,0),
(21,1,NULL,37,1,0),
(22,1,NULL,38,1,0),
(23,1,NULL,39,1,0),
(24,1,NULL,40,1,0),
(25,1,NULL,41,1,0),
(26,1,NULL,42,1,0),
(27,1,NULL,43,1,0),
(28,1,NULL,44,1,0),
(29,1,NULL,45,1,0),
(30,1,NULL,46,1,0),
(31,1,NULL,47,1,0),
(32,1,NULL,48,1,0),
(33,1,NULL,49,1,0),
(34,1,NULL,50,1,0),
(35,1,NULL,51,1,0),
(36,1,NULL,52,1,0),
(37,1,NULL,53,1,0),
(38,1,NULL,54,1,0),
(39,1,NULL,55,1,0),
(40,1,NULL,56,1,0),
(41,1,NULL,57,1,0),
(42,1,NULL,58,1,0),
(43,2,NULL,59,1,0),
(44,2,NULL,60,1,0),
(45,2,NULL,61,1,0),
(46,2,NULL,62,1,0),
(47,2,NULL,63,1,0),
(48,2,NULL,64,1,0),
(49,2,NULL,65,1,0),
(50,2,NULL,66,1,0),
(51,2,NULL,67,1,0),
(52,2,NULL,68,1,0),
(53,2,NULL,69,1,0),
(54,2,NULL,70,1,0),
(55,2,NULL,71,1,0),
(56,2,NULL,72,1,0),
(57,2,NULL,73,1,0),
(58,2,NULL,74,1,0),
(59,2,NULL,75,1,0),
(60,2,NULL,76,1,0),
(61,2,NULL,77,1,0),
(62,2,NULL,78,1,0),
(63,2,NULL,79,1,0),
(64,2,NULL,80,1,0),
(65,2,NULL,81,1,0),
(66,2,NULL,82,1,0),
(67,2,NULL,83,1,0),
(68,2,NULL,84,1,0),
(69,2,NULL,85,1,0),
(70,2,NULL,86,1,0),
(71,2,NULL,87,1,0),
(72,2,NULL,88,1,0),
(73,2,NULL,89,1,0),
(74,2,NULL,90,1,0),
(75,2,NULL,91,1,0),
(76,2,NULL,92,1,0),
(77,2,NULL,93,1,0),
(78,2,NULL,94,1,0),
(79,2,NULL,95,1,0),
(80,2,NULL,96,1,0),
(81,2,NULL,97,1,0),
(82,2,NULL,98,1,0),
(83,2,NULL,99,1,0),
(84,2,NULL,100,1,0),
(85,2,NULL,101,1,0),
(86,2,NULL,102,1,0),
(87,2,NULL,103,1,0),
(88,2,NULL,104,1,0),
(89,2,NULL,105,1,0),
(90,2,NULL,106,1,0),
(91,2,NULL,107,1,0),
(92,2,NULL,108,1,0),
(93,2,NULL,109,1,0),
(94,2,NULL,110,1,0),
(95,2,NULL,111,1,0),
(96,2,NULL,112,1,0),
(97,2,NULL,113,1,0),
(98,2,NULL,114,1,0),
(99,2,NULL,115,1,0),
(100,2,NULL,116,1,0),
(101,2,NULL,117,1,0),
(102,2,NULL,118,1,0),
(103,2,NULL,119,1,0),
(104,2,NULL,120,1,0),
(105,2,NULL,121,1,0);

/*Table structure for table `status_lcp` */

DROP TABLE IF EXISTS `status_lcp`;

CREATE TABLE `status_lcp` (
  `key` int(1) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `status_lcp` */

insert  into `status_lcp`(`key`,`status`) values 
(1,'active'),
(2,''),
(3,'deleted'),
(4,'hidden'),
(5,'blocked'),
(6,'unverified'),
(7,'unconverted'),
(8,'pending');

/*Table structure for table `work_scheme_info` */

DROP TABLE IF EXISTS `work_scheme_info`;

CREATE TABLE `work_scheme_info` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(15) unsigned DEFAULT NULL,
  `lang` int(1) unsigned NOT NULL,
  `name` varchar(256) COLLATE utf8_bin NOT NULL,
  `description` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_work_scheme_info` (`lang`),
  CONSTRAINT `FK_work_scheme_info` FOREIGN KEY (`lang`) REFERENCES `g_language_lcp` (`value`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `work_scheme_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
