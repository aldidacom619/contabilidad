-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-01-2020 a las 04:20:52
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
-- Estructura de tabla para la tabla `cb_ingresos_egresos`
--

CREATE TABLE IF NOT EXISTS `cb_ingresos_egresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcb_ingreso_egreso` int(11) NOT NULL,
  `correlativo` int(11) NOT NULL,
  `cuenta_1` int(11) NOT NULL,
  `cuenta_2` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_cambio` decimal(10,2) NOT NULL,
  `documento_respaldo` varchar(200) NOT NULL,
  `numero_cheque` varchar(20) NOT NULL,
  `idcb_beneficiario` int(11) NOT NULL,
  `descripcion_transaccion` text NOT NULL,
  `tipo_transaccion` varchar(5) NOT NULL,
  `idad_logs` int(11) NOT NULL,
  `cantidad_cuentas_egreso` int(11) NOT NULL,
  `saldo_debe` decimal(10,2) NOT NULL,
  `estado` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
