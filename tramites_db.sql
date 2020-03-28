-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2020 a las 01:44:12
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tramites_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish2_ci DEFAULT 'NULL',
  `cargo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `servicio` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `codigo`, `cargo`, `servicio`) VALUES
(1, '101', 'DIRECTOR DEPARTAMENTAL DE EDUCACION DE CHUQUISACA', '5510060'),
(2, '102', 'RELACIONADOR PUBLICO', '5510060'),
(3, '103', 'SECRETARIA DIRECCION DEPARTAMENTAL', '5510060'),
(4, '104', 'AUXILIAR DE SECRETARIA', '5510060'),
(5, '105', 'CHOFER DIRECCION DEPARTAMENTAL', '5510060'),
(6, '201', 'JEFE DE AUDITORIA INTERNA', '5510060'),
(7, '202', 'PROFESIONAL DE AUDITORIA', '5510060'),
(8, '301', 'JEFE DE ASESORIA LEGAL', '5510060'),
(9, '302', 'PROFESIONAL JURIDICO', '5510060'),
(10, '303', 'TRIBUNAL DISCIPLINARIO 1', '5510060'),
(11, '304', 'TRIBUNAL DISCIPLINARIO 2', '5510060'),
(12, '305', 'RESPONSABLE DE TRANSPARENCIA', '5510060'),
(13, '401', 'SUBDIRECTOR DE EDUCACION SUPERIOR', '5510060'),
(14, '402', 'TECNICO FORMACION TECNICA TECNOLOGICA Y ARTISTICA', '5510060'),
(15, '403', 'TECNICO FORMACION UNIVERSITARIA', '5510060'),
(16, '404', 'TECNICO EN FORMACION DE MAESTROS Y MAESTRAS', '5510060'),
(17, '405', 'SECRETARIA EDUCACION SUPERIOR', '5510060'),
(18, '501', 'SUBDIRECTOR DE EDUCACION REGULAR', '5510060'),
(19, '502', 'RESPONSABLE S.I.E.', '5510060'),
(20, '503', 'TECNICO EDUCACION SECUNDARIA COMUNITARIA PRODUCTIVA', '5510060'),
(21, '504', 'TECNICO EDUCACION INICIAL EN FAMILIA COMUNITARIA', '5510060'),
(22, '505', 'TECNICO EDUCACION INTRA, INTERCULTURAL PLURILINGÜE', '5510060'),
(23, '506', 'TECNICO EDUCACION PRIMARIA COMUNITARIA VOCACIONAL', '5510060'),
(24, '507', 'TECNICO PARTICIPACION SOCIAL COMUNITARIA', '5510060'),
(25, '508', 'SECRETARIA SUBDIRECCION DE EDUCACION REGULAR', '5510060'),
(26, '601', 'SUBDIRECTOR DE EDUCACION ALTERNATIVA Y ESPECIAL', '5510060'),
(27, '602', 'TECNICO DE EDUCACION DE PERSONAS JOVENES Y ADULTAS', '5510060'),
(28, '603', 'TECNICO DE EDUCACION ESPECIAL', '5510060'),
(29, '604', 'TECNICO DE EDUCACION PERMANENTE', '5510060'),
(30, '605', 'SECRETARIA SUBDIRECCION DE EDUCACION ALTERNATIVA Y ESPECIAL', '5510060'),
(31, '701', 'JEFE DE UNIDAD DE ASUNTOS ADMINISTRATIVOS', '5510060'),
(32, '702', 'RESPONSABLE DE CONTABILIDAD', '5510060'),
(33, '703', 'RESPONSABLE DE PRESUPUESTO Y PROGRAMACION', '5510060'),
(34, '704', 'RESPONSABLE DE PLANIFICACION', '5510060'),
(35, '705', 'RESPONSABLE VENTANILLA UNICA', '5510060'),
(36, '706', 'ENCARGADA DE CAJA Y VALORES', '5510060'),
(37, '707', 'RESPONSABLE DE PLANILLAS SALARIALES', '5510060'),
(38, '708', 'RESPONSABLE DIPLOMA DE BACHILLER', '5510060'),
(39, '709', 'TECNICO ESCALAFON', '5510060'),
(40, '710', 'RESPONSABLE DE PERSONAL', '5510060'),
(41, '711', 'RESPONSABLE DE BIENES Y SERVICIOS', '5510060'),
(42, '712', 'AUXILIAR ADMINISTRATIVO', '5510060'),
(43, '713', 'SECRETARIA UNIDAD DE ASUNTOS ADMINISTRATIVOS', '5510060'),
(44, '714', 'TECNICO DE REDES Y BASES DE DATOS', '5510060'),
(45, '715', 'AUXILIAR DE UNIDAD DE ASUNTOS ADMINISTRATIVOS', '5510060'),
(46, '716', 'RESPONSABLE DUPLICADO BOLETAS DE PAGO', '5510060'),
(47, '717', 'ENCARGADO ALMACENES', '5510060'),
(48, '718', 'MENSAJERO UNIDAD DE ASUNTOS ADMINISTRATIVOS', '5510060'),
(49, '719', 'PORTERA', '5510060'),
(50, '720', 'AUXILIAR CONTABLE', '5510060'),
(51, '721', 'CHOFER UNIDAD DE ASUNTOS ADMINISTRATIVOS', '5510060');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `departamento` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `departamento`) VALUES
(1, 'CHUQUISACA'),
(2, 'COCHABAMBA'),
(3, 'TARIJA'),
(4, 'LA PAZ'),
(5, 'ORURO'),
(6, 'POTOSI'),
(7, 'SANTA CRUZ'),
(8, 'BENI'),
(9, 'PANDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `hoja_ruta` int(11) NOT NULL,
  `referencia` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_hora_recepcion` datetime NOT NULL,
  `fojas` int(11) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `tramite_id` int(11) DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`) VALUES
(2, 'TRÁMITE INICIADO'),
(3, 'TRÁMITE EN PROCESO DE ATENCIÓN'),
(4, 'TRÁMITE OBSERVADO'),
(5, 'TRÁMITE RECHAZADO'),
(6, 'TRÁMITE CONCLUIDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujos`
--

