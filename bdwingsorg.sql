-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 02-06-2025 a las 18:45:24
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hot wings alitas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_alitas`
--

CREATE TABLE `t_alitas` (
  `Id_Ala` varchar(10) NOT NULL,
  `Sabor_Ala` varchar(20) NOT NULL,
  `Descripción_Ala` varchar(30) NOT NULL,
  `Precio_Ala` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_alitas`
--

INSERT INTO `t_alitas` (`Id_Ala`, `Sabor_Ala`, `Descripción_Ala`, `Precio_Ala`) VALUES
('Ala_1', 'Alas empanizadas', 'Alitas normales', 75),
('Ala_2', 'BBQ', 'Alitas con salsa BBQ', 75),
('Ala_3', 'Adobadas', 'Alitas adobadas', 75),
('Ala_4', 'Mango-Habanero', 'Alitas con salsa sabor Mango-H', 75),
('Ala_5', 'Búfalo', 'Alitas con salsa Búfalo', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_bebidas`
--

CREATE TABLE `t_bebidas` (
  `Id_Bebida` varchar(10) NOT NULL,
  `Nombre_Sabor_Beb` varchar(20) NOT NULL,
  `Descripción_Beb` varchar(50) NOT NULL,
  `Precio_Beb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_bebidas`
--

INSERT INTO `t_bebidas` (`Id_Bebida`, `Nombre_Sabor_Beb`, `Descripción_Beb`, `Precio_Beb`) VALUES
('Blue_1', 'Blue', 'Azulito de 1 litro', 75),
('Blue_1.2', 'Blue', 'Azulito de medio litro', 40),
('Car_1', 'Limón', 'Caribe preparada sabor limón', 45),
('Car_2', 'Mango-Piña', 'Caribe preparada sabor Mango-Piña', 45),
('Car_3', 'Fresa', 'Caribe preparada sabor Fresa', 45),
('Car_4', 'Manzana-Kiwi', 'Caribe preparada sabor Manzana-Kiwi', 45),
('Car_5', 'Durazno', 'Caribe preparada sabor Durazno', 45),
('Car_6', 'Maracuyá', 'Caribe preparada sabor Maracuyá', 45),
('Car_7', 'Tinto', 'Caribe preparada sabor Tinto', 45),
('Ceri_1', 'Cerveza', 'Cerillito (Cerveza de lata preparada)', 45),
('Mich_1', 'Clásica', 'Michelada clásica', 80),
('Mich_2', 'Tamarindo', 'Michelada sabor tamarindo', 80),
('Mich_3', 'Mango', 'Michelada sabor mango', 80),
('Mich_4', 'Clamato', 'Michelada sabor Clamato', 80),
('Mich_5', 'Cubana', 'Michelada estilo cubano', 80),
('Moj_1', 'Normal', 'Mojito normal de 1 litro', 90),
('Moj_1.2', 'Normal', 'Mojito normal de medio litro', 50),
('Moj_2', 'Mango', 'Mojito sabor Mango de 1 litro', 90),
('Moj_2.2', 'Mango', 'Mojito sabor Mango de medio litro', 50),
('Moj_3', 'Fresa', 'Mojito sabor fresa de 1 litro', 90),
('Moj_3.2', 'Fresa', 'Mojito sabor fresa de medio litro', 50),
('Moj_4', 'Frutos Rojos', 'Mojito sabor frutos rojos de 1 litro', 90),
('Moj_4.2', 'Frutos Rojos', 'Mojito sabor frutos rojos de medio litro', 50),
('San_1', 'Sangría', 'Sangría preparada', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_snacks`
--

CREATE TABLE `t_snacks` (
  `Id_Snack` varchar(10) NOT NULL,
  `Nombre_Sabor_Sn` varchar(20) NOT NULL,
  `Descripción_Sn` varchar(50) NOT NULL,
  `Precio_Sn` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_snacks`
--

INSERT INTO `t_snacks` (`Id_Snack`, `Nombre_Sabor_Sn`, `Descripción_Sn`, `Precio_Sn`) VALUES
('Cost_1', 'Adobadas', 'Costillas adobadas', 80),
('Cost_2', 'BBQ', 'Costillas con salsa BBQ', 80),
('Cost_3', 'Mango-Habanero', 'Costillas con salsa sabor Mang', 80),
('Cost_4', 'Búfalo', 'Costillas con salsa Búfalo', 80),
('PF_1', 'Papa', 'Papas a la francesa', 40),
('PF_2', 'Salchipulpos', 'Papas a la francesa con salchicha', 45);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_alitas`
--
ALTER TABLE `t_alitas`
  ADD PRIMARY KEY (`Id_Ala`);

--
-- Indices de la tabla `t_bebidas`
--
ALTER TABLE `t_bebidas`
  ADD PRIMARY KEY (`Id_Bebida`);

--
-- Indices de la tabla `t_snacks`
--
ALTER TABLE `t_snacks`
  ADD PRIMARY KEY (`Id_Snack`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
