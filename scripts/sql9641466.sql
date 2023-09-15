-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql9.freesqldatabase.com
-- Tiempo de generación: 25-08-2023 a las 13:24:49
-- Versión del servidor: 5.5.62-0ubuntu0.14.04.1
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sql9641466`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Marcas`
--

CREATE TABLE `Marcas` (
  `ID_Marca` int(11) NOT NULL,
  `Nombre_Marca` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Marcas`
--

INSERT INTO `Marcas` (`ID_Marca`, `Nombre_Marca`) VALUES
(1, 'Apple'),
(2, 'I Kall'),
(3, 'Infinix'),
(4, 'Lava'),
(5, 'Motorola'),
(6, 'Nokia'),
(7, 'Oppo'),
(8, 'Poco'),
(9, 'Realme'),
(10, 'Redmi'),
(11, 'Tecno'),
(12, 'Vivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE `Productos` (
  `ID` int(11) NOT NULL,
  `ID_Marca` int(11) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `RAM_GB` int(11) DEFAULT NULL,
  `ROM_GB` int(11) DEFAULT NULL,
  `Calificaciones` int(11) DEFAULT NULL,
  `Resenas` int(11) DEFAULT NULL,
  `Estrellas` decimal(3,1) DEFAULT NULL,
  `Precio_de_lista` int(11) DEFAULT NULL,
  `Precio_de_venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`ID`, `ID_Marca`, `Modelo`, `RAM_GB`, `ROM_GB`, `Calificaciones`, `Resenas`, `Estrellas`, `Precio_de_lista`, `Precio_de_venta`) VALUES
