-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2022 a las 13:28:18
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlparkingbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(21) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL,
  `borrado_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido_paterno` varchar(30) NOT NULL,
  `apellido_materno` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido_paterno`, `apellido_materno`, `telefono`, `correo`, `usuario`, `contrasena`) VALUES
(3, 'Juan', 'Pérez', 'Martinez', '0101010102', 'juanmtz@gmail.com', 'JUAN_MTZ', 'qFfELykNYZ0='),
(4, 'Luis', 'Pérez', 'Hernandez', '0123456789', 'luis@yahoo.com', 'Luis', 'YteCe2IKbm0='),
(5, 'ramon', 'riv', 'v.', '6258588190', 'rriv123@gmail.com', 'ramon', '69Y/U99xTiM=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(10) NOT NULL,
  `placa` varchar(7) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `propietario` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tipovehiculo` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `horaentrada` datetime NOT NULL,
  `horasalida` datetime DEFAULT NULL,
  `valorapagado` float DEFAULT NULL,
  `estado` varchar(13) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `placa`, `propietario`, `tipovehiculo`, `horaentrada`, `horasalida`, `valorapagado`, `estado`) VALUES
(1, 'xxx123', 'ramon', 'Automovil', '2021-12-31 14:31:31', NULL, NULL, 'Disponible'),
(2, 'xls123', 'ruben', 'Automovil', '2021-12-31 14:33:45', NULL, NULL, 'Disponible'),
(3, 'abc111', 'felix', 'Automovil', '2021-12-31 14:53:51', NULL, NULL, 'Disponible'),
(4, 'abx555', 'Roberto', 'Motocicleta', '2021-12-31 14:54:31', NULL, NULL, 'Disponible'),
(5, 'xxx777', 'aurelio martinez', 'Motocicleta', '2021-12-31 19:09:13', NULL, NULL, 'Disponible'),
(6, 'fpx392', 'Andy Rivero', 'Automovil', '2021-12-31 19:10:06', NULL, NULL, 'Disponible'),
(7, 'fpx3925', 'Andy Rivero', 'Motocicleta', '2021-12-31 19:10:57', NULL, NULL, 'Disponible'),
(11, 'lxc777', 'Manuel López', 'Automovil', '2022-01-01 06:53:08', NULL, NULL, 'Disponible'),
(12, 'uxx111', 'Juana de arco', 'Motocicleta', '2022-01-01 07:12:02', NULL, NULL, 'Disponible'),
(13, 'lxc777', 'Manuel López', 'Motocicleta', '2022-01-01 07:20:21', NULL, NULL, 'Disponible'),
(14, 'xxx999', 'juan diaz', 'Automovil', '2022-01-01 08:40:19', NULL, NULL, 'Disponible'),
(15, 'Uxs555', 'Marianela', 'Automovil', '2022-01-01 14:14:04', NULL, NULL, 'Disponible'),
(16, 'ZZZ1122', 'UCERIN', 'Automovil', '2022-01-03 10:49:56', NULL, NULL, 'Disponible');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
