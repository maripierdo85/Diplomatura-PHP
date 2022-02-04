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

/*Table structure for table `alumnos` */

DROP TABLE IF EXISTS `alumnos`;

CREATE TABLE `alumnos` (
  `cod_alumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`cod_alumno`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `alumnos` */

insert  into `alumnos`(`cod_alumno`,`nombre`,`apellido`,`edad`,`password`) values 
(1,'juan','perez',18,'pepe'),
(2,'lucas','angrisani',23,'la1985'),
(3,'fernando','cardamone',18,'fc1988'),
(4,'anita','martinez',22,'ana2000'),
(5,'alberto','martinez',50,'amartinez'),
(6,'veronica','pi√±eyro',33,'vp1234'),
(7,'veronica','suarez',24,'veros'),
(8,'francisco','vecchia',22,'fvecchia'),
(9,'sofia','piergentilli',22,'sofipier'),
(10,'gustavo','lopez',33,'guslopez'),
(11,'alfredo','garcia',36,'garciaalfr'),
(12,'juan alberto','lopez',58,'jalopez'),
(13,'juan cruz','saenz',37,'jcsaenz'),
(14,'lorena','pp',2,'lore'),
(15,'juan carlos','bustamante',54,'jcbustaman');

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

/*Table structure for table `compras` */

DROP TABLE IF EXISTS `compras`;

CREATE TABLE `compras` (
  `codigo` int(11) DEFAULT NULL,
  `producto` varchar(30) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `compras` */

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

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `codigo` int(30) NOT NULL AUTO_INCREMENT,
  `producto` varchar(30) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=1027 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`codigo`,`producto`,`descripcion`,`precio`) values 
(1001,'Lampara Xenon B54','Las lamparas de xenon generan hasta 4 veces mas luz que las lamparas halogenas comunes. El consumo de energia es de 35watt, casi la mitad del consumo de las lamparas halogenas comunes. ',234.00),
(1002,'Lampara Xenon B16','El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.MODIFICADO',546.00),
(1003,'Lampara Xenon 300SD','El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.',344.00),
(1004,'Lampara Xenon B45SD','No hace falta realizar ninguna modificacion electrica en el auto, tampoco hace falta cortar cables. Hay kits para cada modelo y marca de autos. Los kits consumen casi la mitad de electricidad que las lamparas halogenas comunes.',256.40),
(1005,'Lampara Xenon 28SE','Este modelo de lampara genera un ahorro de combustible.',310.50),
(1006,'Lampara Xenon B345','En caso de ser necesario se pueden colocar lamparas halogenas de forma inmediata, los kits no modifican la instalacion electrica original del auto. ',340.00),
(1007,'Lampara Xenon 34SE','En caso de ser necesario se pueden colocar lamparas halogenas de forma inmediata, los kits no modifican la instalacion electrica original del auto. ',322.50),
(1008,'Lampara Xenon B90','Las lamparas de xenon generan menos calor que las lamparas halogenas, todas las opticas soportan las lamparas de xenon.',349.90),
(1009,'Lampara Xenon 43SE','Las lamparas de xenon generan menos calor que las lamparas halogenas, todas las opticas soportan las lamparas de xenon.',230.90),
(1010,'Lampara Xenon 98DE','Las lamparas de xenon generan menos calor que las lamparas halogenas, todas las opticas soportan las lamparas de xenon.',110.00),
(1011,'Lampara Xenon 65SD','Los balastros son de menor tama?o y son digitales. Los balastros no generan ningun tipo de interferencia en las computadoras de los autos ni en las radios. ',430.00),
(1012,'Lampara Xenon B44','Los balastros son de menor tama?o y son digitales. Los balastros no generan ningun tipo de interferencia en las computadoras de los autos ni en las radios.',235.60),
(1013,'Lampara Xenon 3D4G','Las lamparas de 6000k generan el mismo color que los autos de alta gama que vienen con lamparas de xenon de serie. A medida que aumenta la temperatura de las lamparas la potencia lum?nica disminuye. ',260.60),
(1014,'Lampara Xenon 109FD','Las lamparas de 6000k generan el mismo color que los autos de alta gama que vienen con lamparas de xenon de serie. A medida que aumenta la temperatura de las lamparas la potencia lum?nica disminuye. ',430.00),
(1015,'Lampara Xenon 90FT','El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.',456.60),
(1016,'Lampara Xenon FG34','El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.',190.00),
(1023,'Marina','ffffffff',123.00),
(1024,'Marina','ffffffff',123.00),
(1025,'Marina','vvvvvv',236.00),
(1026,'Marina','rrrr',234.00);

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
(1,'Pierdominici','Marina',31313757,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0\0\0\0M\n)\0\0\0tEXtSoftware\0Adobe ImageReadyq…e<\0\0diTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"Ôªø\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:A4844BF7E764E4119D6A96F6FD2BC57E\" xmpMM:DocumentID=\"xmp.did:20B9BBD7B37511E4B50D8E7FAD590869\" xmpMM:InstanceID=\"xmp.iid:20B9BBD6B37511E4B50D8E7FAD590869\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:96475724856EE41193F5C33B3B88D158\" stRef:documentID=\"xmp.did:A4844BF7E764E4119D6A96F6FD2BC57E\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>(E7\0\03IDATx⁄ºWkàTe~æsŒÃÓ\\vfvùùŸôùù]/∏xAi\rÛá,bVÑ¡\"A$DDE)ÇîZbÙ√EDD?Ç LçJQã\n≥sW≈mwL◊Ω_ÊÊŸôÛı|gv€Uw∑=≥‘Åó·ú˘Œ˚<ﬂ{yﬁÔà∂£E\n—v”∂—*i˛õK(ﬂ„N\'}xÁ‡&≠”‡É(Ì⁄&¸Oó°aYo≠ó§∆˚Có¥—tÜlç]≤)Oî^†Ö+Ä◊W‘Û7„ qDNÂ∞^®(óÄ…ùá‹¿÷≈¿˛\r´•hÃ;ÄK+8gïÄº:êÙ˚Y‘ºEõYQCÖ˘W±·X]-’¿√	Å5a†÷[*U>FcÁÉë?Äœ;%z)ﬂ&†p«∏„6Î”ÕÆ•„iû•ú˙’”´Åà¯∞P!÷B@˘æC;ñ	loûJ⁄$Ë}Îeâ‹„K5¥Y8ﬁ√»he∞&¬˛ \nAásﬂ€hEÀB—≠ZH›ÄòÂ≈9ãPÖΩ-y7∏‡ˆÓµª†y_(J|p‚/úÈ\ZÑWXÂ•Ärâ≈Ã„ˆÂSªRX9ˆ^˜–‹\Z6ëÁ¢F\n¡ä:…I<«gæO·’ƒbqhÜ€˛œ1Å,ﬂŸÃJVñ¿˚”&æ<?Ä”ù£∏ëg]§i[\Z˝8∏ÕgÉèÂx˜€Nt•Q_ﬂ\0óø\ZôÇÖJmˆP≥Âﬁ√Z)Å∑ﬂŒbˇ7›∏::éö`Åh\0.w%r–\\TJ¡ IÌÂö_zrà\'í0ºAXõÿ1óF®íÖôIh≥È1äÃP∆ƒﬁc›∏ô◊–ÿ¥¡h‹æ rÇM/tÙö:~ÏŒcœ◊ù8w;O&∏	>ŒùG∏‰≈µ@º¬≤SÍ®UæUÀ}ˆs/Æ3a:÷‹^X‹UñŒ7Ü%\Z<©,∆YtåX®khÇÓÒ€k“lcÎÜòBs¥èõr–ö›~\Zé^1qÍ˙ÍÍ‚0XL*§v∆stºgÉÜáò¢|—BMU5\rÀ`∏}ˆŒ˚Óßö°ÂLãQÃ3Y3È¢1v>Ó(¬“˝x™`\\	“´+ÒO[fÜ˙0ê´ÇÓıbúïÆqM¢R‚Ö%è-)≠˘sn¶ã®™Œ∫@	á∑¢≤6Åº“\0ÇÔZ#–öúZ≥™÷Ö≠$\ZJƒ9ökÑmÅiÛıd˚Î≈≈π¿™∂,ÁR\\\Zÿ…ÿŸ\"∞!>]\r%ZW‘–‰,r,p•7á√Ì√÷6î\'≈ µﬂΩN`]Ù~∂≈g⁄⁄Èj8ñ+‡˝ì7ê”=àz‹|RÃ˙·ºàà9I i¿ ˙∆Lºy¨ø˜ôXçC⁄r-ùG¿Mz]‡∑û\"Zb:ùÀá—‰<P9}máŒÙ‡}uıI∂ÆáıcïóÂ÷îoˇî«KÀÛÿ≤≤∆÷áImüŒr>¸⁄ù∆Wp&5ü◊OMh¥¡aY;ê∏∫q:zÔ¢âû±><ª~ÅKô;üJ„ªÀÉ∏p+ãk£&‹îÁH,A•‰ëI”˛|ﬁ\'\"E¢:¬\'‹eo¶/o√„6pºcü^Ê‡©\"V_£íCMµõú¯$Åô%Í>]PäÁ«ëa˝«˚±kcàáâD¢øØTÄ\'\nX™Xûõ˜tˆzp°∆ÛG˙qä£ŸÁ“K”ÀñÛv•æ)8¶Ø+Ø—˙úêTˆPÆH∫ŒIgüí´Â3ÕbüJ¡Y⁄£¥¥5ˇœπ’ÜíŒi9˛é’9øR¸8›◊öáˇ`\0é»ø3`/\0\0\0\0IENDÆB`Ç','image/png'),
(2,'Perez','Juan',57717202,'ˇÿˇ‡\0JFIF\0\0H\0H\0\0ˇ€\0C\0		\n\n\n\n          ˇ€\0C\r\r\Z\Z                                                 ˇ¿\0\0(\0‹\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0)\0\0\0\0\0\0\0\0a!1\"#QARBqˇƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ˇƒ\0#\0\0\0\0\0\0\0\0\0!12\"Aaq±ˇ⁄\0\0\0?\0˙—Ùo\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.¥˙}6Åë’Í™ãù>\nmª‹©˝*ππ2ÀÒ√Ù’«Ü8˜ìWS†émU3“Z9’qπ;+W˘T˚CØ-ı?hsÂ„Æ„‘´Õ(f¨§ÇX¢öfG,Î∂=»äıO”Q|˘∑Æ¢ü®È≤7®Ÿì”vÀ€uº⁄‡H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ú[UmñΩ\\‰j7∫ˆAEÆ5◊P~MY$ÓI ä8\\÷±\\à®óµÔ…á∆€[à˜-|ı~˝0éÇOO’2ûEë`ñ9\\énœj˚y&oÂâû≠_◊j|ºue∑Ø:øT‘ı	®®ﬂQ¯ˆ≤ûí°èè„û7$Ú;kÏªØf˚DSéSrûmeíj“Íêµˆ~Öï≠çSz* ´Ÿl‰Ej¢ì∑w¸+Z‘¶Î8+ûªG%,â4ìÌ›*5ˆ|à’[¯uí◊Ï⁄{Xjë’”I_LÕF±YEßu9”ªzÀΩÎπŒK_Íﬁ-ˇ\0öL¶ãP´¢ìPWOSP’”c´TWÓrJÌ»ÁGπå˚≤%ìËäNﬂ‚≤\rRπ‘∫§qÍJ»—¥“C*À<Ìj*™?Â≤HàøÈÕDDQJÏÈ=!®…QEP◊‰~)‹÷ ˘∫Ü9,ãÒ»®◊+Q~ÓºìNòdΩÀ¿’{25,À¿‘≥/RÃº\rK25,À¿‘≥/RÃº\rK25,À¿‘≥/RÃº\rK25,À¿‘≥/R—óU--CÈ™#ùàä¯◊sQ›“Â3«h•± ¶›®)*#ó≠e==RªrOá{U?{ì∫‹Ûπ<\\±˙‹«ˆ€á>9{®ñµ©ë_4:t6ôÏ∆È]ú˚˘[vÌır¸^$œyL⁄ºûDGXƒ(”¡Ë±\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇŸ','image/jpeg');