(1, 10, 'Redmi 8 (Onyx Black, 64 GB)', 4, 64, 674638, 50064, '4.4', 10999, 9999),
(2, 9, 'Realme 5i (Forest Green, 64 GB)', 4, 64, 243106, 16497, '4.5', 10999, 10999),
(3, 9, 'Realme 5i (Aqua Blue, 64 GB)', 4, 64, 243106, 16497, '4.5', 10999, 10999),
(4, 10, 'Redmi 8 (Sapphire Blue, 64 GB)', 4, 32, 674638, 50064, '4.4', 10999, 9999),
(5, 8, 'POCO X2 (Matrix Purple, 128 GB)', 6, 64, 133486, 14732, '4.5', 19999, 18499),
(6, 8, 'POCO X2 (Atlantis Blue, 64 GB)', 6, 64, 133486, 14732, '4.5', 18999, 17499),
(7, 9, 'Realme 6 (Comet Blue, 64 GB)', 6, 64, 30619, 3002, '4.4', 17999, 15999),
(8, 8, 'POCO X2 (Atlantis Blue, 128 GB)', 6, 64, 133486, 14732, '4.5', 19999, 18499),
(9, 9, 'Realme C11 (Rich Green, 32 GB)', 2, 128, 17476, 1209, '4.6', 8999, 7499),
(10, 9, 'Realme C11 (Rich Grey, 32 GB)', 2, 32, 17476, 1209, '4.6', 8999, 7499),
(11, 9, 'Realme Narzo 10A (So White, 32 GB)', 3, 32, 42968, 2926, '4.6', 9999, 8999),
(12, 9, 'Realme Narzo 10A (So Blue, 64 GB)', 4, 64, 17313, 1129, '4.6', 10999, 9999),
(13, 9, 'Realme Narzo 10A (So White, 64 GB)', 4, 32, 17313, 1129, '4.6', 10999, 9999),
(14, 9, 'Realme Narzo 10A (So Blue, 32 GB)', 3, 64, 42968, 2926, '4.6', 9999, 8999),
(15, 8, 'POCO X2 (Matrix Purple, 64 GB)', 6, 64, 133486, 14732, '4.5', 18999, 17499),
(16, 9, 'Realme 6 (Comet White, 64 GB)', 6, 64, 30619, 3002, '4.4', 17999, 15999),
(17, 1, 'Apple iPhone XR (Black, 64 GB)', 0, 32, 11572, 975, '4.6', 52500, 46999),
(18, 3, 'Infinix S5 Pro (Violet, 64 GB)', 4, 64, 12764, 1149, '4.5', 12999, 11499),
(19, 5, 'Motorola G8 Power Lite (Royal Blue, 64 GB)', 4, 64, 27992, 2199, '4.4', 9999, 9499),
(20, 9, 'Realme 6 Pro (Lightning Blue, 64 GB)', 6, 16, 27363, 2887, '4.5', 17999, 17999),
(21, 9, 'Realme 6 Pro (Lightning Orange, 64 GB)', 6, 64, 27363, 2887, '4.5', 17999, 17999),
(22, 3, 'Infinix Hot 9 Pro (Ocean Wave, 64 GB)', 4, 64, 17040, 1232, '4.5', 12999, 10499),
(23, 3, 'Infinix Hot 9 Pro (Violet, 64 GB)', 4, 64, 17040, 1232, '4.5', 12999, 10499),
(24, 5, 'Motorola G8 Power Lite (Arctic Blue, 64 GB)', 4, 64, 27992, 2199, '4.4', 9999, 9499),
(25, 5, 'Motorola G8 Power Lite (Arctic Blue, 64 GB)', 4, 64, 27992, 2199, '4.4', 9999, 9499),
(26, 1, 'Apple iPhone SE (White, 64 GB)', 0, 64, 12954, 1298, '4.5', 42500, 40999),
(27, 7, 'OPPO A9 2020 (Space Purple, 128 GB)', 4, 64, 31725, 2948, '4.3', 18990, 13990),
(28, 7, 'OPPO A9 2020 (Marine Green, 128 GB)', 4, 128, 31725, 2948, '4.3', 18990, 13990),
(29, 9, 'Realme 6 Pro (Lightning Blue, 128 GB)', 6, 128, 27363, 2887, '4.5', 18999, 18999),
(30, 1, 'Apple iPhone SE (Black, 64 GB)', 0, 32, 12954, 1298, '4.5', 42500, 40999),
(31, 1, 'Apple iPhone XR ((PRODUCT)RED, 64 GB)', 0, 64, 11572, 975, '4.6', 52500, 46999),
(32, 10, 'Redmi Note 8 Pro (Electric Blue, 128 GB)', 6, 64, 55815, 4614, '4.4', 17999, 16999),
(33, 1, 'Apple iPhone SE (Red, 64 GB)', 0, 128, 12954, 1298, '4.5', 42500, 40999),
(34, 12, 'Vivo Y15 (Burgundy Red, 64 GB)', 4, 64, 20969, 1505, '4.4', 15990, 12990),
(35, 12, 'Vivo Y15 (Aqua Blue, 64 GB)', 4, 64, 20969, 1505, '4.4', 15990, 12990),
(36, 10, 'Redmi 8A Dual (Sea Blue, 64 GB)', 3, 64, 974, 71, '4.3', 9750, 9750),
(37, 10, 'Redmi 8A Dual (Sea Blue, 32 GB)', 2, 64, 1246, 81, '4.2', 8320, 8320),
(38, 10, 'Redmi 8A Dual (Sky White, 32 GB)', 2, 64, 1246, 81, '4.2', 8499, 8249),
(39, 12, 'Vivo Y12 (Aqua Blue, 64 GB)', 3, 64, 13266, 981, '4.4', 13990, 10990),
(40, 12, 'Vivo Y12 (Burgundy Red, 64 GB)', 3, 16, 13266, 981, '4.4', 13990, 10990),
(41, 7, 'OPPO A5s (Blue, 32 GB)', 2, 32, 5815, 438, '4.3', 12990, 8990),
(42, 7, 'OPPO A5s (Black, 64 GB)', 4, 32, 5365, 394, '4.3', 15990, 10990),
(43, 10, 'Redmi Note 8 Pro (Halo White, 128 GB)', 6, 64, 55815, 4614, '4.4', 17999, 16999),
(44, 1, 'Apple iPhone SE (Black, 128 GB)', 0, 64, 12954, 1298, '4.5', 47800, 45999),
(45, 9, 'Realme 6 Pro (Lightning Orange, 128 GB)', 6, 64, 27363, 2887, '4.5', 18999, 18999),
(46, 7, 'OPPO A31 (Mystery Black, 64 GB)', 4, 32, 9454, 665, '4.3', 12990, 12490),
(47, 7, 'OPPO A31 (Fantasy White, 64 GB)', 4, 64, 9454, 665, '4.3', 12990, 12490),
(48, 1, 'Apple iPhone XR (Blue, 64 GB)', 0, 128, 11572, 975, '4.6', 52500, 46999),
(49, 1, 'Apple iPhone XR (Blue, 64 GB)', 0, 64, 11572, 975, '4.6', 52500, 46999),
(50, 2, 'I Kall K6 (Red, 32 GB)', 4, 64, 615, 57, '3.0', 7299, 6699),
(51, 12, 'Vivo Y11 (Agate Red, 32 GB)', 3, 64, 4744, 268, '4.4', 9990, 9990),
(52, 12, 'Vivo Y11 (Mineral Blue, 32 GB)', 3, 128, 4744, 268, '4.4', 9990, 9990),
(53, 12, 'Vivo U10 (Electric Blue, 32 GB)', 3, 128, 34333, 2395, '4.4', 10990, 10990),
(54, 2, 'I Kall K1000 (Blue, 64 GB)', 4, 32, 840, 111, '2.9', 7699, 7699),
(55, 12, 'Vivo U10 (Thunder Black, 32 GB)', 3, 64, 34333, 2395, '4.4', 10990, 10990),
(56, 8, 'POCO X2 (Atlantis Blue, 256 GB)', 8, 64, 42062, 4824, '4.5', 22999, 21499),
(57, 10, 'Redmi Note 8 Pro (Shadow Black, 128 GB)', 6, 128, 55815, 4614, '4.4', 17999, 16999),
(58, 9, 'Realme 6 (Comet White, 128 GB)', 6, 64, 30620, 3002, '4.4', 16999, 16999),
(59, 7, 'OPPO A9 2020 (Space Purple, 128 GB)', 8, 64, 11436, 977, '4.3', 21990, 15990),
(60, 2, 'I Kall K220 (Blue, 16 GB)', 2, 64, 58, 3, '3.1', 5699, 5499),
(61, 7, 'OPPO A9 2020 (Marine Green, 128 GB)', 8, 64, 11436, 977, '4.3', 21990, 15990),
(62, 3, 'Infinix Smart 4 Plus (Violet, 32 GB)', 3, 64, 53, 5, '4.2', 9999, 7999),
(63, 3, 'Infinix Smart 4 Plus (Ocean Wave, 32 GB)', 3, 64, 53, 5, '4.2', 9999, 7999),
(64, 2, 'I Kall K400 (Blue, 64 GB)', 4, 16, 512, 47, '2.8', 7299, 7299),
(65, 3, 'Infinix Smart 4 Plus (Midnight Black, 32 GB)', 3, 32, 53, 5, '4.2', 9999, 7999),
(66, 7, 'OPPO A12 (Black, 32 GB)', 3, 32, 10388, 761, '4.3', 10990, 9990),
(67, 7, 'OPPO A12 (Blue, 64 GB)', 4, 64, 666, 32, '4.4', 11990, 11490),
(68, 7, 'OPPO A12 (Blue, 32 GB)', 3, 64, 10388, 761, '4.3', 10990, 9990),
(69, 7, 'OPPO A12 (Black, 64 GB)', 4, 64, 666, 32, '4.4', 11990, 11490),
(70, 7, 'OPPO A5s (Green, 64 GB)', 4, 32, 5365, 394, '4.3', 15990, 10990),
(71, 7, 'OPPO A5s (Gold, 64 GB)', 4, 64, 5365, 394, '4.3', 15990, 10990),
(72, 9, 'Realme Narzo 10 (That Green, 128 GB)', 4, 128, 74661, 5759, '4.5', 12999, 11999),
(73, 12, 'Vivo Z1x (Fusion Blue, 64 GB)', 6, 128, 146650, 15652, '4.4', 19990, 16990),
(74, 2, 'I Kall K6 (Red, 32 GB)', 4, 32, 615, 57, '3.0', 7299, 6699),
(75, 12, 'Vivo Z1x (Phantom Purple, 64 GB)', 6, 128, 146650, 15652, '4.4', 19990, 16990),
(76, 12, 'Vivo Z1x (Fusion Blue, 128 GB)', 8, 32, 19380, 2042, '4.4', 24990, 18990),
(77, 6, 'Nokia 105 SS', 4, 64, 75730, 7229, '4.3', 1299, 1299),
(78, 1, 'Apple iPhone 7 Plus (Black, 32 GB)', 0, 64, 27442, 2853, '4.5', 37900, 34999),
(79, 9, 'Realme 6 (Comet White, 128 GB)', 8, 128, 23466, 2363, '4.4', 17999, 17999),
(80, 2, 'I Kall K1000 (Blue, 64 GB)', 4, 64, 840, 111, '2.9', 7699, 7699),
(81, 11, 'Tecno Spark Power 2 (Misty Grey, 64 GB)', 4, 4, 9603, 1157, '4.4', 11999, 9999),
(82, 9, 'Realme Narzo 10 (That White, 128 GB)', 4, 32, 74661, 5759, '4.5', 12999, 11999),
(83, 9, 'Realme Narzo 10 (That Blue, 128 GB)', 4, 128, 74661, 5759, '4.5', 12999, 11999),
(84, 2, 'I Kall K220 (Blue, 16 GB)', 2, 16, 58, 3, '3.1', 5699, 5499),
(85, 7, 'OPPO F15 (Unicorn White, 128 GB)', 8, 64, 10277, 936, '4.4', 22990, 18990),
(86, 7, 'OPPO F15 (Blazing Blue, 128 GB)', 8, 128, 10277, 936, '4.4', 22990, 18990),
(87, 10, 'Redmi Note 8 Pro (Shadow Black, 128 GB)', 8, 128, 7137, 621, '4.4', 19999, 18999),
(88, 12, 'Vivo Y91i (Fusion Black, 32 GB)', 2, 128, 21196, 1445, '4.3', 9990, 7990),
(89, 12, 'Vivo Y91i (Ocean Blue, 32 GB)', 2, 128, 21196, 1445, '4.3', 9990, 7990),
(90, 2, 'I Kall K400 (Blue, 64 GB)', 4, 64, 512, 47, '2.8', 7299, 7299),
(91, 12, 'Vivo S1 Pro (Mystic Black, 128 GB)', 8, 128, 11571, 891, '4.4', 20990, 19990),
(92, 11, 'Tecno Camon 15 (Fascinating Purple, 64 GB)', 4, 32, 2219, 238, '4.2', 12499, 11499),
(93, 11, 'Tecno Camon 15 (SHOAL GOLD, 64 GB)', 4, 32, 2219, 238, '4.2', 12499, 11499),
(94, 12, 'Vivo Y30 (Emerald Black, 128 GB)', 4, 32, 604, 44, '4.3', 18990, 14990),
(95, 12, 'Vivo Y30 (Dazzle Blue, 128 GB)', 4, 128, 604, 44, '4.3', 18990, 14990),
(96, 1, 'Apple iPhone XR (White, 128 GB)', 0, 64, 11572, 975, '4.6', 57800, 52999),
(97, 9, 'Realme C3 (Blazing Red, 32 GB)', 3, 32, 67430, 5102, '4.5', 8999, 8999),
(98, 9, 'Realme C3 (Frozen Blue, 32 GB)', 3, 32, 67430, 5102, '4.5', 8999, 8999),
(99, 9, 'Realme C3 (Frozen Blue, 64 GB)', 4, 64, 117862, 8088, '4.5', 9999, 9999),
(100, 2, 'I Kall K6 (Red, 32 GB)', 4, 32, 615, 57, '3.0', 7299, 6699),
(101, 9, 'Realme C2 (Diamond Blue, 32 GB)', 2, 32, 805006, 66292, '4.4', 7999, 6999),
(102, 9, 'Realme C2 (Diamond Black, 32 GB)', 2, 32, 805006, 66292, '4.4', 7999, 6999),
(103, 9, 'Realme C2 (Diamond Black, 32 GB)', 3, 32, 133935, 10009, '4.4', 8999, 7499),
(104, 2, 'I Kall K1000 (Blue, 64 GB)', 4, 64, 840, 111, '2.9', 7699, 7699),
(105, 3, 'Infinix S5 Pro (Forest Green, 64 GB)', 4, 64, 12764, 1149, '4.5', 12999, 11499),
(106, 9, 'Realme C2 (Diamond Sapphire, 32 GB)', 3, 32, 133935, 10009, '4.4', 8999, 7499),
(107, 9, 'Realme C2 (Diamond Ruby, 32 GB)', 3, 32, 133935, 10009, '4.4', 8999, 7499),
(108, 2, 'I Kall K220 (Blue, 16 GB)', 2, 16, 58, 3, '3.1', 5699, 5499),
(109, 9, 'Realme C2 (Diamond Blue, 32 GB)', 3, 32, 133935, 10009, '4.4', 8999, 7499),
(110, 3, 'Infinix S5 Pro (Sea Blue, 64 GB)', 4, 64, 12764, 1149, '4.5', 12999, 11499),
(111, 9, 'Realme 6 (Comet Blue, 64 GB)', 4, 64, 59665, 6337, '4.4', 14999, 14999),
(112, 2, 'I Kall K400 (Blue, 64 GB)', 4, 64, 512, 47, '2.8', 7299, 7299),
(113, 9, 'Realme 6 (Comet White, 64 GB)', 4, 64, 59665, 6337, '4.4', 14999, 14999),
(114, 10, 'Redmi 8A Dual (Midnight Grey, 32 GB)', 3, 32, 974, 71, '4.3', 7999, 7790),
(115, 9, 'Realme 6 Pro (Lightning Orange, 128 GB)', 6, 128, 27365, 2887, '4.5', 18999, 18999),
(116, 4, 'Lava 34 Plus', 32, 32, 361, 34, '4.1', 1699, 1699),
(117, 9, 'Realme 6 (Comet Blue, 128 GB)', 6, 128, 30622, 3002, '4.4', 16999, 16999),
(118, 9, 'Realme 6 Pro (Lightning Orange, 128 GB)', 8, 128, 14361, 1671, '4.4', 19999, 19999),
(119, 2, 'I Kall K14 New', 32, 64, 7229, 822, '3.4', 609, 609),
(120, 1, 'Apple iPhone XR (White, 64 GB)', 0, 64, 11572, 975, '4.6', 52500, 46999);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Marcas`
--
ALTER TABLE `Marcas`
  ADD PRIMARY KEY (`ID_Marca`);

--
-- Indices de la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Marca` (`ID_Marca`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD CONSTRAINT `Productos_ibfk_1` FOREIGN KEY (`ID_Marca`) REFERENCES `Marcas` (`ID_Marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
