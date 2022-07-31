-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bkm8fussauhtqkeymdxe-mysql.services.clever-cloud.com:3306
-- Generation Time: Jul 30, 2022 at 08:13 PM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkm8fussauhtqkeymdxe`
--

-- --------------------------------------------------------

--
-- Table structure for table `acerca`
--

CREATE TABLE `acerca` (
  `id` bigint(20) NOT NULL,
  `descripcion1` varchar(255) DEFAULT NULL,
  `descripcion2` varchar(255) DEFAULT NULL,
  `descripcion3` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acerca`
--

INSERT INTO `acerca` (`id`, `descripcion1`, `descripcion2`, `descripcion3`, `image_url`) VALUES
(1, 'Soy una persona proactiva, responsable y puntual.', 'Tengo capacidad para trabajar en equipo, como así también autosuficiencia para realizar tareas individuales. Trabajo en otro rubro, pero me interesa la programación y afines.', 'Amante de la música en general y de la guitarra en particular. ', 'https://i.ibb.co/GnsNRz9/Foto-Perfil-BN.jpg  ');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) NOT NULL,
  `curso` varchar(255) DEFAULT NULL,
  `establecimiento` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `curso`, `establecimiento`, `image_url`) VALUES
(6, 'Introducción a la programación', 'Instituto Superior del Profesorado Técnico (UTN)', 'https://i.ibb.co/vZB6qqc/INSPT.jpg'),
(7, 'Argentina programa - 1º Parte #SeProgramar', 'Mumuki', 'https://i.ibb.co/RDp7HVj/mumuki-modified.png'),
(8, 'Microsoft Excel nivel 2 // Microsoft Access nivel 1 y 2', 'EXO Training Center', 'https://i.ibb.co/rmt6YvY/EXO-logo.png'),
(9, 'Metrología y calidad de las mediciones // ISO 9000 para Pymes // Formación de Auditores internos // Calidad en laboratorios, norma IRAM 301 (ISO/IEC 17025) // Validación de software de laboratorio', 'IRAM - Instituto Argentino de Normalización y Certificación', 'https://i.ibb.co/KLv0FHp/Iram.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `educacion`
--

CREATE TABLE `educacion` (
  `id` bigint(20) NOT NULL,
  `establecimiento` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educacion`
--

INSERT INTO `educacion` (`id`, `establecimiento`, `image_url`, `periodo`, `titulo`) VALUES
(1, 'Universidad de Buenos Aires - Facultad de Ingeniería', 'https://i.ibb.co/Bysp57B/UBA.png', '1991 - 2002', 'Ingeniería Mecánica (incompleto - 33 materias aprobadas)'),
(2, 'Escuela Técnica Nº 9 - Ing. Luis Augusto Huergo', 'https://i.ibb.co/8zqdMzF/Huergo.png', '1993 - 1998', 'Técnico Mecánico');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  `tareas` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `area`, `empresa`, `image_url`, `periodo`, `puesto`, `tareas`) VALUES
(3, 'Gerencia de Protección del Usuario', 'Ente Nacional Regulador del Gas (ENARGAS)', 'https://i.ibb.co/JHvqWWg/Enargas-modified.jpg', '2009 - Actual', 'Analista', 'Auditorías a empresas distribuidoras de gas, imputaciones, manejo de expedientes, análisis estadístico de reclamos, preparación y revisión de informes.'),
(4, 'Gas Natural Comprimido (GNC)', 'Instituto del Gas Argentino', 'https://i.ibb.co/Thhw7nP/IGA-BN.png', '2007-2009', 'Auditor', 'Auditorías de certificación y seguimiento a Centros de Revisión Periódica de Cilindros, Productores de Equipos Completos y Talleres de Montaje, revisión de manuales de calidad y procedimientos conforme a normas, evaluador de ensayos de certificación.'),
(5, 'Laboratorio de Instrumentos', 'Instituto del Gas Argentino', '', '1998 - 2007', 'Encargado de Laboratorio', 'Calibración y mantenimiento de instrumentos y equipos de medición y ensayo, diseño de ensayos conforme a normas, selección y compra de instrumentos y equipos de medición y ensayo, auditor interno y externo de Sistemas de Calidad (ISO 9000 e ISO 17025)');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(20);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `url_proyecto` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` (`id`, `descripcion`, `nombre`, `url_proyecto`) VALUES
(19, 'Trabajo final correspondiente a la 2da etapa de Argentina Programa. Realizado con Angular para el Frontend, Java con SpringBoot para el Backend, y MySQL como motor de base de datos.', 'Portfolio web', 'https://portfolio-jog-front.web.app/  ');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) NOT NULL,
  `porcentaje` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `porcentaje`, `skill`) VALUES
(10, '95', 'Compromiso con el trabajo'),
(11, '80', 'Capacidad de análisis'),
(12, '80', 'Adaptabilidad'),
(13, '90', 'Trabajo en equipo'),
(14, '75', 'HTML'),
(15, '60', 'CSS'),
(16, '60', 'JavaScript'),
(17, '60', 'Angular'),
(18, '75', 'Inglés');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acerca`
--
ALTER TABLE `acerca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
