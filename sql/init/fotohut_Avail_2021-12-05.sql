# ************************************************************
# Sequel Ace SQL dump
# Version 20016
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: fotohut.org (MySQL 5.6.41-84.1)
# Database: fotohut_Avail
# Generation Time: 2021-12-06 04:05:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table crops
# ------------------------------------------------------------

DROP TABLE IF EXISTS `crops`;

CREATE TABLE `crops` (
  `crop_id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_id` int(11) DEFAULT NULL,
  `pot_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `planted_date` date DEFAULT NULL,
  `projected_date` date DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `planted_quantity` int(11) DEFAULT NULL,
  `available_quantity` int(11) DEFAULT NULL,
  `crop_url` int(11) DEFAULT NULL,
  PRIMARY KEY (`crop_id`),
  KEY `plant_id` (`plant_id`),
  KEY `pot_id` (`pot_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `crops_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`id`),
  CONSTRAINT `crops_ibfk_2` FOREIGN KEY (`pot_id`) REFERENCES `pots` (`id`),
  CONSTRAINT `crops_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `crops` WRITE;
/*!40000 ALTER TABLE `crops` DISABLE KEYS */;

INSERT INTO `crops` (`crop_id`, `plant_id`, `pot_id`, `location_id`, `planted_date`, `projected_date`, `available_date`, `planted_quantity`, `available_quantity`, `crop_url`)
VALUES
	(1,1,1,11,'2021-08-02','2021-09-12',NULL,327,555,NULL),
	(2,2,NULL,NULL,NULL,NULL,NULL,9,9,NULL),
	(3,3,NULL,NULL,NULL,NULL,NULL,0,0,NULL),
	(4,4,1,11,'2021-08-02','2021-09-12',NULL,327,23,NULL),
	(5,5,1,12,'2021-08-02','2021-09-12',NULL,325,78,NULL),
	(6,6,1,12,'2021-08-02','2021-09-12',NULL,323,76,NULL),
	(7,7,1,12,'2021-08-03','2021-09-12',NULL,420,463,NULL),
	(8,8,1,13,'2021-08-03','2021-09-12',NULL,422,54,NULL),
	(11,65,NULL,NULL,NULL,NULL,NULL,NULL,239,NULL),
	(13,62,NULL,NULL,NULL,NULL,NULL,NULL,234,NULL),
	(14,61,NULL,NULL,NULL,NULL,NULL,NULL,23,NULL),
	(15,60,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),
	(16,59,NULL,NULL,NULL,NULL,NULL,NULL,456,NULL),
	(17,56,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),
	(18,69,NULL,NULL,NULL,NULL,NULL,NULL,234,NULL),
	(19,37,NULL,NULL,NULL,NULL,NULL,NULL,396,NULL);

/*!40000 ALTER TABLE `crops` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;

INSERT INTO `locations` (`id`, `location_id`, `location_description`)
VALUES
	(1,'GH01','Greenhouse - 1'),
	(2,'GH02','Greenhouse - 2'),
	(3,'GH03','Greenhouse - 3'),
	(4,'GH04','Greenhouse - 4'),
	(5,'GH05','Greenhouse - 5'),
	(6,'GH06','Greenhouse - 6'),
	(7,'GH07','Greenhouse - 7'),
	(8,'GH08','Greenhouse - 8'),
	(9,'GH09','Greenhouse - 9'),
	(10,'GH10','Greenhouse - 10'),
	(11,'GH11','Greenhouse - 11'),
	(12,'GH12','Greenhouse - 12'),
	(13,'GH13','Greenhouse - 13'),
	(14,'GH14','Greenhouse - 14'),
	(15,'GH15','Greenhouse - 15'),
	(16,'GH16','Greenhouse - 16'),
	(17,'GH17','Greenhouse - 17'),
	(18,'GH18','Greenhouse - 18'),
	(19,'GH19','Greenhouse - 19'),
	(20,'GH20','Greenhouse - 20'),
	(21,'GH21','Greenhouse - 21'),
	(22,'GH22','Greenhouse - 22'),
	(23,'GH23','Greenhouse - 23'),
	(24,'GH24','Greenhouse - 24'),
	(25,'GH25','Greenhouse - 25'),
	(26,'GH26','Greenhouse - 26'),
	(27,'GH27','Greenhouse - 27'),
	(28,'GH28','Greenhouse - 28'),
	(29,'GH29','Greenhouse - 29'),
	(30,'GH30','Greenhouse - 30'),
	(31,'GH31','Greenhouse - 31'),
	(32,'GH32','Greenhouse - 32'),
	(33,'GH33','Greenhouse - 33');

/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table plants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `plants`;

CREATE TABLE `plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plant_variant` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plant_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;

INSERT INTO `plants` (`id`, `plant_name`, `plant_variant`, `plant_color`)
VALUES
	(1,'Pansy','Colossus','Blue Blotch'),
	(2,'Pansy','Colossus','Mix Blotch'),
	(3,'Pansy','Colossus','Ocean Blotch'),
	(4,'Pansy','Colossus','Purple Blotch'),
	(5,'Pansy','Colossus','Red Blotch'),
	(6,'Pansy','Colossus','Rose Blotch'),
	(7,'Pansy','Colossus','White Blotch'),
	(8,'Pansy','Colossus','Yellow Blotch'),
	(9,'Pansy','Delta Pure','Beaconsfield'),
	(10,'Pansy','Delta Pure','Citrus Mix'),
	(11,'Pansy','Delta Pure','Coolwater Mix'),
	(12,'Pansy','Delta Pure','Deep Orange'),
	(13,'Pansy','Delta Pure','Lemon'),
	(14,'Pansy','Delta Pure','Light Blue'),
	(15,'Pansy','Delta Pure','Mix'),
	(16,'Pansy','Delta Pure','Pink Shades'),
	(17,'Pansy','Delta Pure','Primrose'),
	(18,'Pansy','Delta Pure','Red'),
	(19,'Pansy','Delta Pure','Rose'),
	(20,'Pansy','Delta Pure','True Blue'),
	(21,'Pansy','Delta Pure','Violet'),
	(22,'Pansy','Delta Pure','White'),
	(23,'Pansy','Delta Pure','Wine &amp; Cheese'),
	(24,'Pansy','Delta Pure','Yellow'),
	(25,'Pansy','Imperial','Antique Shades'),
	(26,'Snapdragon','Snaptastic','Magenta'),
	(27,'Snapdragon','Snaptastic','Mix'),
	(28,'Snapdragon','Snaptastic','Orange Flame'),
	(29,'Snapdragon','Snaptastic','Pink'),
	(30,'Snapdragon','Snaptastic','Red'),
	(31,'Snapdragon','Snaptastic','Yellow'),
	(32,'Snapdragon','Snaptini','Mix'),
	(33,'Snapdragon','Snaptini','Peach'),
	(34,'Snapdragon','Snaptini','Red'),
	(35,'Snapdragon','Snaptini','Sunglow'),
	(36,'Snapdragon','Snaptini','White'),
	(37,'Snapdragon','Snaptini','Yellow'),
	(38,'Viola','Penny','Blue'),
	(39,'Viola','Penny','Citrus Mix'),
	(40,'Viola','Penny','Jump Up Mix'),
	(41,'Viola','Penny','Jump Up Orange'),
	(42,'Viola','Penny','Jump Up Yellow'),
	(43,'Viola','Penny','Orange'),
	(44,'Viola','Penny','Violet'),
	(45,'Viola','Penny','White'),
	(46,'Viola','Penny','Yellow'),
	(47,'Pansy','FreeFall XL','Azure Blue'),
	(48,'Pansy','FreeFall XL','Golden Yellow'),
	(49,'Pansy','FreeFall XL','Mix'),
	(50,'Pansy','FreeFall XL','Purple Face'),
	(51,'Dusty Miller','Dusty Miller','Silver Dust'),
	(52,'Dianthus','Dianthus','Ideal Mix'),
	(53,'Dianthus','Dianthus','Telstar Scarlet'),
	(54,'Dianthus','Dianthus','Telstar White'),
	(55,'Cabbage','Pigeon','Red'),
	(56,'Cabbage','Pigeon','White'),
	(57,'Kale','Glamour','Red'),
	(58,'Kale','Nagoya','Red'),
	(59,'Kale','Nagoya','White'),
	(60,'Kale','Peacock','Red'),
	(61,'Kale','Peacock','White'),
	(62,'Kale','Red Bar','Red Bar'),
	(63,'Swiss Chard','Bright Lights','Bright Lights'),
	(64,NULL,NULL,NULL),
	(65,'misses','gardener','rainbow'),
	(66,NULL,NULL,NULL),
	(67,NULL,NULL,NULL),
	(68,NULL,NULL,NULL),
	(69,'google','plex','green');

/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pots
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pots`;

CREATE TABLE `pots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pot_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pot_size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pots` WRITE;
/*!40000 ALTER TABLE `pots` DISABLE KEYS */;

INSERT INTO `pots` (`id`, `pot_type`, `pot_size`)
VALUES
	(1,'Flat','18-ct'),
	(2,'Basket',NULL),
	(3,'Round','17cm');

/*!40000 ALTER TABLE `pots` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`)
VALUES
	(1,'Robert.Parker','Robert','Parker'),
	(2,'Leah.Heath','Leah','Heath'),
	(3,'Andrew.Mendez','Andrew','Mendez'),
	(4,'Joseph.Oliver','Joseph','Oliver'),
	(5,'April.Fisher','April','Fisher'),
	(6,'Andrew.Morris','Andrew','Morris'),
	(7,'Sabrina.Wilson','Sabrina','Wilson'),
	(8,'Christine.Larson','Christine','Larson'),
	(9,'Robert.Rodgers','Robert','Rodgers'),
	(10,'Kenneth.Hale','Kenneth','Hale');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