CREATE TABLE `flujos` (
  `id` int(11) NOT NULL,
  `fecha_hora_recepcion` datetime NOT NULL,
  `proveido` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `flujo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `oficina_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `fechadesignacion` datetime NOT NULL,
  `observaciones` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `persona_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `baja` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `fechadesignacion`, `observaciones`, `persona_id`, `cargo_id`, `item_id`, `baja`) VALUES
(1, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 1, 1, 1, 0),
(2, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 2, 13, 2, 0),
(3, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 3, 18, 3, 0),
(4, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 4, 26, 4, 0),
(5, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 5, 46, 5, 0),
(6, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 6, 3, 6, 0),
(7, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 7, 5, 7, 0),
(8, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 8, 6, 8, 0),
(9, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 9, 7, 9, 0),
(10, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 10, 8, 10, 0),
(11, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 11, 9, 11, 0),
(12, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 12, 28, 12, 0),
(13, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 13, 27, 13, 0),
(14, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 14, 29, 14, 0),
(15, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 15, 30, 15, 0),
(16, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 16, 23, 16, 0),
(17, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 17, 20, 17, 0),
(18, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 18, 21, 18, 0),
(19, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 19, 25, 19, 0),
(20, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 20, 16, 20, 0),
(21, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 21, 15, 21, 0),
(22, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 22, 14, 22, 0),
(23, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 23, 17, 23, 0),
(24, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 24, 31, 24, 0),
(25, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 25, 32, 25, 0),
(26, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 26, 33, 26, 0),
(27, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 27, 34, 27, 0),
(28, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 28, 19, 28, 0),
(29, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 29, 41, 29, 0),
(30, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 30, 37, 30, 0),
(31, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 31, 38, 31, 0),
(32, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 32, 39, 32, 0),
(33, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 33, 42, 33, 0),
(34, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 34, 47, 34, 0),
(35, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 35, 35, 35, 0),
(36, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 36, 40, 36, 0),
(37, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 37, 44, 37, 0),
(38, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 38, 36, 38, 0),
(39, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 39, 50, 39, 0),
(40, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 40, 45, 40, 0),
(41, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 41, 4, 41, 0),
(42, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 42, 43, 42, 0),
(43, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 43, 48, 43, 0),
(44, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 44, 49, 44, 0),
(45, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 45, 51, 45, 0),
(46, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 46, 2, 46, 0),
(47, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 47, 12, 47, 0),
(48, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 48, 10, 48, 0),
(49, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 49, 11, 49, 0),
(50, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 50, 24, 50, 0),
(51, '2020-03-02 00:00:00', 'SIN OBSERVACIONES', 51, 22, 51, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `acefalo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `numero`, `descripcion`, `fecha_creacion`, `acefalo`) VALUES
(1, 2, 'DIRECTOR DEPARTAMENTAL DE EDUCACION DE CHUQUISACA', '2016-02-01 00:00:00', 0),
(2, 3, 'SUBDIRECTOR DE EDUCACION SUPERIOR', '2016-02-01 00:00:00', 0),
(3, 5, 'SUBDIRECTOR DE EDUCACION REGULAR', '2016-02-01 00:00:00', 0),
(4, 7, 'SUBDIRECTOR DE EDUCACION ALTERNATIVA Y ESPECIAL', '2016-02-01 00:00:00', 0),
(5, 9, 'RESPONSABLE DUPLICADO BOLETAS DE PAGO', '2016-02-01 00:00:00', 0),
(6, 11, 'SECRETARIA DIRECCION DEPARTAMENTAL', '2016-02-01 00:00:00', 0),
(7, 13, 'CHOFER', '2016-02-01 00:00:00', 0),
(8, 15, 'JEFE DE AUDITORIA INTERNA', '2016-02-01 00:00:00', 0),
(9, 17, 'PROFESIONAL DE AUDITORIA', '2016-02-01 00:00:00', 0),
(10, 19, 'JEFE DE ASESORIA LEGAL', '2016-02-01 00:00:00', 0),
(11, 21, 'PROFESIONAL JURIDICO', '2016-02-01 00:00:00', 0),
(12, 25, 'TECNICO DE EDUCACION ESPECIAL', '2016-02-01 00:00:00', 0),
(13, 27, 'TECNICO DE EDUCACION DE PERSONAS JOVENES Y ADULTAS', '2016-02-01 00:00:00', 0),
(14, 29, 'TECNICO DE EDUCACION PERMANENTE', '2016-02-01 00:00:00', 0),
(15, 31, 'SECRETARIA SUBDIRECCION DE EDUCACION ALTERNATIVA Y ESPECIAL', '2016-02-01 00:00:00', 0),
(16, 33, 'TECNICO EDUCACION PRIMARIA COMUNITARIA VOCACIONAL', '2016-02-01 00:00:00', 0),
(17, 35, 'TECNICO EDUCACION SECUNDARIA COMUNITARIA PRODUCTIVA', '2016-02-01 00:00:00', 0),
(18, 37, 'TECNICO EDUCACION INICIAL EN FAMILIA COMUNITARIA', '2016-02-01 00:00:00', 0),
(19, 39, 'SECRETARIA SUBDIRECCION DE EDUCACION REGULAR', '2016-02-01 00:00:00', 0),
(20, 53, 'TECNICO EN FORMACION DE MAESTROS Y MAESTRAS', '2016-02-01 00:00:00', 0),
(21, 55, 'TECNICO FORMACION UNIVERSITARIA', '2016-02-01 00:00:00', 0),
(22, 57, 'TECNICO FORMACION TECNICA TECNOLOGICA Y ARTISTICA', '2016-02-01 00:00:00', 0),
(23, 61, 'SECRETARIA EDUCACION SUPERIOR', '2016-02-01 00:00:00', 0),
(24, 64, 'JEFE DE UNIDAD DE ASUNTOS ADMINISTRATIVOS', '2016-02-01 00:00:00', 0),
(25, 67, 'RESPONSABLE DE CONTABILIDAD', '2016-02-01 00:00:00', 0),
(26, 69, 'RESPONSABLE DE PRESUPUESTO Y PROGRAMACION', '2016-02-01 00:00:00', 0),
(27, 71, 'RESPONSABLE DE PLANIFICACION', '2016-02-01 00:00:00', 0),
(28, 73, 'RESPONSABLE S.I.E.', '2016-02-01 00:00:00', 0),
(29, 75, 'RESPONSABLE DE BIENES Y SERVICIOS', '2016-02-01 00:00:00', 0),
(30, 77, 'RESPONSABLE DE PLANILLAS SALARIALES', '2016-02-01 00:00:00', 0),
(31, 79, 'RESPONSABLE DIPLOMA DE BACHILLER', '2016-02-01 00:00:00', 0),
(32, 81, 'TECNICO ESCALAFON', '2016-02-01 00:00:00', 0),
(33, 83, 'AUXILIAR ADMINISTRATIVO', '2016-02-01 00:00:00', 0),
(34, 85, 'ENCARGADO ALMACENES', '2016-02-01 00:00:00', 0),
(35, 87, 'RESPONSABLE VENTANILLA UNICA', '2016-02-01 00:00:00', 0),
(36, 89, 'RESPONSABLE DE PERSONAL', '2016-02-01 00:00:00', 0),
(37, 92, 'TECNICO DE REDES Y BASES DE DATOS', '2016-02-01 00:00:00', 0),
(38, 93, 'ENCARGADA DE CAJA Y VALORES', '2016-02-01 00:00:00', 0),
(39, 96, 'AUXILIAR CONTABLE', '2016-02-01 00:00:00', 0),
(40, 97, 'ITEM', '2016-02-01 00:00:00', 0),
(41, 98, 'AUXILIAR DE SECRETARIA', '2016-02-01 00:00:00', 0),
(42, 99, 'SECRETARIA UNIDAD DE ASUNTOS ADMINISTRATIVOS', '2016-02-01 00:00:00', 0),
(43, 100, 'MENSAJERA UNIDAD DE ASUNTOS ADMINISTRATIVOS', '2016-02-01 00:00:00', 0),
(44, 103, 'PORTERA', '2016-02-01 00:00:00', 0),
(45, 104, 'CHOFER UNIDAD DE ASUNTOS ADMINISTRATIVOS', '2016-02-01 00:00:00', 0),
(46, 106, 'RELACIONADOR PUBLICO', '2016-02-01 00:00:00', 0),
(47, 112, 'RESPONSABLE DE TRANSPARENCIA', '2016-02-01 00:00:00', 0),
(48, 114, 'TRIBUNAL DISCIPLINARIO', '2016-02-01 00:00:00', 0),
(49, 116, 'TRIBUNAL DISCIPLINARIO', '2016-02-01 00:00:00', 0),
(50, 118, 'TECNICO PARTICIPACION SOCIAL COMUNITARIA', '2016-02-01 00:00:00', 0),
(51, 120, 'TECNICO INTRA INTERCULTURAL PLURILINGÜE', '2016-02-01 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `oficina` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `unidad_id` int(11) NOT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `oficinas`
--

INSERT INTO `oficinas` (`id`, `codigo`, `oficina`, `unidad_id`, `funcionario_id`) VALUES
(1, '101', 'DIRECCION DEPARTAMENTAL', 1, 1),
(2, '102', 'RELACIONES PUBLICAS', 1, 46),
(3, '103', 'SECRETARIA DE DIRECCION DEPARTAMENTAL', 1, 6),
(4, '201', 'JEFATURA DE AUDITORIA INTERNA', 2, 8),
(5, '202', 'PROFESIONAL DE AUDITORIA INTERNA', 2, 9),
(6, '301', 'JEFATURA DE ASESORIA LEGAL', 3, 10),
(7, '302', 'PROFESIONAL DE ASESORIA LEGAL', 3, 11),
(8, '303', 'TRIBUNAL DISCIPLINARIO 1', 3, 48),
(9, '304', 'TRIBUNAL DISCIPLINARIO 2', 3, 49),
(10, '305', 'TRANSPARENCIA', 3, 47),
(11, '401', 'SUBDIRECCION DE EDUCACION SUPERIOR', 4, 2),
(12, '402', 'FORMACION TECNICA, TECNOLOGIA LINGÜISTICA Y ARTISTICA', 4, 22),
(13, '403', 'FORMACION UNIVERSITARIA', 4, 21),
(14, '404', 'FORMACION DE MAESTRAS Y MAESTROS', 4, 20),
(15, '405', 'SECRETARIA DE EDUCACION SUPERIOR', 4, 23),
(16, '501', 'SUBDIRECCION DE EDUCACION SUPERIOR', 5, 3),
(17, '502', 'S. I. E.', 5, 28),
(18, '503', 'EDUCACION SECUNDARIA COMUNITARIA PRODUCTIVA', 5, 17),
(19, '504', 'EDUCACION INICIAL EN FAMILIA COMUNITARIA', 5, 18),
(20, '505', 'EDUCACION INTRA, INTERCULTURAL PLURILINGÜE', 5, 51),
(21, '506', 'EDUCACION PRIMARIA COMUNITARIA VOCACIONAL', 5, 10),
(22, '507', 'PARTICIPACION SOCIAL COMUNITARIA', 5, 50),
(23, '508', 'SECRETARIA DE SUBDIRECCION DE EDUCACION REGULAR', 5, 19),
(24, '601', 'SUBDIRECCION DE EDUCACION ALTERNATIVA Y ESPECIAL', 6, 4),
(25, '602', 'EPJA', 6, 13),
(26, '603', 'EDUCACION ESPECIAL', 6, 21),
(27, '604', 'EDUPER', 6, 14),
(28, '605', 'SECRETARIA DE SUBDIRECCION ALTERNATIVA Y ESPECIAL', 6, 15),
(29, '701', 'JEFATURA UNIDAD DE ASUNTOS ADMINISTRATIVOS', 7, 24),
(30, '702', 'CONTABILIDAD', 7, 25),
(31, '703', 'PRESUPUESTO Y PROGRAMACION', 7, 26),
(32, '704', 'PLANIFICACION', 7, 27),
(33, '705', 'VENTANILLA UNICA', 7, 35),
(34, '706', 'CAJA Y VALORES', 7, 38),
(36, '707', 'PLANILLAS', 7, 30),
(37, '708', 'DIPLOMA DE BACHILLER', 7, 31),
(38, '709', 'ESCALAFON', 7, 32),
(39, '710', 'RECURSOS HUMANOS', 7, 36),
(40, '711', 'BIENES Y SERVICIOS', 7, 29),
(41, '713', 'SECRETARIA DE UNIDAD DE ASUNTOS ADMINISTRATIVOS', 7, 42),
(42, '714', 'REDES Y BASES DE DATOS', 7, 37),
(43, '716', 'DUPLICADO BOLETAS DE PAGO', 7, 5),
(44, '717', 'ALMACEN', 7, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `carnet` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `paterno` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `materno` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(75) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ciudad` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `carnet`, `paterno`, `materno`, `nombre`, `sexo`, `direccion`, `telefono`, `celular`, `email`, `ciudad`, `activo`, `departamento_id`) VALUES
(1, '1112087', 'GALEAN', 'TELLEZ', 'JULIO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(2, '3994223', 'MORALES', 'VARGAS', 'EDWIN JAVIER', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(3, '3113372', 'GARCIA', 'MUNOZ', 'GROVER', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(4, '1142057', 'TORRICO', 'SALGUERO', 'JUAN SANDRO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(5, '5074464', 'QUISPE', 'MAMANI', 'NIMBER', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(6, '12366787', 'ZARATE', 'URISTA', 'MARIA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(7, '1147454', 'ROMERO', 'MURILLO', 'ROMAN ANTONIO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(8, '1046901', 'MANCILLA', 'SANCHEZ', 'MARITZA MARIA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(9, '1093624', 'PINTO', 'BEDOYA', 'AIDEE JANETH', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(10, '4630997', 'CUBA', 'DURAN', 'ROLANDO FAVIO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(11, '5643584', 'DAVALOS', 'ROJAS', 'IRLANDA PAMELA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(12, '7487528', 'ORIHUELA', 'ZACARI', 'MERY', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(13, '4047417', 'CONDORI', 'GUTIERREZ', 'ARIEL', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(14, '4082898', 'PADILLA', 'LLANOS', 'NILSA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(15, '12398019', 'SERRANO', 'GONZALES', 'NORMA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(16, '4630419', 'YUCRA', 'LOAYZA', 'MARIA JIMENA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(17, '5640266', 'GONZALES', 'CUBA', 'LOURDES', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(18, '7475731', 'FLORES', 'SANCHEZ', 'MARIELA GINNA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(19, '1278099', 'PLAZA', 'CORTEZ', 'MARIA AMANDA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(20, '5666790', 'SOLIZ', 'CHOQUE', 'LIZETH LEYDI', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(21, '7487530', 'BARRIOS', 'LUNA', 'AMANDA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(22, '3625102', 'MARIN', 'AGUILAR', 'JHONNY', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(23, '5684788', 'PALACIOS', 'VALENCIA', 'BIBIANA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(24, '4082779', 'SALAZAR', 'BRAVO', 'LEONCIO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(25, '3498901', 'TOLA', 'CATARI', 'EDGAR ANGEL', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(26, '7552163', 'ARANCIBIA', 'PAREDES', 'JHONY', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(27, '4116487', 'VALDA', 'GUZMAN', 'GEORGINA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(28, '4119848', 'URIONA', 'HOCHKOFLER', 'JASSMANY ISRAEL', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(29, '5668076', 'PEREZ', 'GARRON', 'JHONNY', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(30, '5630159', 'ORTIZ', 'BARRON', 'TOMAS', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(31, '5488389', 'CUTIPA', 'ARANCIBIA', 'RENE', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(32, '4088790', 'RAYA', 'VEGA', 'PEDRO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(33, '3710826', 'CHIPANA', 'MARTINEZ', 'MERISABEL', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(34, '4082483', '', 'DAZA', 'CINTIA LETICIA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(35, '10388494', 'INCATA', 'URIBE', 'MADELEINE AURORA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(36, '1054867', 'PASTRANA', 'GUTIERREZ', 'JOSE ANTONIO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(37, '5490486', 'GONZALES', 'CRUZ', 'HUGO ALVARO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(38, '3652918', 'GIL', 'VERA', 'CINTHIA VALERIA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(39, '1145384', 'MATIENZO', 'LLAVE', 'JUAN DANIEL', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(40, '5693602', 'MIRANDA', 'MONTERO', 'FABIOLA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(41, '10321535', 'SANCHEZ', 'RAMIREZ', 'LUZ MELINA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(42, '7050212', 'ALEGADO', 'PEREZ', 'ILDA IRENE', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(43, '1792743', 'MURILLO', 'CUBA', 'MERCEDES', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(44, '3639525', 'CARTAGENA', 'CASTILLO', 'NELLY SANDRA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(45, '5659784', 'QUINTANA', 'VILLCA', 'JUAN CARLOS', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(46, '5663684', 'MOSCOSO', 'NAVAS', 'CINTIA ROSARIO', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(47, '4631106', 'ESPADA', 'DAZA', 'MIGUEL ANGEL', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(48, '4631158', 'PEREIRA', 'CASTEL', 'OMAR', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(49, '4106372', 'TORRES', 'VASQUEZ', 'CLARA SILVIA', 'F', '', '', '11111111', '', 'SUCRE', 0, 1),
(50, '7501870', 'UNO', 'MAGNE', 'CARLOS ALBERTO', 'M', '', '', '11111111', '', 'SUCRE', 0, 1),
(51, '3971453', 'AYLLON', 'MIRANDA', 'ALEXANDER DELMAR', 'M', '', '', '11111111', '', 'SUCRE', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisitos`
--

CREATE TABLE `requisitos` (
  `id` int(11) NOT NULL,
  `requisito` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `requisitos`
--

INSERT INTO `requisitos` (`id`, `requisito`) VALUES
(1, 'FOTOCOPIA DE CEDULA DE IDENTIDAD'),
(2, 'FORMULARIO DE ACTUALIZACION DE DATOS RDA (AC-01)'),
(3, 'COPIA LEGALIZADA DE DIPLOMA DE BACHILLER'),
(4, 'COPIA LEGALIZADA DE CERTIFICADO DE EGRESO'),
(5, 'COPIA LEGALIZADA DE TITULO PROFESIONAL'),
(6, 'COPIA LEGALIZADA DE TITULO DE POSTGRADO (DIPLOMADO, ESPECIALIDAD, MAESTRIA, DOCTORADO, POSTDOCTORADO'),
(7, 'FOTOCOPIA DE CATEGORIA ANTERIOR'),
(8, 'DUPLICADO DE RDA'),
(9, 'VALORES DE CAJA'),
(10, '2 FOTOGRAFIAS FONDO ROJO 4X4'),
(11, 'FORMULARIO GRATUITO DE SOLICITUD DE TRAMITE DGP-RDA 05'),
(12, 'COPIA LEGALIZADA DE LOS CONTRATOS DE TRABAJO EN FUNCION DOCENTE'),
(13, 'FOTOCOPIA SIMPLE DE BOLETAS DE PAGO'),
(14, 'CERTIFICADO DE TRABAJO EMITIDO POR EL DIRECTOR DISTRITAL DE EDUCACION'),
(15, '2 FOTOGRAFIAS FONDO BLANCO 4X4'),
(16, 'CERTIFICADO DE NACIMIENTO ORIGINAL'),
(17, 'FOTOCOPIA DE DIPLOMA DE BACHILLER'),
(18, 'COPIA LEGALIZADA DE CERTIFICADO DE EGRESO/DIPLOMA ACADEMICO'),
(19, 'COPIA LEGALIZADA DE TITULO DE FORMACION'),
(20, 'CERTIFICACION DE AFP (PREVISION/FUTURO)'),
(21, 'FOTOCOPIA LIBRETA DE SERVICIO MILITAR'),
(22, 'SOLICITUD DE REGISTRO DIRIGIDO AL DIRECTOR DEPARTAMENTAL DE EDUCACIÓN DE CHUQUISACA'),
(23, '2 FOTOGRAFIAS FONDO PLOMO SIN BORDE 4X4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisitos_tramites`
--

CREATE TABLE `requisitos_tramites` (
  `id` int(11) NOT NULL,
  `tramite_id` int(11) NOT NULL,
  `requisito_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `requisitos_tramites`
--

INSERT INTO `requisitos_tramites` (`id`, `tramite_id`, `requisito_id`) VALUES
(1, 1, 1),
(7, 2, 23),
(8, 2, 4),
(9, 2, 8),
(10, 2, 11),
(11, 2, 17),
(15, 1, 15),
(16, 1, 20),
(17, 1, 16),
(18, 1, 18),
(19, 1, 3),
(20, 1, 19),
(21, 1, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramites`
--

CREATE TABLE `tramites` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `tramite` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tiempo` tinyint(3) NOT NULL,
  `unidad_tiempo` tinyint(2) NOT NULL,
  `oficina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tramites`
--

INSERT INTO `tramites` (`id`, `codigo`, `tramite`, `tiempo`, `unidad_tiempo`, `oficina_id`) VALUES
(1, '70901', 'REGISTRO RDA', 30, 3, 38),
(2, '70902', 'TITULO PROFESIONAL DE MAESTRO', 2, 5, 38),
(3, '70903', 'SUPLETORIO TPM', 0, 0, 38),
(5, '70904', 'RESOLUCION ADMINISTRATIVA DE SERVICIOS', 0, 0, 38),
(6, '70905', 'ACTUALIZACION RDA', 0, 0, 38),
(7, '70906', 'HOJA DE CATEGORIA', 0, 0, 38),
(8, '70907', 'INSCRIPCION AL ESCALAFON', 0, 0, 38),
(9, '70908', 'RECONOCIMIENTO DE SERVICIOS PRESTADOS EN U.E. CON RECURSOS I.D.H.', 48, 1, 38),
(10, '70909', 'REGISTRO RP-DIDEP', 0, 0, 38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `unidad` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `codigo`, `unidad`, `funcionario_id`) VALUES
(1, '100', 'DIRECCION DEPARTAMENTAL DE EDUCACION', 1),
(2, '200', 'UNIDAD DE AUDITORIA INTERNA', 8),
(3, '300', 'UNIDAD DE ASUNTOS JURIDICOS', 10),
(4, '400', 'SUBDIRECCION DE EDUCACION SUPERIOR', 2),
(5, '500', 'SUBDIRECCION DE EDUCACION REGULAR', 3),
(6, '600', 'SUBDIRECCION DE EDUCACION ALTERNATIVA Y ESPECIAL', 4),
(7, '700', 'UNIDAD DE ASUNTOS ADMINISTRATIVOS', 24);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_documentos_estados_idx` (`estado_id`),
  ADD KEY `fk_documentos_tramites_idx` (`tramite_id`),
  ADD KEY `fk_documentos_personas_idx` (`persona_id`),
  ADD KEY `fk_documentos_funcionarios_idx` (`funcionario_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flujos`
--
ALTER TABLE `flujos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_flujos_documentos_idx` (`documento_id`);

--
-- Indices de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcionarios_personas_idx` (`persona_id`),
  ADD KEY `fk_funcionarios_cargos_idx` (`cargo_id`),
  ADD KEY `fk_funcionarios_items_idx` (`item_id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `fk_oficinas_unidades` (`unidad_id`),
  ADD KEY `fk_oficinas_funcionarios` (`funcionario_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carnet` (`carnet`),
  ADD KEY `fk_personas_departamentos_idx` (`departamento_id`);

--
-- Indices de la tabla `requisitos`
--
ALTER TABLE `requisitos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `requisitos_tramites`
--
ALTER TABLE `requisitos_tramites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reqtram_tramites` (`tramite_id`),
  ADD KEY `fk_reqtram_requisitos` (`requisito_id`);

--
-- Indices de la tabla `tramites`
--
ALTER TABLE `tramites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `fk_unidades_funcionarios_idx` (`funcionario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `flujos`
--
ALTER TABLE `flujos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `requisitos`
--
ALTER TABLE `requisitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `requisitos_tramites`
--
ALTER TABLE `requisitos_tramites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tramites`
--
ALTER TABLE `tramites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `fk_documentos_estados` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_documentos_funcionarios` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_documentos_personas` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_documentos_tramites` FOREIGN KEY (`tramite_id`) REFERENCES `tramites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `flujos`
--
ALTER TABLE `flujos`
  ADD CONSTRAINT `fk_flujos_documentos` FOREIGN KEY (`documento_id`) REFERENCES `documentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `fk_funcionarios_cargos` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_funcionarios_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_funcionarios_personas` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD CONSTRAINT `fk_oficinas_funcionarios` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_oficinas_unidades` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `fk_personas_departamentos` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `requisitos_tramites`
--
ALTER TABLE `requisitos_tramites`
  ADD CONSTRAINT `fk_reqtram_requisitos` FOREIGN KEY (`requisito_id`) REFERENCES `requisitos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reqtram_tramites` FOREIGN KEY (`tramite_id`) REFERENCES `tramites` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `fk_unidades_funcionarios` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
