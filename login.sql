-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15-Fev-2020 às 19:20
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `login`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(65) NOT NULL,
  `senha` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `usuario`, `senha`) VALUES
(1, '$2y$10$6qupKQOJPPtjMkjcV/1B5.nfHEtiyN21hWHoB06OEFQZYLavLIHHC', '$2y$10$nmWkc5efPv5mQLnyw.h3hekB19vJ9/ri4l52qHZUopWAiA261R1RS'),
(2, '$2y$10$ejbHw1qge9Z11pUDECma0OiI6ktSQOVvw1iTjaDG4RRP.xlk/iCs.', '$2y$10$V5xTL9i19..9eQkB1WcUh.RHSL.tux1lFMPiH9Kw2ZRnSsDZWnLeC'),
(3, '$2y$10$qmb36evdr7a3Mrgre12GoeI7ECQpHVEBlTLZk6kUsBPqh9HEplsje', '$2y$10$GWqa.NsnhSbnpyK6qNDTl.30qw3DvrVQhum59yHE8Qb3Yh1LLyGUO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
