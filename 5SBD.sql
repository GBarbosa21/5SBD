-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 09/04/2024 às 16:25
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `5SBD`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Carga`
--

CREATE TABLE `Carga` (
  `Id_cargas` int(11) NOT NULL,
  `cod_Produto` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `SOU` int(15) NOT NULL,
  `UPC` int(15) NOT NULL,
  `Qntd_produto` int(5) NOT NULL,
  `Frete` float NOT NULL,
  `email` varchar(120) NOT NULL,
  `nomeComprador` varchar(150) NOT NULL,
  `Cpf` int(11) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `CEP` varchar(12) NOT NULL,
  `Pais` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Clientes`
--

CREATE TABLE `Clientes` (
  `Id_clientes` int(11) NOT NULL,
  `nome_cl` varchar(80) NOT NULL,
  `email_cl` varchar(80) NOT NULL,
  `endereco_cl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ItemPedido`
--

CREATE TABLE `ItemPedido` (
  `Id_pedido` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `preço_unitario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Pedidos`
--

CREATE TABLE `Pedidos` (
  `Id_pedidos` int(11) NOT NULL,
  `Id_clientes` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Carga`
--
ALTER TABLE `Carga`
  ADD PRIMARY KEY (`Id_cargas`);

--
-- Índices de tabela `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`Id_clientes`);

--
-- Índices de tabela `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`Id_pedidos`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Carga`
--
ALTER TABLE `Carga`
  MODIFY `Id_cargas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `Id_clientes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `Id_pedidos` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
