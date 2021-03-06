-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-08-2019 a las 12:58:27
-- Versión del servidor: 10.2.26-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aldidacom_aldidacom`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_acciones`
--

CREATE TABLE `ad_acciones` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ad_acciones`
--

INSERT INTO `ad_acciones` (`codigo`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(8, 'REGISTRO DE USUARIOS', 'RU', 'REGISTRO USUARIO', 'AC'),
(9, 'MODIFIACION DE USUARIOS', 'MU', 'MODIFICAR USUARIOS', 'AC'),
(10, 'AGREGAR ROLES', 'AR', 'AGREGAR ROLES', 'AC'),
(11, 'REGISTRO DE INGRESOS', 'RIN', 'REGISTRO INGRESOS', 'AC'),
(12, 'REGISTRO DE EGRESOS DE INGRESOS', 'REI', 'REGISTRO DE EGRESOS DE INGRESOS', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_aplicaciones`
--

CREATE TABLE `ad_aplicaciones` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ad_entidades` (
  `codigo` int(11) NOT NULL,
  `denominacion` varchar(100) NOT NULL,
  `descripcion_entidad` varchar(200) NOT NULL,
  `abreviacion` varchar(5) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ad_logs` (
  `id` int(11) NOT NULL,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_accion` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ad_logs`
--

INSERT INTO `ad_logs` (`id`, `idad_usuario`, `codad_accion`, `fecha`) VALUES
(8, NULL, 8, '2019-06-16 18:30:00'),
(9, NULL, 9, '2019-06-16 18:30:00'),
(10, 8, 8, '2019-07-02 00:00:00'),
(11, 10, 11, '2019-08-21 00:54:09'),
(12, 10, 12, '2019-08-21 00:59:43'),
(13, 10, 11, '2019-08-21 10:16:41'),
(14, 10, 12, '2019-08-21 10:17:13'),
(15, 10, 12, '2019-08-21 10:17:50'),
(16, 10, 12, '2019-08-21 10:18:09'),
(17, 10, 12, '2019-08-21 10:18:24'),
(18, 10, 12, '2019-08-21 10:18:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_modulos`
--

CREATE TABLE `ad_modulos` (
  `codigo` int(11) NOT NULL,
  `codad_aplicacion` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ad_opciones` (
  `codigo` int(11) NOT NULL,
  `codad_modulo` int(11) NOT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `opcion` varchar(20) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `nivel` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ad_opciones_usuarios` (
  `id` int(11) NOT NULL,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `idad_logs` int(11) DEFAULT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(17, 10, 17, 11, 'AN'),
(18, 10, 18, 11, 'AC'),
(19, 10, 19, 11, 'AN'),
(20, 10, 20, 11, 'AN'),
(21, 10, 21, 11, 'AN'),
(22, 10, 22, 11, 'AN'),
(23, 10, 23, 11, 'AN'),
(24, 10, 24, 11, 'AN'),
(25, 10, 25, 11, 'AN'),
(26, 10, 26, 11, 'AN'),
(27, 10, 27, 11, 'AN'),
(28, 10, 28, 11, 'AN'),
(29, 10, 29, 11, 'AN'),
(30, 10, 11, 11, 'AN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_usuarios`
--

CREATE TABLE `ad_usuarios` (
  `id` int(11) NOT NULL,
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
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ad_usuarios`
--

INSERT INTO `ad_usuarios` (`id`, `codad_entidad`, `codad_aplicacion`, `nombres`, `apellidos`, `nro_documento`, `tipo_documento`, `idad_logs`, `direccion`, `tel_cel`, `fecha_nacimiento`, `correo`, `cargo`, `login`, `clave`, `tipo_user`, `estado`) VALUES
(8, 1, 8, 'DIEGO', 'DAZA ALCARAZ', '6703132', 'CI', 8, 'HEROINAS', '78720504', '1989-11-26', 'aldidacom@gmail.com', 'GERENTE', 'DDAZA.ADMIN', '952c4c39d5460b647fa9f7f4cf36fb13', 'SUPER ADMINISTRADOR', 'AC'),
(9, 2, 9, 'OSVALDO', 'QUISPE', '1234567', 'CI', 10, 'EL ALTO', '78720504', '1985-11-09', 'osvaldo@gmail.com', 'GERENTE', 'ADMOSVALDO.DSP', '952c4c39d5460b647fa9f7f4cf36fb13', 'ADMINISTRADOR', 'AC'),
(10, 2, 9, 'ORLANDO', 'QUISPE ARCANI', '5471526', 'CI', 10, 'Avenida Cívica No. 1060 zona Santa Rosa', '78720504', '1983-11-06', 'orlandoquispea@hotmail.com', 'TECNICO CONTABLE', 'OQUISPE.DSP', '952c4c39d5460b647fa9f7f4cf36fb13', 'TECNICO', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cb_beneficiarios`
--

CREATE TABLE `cb_beneficiarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `estado` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `cb_cuentas` (
  `codigo` int(11) NOT NULL,
  `codad_entidad` int(11) NOT NULL,
  `codcb_cuenta` int(11) DEFAULT NULL,
  `denominacion_cuenta` varchar(100) NOT NULL,
  `descripcion_cuenta` varchar(200) NOT NULL,
  `nivel` int(11) NOT NULL,
  `registra_valor` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cb_cuentas`
--

INSERT INTO `cb_cuentas` (`codigo`, `codad_entidad`, `codcb_cuenta`, `denominacion_cuenta`, `descripcion_cuenta`, `nivel`, `registra_valor`, `estado`) VALUES
(1, 2, 0, 'Bancos', 'Bancos', 1, 0, 'AC'),
(2, 2, 0, 'Depositos en Garantía', 'Depositos en Garantía', 1, 0, 'AC'),
(3, 2, 0, 'Cuentas Por Pagar', 'Cuentas Por Pagar', 1, 0, 'AC'),
(4, 2, 0, 'Cuenta Auxiliar', 'Cuenta Auxiliar', 1, 0, 'AC'),
(5, 2, 1, 'Fondo Rotativo Defensor del Pueblo', 'Fondo Rotativo Defensor del Pueblo', 2, 0, 'AC'),
(6, 2, 2, 'Fondo Social Defensor del Pueblo', 'Fondo Social Defensor del Pueblo', 2, 1, 'AC'),
(7, 2, 3, 'Impuestos Por Pagar', 'Impuestos Por Pagar', 2, 0, 'AC'),
(8, 2, 4, 'Sub Cuenta Auxiliar', 'Sub Cuenta Auxiliar', 2, 0, 'AC'),
(9, 2, 1, 'Sub cuenta', 'Sub cuenta', 2, 1, 'AC'),
(10, 2, 2, 'Sub cuenta 2', 'Sub cuenta 2', 2, 1, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cb_ingresos_egresos`
--

CREATE TABLE `cb_ingresos_egresos` (
  `id` int(11) NOT NULL,
  `idcb_ingreso_egreso` int(11) NOT NULL,
  `correlativo` int(11) NOT NULL,
  `cuenta_1` int(11) NOT NULL,
  `cuenta_2` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_cambio` decimal(10,2) NOT NULL,
  `documento_respaldo` varchar(15) NOT NULL,
  `numero_cheque` varchar(20) NOT NULL,
  `idcb_beneficiario` int(11) NOT NULL,
  `descripcion_transaccion` text NOT NULL,
  `tipo_transaccion` varchar(11) NOT NULL,
  `idad_logs` int(11) NOT NULL,
  `cantidad_cuentas_egreso` int(11) NOT NULL,
  `saldo_debe` decimal(10,2) NOT NULL,
  `estado` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cb_ingresos_egresos`
--

INSERT INTO `cb_ingresos_egresos` (`id`, `idcb_ingreso_egreso`, `correlativo`, `cuenta_1`, `cuenta_2`, `monto`, `fecha`, `tipo_cambio`, `documento_respaldo`, `numero_cheque`, `idcb_beneficiario`, `descripcion_transaccion`, `tipo_transaccion`, `idad_logs`, `cantidad_cuentas_egreso`, `saldo_debe`, `estado`) VALUES
(21, 0, 1, 2, 6, '200.00', '2019-07-03', '6.97', 'DEPOSITO', '', 2, 'FADFASDF', 'IN', 11, 2, '0.00', 'LI'),
(22, 21, 0, 1, 5, '50.00', '2019-07-03', '6.97', 'DEPOSITO', '', 2, 'FADFASDF', 'EG-IN', 11, 0, '0.00', 'AC'),
(23, 0, 2, 2, 6, '200.00', '2019-07-02', '6.97', 'DEPOSITO', '', 2, 'adsfasdfasdf', 'IN', 11, 1, '0.00', 'LI'),
(24, 21, 0, 4, 8, '150.00', '2019-07-03', '6.97', 'DEPOSITO', '', 2, 'FADFASDF', 'EG-IN', 11, 0, '0.00', 'AC'),
(25, 23, 0, 3, 7, '200.00', '2019-07-02', '6.97', 'DEPOSITO', '', 2, 'adsfasdfasdf', 'EG-IN', 11, 0, '0.00', 'AC'),
(26, 0, 3, 2, 6, '200.00', '2019-07-02', '6.97', 'DEPOSITO', '', 2, 'asdfasdfasdf', 'IN', 11, 1, '0.00', 'LI'),
(27, 26, 0, 2, 10, '200.00', '2019-07-02', '6.97', 'DEPOSITO', '', 2, 'asdfasdfasdf', 'EG-IN', 12, 0, '0.00', 'AC'),
(28, 0, 4, 2, 10, '3500.00', '2019-08-21', '6.96', 'boleta de posit', '', 2, 'DEVOLUCIÓN DE CUENTAS POR COBRAR ', 'IN', 13, 5, '-891.00', 'PE'),
(29, 28, 0, 3, 7, '100.00', '2019-08-21', '6.96', 'boleta de posit', '', 2, 'DEVOLUCIÓN DE CUENTAS POR COBRAR ', 'EG-IN', 14, 0, '0.00', 'AC'),
(30, 28, 0, 2, 6, '2000.00', '2019-08-21', '6.96', 'boleta de posit', '', 2, 'DEVOLUCIÓN DE CUENTAS POR COBRAR ', 'EG-IN', 15, 0, '0.00', 'AC'),
(31, 28, 0, 1, 9, '216.00', '2019-08-21', '6.96', 'boleta de posit', '', 2, 'DEVOLUCIÓN DE CUENTAS POR COBRAR ', 'EG-IN', 16, 0, '0.00', 'AC'),
(32, 28, 0, 4, 8, '75.00', '2019-08-21', '6.96', 'boleta de posit', '', 2, 'DEVOLUCIÓN DE CUENTAS POR COBRAR ', 'EG-IN', 17, 0, '0.00', 'AC'),
(33, 28, 0, 3, -1, '2000.00', '2019-08-21', '6.96', 'boleta de posit', '', 2, 'DEVOLUCIÓN DE CUENTAS POR COBRAR ', 'EG-IN', 18, 0, '0.00', 'AC');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ad_acciones`
--
ALTER TABLE `ad_acciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_aplicaciones`
--
ALTER TABLE `ad_aplicaciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_entidades`
--
ALTER TABLE `ad_entidades`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_logs`
--
ALTER TABLE `ad_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ad_modulos`
--
ALTER TABLE `ad_modulos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_opciones`
--
ALTER TABLE `ad_opciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_opciones_usuarios`
--
ALTER TABLE `ad_opciones_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ad_usuarios`
--
ALTER TABLE `ad_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cb_beneficiarios`
--
ALTER TABLE `cb_beneficiarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cb_cuentas`
--
ALTER TABLE `cb_cuentas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `cb_ingresos_egresos`
--
ALTER TABLE `cb_ingresos_egresos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ad_acciones`
--
ALTER TABLE `ad_acciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ad_aplicaciones`
--
ALTER TABLE `ad_aplicaciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ad_entidades`
--
ALTER TABLE `ad_entidades`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ad_logs`
--
ALTER TABLE `ad_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ad_modulos`
--
ALTER TABLE `ad_modulos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `ad_opciones`
--
ALTER TABLE `ad_opciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `ad_opciones_usuarios`
--
ALTER TABLE `ad_opciones_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `ad_usuarios`
--
ALTER TABLE `ad_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cb_beneficiarios`
--
ALTER TABLE `cb_beneficiarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cb_cuentas`
--
ALTER TABLE `cb_cuentas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cb_ingresos_egresos`
--
ALTER TABLE `cb_ingresos_egresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
