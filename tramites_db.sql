-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2020 a las 00:12:03
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
  `cargo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `servicio` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `cargo`, `codigo`, `servicio`) VALUES
(2, 'Secretaria Unidad de Asuntos Administrativos', '100', '542315455'),
(3, 'Técnico II de escalafón', '101', '542315151');

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
  `documentoscol` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
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
  `persona_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `acefalo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `descripcion`, `numero`, `fecha_creacion`, `acefalo`) VALUES
(1, 'Item de nueva creación', 1, '2020-02-24 00:00:00', 1),
(2, 'Optimización', 2, '2020-02-26 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL,
  `oficina` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `unidad_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
  `celular` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ciudad` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `carnet`, `paterno`, `materno`, `nombre`, `sexo`, `direccion`, `telefono`, `celular`, `email`, `ciudad`, `activo`, `departamento_id`) VALUES
(1, '4110588', '', 'ORCKO', 'JUAN CARLOS', 'M', 'ARMANDO MONTENGRO 234', '', '72864777', 'jco_rck@hotmail.com', 'SUCRE', 1, 1),
(2, '4092652', 'MERILES', 'TORRES', 'PATRICIA', 'F', 'ARMANDO MONTENEGRO 234', '6448315', '75450680', 'pattycitameri@gmail.com', 'SUCRE', 1, 1),
(5, '12345678-1A', 'SOTO', '', 'MARCELA', 'F', 'AV. DEL EJERCITO 1010', '', '75345621', '', 'TARABUCO', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramites`
--

CREATE TABLE `tramites` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `tramite` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `oficina_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `unidad` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cargo` (`cargo`),
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
  ADD KEY `fk_flujos_oficinas_idx` (`oficina_id`),
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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_oficinas_unidades_idx` (`unidad_id`),
  ADD KEY `fk_oficinas_funcionarios_idx` (`funcionario_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_personas_departamentos_idx` (`departamento_id`);

--
-- Indices de la tabla `tramites`
--
ALTER TABLE `tramites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tramites_oficinas_idx` (`oficina_id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_unidades_funcionarios_idx` (`funcionario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `flujos`
--
ALTER TABLE `flujos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tramites`
--
ALTER TABLE `tramites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `fk_flujos_documentos` FOREIGN KEY (`documento_id`) REFERENCES `documentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_flujos_oficinas` FOREIGN KEY (`oficina_id`) REFERENCES `oficinas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Filtros para la tabla `tramites`
--
ALTER TABLE `tramites`
  ADD CONSTRAINT `fk_tramites_oficinas` FOREIGN KEY (`oficina_id`) REFERENCES `oficinas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `fk_unidades_funcionarios` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
