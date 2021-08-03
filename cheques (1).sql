-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2021 a las 00:11:26
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cheques`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheques`
--

CREATE TABLE `cheques` (
  `clientes_id` int(11) NOT NULL,
  `numero_cheque` int(50) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `cuit_librador` int(25) NOT NULL,
  `fecha_vto` date NOT NULL,
  `importe` double NOT NULL,
  `propio` varchar(5) NOT NULL,
  `echeq` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cheques`
--

INSERT INTO `cheques` (`clientes_id`, `numero_cheque`, `nombre`, `cuit_librador`, `fecha_vto`, `importe`, `propio`, `echeq`) VALUES
(25, 4561230, 'Carolina Calviño', 2147483647, '2021-02-21', 150000, 'Si', 'No'),
(24, 65987456, 'Juan Martinez', 209326541, '2021-08-02', 50000, 'No', 'Si'),
(24, 123456789, 'Matias Perez', 279874563, '2021-08-03', 12000, 'Si', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `cuit` int(20) NOT NULL,
  `telefono` int(20) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `nombre`, `cuit`, `telefono`, `email`) VALUES
(24, 'David Vargas', 2147483647, 1169857456, 'david@prueba.com'),
(25, 'Carolina Calviño', 2147483647, 1168313308, 'caro_alsina21@hotmail.com'),
(26, 'Graciela Lopez', 2147483647, 1138016727, 'graciela@prueba.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `usuario`, `pass`, `imagen`) VALUES
(1, 'carocalvi', '123', 'uploads/perfil.png'),
(2, 'seguridad', '123', 'uploads/logoUno.png'),
(3, 'prueba', '123', 'uploads/perfil.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`numero_cheque`),
  ADD KEY `clientes_id` (`clientes_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cheques`
--
ALTER TABLE `cheques`
  ADD CONSTRAINT `cheques_ibfk_1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
