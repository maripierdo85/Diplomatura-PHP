/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 5.6.49 : Database - php_avanzado
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`php_avanzado` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `php_avanzado`;

/*Table structure for table `clases` */

DROP TABLE IF EXISTS `clases`;

CREATE TABLE `clases` (
  `id_clase` int(11) NOT NULL AUTO_INCREMENT,
  `unidad` varchar(30) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_clase`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `clases` */

insert  into `clases`(`id_clase`,`unidad`,`fecha`) values 
(2,'aaa','2021-09-09'),
(3,'Unbidad 1','2021-09-17'),
(4,'Unidad 2','2021-09-11');

/*Table structure for table `consultas` */

DROP TABLE IF EXISTS `consultas`;

CREATE TABLE `consultas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `consulta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `consultas` */

insert  into `consultas`(`id`,`apellido`,`nombre`,`email`,`consulta`) values 
(1,'Pierdominici','Marina','mpierdominici@autex-open.com','cccccccc'),
(2,'Pierdominici','Marina','mpierdominici@autex-open.com','6r3V&6'),
(3,'Pierdominici','Marina','mpierdominici@autex-open.com','cccccccccc'),
(4,'Pierdominici','Marina','mpierdominici@autex-open.com','kkkkkk'),
(5,'Pierdominici','Marina','mpierdominici@autex-open.com','hhhh'),
(6,'Pierdominici','Marina','mpierdominici@autex-open.com',''),
(7,'Pierdominici','Marina','mpierdominici@autex-open.com',''),
(8,'Pierdominici','Marina','mpierdominici@autex-open.com','sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss');

/*Table structure for table `recetas` */

DROP TABLE IF EXISTS `recetas`;

CREATE TABLE `recetas` (
  `idReceta` int(5) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `dni` int(10) DEFAULT NULL,
  `imagen` longblob,
  `formato` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idReceta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `recetas` */

insert  into `recetas`(`idReceta`,`apellido`,`nombre`,`dni`,`imagen`,`formato`) values 
(1,'Pierdominici','Marina',31313757,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0\0\0\0M\n)\0\0\0tEXtSoftware\0Adobe ImageReadyq�e<\0\0diTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:A4844BF7E764E4119D6A96F6FD2BC57E\" xmpMM:DocumentID=\"xmp.did:20B9BBD7B37511E4B50D8E7FAD590869\" xmpMM:InstanceID=\"xmp.iid:20B9BBD6B37511E4B50D8E7FAD590869\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:96475724856EE41193F5C33B3B88D158\" stRef:documentID=\"xmp.did:A4844BF7E764E4119D6A96F6FD2BC57E\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>(E7\0\03IDATxڼWk�Te~�s���\\vfv��ٙ��]/�xAi\r�,bV��\"A$DDE)��Zb��EDD?� L�JQ�\n�sW�mwL׽_��ٙ��|gv�Uw�=�ԁ�����<�{y��E�\n�vӶ�*i��K(��N\'}x��&����(��&�O��aYo�����C���t�l�]�)O�^��+��W��7� qDN�^�(��ɝ�������\r��h�;�K+8g���:���Y��E�YQC��W��X]-���	�5a��[*U>Fc��?��;%z)�&�pǸ�6������i�����������P!�B@��C;�	lo�J�$�}�e���K5�Y8���he�&���\nA�s��hE�BѭZH݀���9�P��-y7����y_(J|p�/��\Z�WX奀r������S�RX9�^���\Z6��F\n��:�I<�g�O����bqh����1�,���JV����&�<?�ӝ���g]�i[\Z�8��g���x��Nt�Q_�\0��\Z���Jm�P����Z)����b�7ݸ::��`�h\0.w%r�\\TJ� I��_zr�\'�0�AX��1�F����Ih��1��P���cݸ���ش�hܾ r�M/t��:~��c�ם8w;O�&�	>ΝG��ŵ@�²S�U�U�}�s/�3a:��^X�U��7�%\Z<�,��Yt�X�kh����k�lc놘Bs���r���~\Z�^1q�����0XL*�v�st�g�����|�BMU5\r�`�}�����L�Q�3Y3�1v>�(���x�`\\	ҫ+�O[f��0�����b���qM�R�%�-)��s�n����κ@	����6���\0��Z#К�Z��օ�$\Z�J�9�k�m�i��d���Ź���,�R\\\Z����\"�!>]\r%ZW���,r,p�7�����6�\'�ʵ߽N`]�~��g���j8�+���7��=�z�|R�����9I�i����L�y����X�C�r-�G�Mz]ෞ\"Zb:�����<P9}m����}u�I����c���֔o���K��ز��ևIm��r>�ڝ�Wp&5��OMh��aY;���q:z��><�~�K�;�J�˃�p+�k�&ܔ�H,A��I��|�\'\"E�:�\'�eo�/o��6p�c�^��\"V_��CM����$��%�>]P��Ǒa����kc���D���T�\'\nX�X���t�zp���G�q�����K����v��)8��+������T�P�H��Ig����3�b�J�Yڣ��5�Ϲ����i9���9�R�8�ך��`\0���3`/\0\0\0\0IEND�B`�','image/png'),
(2,'Perez','Juan',57717202,'����\0JFIF\0\0H\0H\0\0��\0C\0		\n\n\n\n          ��\0C\r\r\Z\Z                                                 ��\0\0(\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0)\0\0\0\0\0\0\0\0a!1\"#QARBq��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0#\0\0\0\0\0\0\0\0\0!12\"Aaq���\0\0\0?\0���o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.��}6���ꪋ�>\nm�ܩ�*��2�����ǆ8��WS��mU3�Z9�q�;+W�T�C�-�?hs���ԫ�(f���X��fG,�=Ȋ�O�Q|�������7�ٓ�v��u���H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��[Um��\\�j7��AE�5�P~MY$�I �8\\ֱ\\�����ɇ��[��-|�~�0��OO�2�E�`�9\\�n�j�y&o剞�_�j|�ue��:�T��	���Q���������7$�;k컯f�DS�Sr�me�j�ꐵ�~����Sz*ʫ�l�Ej𢓷w�+Z���8+��G%,�4���*5�|��[�u����{Xj���I_L�F�YE�u9ӻz˽��K_��-�\0�L��P���PWOSP��c�TW�rJ���G����%��N��\rR�Ժ�q�J�Ѵ�C*�<�j*�?�H����DDQJ��=!��QEP��~)������9,��Ȩ�+Q~N�d����{2�5,��Գ/R̼\rK2�5,��Գ/R̼\rK2�5,��Գ/R̼\rK2�5,��Գ/RїU--C�#�����sQ���3�h��ʦ��)*#��e==R�rO�{U?{����<\\�����ۇ>9{�����_4:t6����]���[v��r�^$�yLڼ�DGX�(���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��','image/jpeg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
