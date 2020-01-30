-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-01-2020 a las 04:22:20
-- Versión del servidor: 5.5.20
-- Versión de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_aldidacom`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cb_cuentas`
--

CREATE TABLE IF NOT EXISTS `cb_cuentas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codad_entidad` int(11) NOT NULL,
  `codcb_cuenta` int(11) DEFAULT NULL,
  `denominacion_cuenta` varchar(100) NOT NULL,
  `descripcion_cuenta` varchar(200) NOT NULL,
  `nivel` int(11) NOT NULL,
  `registra_valor` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `cb_cuentas`
--

INSERT INTO `cb_cuentas` (`codigo`, `codad_entidad`, `codcb_cuenta`, `denominacion_cuenta`, `descripcion_cuenta`, `nivel`, `registra_valor`, `estado`) VALUES
(1, 2, 0, 'Banco', 'Bancos', 1, 0, 'AC'),
(2, 2, 0, 'Fondo Social', 'Fondo Social', 1, 0, 'AC'),
(5, 2, 1, 'Fondo Rotativo Defensor del Pueblo', 'Fondo Rotativo Defensor del Pueblo', 2, 0, 'AC'),
(6, 2, 2, 'Fondo Social Defensor del Pueblo', 'Fondo Social Defensor del Pueblo', 2, 1, 'AC');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
