-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2024 a las 06:05:46
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `loginapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos_area`
--

CREATE TABLE `trabajos_area` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `estado` enum('en progreso','en pausa','prioridad','entregado') DEFAULT 'en progreso',
  `cantidad` varchar(50) NOT NULL,
  `prioridad` int(11) DEFAULT 0,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos_area`
--

INSERT INTO `trabajos_area` (`id`, `producto`, `estado`, `cantidad`, `prioridad`, `fecha_creacion`) VALUES
(1, 'collarines', 'en progreso', '5000', 0, '2024-11-01 23:02:00'),
(3, 'prod1', 'en progreso', '0/50', 0, '2024-11-02 03:27:36'),
(4, 'prod2', 'en pausa', '5000', 0, '2024-11-02 03:27:50'),
(6, 'hola', 'prioridad', '54654654', 0, '2024-11-02 03:30:18'),
(12, 'Nuevo Producto', 'en progreso', '0/50', 0, '2024-11-02 04:22:15'),
(13, 'Nuevo Producto', 'en progreso', '0/50', 0, '2024-11-02 04:22:25'),
(14, 'Nuevo Producto', 'en progreso', '0/50', 0, '2024-11-02 04:22:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`) VALUES
(1, 'dlozano', '123'),
(2, 'Jrodriguez', '123'),
(3, 'usuario3', '123'),
(6, 'usuario4', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `trabajos_area`
--
ALTER TABLE `trabajos_area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `trabajos_area`
--
ALTER TABLE `trabajos_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
