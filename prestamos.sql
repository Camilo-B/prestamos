/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.21-MariaDB : Database - prestamos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`prestamos` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_spanish2_ci */;

USE `prestamos`;

/*Table structure for table `tbl_aulas` */

DROP TABLE IF EXISTS `tbl_aulas`;

CREATE TABLE `tbl_aulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edificio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `capacidad` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tbl_aulas` */

/*Table structure for table `tbl_auxiliares` */

DROP TABLE IF EXISTS `tbl_auxiliares`;

CREATE TABLE `tbl_auxiliares` (
  `cedula` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `correo` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `direccion` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tbl_auxiliares` */

/*Table structure for table `tbl_docentes` */

DROP TABLE IF EXISTS `tbl_docentes`;

CREATE TABLE `tbl_docentes` (
  `cedula` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `correo` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `direcion` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci DEFAULT NULL,
  `telefono` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci DEFAULT NULL,
  `programa` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tbl_docentes` */

/*Table structure for table `tbl_equipos` */

DROP TABLE IF EXISTS `tbl_equipos`;

CREATE TABLE `tbl_equipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comentario` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tbl_equipos` */

/*Table structure for table `tbl_tikects` */

DROP TABLE IF EXISTS `tbl_tikects`;

CREATE TABLE `tbl_tikects` (
  `id` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `hora-in` time DEFAULT NULL,
  `hora-out` time DEFAULT NULL,
  `comentario` varchar(200) CHARACTER SET utf32 COLLATE utf32_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tbl_tikects` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