/*Table structure for table `user_pass` */

DROP TABLE IF EXISTS `user_pass`;

CREATE TABLE `user_pass` (
  `usuario` varchar(10) NOT NULL,
  `clave` varchar(255) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_pass` */

insert  into `user_pass`(`usuario`,`clave`) values 
('admin','$2y$04$QcDwtCKNN1O6r0lF07LOFeyXgTNBaNuKshFhf88PR36LltmI9KhhK'),
('marina','$2y$04$pvTfQ58EzL9hhUhzekpJtO7/.IJnlnlqubm3BEXK5MYNVH44KnqWy');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `usuario` char(8) NOT NULL,
  `password` char(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`usuario`,`password`,`nombre`,`apellido`,`email`,`dni`) values 
('admin','admin','Lucila','Gomez','lucila@gmail.com',29654785),
('Guillerm','phpavanz','Guillermo','Pizarro','guillermo@hotmail.com',98765432),
('Juan','jperez12','Juan','Perez','jperez@hotmail.com',65481566),
('Lorena','cursophp','Lorena','Bernis','lorena@hotmail.com',12345678),
('ma','1','q','a','a@autex.com.ar',2345678),
('Marcos','1','m','j','g@g.com.ar',12345678),
('marina','1234','m','p','mpierdominici@autex-open.com',11236547),
('test','test','a','s','ao.integracion@gmail.com',12345678);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
