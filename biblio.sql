-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2025 a las 05:24:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `numa` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `codl` varchar(30) NOT NULL,
  `rela` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`numa`, `num`, `codl`, `rela`) VALUES
(1, 1, '1747015504057', 'autor'),
(2, 20, '1747015504057', 'coautor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `codl` varchar(30) NOT NULL,
  `noml` varchar(200) NOT NULL,
  `des` text NOT NULL,
  `stdl` varchar(3) NOT NULL,
  `fechp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`codl`, `noml`, `des`, `stdl`, `fechp`) VALUES
('', 'Soledad', '', 'del', '2025-05-31'),
('1747015306895', 'Soledad2', '', 'del', '2025-05-29'),
('1747015504057', 'Soledad', 'yryru', 'act', '2025-05-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `num` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `std` varchar(3) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`num`, `nom`, `ap`, `email`, `pwd`, `std`, `tipo`) VALUES
(1, 'juan', 'quispe', 'juan44@gmail.com', '123', 'act', 'Pasante'),
(8, 'shirley', 'macias', 'sm123@gmail.com', '123', 'Arr', 'Pasante'),
(11, 'dayvid', 'torrez', 'dt123@gmail.com', '12', 'Arr', 'Pasante'),
(20, 'Alex', 'fger', 'alexismalix4@gmail.com', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f', 'act', 'Pasante'),
(21, 'Roger', 'Rodriguez', 'Rodri4@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'act', 'Gerente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`numa`),
  ADD KEY `num` (`num`),
  ADD KEY `codl` (`codl`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`codl`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`num`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `numa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`num`) REFERENCES `person` (`num`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `autor_ibfk_2` FOREIGN KEY (`codl`) REFERENCES `libro` (`codl`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
