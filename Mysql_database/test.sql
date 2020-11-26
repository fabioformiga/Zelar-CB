-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Nov-2020 às 19:59
-- Versão do servidor: 8.0.22-0ubuntu0.20.10.2
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela1`
--

CREATE TABLE `tabela1` (
  `id-medida` int NOT NULL,
  `hora` time NOT NULL,
  `data` date NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tabela1`
--

INSERT INTO `tabela1` (`id-medida`, `hora`, `data`, `texto`) VALUES
(1, '16:20:56', '2020-11-24', '[object Object]'),
(2, '16:26:24', '2020-11-24', '?'),
(3, '16:33:20', '2020-11-24', '42'),
(4, '18:12:08', '2020-11-24', 'ola'),
(5, '18:12:33', '2020-11-24', 'ola'),
(6, '18:13:11', '2020-11-24', 'caiu'),
(7, '18:26:19', '2020-11-24', '01'),
(8, '18:28:35', '2020-11-24', '01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tabela1`
--
ALTER TABLE `tabela1`
  ADD PRIMARY KEY (`id-medida`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tabela1`
--
ALTER TABLE `tabela1`
  MODIFY `id-medida` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
