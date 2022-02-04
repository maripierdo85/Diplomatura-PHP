/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 5.6.49 : Database - phpintermedio
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`phpintermedio` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `phpintermedio`;

/*Table structure for table `consultas` */

DROP TABLE IF EXISTS `consultas`;

CREATE TABLE `consultas` (
  `idContacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `idMotivo` int(11) DEFAULT NULL,
  `mensaje` text,
  PRIMARY KEY (`idContacto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `consultas` */

insert  into `consultas`(`idContacto`,`nombre`,`apellido`,`edad`,`correo`,`idMotivo`,`mensaje`) values 
(1,'q','w',23,'a@autex-open.com',1,'fgh'),
(2,'q','w',23,'a@autex-open.com',1,'fgh'),
(3,'y','u',67,'a@autex-open.com',2,'gggg'),
(4,'q','v',34,'a@autex-open.com',3,'ttttt'),
(5,'Marin','Pierdominici',36,'mpierdominici@autex-open.com',1,'Motivo 1'),
(6,'v','v',45,'a@autex-open.com',1,'hhhh');

/*Table structure for table `motivo` */

DROP TABLE IF EXISTS `motivo`;

CREATE TABLE `motivo` (
  `idMotivo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMotivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `motivo` */

/*Table structure for table `pedidos_cliente` */

DROP TABLE IF EXISTS `pedidos_cliente`;

CREATE TABLE `pedidos_cliente` (
  `id_pedido` int(5) NOT NULL AUTO_INCREMENT,
  `producto` varchar(30) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pedidos_cliente` */

insert  into `pedidos_cliente`(`id_pedido`,`producto`,`cantidad`,`precio`) values 
(1,'Sillón Capri',5,72500),
(2,'Mesa Ipanema',2,51800),
(3,'Banco Venecia',3,77700),
(4,'Test',4,1236);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
