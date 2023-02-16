# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: eapi
# Generation Time: 2017-11-08 04:46:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2017_11_08_040720_create_Orders',1),
	(4,'2017_11_08_040738_create_Orders_Detail',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table Orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Numero_orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `monto` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `Orders` (`id`, `Numero_orden`, `fecha`, `monto`, `estado`, `id_detalle`, `id_usuario`)
VALUES
	(1,'000159753','Nuemro de orden 1','2017-11-08 04:44:48',2500,1,0054,0064),
	(2,'000159457','Nuemro de orden 1','2017-11-08 04:44:48',3000,1,0055,0065),),
	(3,'000159562','Nuemro de orden 1','2017-11-08 04:44:48',2000,1,0056,0066),),
	(4,'000159874','Nuemro de orden 1','2017-11-08 04:44:48',1500,1,0057,0067),),
	(5,'000159355','Nuemro de orden 1','2017-11-08 04:44:48',500,1,0058,0068),),
	(6,'000159941','Nuemro de orden 1','2017-11-08 04:44:48',4000,1,0059,0069),),
	(7,'000159741','Nuemro de orden 1','2017-11-08 04:44:48',1000,1,0060,0070),);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Orders_Details`;

CREATE TABLE `Orders_Details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `articulo` varchar(255) unsigned NOT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_articulo_index` (`articulo),
  CONSTRAINT `reviews_articulo_foreign` FOREIGN KEY (`articulo`) REFERENCES `Orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Orders_Details` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `Orders_Details` (`id`, `articulo`, `cantidad`, `precio`, `total`,`id_orders`)
VALUES
	(1,63,000008541,'Tarjeta madre',5,5600,28000,0000847),
	(2,52,000008542,'Mouses',1,2000,2000,0000458),
	(4,97,000008544,'Teclados',4,5600,22400,0000458),
	(5,96,000008546,'trajeta grafica',3,3000,16800,0000498),
	(6,70,000008548,'monitor',6,4000,28000,00003215),
	(7,62,000008551,'laptops',7,3000,28000,0000685),
	(8,57,000008549,'CPU',8,6500,28000,0000357),
	(9,62,000008540,'Silla Gamer',2,8000,28000,0000469),
	(10,36,000008601,'TV',10,7000,28000,0000127),
	(11,1,000008631,'Audifonos',6,9000,28000,0000658),
	(12,46,000009511,'Pendrive',5,4000,28000,0000468),
	(13,10,000001002,'Reloj',8,6000,28000,0000357);

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
