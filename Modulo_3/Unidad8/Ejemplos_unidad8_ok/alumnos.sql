-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-09-2010 a las 16:02:27
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `alumnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `cod_alumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`cod_alumno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcar la base de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`cod_alumno`, `nombre`, `apellido`, `edad`, `password`) VALUES
(1, 'juan', 'perez', 18, 'pepe'),
(2, 'lucas', 'angrisani', 23, 'la1985'),
(3, 'fernando', 'cardamone', 18, 'fc1988'),
(4, 'anita', 'martinez', 22, 'ana2000'),
(5, 'alberto', 'martinez', 50, 'amartinez'),
(6, 'veronica', 'piñeyro', 33, 'vp1234'),
(7, 'veronica', 'suarez', 24, 'veros'),
(8, 'francisco', 'vecchia', 22, 'fvecchia'),
(9, 'sofia', 'piergentilli', 22, 'sofipier'),
(10, 'gustavo', 'lopez', 33, 'guslopez'),
(11, 'alfredo', 'garcia', 36, 'garciaalfr'),
(12, 'juan alberto', 'lopez', 58, 'jalopez'),
(13, 'juan cruz', 'saenz', 37, 'jcsaenz'),
(14, 'lorena', 'pp', 2, 'lore'),
(15, 'juan carlos', 'bustamante', 54, 'jcbustaman');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
