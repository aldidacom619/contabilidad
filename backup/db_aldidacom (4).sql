-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-07-2019 a las 04:59:10
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
-- Estructura de tabla para la tabla `ad_acciones`
--

CREATE TABLE IF NOT EXISTS `ad_acciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ad_acciones`
--

INSERT INTO `ad_acciones` (`codigo`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(8, 'REGISTRO DE USUARIOS', 'RU', 'REGISTRO USUARIO', 'AC'),
(9, 'MODIFIACION DE USUARIOS', 'MU', 'MODIFICAR USUARIOS', 'AC'),
(10, 'AGREGAR ROLES', 'AR', 'AGREGAR ROLES', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_aplicaciones`
--

CREATE TABLE IF NOT EXISTS `ad_aplicaciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `ad_aplicaciones`
--

INSERT INTO `ad_aplicaciones` (`codigo`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(8, 'APLICACION PRINCIPAL', 'ADMIN', 'ADMINISTRACION', 'AC'),
(9, 'SISTEMA CONTABILIDAD', 'SC', 'SISTEMA CONTABLE', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_entidades`
--

CREATE TABLE IF NOT EXISTS `ad_entidades` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(100) NOT NULL,
  `descripcion_entidad` varchar(200) NOT NULL,
  `abreviacion` varchar(5) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ad_entidades`
--

INSERT INTO `ad_entidades` (`codigo`, `denominacion`, `descripcion_entidad`, `abreviacion`, `estado`) VALUES
(1, 'ALDIDACOM', 'ADMINISTRACION CENTRAL', 'ADMIN', 'AC'),
(2, 'DEFENSORIA', 'DEFENSORIA DEL PUEBLO', 'DSP', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_logs`
--

CREATE TABLE IF NOT EXISTS `ad_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_accion` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ad_logs`
--

INSERT INTO `ad_logs` (`id`, `idad_usuario`, `codad_accion`, `fecha`) VALUES
(8, NULL, 8, '2019-06-16 18:30:00'),
(9, NULL, 9, '2019-06-16 18:30:00'),
(10, 8, 8, '2019-07-02 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_modulos`
--

CREATE TABLE IF NOT EXISTS `ad_modulos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codad_aplicacion` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `ad_modulos`
--

INSERT INTO `ad_modulos` (`codigo`, `codad_aplicacion`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(10, 8, 'ADMINISTRACION DE USUARIOS', 'US', 'USUARIOS', 'AC'),
(11, 8, 'ADMINISTRACION DE APLICACIONES', 'AP', 'APLICACIONES', 'AC'),
(12, 8, 'OPCIONES ENTORNO', 'IN', 'ENTORNO', 'AC'),
(13, 8, 'CONTROL DE PAGOS', 'CP', 'CONTROL DE PAGOS', 'AC'),
(14, 9, 'CONTROL CUENTAS', 'US', 'USUARIOS', 'AC'),
(15, 9, 'REGISTRO DE INGRESO Y SALIDAS', 'AP', 'APLICACIONES', 'AC'),
(16, 9, 'REPORTE CONSULTAS', 'IN', 'ENTORNO', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_opciones`
--

CREATE TABLE IF NOT EXISTS `ad_opciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codad_modulo` int(11) NOT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `opcion` varchar(20) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `nivel` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `ad_opciones`
--

INSERT INTO `ad_opciones` (`codigo`, `codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(8, 11, 8, 'APLICACIONES', '', '', 1, 0, 'AC'),
(9, 11, 8, 'REGISTRO APLICACIÓN', '', 'DDDDDD', 2, 1, 'AC'),
(10, 11, 8, 'MODIFICAR APLICACIÓN', '', 'DDDDD', 2, 2, 'AC'),
(11, 12, 11, 'INICIO', 'INCIO', 'Inicio', 0, 1, 'AC'),
(12, 10, 12, 'USUARIOS', '', '', 1, 1, 'AC'),
(13, 10, 12, 'REGISTRO USUARIO', '', '', 2, 1, 'AC'),
(14, 13, 8, 'CONTROL PAGOS', '', '', 2, 3, 'AC'),
(15, 15, 15, 'REGISTRO CONTABLE', '', '', 1, 1, 'AC'),
(16, 15, 15, 'REGISTRO INGRESOS', '', 'Registrar_ingresos', 2, 1, 'AC'),
(17, 15, 15, 'MODIFICACION INGRESO', '', 'Modificar_ingresos', 2, 2, 'AC'),
(18, 15, 15, 'REGISTRO EGRESOS', '', 'Registrar_egresos', 2, 3, 'AC'),
(19, 15, 15, 'MODIFICACION EGRESOS', '', 'Modificar_egresos', 2, 4, 'AC'),
(20, 15, 15, 'BORAR INGRESOS', '', 'Eliminar_ingresos', 2, 6, 'AC'),
(21, 15, 15, 'BORRAR EGRESOS', '', 'Eliminar_egresos', 2, 7, 'AC'),
(22, 14, 21, 'CONTROL CUENTAS', '', '', 1, 0, 'AC'),
(23, 14, 21, 'REGISTRO CUENTAS', '', 'Registrar_cuentas', 2, 1, 'AC'),
(24, 14, 21, 'MODIFICACION CUENTAS', '', 'Modificar_cuentas', 2, 2, 'AC'),
(25, 14, 21, 'BAJA CUENTAS', '', 'Baja_cuentas', 2, 3, 'AC'),
(26, 16, 26, 'REPORTE CONSULTAS', '', '', 1, 2, 'AC'),
(27, 16, 26, 'REPORTE INGRESOS', '', 'Reportes_ingresos', 2, 1, 'AC'),
(28, 16, 26, 'REPORTE EGRESOS', '', 'Reportes_egresos', 2, 2, 'AC'),
(29, 16, 26, 'REPORTES OTROS', '', 'Reportes_otros', 2, 3, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_opciones_usuarios`
--

CREATE TABLE IF NOT EXISTS `ad_opciones_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `idad_logs` int(11) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `ad_opciones_usuarios`
--

INSERT INTO `ad_opciones_usuarios` (`id`, `idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(8, 8, 8, 9, 'AC'),
(9, 8, 9, 9, 'AC'),
(10, 8, 10, 9, 'AC'),
(11, 8, 11, 9, 'AC'),
(12, 8, 12, 9, 'AC'),
(13, 8, 13, 9, 'AC'),
(14, 8, 14, 9, 'AC'),
(15, 10, 15, 11, 'AC'),
(16, 10, 16, 11, 'AC'),
(17, 10, 17, 11, 'AC'),
(18, 10, 18, 11, 'AC'),
(19, 10, 19, 11, 'AC'),
(20, 10, 20, 11, 'AC'),
(21, 10, 21, 11, 'AC'),
(22, 10, 22, 11, 'AC'),
(23, 10, 23, 11, 'AC'),
(24, 10, 24, 11, 'AC'),
(25, 10, 25, 11, 'AC'),
(26, 10, 26, 11, 'AC'),
(27, 10, 27, 11, 'AC'),
(28, 10, 28, 11, 'AC'),
(29, 10, 29, 11, 'AC'),
(30, 10, 11, 11, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_usuarios`
--

CREATE TABLE IF NOT EXISTS `ad_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_entidad` int(11) NOT NULL,
  `codad_aplicacion` int(11) DEFAULT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `nro_documento` varchar(30) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `idad_logs` int(11) DEFAULT NULL,
  `direccion` varchar(250) NOT NULL,
  `tel_cel` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `cargo` varchar(250) NOT NULL,
  `login` varchar(50) NOT NULL,
  `clave` varchar(250) NOT NULL,
  `tipo_user` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ad_usuarios`
--

INSERT INTO `ad_usuarios` (`id`, `codad_entidad`, `codad_aplicacion`, `nombres`, `apellidos`, `nro_documento`, `tipo_documento`, `idad_logs`, `direccion`, `tel_cel`, `fecha_nacimiento`, `correo`, `cargo`, `login`, `clave`, `tipo_user`, `estado`) VALUES
(8, 1, 8, 'DIEGO', 'DAZA ALCARAZ', '6703132', 'CI', 8, 'HEROINAS', '78720504', '1989-11-26', 'aldidacom@gmail.com', 'GERENTE', 'DDAZA.ADMIN', '952c4c39d5460b647fa9f7f4cf36fb13', 'SUPER ADMINISTRADOR', 'AC'),
(9, 2, 9, 'OSVALDO', 'QUISPE', '1234567', 'CI', 10, 'EL ALTO', '78720504', '1985-11-09', 'osvaldo@gmail.com', 'GERENTE', 'ADMOSVALDO.DSP', '952c4c39d5460b647fa9f7f4cf36fb13', 'ADMINISTRADOR', 'AC'),
(10, 2, 9, 'OSVALDO', 'QUISPE ', '1234567', 'CI', 10, 'EL ALTO', '78720504', '1985-11-09', 'osvaldo@gmail.com', 'TECNICO CONTABLE', 'OQUISPE.DSP', '952c4c39d5460b647fa9f7f4cf36fb13', 'TECNICO', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cb_beneficiarios`
--

CREATE TABLE IF NOT EXISTS `cb_beneficiarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) NOT NULL,
  `estado` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cb_beneficiarios`
--

INSERT INTO `cb_beneficiarios` (`id`, `nombres`, `estado`) VALUES
(1, 'BANCO CENTRAL DE BOLVIA', 'AC'),
(2, 'MANUEL YANA TINTA', 'AC');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `cb_cuentas`
--

INSERT INTO `cb_cuentas` (`codigo`, `codad_entidad`, `codcb_cuenta`, `denominacion_cuenta`, `descripcion_cuenta`, `nivel`, `registra_valor`, `estado`) VALUES
(1, 2, 0, 'CUENTA 1', 'CUENTA 1', 1, 0, 'AC'),
(2, 2, 0, 'CUENTA 2', 'CUENTA 2', 1, 0, 'AC'),
(3, 2, 0, 'CUENTA 3', 'CUENTA 3', 1, 0, 'AC'),
(4, 2, 0, 'CUENTA 4', 'CUENTA 4', 1, 0, 'AC'),
(5, 2, 1, 'SUBCUENTA 1', 'SUBCUENTA 1', 2, 0, 'AC'),
(6, 2, 1, 'SUBCUENTA 2', 'SUBCUENTA 2', 2, 0, 'AC'),
(7, 2, 5, 'SUB-SUBCUENTA 1', 'SUB-SUBCUENTA 1', 3, 0, 'AC'),
(8, 2, 5, 'SUB-SUBCUENTA 2', 'SUB-SUBCUENTA 2', 3, 0, 'AC'),
(9, 2, 7, 'SUB-SUB-SUBCUENTA 1', 'SUB-SUB-SUBCUENTA 1', 4, 1, 'AC'),
(10, 2, 7, 'SUB-SUB-SUBCUENTA 2', 'SUB-SUB-SUBCUENTA 2', 4, 1, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cb_egresos`
--

CREATE TABLE IF NOT EXISTS `cb_egresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_1` int(11) NOT NULL,
  `cuenta_2` int(11) NOT NULL,
  `cuenta_3` int(11) NOT NULL,
  `cuenta_4` int(11) NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_cambio` decimal(10,0) NOT NULL,
  `documento_respaldo` varchar(15) NOT NULL,
  `idcb_beneficiario` int(11) NOT NULL,
  `descripcion_transaccion` text NOT NULL,
  `tipo_egreso` int(11) NOT NULL,
  `idad_logs` int(11) NOT NULL,
  `idcb_ingreso` int(11) NOT NULL,
  `estado` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cb_ingresos`
--

CREATE TABLE IF NOT EXISTS `cb_ingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_1` int(11) NOT NULL,
  `cuenta_2` int(11) NOT NULL,
  `cuenta_3` int(11) NOT NULL,
  `cuenta_4` int(11) NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_cambio` decimal(10,0) NOT NULL,
  `documento_respaldo` varchar(15) NOT NULL,
  `idcb_beneficiario` int(11) NOT NULL,
  `descripcion_transaccion` text NOT NULL,
  `tipo_ingreso` varchar(10) NOT NULL,
  `cantidad_cuentas_egreso` int(11) NOT NULL,
  `idad_logs` int(11) NOT NULL,
  `estado` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cb_ingresos`
--

INSERT INTO `cb_ingresos` (`id`, `cuenta_1`, `cuenta_2`, `cuenta_3`, `cuenta_4`, `monto`, `fecha`, `tipo_cambio`, `documento_respaldo`, `idcb_beneficiario`, `descripcion_transaccion`, `tipo_ingreso`, `cantidad_cuentas_egreso`, `idad_logs`, `estado`) VALUES
(1, 9, 0, 0, 0, '100', '2019-07-01', '7', 'BOLETA DEPOSITO', 2, 'PRUEBAAA', 'IN', 0, 11, 'PE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
