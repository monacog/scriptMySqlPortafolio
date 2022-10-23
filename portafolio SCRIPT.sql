-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 23-10-2022 a las 22:37:15
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portafolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id_educacion` int(3) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` varchar(350) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `id_persona` int(6) NOT NULL,
  `id_institucion` int(3) NOT NULL,
  `id_tipo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id_educacion`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_fin`, `id_persona`, `id_institucion`, `id_tipo`) VALUES
(1, 'Marketing Digital', 'Fundamentos del Marketing Digital', '2021-09-01', '2021-12-15', 1, 4, 5),
(3, 'Desarrollo Web', 'Html5 - Css3 - Bootstrap', '2022-01-01', '2022-05-15', 1, 4, 5),
(4, 'JavaScript', 'JavaScript intermedio', '2022-04-01', '2022-06-15', 1, 4, 5),
(5, 'Tecnicatura en Comercio Exterior', 'Tecnicatura en comercio exterior', '2010-08-01', '2013-12-15', 1, 3, 1),
(6, 'Full Stack Junior', 'Desarrollo Full Stack Junior', '2022-05-30', NULL, 1, 2, 5),
(7, 'Full Stack Junior', 'Desarrollo Full Stack Junior', '2022-05-30', NULL, 1, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `empresa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `empresa`) VALUES
(2, 'Lusqtoff'),
(1, 'Protec Asociados SRL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id_experiencia` int(2) NOT NULL,
  `puesto` text NOT NULL,
  `descripcion` varchar(350) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `Id_empresa` int(3) NOT NULL,
  `Id_persona` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`id_experiencia`, `puesto`, `descripcion`, `fecha_inicio`, `fecha_fin`, `Id_empresa`, `Id_persona`) VALUES
(1, 'Analista de cuentas por cobrar', 'Gestion de cartera de clientes', '2009-07-01', '2016-07-01', 1, 1),
(3, 'Ejecutivo comercio exterior', 'Gestion de importaciones', '2016-07-15', '2016-12-01', 2, 1),
(4, 'Asistente gerencia comercial', 'Diversas actividades relacionadas al sector', '2017-07-01', '2022-09-01', 1, 1),
(5, 'Vendedor', 'Gestionar cartera de clientes', '2022-09-01', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id_institucion` int(3) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_institucion`, `nombre`) VALUES
(1, 'Argentina Programa'),
(2, 'EGG Educacion'),
(3, 'Instituto de capacitacion aduanera I.C.A.'),
(4, 'Coder House');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `codigo_postal` int(4) NOT NULL,
  `nombre` text NOT NULL,
  `id_provincia` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`codigo_postal`, `nombre`, `id_provincia`) VALUES
(1704, 'Ramos Mejia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(6) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `cuil` bigint(11) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `codigo_postal` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `cuil`, `direccion`, `fecha_nacimiento`, `codigo_postal`) VALUES
(1, 'Gerardo', 'Monaco', 20332034279, 'Oncativo 65 (2A)', '1987-07-10', 1704);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(2) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `nombre`) VALUES
(1, 'Buenos Aires'),
(2, 'Catamarca'),
(3, 'Chaco'),
(4, 'Chubut'),
(5, 'Cordoba'),
(6, 'Corrientes'),
(7, 'Entre Rios'),
(8, 'Formosa'),
(9, 'Jujuy'),
(10, 'La Pampa'),
(11, 'La Rioja'),
(12, 'Mendoza'),
(13, 'Misiones'),
(14, 'Neuquen'),
(15, 'Rio Negro'),
(16, 'Salta'),
(17, 'San Juan'),
(18, 'San Luis'),
(19, 'Santa Cruz'),
(20, 'Santa Fe'),
(21, 'Santiago del Estero'),
(22, 'Tierra del Fuego'),
(23, 'Tucuman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proyecto` int(3) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` varchar(350) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `id_persona` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `titulo`, `descripcion`, `imagen`, `link`, `id_persona`) VALUES
(1, 'Portafolio', 'Proyecto creado para el curso de Argentina Programa - #YoProgramo', 'www.imagen.com', 'link', 1),
(2, 'Why Me', 'Pagina web simple para Fabrica de calzados - freelance.', 'www.imagen.com', 'link', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill`
--

CREATE TABLE `skill` (
  `id_skill` int(3) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `skill`
--

INSERT INTO `skill` (`id_skill`, `nombre`) VALUES
(2, 'CSS'),
(4, 'Git'),
(5, 'GitHub'),
(1, 'Html'),
(3, 'Javascript');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_persona`
--

CREATE TABLE `skill_persona` (
  `id_skill` int(3) NOT NULL,
  `id_persona` int(6) NOT NULL,
  `nivel` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `skill_persona`
--

INSERT INTO `skill_persona` (`id_skill`, `id_persona`, `nivel`) VALUES
(1, 1, 60),
(2, 1, 60),
(3, 1, 40),
(4, 1, 40),
(5, 1, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(1) NOT NULL,
  `tipo_grado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `tipo_grado`) VALUES
(1, 'Tecnicatura'),
(2, 'Licenciatura'),
(3, 'Doctorado'),
(4, 'Maestria'),
(5, 'Curso'),
(6, 'MBA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id_educacion`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD UNIQUE KEY `empresa` (`empresa`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id_experiencia`),
  ADD UNIQUE KEY `id_experiencia` (`id_experiencia`),
  ADD KEY `Id_persona` (`Id_persona`),
  ADD KEY `Id_empresa` (`Id_empresa`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id_institucion`),
  ADD UNIQUE KEY `nombre` (`nombre`) USING HASH;

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`codigo_postal`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`),
  ADD UNIQUE KEY `cuil` (`cuil`),
  ADD UNIQUE KEY `cuil_2` (`cuil`),
  ADD KEY `codigo_postal` (`codigo_postal`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`),
  ADD UNIQUE KEY `nombre` (`nombre`) USING HASH;

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id_skill`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `skill_persona`
--
ALTER TABLE `skill_persona`
  ADD KEY `id_skill` (`id_skill`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`),
  ADD UNIQUE KEY `tipo_grado` (`tipo_grado`) USING HASH;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id_educacion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `id_experiencia` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_institucion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `skill`
--
ALTER TABLE `skill`
  MODIFY `id_skill` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `educacion_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
  ADD CONSTRAINT `educacion_ibfk_2` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`),
  ADD CONSTRAINT `educacion_ibfk_3` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`);

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `experiencia_laboral_ibfk_1` FOREIGN KEY (`Id_persona`) REFERENCES `persona` (`id_persona`),
  ADD CONSTRAINT `experiencia_laboral_ibfk_2` FOREIGN KEY (`Id_empresa`) REFERENCES `empresa` (`id_empresa`);

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`codigo_postal`) REFERENCES `localidad` (`codigo_postal`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `skill_persona`
--
ALTER TABLE `skill_persona`
  ADD CONSTRAINT `skill_persona_ibfk_1` FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id_skill`),
  ADD CONSTRAINT `skill_persona_ibfk_2` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
