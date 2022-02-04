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
(1,'Pierdominici','Marina',31313757,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0\0\0\0M\n)\0\0\0tEXtSoftware\0Adobe ImageReadyqÉe<\0\0diTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:A4844BF7E764E4119D6A96F6FD2BC57E\" xmpMM:DocumentID=\"xmp.did:20B9BBD7B37511E4B50D8E7FAD590869\" xmpMM:InstanceID=\"xmp.iid:20B9BBD6B37511E4B50D8E7FAD590869\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:96475724856EE41193F5C33B3B88D158\" stRef:documentID=\"xmp.did:A4844BF7E764E4119D6A96F6FD2BC57E\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>(E7\0\03IDATxÚ¼WkˆTe~¾sÎÌî\\vfvÙ™]/¸xAi\ró‡,bV„Á\"A$DDE)‚”ZbôÃEDD?‚ LJQ‹\n³sWÅmwL×½_ææÙ™óõ|gvÛUw·=³Ô—áœùÎû<ß{yŞïˆ¶£Eğ\nÑvÓ¶Ñ*iş›K(ßãN\'}xçà&­Óàƒ(íÚ&üO—¡aYo­—ğ¤ÆûC—´Ñt†l]²)O”^ …+€×WÔó7ã qDNå°^¨(—€É‡ÜÀÖÅÀş\r«¥hÌ;€K+8g•€¼:ôûYÔ¼E›YQC…ùW±áX]-ÕÀÃ	5a Ö[*U>Fcçƒ‘?€Ï;%z)ß& pÇ¸ã6ëÓÍ®¥ãi¥œúÕÓ«ˆø°P!ÖB@ù¾C;–	loJÚ$è}ëe‰ÜãK5´Y8ŞÃÈhe°&ÂşÊ\nA‡sßÛhEËBÑ­ZHİ€˜åÅ9‹P…½-y7¸àöîµ» y_(J|pâ/œé\Z„WXå¥€r‰ÅÌãöåS»RX9ö^÷ĞÜ\Z6‘ç¢F\nÁŠ:ÉI<Çg¾OáğÕÄbqh†ÛşÏ1,ßÙÌJV–ÀûÓ&¾<?€Ó£¸‘g]¤i[\Zı8¸Ígƒåx÷ÛNt¥Q_ß\0—¿\Z™‚…JmöP³åŞÃZ)·ßÎbÿ7İ¸::š`h\0.w%rĞ\\TJÁ Iíåš_zrˆ\'’0¼AX›Ø1—F¨’…™Ih³é1ŠÌPÆÄŞcİ¸™×ĞØ´ÁhÜ¾ r‚M/tôš:~ìÎcÏ×8w;Oğ&¸	>ÎG¸äÅµ@¼Â²Sê¨U¾UË}ös/®3a:ÖÜ^XÜU–Î7†%\Z<©,ğÆYtŒX¨kh‚îñÛkÒlcë†˜Bs´›rĞšİ~\Z^1qêúêêâ0XL*¤vÆst¼gƒ†‡˜¢|ÑBMU5\rË`¸}öÎûî§š¡åL‹QÌ3Y3é¢1v>î(ÂÒıxª`\\	Ò«+ñO[f†ú0«‚îõbœ•®qM¢Râ…%-)­ùsğn¦‹¨ªÎº@	‡·¢²6¼Ò\0‚ïZ#ĞšœZ³ªÖ…­$\ZğJÄ9šk„mióõdûëÅÅ¹Àª¶,çR\\\ZØÉØÙ\"°!>]\r%ZWÔĞä,r,p¥7‡ÃíÃÖ6”\'ÅÊµß½N`]ô~¶ÅgÚÚéj8–+àı“7Ó=ˆzÜ|RÌúá¼ˆˆ9IÊiÀÊúÆL¼y¬¿÷™XCÚr-GÀMz]à·\"Zb:Ë‡Ñä<P9}m‡Îôà}uõI¶®‡õc•—åÖ”oÿ”ÇKËóØ²²ÆÖ‡ImŸÎr>üÚÆWp&5Ÿ×OMh´ÁaY;¸ºq:zï¢‰±><»~K™;ŸJã»Ëƒ¸p+‹k£&Ü”çH,A¥ä‘IÓş|Ş\'\"E¢:Â\'Üeo¦/oÃã6p¼cŸ^æà©\"V_£’CMµ›œø$™%ê>]PŠçÇ‘aıÇû±kcˆ‡‰D¢¿¯T€\'\nXªX›÷tözp¡ÆóGúqŠ£ÙçÒKÓË–óv¥¾)8¦¯+¯ÑúœğTöP®HºÎIgŸ’«å3ÍbŸJÁYÚ£´´5ÿÏ¹Õ†’Îi9şÕ9¿Rü8İ×š‡ÿ`\0È¿3`/\0\0\0\0IEND®B`‚','image/png'),
(2,'Perez','Juan',57717202,'ÿØÿà\0JFIF\0\0H\0H\0\0ÿÛ\0C\0		\n\n\n\n          ÿÛ\0C\r\r\Z\Z                                                 ÿÀ\0\0(\0Ü\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0)\0\0\0\0\0\0\0\0a!1\"#QARBqÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0#\0\0\0\0\0\0\0\0\0!12\"Aaq±ÿÚ\0\0\0?\0úÑôo\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.´ú}6‘Õêª‹>\nm»Ü©ı*¹¹2ËñÃôÕÇ†8÷“WS mU3ÒZ9Õq¹;+WùTûC¯-õ?hsåã®ãÔ«Í(f¬¤‚X¢šfG,ë¶=ÈŠõOÓQ|ù·®¢Ÿ¨é²7¨Ù“ÓvËÛu¼ÚàH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0òğ[Um–½\\äj7ºöAE®5×P~MY$îI Š8\\Ö±\\ˆ¨—µïÉ‡ÆÛ[ˆ÷-|õ~ı0‚OOÕ2E‘`–9\\nÏjûy&oå‰­_×j|¼ue·¯:¿TÔõ	¨¨ßQøö²’¡ã7$ò;kì»¯fûDSSrme’jÒêµö~…•­Sz*Ê«ÙläEjğ¢“·wü+ZÔ¦ë8+»G%,‰4“íİ*5ö|ˆÕ[øu’×ìÚ{Xj‘ÕÓI_LÍF±YE§u9Ó»zË½ë¹ÎK_êŞ-ÿ\0šL¦‹P«¢“PWOSPÕÓc«TWîrJíÈçG¹Œû²%“èŠNßâ²\rR¹Ôº¤qêJÈÑ´ÒC*Ë<íj*ª?å²Hˆ¿éÍDDQJìé=!¨ÉQEP×ä~)ÜÖÊùº†9,‹ñÈ¨×+Q~î¼“N˜d½ËÀÕ{2ğ5,ËÀÔ³/RÌ¼\rK2ğ5,ËÀÔ³/RÌ¼\rK2ğ5,ËÀÔ³/RÌ¼\rK2ğ5,ËÀÔ³/RÑ—U--Céª#ˆŠø×sQİÒå3Çh¥±Ê¦İ¨)*#—­e==R»rO‡{U?{“ºÜó¹<\\±úÜÇöÛ‡>9{¨–µ©‘_4:t6™ìÆé]œûù[víõrü^$ÏyLÚ¼DGXÄ(ÓÁè±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÙ','image/jpeg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
