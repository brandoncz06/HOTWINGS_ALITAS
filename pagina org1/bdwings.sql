-- phpMyAdmin SQL Dump
-- Base de datos: `bdwings`

CREATE DATABASE IF NOT EXISTS `bdwings`;
USE `bdwings`;

-- Tabla: t_alitas
CREATE TABLE `t_alitas` (
  `Id_Ala` varchar(10) NOT NULL,
  `Sabor_Ala` varchar(20) NOT NULL,
  `Descripción_Ala` varchar(30) NOT NULL,
  `Precio_Ala` float NOT NULL,
  PRIMARY KEY (`Id_Ala`)
);

INSERT INTO `t_alitas` VALUES
('Ala_1', 'Alas empanizadas', 'Alitas normales', 75),
('Ala_2', 'BBQ', 'Alitas con salsa BBQ', 75),
('Ala_3', 'Adobadas', 'Alitas adobadas', 75),
('Ala_4', 'Mango-Habanero', 'Alitas con salsa sabor Mango-H', 75),
('Ala_5', 'Búfalo', 'Alitas con salsa Búfalo', 75);

-- Tabla: t_bebidas
CREATE TABLE `t_bebidas` (
  `Id_Bebida` varchar(10) NOT NULL,
  `Nombre_Sabor_Beb` varchar(20) NOT NULL,
  `Descripción_Beb` varchar(50) NOT NULL,
  `Precio_Beb` float NOT NULL,
  PRIMARY KEY (`Id_Bebida`)
);

INSERT INTO `t_bebidas` VALUES
('Mich_1', 'Clásica', 'Michelada clásica', 80),
('Mich_2', 'Tamarindo', 'Michelada sabor tamarindo', 80),
('Mich_3', 'Mango', 'Michelada sabor mango', 80),
('Mich_4', 'Clamato', 'Michelada sabor Clamato', 80),
('Mich_5', 'Cubana', 'Michelada estilo cubano', 80),
('Moj_1', 'Normal', 'Mojito normal de 1 litro', 90),
('Moj_1.2', 'Normal', 'Mojito normal de medio litro', 50),
('Moj_2', 'Mango', 'Mojito sabor Mango de 1 litro', 90),
('Moj_2.2', 'Mango', 'Mojito sabor Mango de medio litro', 50);

-- Tabla: t_snacks
CREATE TABLE `t_snacks` (
  `Id_Snack` varchar(10) NOT NULL,
  `Nombre_Sabor_Sn` varchar(20) NOT NULL,
  `Descripción_Sn` varchar(30) NOT NULL,
  `Precio_Sn` float NOT NULL,
  PRIMARY KEY (`Id_Snack`)
);
INSERT INTO `t_snacks` VALUES
('Cost_1', 'BBQ', 'Costillas con salsa BBQ', 75),
('Cost_3', 'Adobadas', 'Costillas adobadas', 75),
('Cost_4', 'Mango-Habanero', 'Costillas con salsa sabor Mango-H', 75),
('Cost_5', 'Búfalo', 'Costillas con salsa Búfalo', 75),
('Papas_1', 'Normal', 'Papas a la farncesa preparados', 75);
('Salchipulos_1', 'Salchipulpos', 'Salchipulpos con papas preparados', 75);

