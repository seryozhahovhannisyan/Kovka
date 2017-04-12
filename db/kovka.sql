/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.7.15-log : Database - kovka
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

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

/*Table structure for table `f_data` */

DROP TABLE IF EXISTS `f_data`;

CREATE TABLE `f_data` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(256) COLLATE utf8_bin NOT NULL,
  `content_type` varchar(256) COLLATE utf8_bin NOT NULL,
  `size` int(15) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `status` int(1) unsigned NOT NULL,
  `order` int(8) unsigned NOT NULL,
  `sketch_id` int(15) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f_data_s` (`sketch_id`),
  CONSTRAINT `FK_f_data_s` FOREIGN KEY (`sketch_id`) REFERENCES `sketch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `g_language_lcp` */

DROP TABLE IF EXISTS `g_language_lcp`;

CREATE TABLE `g_language_lcp` (
  `value` int(2) unsigned NOT NULL,
  `key` varchar(32) COLLATE utf8_bin NOT NULL,
  `title` varchar(32) COLLATE utf8_bin NOT NULL,
  `locale` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sketch` */

DROP TABLE IF EXISTS `sketch`;

CREATE TABLE `sketch` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(1) unsigned NOT NULL,
  `order` int(8) unsigned NOT NULL,
  `image_id` int(15) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sketch_f_d` (`image_id`),
  CONSTRAINT `FK_sketch_f_d` FOREIGN KEY (`image_id`) REFERENCES `f_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sketch_info` */

DROP TABLE IF EXISTS `sketch_info`;

CREATE TABLE `sketch_info` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `sketch_id` int(15) unsigned NOT NULL,
  `lang` int(1) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `short_desc` varchar(64) COLLATE utf8_bin NOT NULL,
  `title` varchar(128) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `FK_s_info_s` (`sketch_id`),
  KEY `FK_sketch_info_l` (`lang`),
  CONSTRAINT `FK_s_info_s` FOREIGN KEY (`sketch_id`) REFERENCES `sketch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sketch_info_l` FOREIGN KEY (`lang`) REFERENCES `g_language_lcp` (`value`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sketch_product` */

DROP TABLE IF EXISTS `sketch_product`;

CREATE TABLE `sketch_product` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `sketch_id` int(15) unsigned NOT NULL,
  `price` varchar(32) COLLATE utf8_bin NOT NULL,
  `image_id` int(15) unsigned NOT NULL,
  `order` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sketch_product` (`sketch_id`),
  KEY `FK_sketch_product_f` (`image_id`),
  CONSTRAINT `FK_sketch_product` FOREIGN KEY (`sketch_id`) REFERENCES `sketch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sketch_product_f` FOREIGN KEY (`image_id`) REFERENCES `f_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
