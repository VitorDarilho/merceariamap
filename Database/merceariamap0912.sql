-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Dez-2022 às 00:48
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `merceariamap2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `abertura`
--

CREATE TABLE `abertura` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `horario_abertura` time DEFAULT NULL,
  `valor_abertura` double DEFAULT 0,
  `vendedor` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `abertura`
--

INSERT INTO `abertura` (`id`, `id_empresa`, `data`, `horario_abertura`, `valor_abertura`, `vendedor`) VALUES
(1, 0, '2022-11-30', '17:00:00', 100, NULL),
(2, 0, '2022-11-29', '17:02:00', 100, NULL),
(3, 0, '2022-11-29', '17:05:00', 100, NULL),
(4, 0, '2022-11-30', '20:06:00', 10, NULL),
(5, 0, '2022-11-29', '17:09:00', 100, NULL),
(6, 0, NULL, '19:53:00', 100, 'Marcella '),
(7, 0, '2022-11-30', '19:58:00', 102, 'Marcella'),
(8, 0, '2022-12-01', '21:20:00', 1000000, 'Marcella '),
(9, 0, '2022-12-01', '21:22:00', 100, 'Marcella '),
(10, 0, '2022-12-01', '21:22:00', 10000, 'Marcella '),
(11, 0, '2022-12-01', '21:22:00', 10000, 'Marcella '),
(12, 0, '2022-12-02', '23:03:00', 10, 'Marcella '),
(13, 0, '2022-12-15', '00:05:00', 15, 'Marcella '),
(14, 0, '2022-12-02', '23:05:00', 10, 'Marcella '),
(15, 0, '0000-00-00', '00:00:00', 10, ''),
(16, 0, '2022-12-05', '12:13:00', 10, 'Marcella '),
(17, 0, '2022-12-21', '12:16:00', 0, ''),
(18, 0, '2022-12-05', '12:17:00', 10, 'Vitor'),
(19, 0, '2022-12-06', '12:20:00', 0, 'Vitoor'),
(20, 0, '2022-12-14', '12:21:00', 10, 'Marcella '),
(21, 0, '0000-00-00', '00:00:00', 14, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_cliente_tipo` int(11) NOT NULL,
  `id_cliente_segmento` int(11) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `segmento_fornecedor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `id_empresa`, `id_cliente_tipo`, `id_cliente_segmento`, `nome`, `email`, `cnpj`, `cpf`, `telefone`, `celular`, `created_at`, `updated_at`, `deleted_at`, `segmento_fornecedor`) VALUES
(2, 1, 2, NULL, 'Coca-Cola', 'coca@coca.com', '11.111.111/1111-10', '333.333.333-33', '(38) 3222-1323', '(38) 99928-3231', '2022-12-09 02:36:34', '2022-12-09 02:36:34', NULL, 'Bebidas e Refrigerantes'),
(30, 1, 1, NULL, 'Vitor', 'admin@admin.com', '11.111.111/1111-12', '121.464.296-90', '(38) 9999-9999', '(38) 99999-9999', '2022-12-09 01:02:39', NULL, NULL, 'Bebidas e Refrigerantes'),
(32, 1, 2, NULL, 'Amalia', 'macarrao@macarrao.com', '11.111.111/1111-13', '', '(38) 3222-1323', '(12) 12121-2121', '2022-12-09 02:34:30', NULL, NULL, 'Macarrao '),
(33, 1, 2, NULL, 'Coca-Cola', 'cocacola@gmail.com', '11.111.111/1111-15', '121.464.296-90', '(11) 1111-2012', '(38) 99999-9999', '2022-12-09 03:19:52', NULL, NULL, 'Bebidas e Refrigerantes'),
(34, 1, 2, NULL, 'Coxinhas de Frango', 'adma@admin.com', '11.111.111/1111-14', '', '(38) 9999-9999', '(12) 12121-2121', '2022-12-09 03:22:27', NULL, NULL, 'Bebidas e Refrigerantes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_enderecos`
--

CREATE TABLE `clientes_enderecos` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `id_cliente` int(11) NOT NULL DEFAULT 0,
  `cep` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_segmentos`
--

CREATE TABLE `clientes_segmentos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes_segmentos`
--

INSERT INTO `clientes_segmentos` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, '117.366.897-90', '2022-11-02 23:22:43', '0000-00-00 00:00:00'),
(4, 'Outros...', '2022-11-01 03:00:26', '2020-06-02 03:00:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_tipos`
--

CREATE TABLE `clientes_tipos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes_tipos`
--

INSERT INTO `clientes_tipos` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Pessoa Fisica', '2020-05-28 13:24:51', '2020-05-28 13:24:52'),
(2, 'Pessoa Juridica', '2020-05-28 13:25:05', '2020-05-28 13:25:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_pdv`
--

CREATE TABLE `config_pdv` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_tipo_pdv` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config_pdv`
--

INSERT INTO `config_pdv` (`id`, `id_empresa`, `id_tipo_pdv`, `created_at`, `updated_at`) VALUES
(3, 1, 2, '2022-11-01 13:17:42', '2022-11-01 13:17:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `id_segmento` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `email`, `telefone`, `celular`, `id_segmento`, `created_at`, `updated_at`) VALUES
(1, 'MAP FEST', '', '', '', 0, '2022-11-06 15:39:26', '2020-04-24 00:36:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fechamento_caixa`
--

CREATE TABLE `fechamento_caixa` (
  `vendedor` varchar(25) DEFAULT NULL,
  `data_fechamento` date DEFAULT NULL,
  `hora_fechamento` time DEFAULT NULL,
  `valor_fechamento` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fechamento_caixa`
--

INSERT INTO `fechamento_caixa` (`vendedor`, `data_fechamento`, `hora_fechamento`, `valor_fechamento`) VALUES
('Marcella ', '2022-11-30', '22:08:00', 5.214),
('Marcella ', '2022-11-30', '21:10:00', 100),
('', '0000-00-00', '00:00:00', 50),
('', '0000-00-00', '00:00:00', 150),
('', '0000-00-00', '00:00:00', 150),
('', '0000-00-00', '00:00:00', 0),
('', '0000-00-00', '00:00:00', 12),
('', '0000-00-00', '00:00:00', 0),
('Marcella ', '2022-12-01', '19:46:00', 10),
('Marcella ', '2022-12-01', '21:10:00', 100),
('Vitor', '2022-12-02', '19:49:00', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_cliente_tipo` int(11) NOT NULL,
  `id_cliente_segmento` int(11) DEFAULT NULL,
  `nome` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cnpj` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `cpf` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `telefone` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `celular` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `segmento_fornecedor` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id`, `id_empresa`, `id_cliente_tipo`, `id_cliente_segmento`, `nome`, `email`, `cnpj`, `cpf`, `telefone`, `celular`, `created_at`, `updated_at`, `deleted_at`, `segmento_fornecedor`) VALUES
(1, 1, 0, NULL, 'Coxinhas de Frango', 'admin@admin.com', '11.111.111/1111-12', NULL, '(38) 9999-9999', '(12) 12121-2121', '2022-12-09 03:36:52', NULL, NULL, 'Bebidas e Refrigerantes'),
(2, 1, 0, NULL, 'Coxinhas de Frango 2', 'vitorrodriguesdarilho@gmail.com', '11.111.111/1111-12', NULL, '(38) 9999-9999', '(12) 12121-2121', '2022-12-09 03:42:12', NULL, NULL, 'Macarrão'),
(3, 1, 0, NULL, 'HAMBÚRGUER ARTESANAL 2', 'usuario@usuario.com', '11.111.111/1111-13', NULL, '(38) 9999-9999', '(12) 12121-2121', '2022-12-09 03:43:03', NULL, NULL, 'Macarrão'),
(4, 1, 0, NULL, 'Coxinhas de Frango', 'vitorrodriguesdarilho@gmail.com', '11.111.111/1111-11', NULL, '(38) 3222-1323', '(38) 99999-9999', '2022-12-09 03:43:44', NULL, NULL, 'Bebidas'),
(5, 1, 0, NULL, 'SAPO', 'abc@gmail.com', '11.111.111/1111-11', NULL, '(38) 9999-9999', '(12) 12121-2121', '2022-12-09 03:54:53', NULL, NULL, 'Macarrão'),
(6, 1, 0, NULL, 'Coxinhas de Frango', 'admin@admin.com', '11.111.111/1111-10', NULL, '(38) 3222-1323', '(38) 99999-9999', '2022-12-09 03:59:35', NULL, NULL, 'Bebidas e Refrigerantes'),
(7, 1, 0, NULL, 'Coxinhas de Frango', '', '', NULL, '', '', '2022-12-09 12:46:29', NULL, NULL, ''),
(8, 1, 0, NULL, 'Coxinhas de Frango', 'admin@admin.com', '11.111.111/1111-12', NULL, '(38) 3222-1323', '(12) 12121-2121', '2022-12-09 12:50:32', NULL, NULL, 'Bebidas e Refrigerantes'),
(9, 1, 0, NULL, 'Coxinhas de Frango', 'admin@admin.com', '11.111.111/1111-12', NULL, '(38) 9999-9999', '(38) 99999-9999', '2022-12-09 13:02:55', NULL, NULL, 'Bebidas e Refrigerantes'),
(10, 1, 0, NULL, 'Coxinhas de Frango', '', '', NULL, '', '', '2022-12-09 13:08:33', NULL, NULL, 'Bebidas e Refrigerantes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nome_fornecedor` varchar(50) DEFAULT NULL,
  `cnpj_fornecedor` varchar(50) DEFAULT NULL,
  `telefone_fornecedor` varchar(50) DEFAULT NULL,
  `segmento_fornecedor` varchar(50) DEFAULT NULL,
  `endereco_fornecedor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `id_empresa`, `nome_fornecedor`, `cnpj_fornecedor`, `telefone_fornecedor`, `segmento_fornecedor`, `endereco_fornecedor`) VALUES
(1, 0, 'Coca Cola', '12512125548', '989782329', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(2, 0, 'Guaraná', '0012121', '789988', 'Bebidas', 'Rua Legal'),
(3, 0, 'Amalia', '121212121212', '3689459512', 'Macarrão', 'Rua Massa'),
(4, 0, '', '12.121.212/1212-12', '(38) 9995-3224', '', ''),
(5, 0, 'Macarrão', '12.323.235/9897-99', '(98) 9782-3294', 'Macarrão', 'Rua Churusbango'),
(6, 0, 'Coca Cola', '11.111.111/1111-11', '(38) 9995-3224', 'Bebidas', 'R. Avelar Ribeiro'),
(7, 0, 'Coca Cola', '12.323.235/9897-99', '(98) 9782-3294', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(8, 0, 'Coca Cola', '', '', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(9, 0, '', '12.512.125/5486-66', '(36) 8945-9512', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(10, 0, 'Coca Cola', '', '(98) 9782-3292', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(11, 0, 'Guaravita', '12.121.212/1212-12', '(36) 8945-9512', 'Macarrão', 'Rua Massa'),
(12, 0, 'Coca', '', '', '', ''),
(13, 0, 'Coca Cola', '12.121.212/1212-22', '(98) 9782-3290', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(14, 0, 'Brahma', '12.123.121/3215-48', '(36) 8945-9512', 'Bebidas', 'Rua Churusbango'),
(15, 0, 'Coca Cola', '12.512.125/5481-11', '(22) 2222-2222', 'Refri', 'Rua Churusbango'),
(16, 0, '', '', '(36) 8945-9512', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(17, 0, 'Coca Cola', '12.121.212/1212-12', '(38) 9995-3224', 'Macarrão', 'R. Avelar dos Santos'),
(18, 0, 'Coca-Cola', '', '(38) 9995-3224', 'Bebidas e Refrigerantes', 'R. Avelar Ribeiro'),
(19, 0, 'Coca Cola', '12.121.212/1212-12', '(38) 9995-3224', 'Bebidas', 'R. Avelar Ribeiro'),
(20, 0, 'Codil', '12.121.212/1212-12', '(36) 8945-9512', 'Arroz', 'R. Avelar Ribeiro'),
(21, 0, 'Coca Cola', '12.121.212/1212-12', '(98) 9782-3294', 'Bebidas e Refrigerantes', 'Rua Churusbango'),
(22, 0, 'arrozz', '12.121.212/1212-12', '(36) 8945-9512', 'Bebidas', 'R. Avelar dos Santos'),
(23, 0, 'Coca Cola', '', '(98) 9782-3294', 'Macarrão', 'Rua Churusbango'),
(24, 0, 'Coca Cola', '12.121.212/1212-12', '(38) 9995-3224', 'Bebidas e Refrigerantes', 'Rua Churusbango'),
(25, 0, '', '12.121.212/1212-12', '(38) 9995-3224', 'Bebidas e Refrigerantes', 'Rua Churusbango'),
(26, 0, 'Coca Cola', '12.121.212/1212-12', '(38) 9995-3224', 'Bebidas e Refrigerantes', 'Rua Churusbango'),
(27, 0, 'Bananao', '21.212.121/2121-21', '(38) 9995-3224', 'bananas', 'Rua banana'),
(28, 0, 'Coca Cola', '12.512.125/5481-21', '(38) 9995-3224', 'Bebidas e Refrigerantes', 'Rua Churusbango'),
(29, 0, 'Coca Cola', '', '', 'Bebidas e Refrigerantes', 'Rua Churusbango'),
(30, 0, 'Coca Cola', '12.121.212/1212-12', '(98) 9782-3290', 'Bebidas e Refrigerantes', 'Rua Churusbango'),
(31, 0, 'Coca Cola', '12.121.212/1212-12', '', '', 'Rua Churusbango');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores_enderecos`
--

CREATE TABLE `fornecedores_enderecos` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `id_cliente` int(11) NOT NULL DEFAULT 0,
  `cep` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `endereco` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bairro` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cidade` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` text CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_acessos`
--

CREATE TABLE `log_acessos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL DEFAULT 0,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `log_acessos`
--

INSERT INTO `log_acessos` (`id`, `id_usuario`, `id_empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES
(32, 1, 1, '2022-11-01 19:55:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 1, '2022-11-01 21:47:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 1, 1, '2022-11-01 21:48:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 1, 1, '2022-11-02 13:00:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 1, 1, '2022-11-02 13:03:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 1, 1, '2022-11-02 13:26:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 1, 1, '2022-11-04 22:20:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 1, 1, '2022-11-05 22:37:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 1, 1, '2022-11-05 23:24:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 35, 1, '2022-11-05 23:26:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 1, 1, '2022-11-05 23:27:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 1, 1, '2022-11-06 13:04:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 35, 1, '2022-11-06 15:06:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 1, 1, '2022-11-06 15:08:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 1, 1, '2022-11-06 22:30:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 1, 1, '2022-11-29 19:27:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 1, 1, '2022-11-29 22:23:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 1, 1, '2022-11-30 01:43:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 1, 1, '2022-11-30 03:11:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 1, 1, '2022-11-30 04:17:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 1, 1, '2022-11-30 04:27:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 1, 1, '2022-11-30 19:19:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 1, 1, '2022-11-30 22:22:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 1, 1, '2022-12-01 22:09:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 1, 1, '2022-12-02 01:00:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 1, 1, '2022-12-02 17:42:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 1, 1, '2022-12-02 21:24:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 1, 1, '2022-12-04 14:20:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 50, 1, '2022-12-04 15:50:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 1, 1, '2022-12-05 22:14:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 1, 1, '2022-12-07 22:09:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 1, 1, '2022-12-08 20:57:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 1, 1, '2022-12-09 12:33:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 1, 1, '2022-12-09 22:36:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `meios_pagamentos`
--

CREATE TABLE `meios_pagamentos` (
  `id` int(11) NOT NULL,
  `legenda` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `meios_pagamentos`
--

INSERT INTO `meios_pagamentos` (`id`, `legenda`, `created_at`, `updated_at`) VALUES
(1, 'Dinheiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Crédito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Débito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'PIX', '2022-11-06 22:33:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, '1593604775', 'cria tabela migrations', '2020-07-01 12:33:40', NULL),
(2, '1593605007', 'cria tabela de clientes segmentos', '2020-07-01 12:33:40', NULL),
(3, '1593605094', 'cria tabela de clientes tipos', '2020-07-01 12:33:40', NULL),
(4, '1593605143', 'cria tabela de empresas', '2020-07-01 12:33:40', NULL),
(5, '1593605239', 'cria tabela de clientes', '2020-07-01 12:33:40', NULL),
(6, '1593605328', 'cria tabela de meios de pagamento', '2020-07-01 12:33:40', NULL),
(7, '1593605367', 'cria tabela de tipos pdv', '2020-07-01 12:33:40', NULL),
(8, '1593605428', 'cria tabela de clientes enderecos', '2020-07-01 12:33:40', NULL),
(9, '1593605466', 'cria tabela de config pdv', '2020-07-01 12:33:40', NULL),
(10, '1593605510', 'cria tabela de modulos', '2020-07-01 12:33:40', NULL),
(11, '1593605548', 'cria tabela de perfis', '2020-07-01 12:33:40', NULL),
(12, '1593605570', 'cria tabela de produtos', '2020-07-01 12:33:40', NULL),
(13, '1593605592', 'cria tabela de sexos', '2020-07-01 12:33:40', NULL),
(14, '1593605596', 'cria tabela de usuarios', '2020-07-01 12:33:40', NULL),
(15, '1593605654', 'cria tabela de modulos de usuarios', '2020-07-01 12:33:40', NULL),
(16, '1593605683', 'cria tabela de vendas', '2020-07-01 12:33:40', NULL),
(17, '1593608384', 'cria tabela de logs', '2020-07-01 12:33:40', NULL),
(18, '1593618822', 'campo email', '2022-11-01 19:53:53', NULL),
(19, '1593619560', 'acriar campo id segmento em empresas', '2022-11-01 19:53:53', NULL),
(20, '1593620377', 'chave estrageira de id segmento em tabela empresas', '2022-11-01 19:53:53', NULL),
(21, '1595762432', 'cria tabela de recuperacao de senha', '2022-11-01 19:53:53', NULL),
(22, '1605128613', 'adiciona coluna remember token na tabela usuarios', '2022-11-01 19:53:53', NULL),
(23, '1605128710', 'adiciona coluna remember expire date na tabela usuarios', '2022-11-01 19:53:53', NULL),
(24, '1609101088', 'cria tabela de pedidos', '2022-11-01 19:53:53', NULL),
(25, '1609101547', 'cria tabela de produtos pedidos', '2022-11-01 19:53:53', NULL),
(26, '1609101745', 'cria tabela situacoes pedidos', '2022-11-01 19:53:53', NULL),
(27, '1609103876', 'adiciona coluna deleted at a tabela produtos', '2022-11-01 19:53:53', NULL),
(28, '1610391011', 'lista de clientes segmentos', '2022-11-01 19:53:53', NULL),
(29, '1610623759', 'adiciona boleto aos meios de pagamento', '2022-11-01 19:53:53', NULL),
(30, '1610626072', 'adiciona data compensacao a tabela de vendas', '2022-11-01 19:53:53', NULL),
(31, '1610674406', 'created at em vendas', '2022-11-01 19:53:53', NULL),
(32, '1642334252', 'adiciona deleted at na tabela de usuarios', '2022-11-01 19:53:53', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modulos`
--

INSERT INTO `modulos` (`id`, `descricao`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Inicio', '2020-06-24 09:55:45', '2020-06-24 09:55:46', NULL),
(3, 'Empresas', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'Usuarios', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'PDV padrão', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 'PDV diferencial', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 'Clientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'Produtos', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'Pedidos', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'Relatorios', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 'Configurações', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `id_vendedor` int(11) NOT NULL DEFAULT 0,
  `id_cliente` int(11) NOT NULL DEFAULT 0,
  `id_meio_pagamento` int(11) DEFAULT NULL,
  `id_situacao_pedido` int(11) NOT NULL,
  `id_cliente_endereco` int(11) NOT NULL,
  `valor_desconto` double NOT NULL DEFAULT 0,
  `valor_frete` double NOT NULL DEFAULT 0,
  `previsao_entrega` date NOT NULL DEFAULT '0000-00-00',
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis`
--

CREATE TABLE `perfis` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfis`
--

INSERT INTO `perfis` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2020-06-21 16:00:15', '0000-00-00 00:00:00'),
(2, 'Admin', '2020-04-25 03:53:27', '0000-00-00 00:00:00'),
(4, 'Vendedor', '2020-04-25 03:53:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `descricao` text DEFAULT NULL,
  `imagem` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `data_validade` timestamp NULL DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `id_empresa`, `nome`, `preco`, `descricao`, `imagem`, `created_at`, `updated_at`, `deleted_at`, `codigo`, `quantidade`, `data_validade`, `lote`, `data_fabricacao`) VALUES
(1, 1, 'Açái Tradicional', 10.5, 'Tigela de Açaí tradicional!', 'public/imagem/produtos/1589923097.jpg', '2022-12-05 22:15:21', '2022-12-05 22:15:21', NULL, '12022', 8, '2022-11-17 03:00:00', '4568', NULL),
(2, 1, 'Açaí de Banana', 13, 'bghghg', 'public/imagem/produtos/1589919313.jpg', '2022-12-01 22:41:07', '2022-12-01 22:41:07', '2022-12-01 22:41:07', '22022', 1, '2022-11-30 03:00:00', NULL, NULL),
(3, 1, 'Dell Vale de Uva', 18, 'Néctar de Uva Del Valle 1 Litro', 'public/imagem/produtos/1589923950.jpg', '2022-11-06 18:23:35', '2022-11-06 18:23:35', NULL, '32022', 0, '2022-12-15 03:00:00', NULL, NULL),
(4, 1, 'Guaraná Antárctica', 3.49, '', 'public/imagem/produtos/1590197371.jpg', '2022-11-06 18:23:53', '2022-11-06 18:23:53', NULL, '42022', 0, '2022-11-24 03:00:00', NULL, NULL),
(5, 1, 'Refrigerante zero coca-cola', 3.99, '', 'public/imagem/produtos/1590197622.jpg', '2022-11-06 18:23:43', '2022-11-06 18:23:43', NULL, '52022', 0, '2023-01-27 03:00:00', NULL, NULL),
(7, 1, 'Macarrão', 25, '', 'public/imagem/produtos/1590197916.jpg', '2022-11-06 18:23:59', '2022-11-06 18:23:59', NULL, '72022', 0, '2022-11-19 03:00:00', NULL, NULL),
(8, 1, 'Carne vegna', 9.9, '', 'public/imagem/produtos/1591662766.jpg', '2022-11-06 18:24:08', '2022-11-06 18:24:08', NULL, '82022', 0, '2023-01-27 03:00:00', NULL, NULL),
(9, 1, 'Arroz', 5.9, 'Arroz tipo 01', 'public/imagem/produtos/1593041033.jpg', '2022-11-06 18:24:34', '2022-11-06 18:24:34', NULL, '92022', 0, '2022-12-22 03:00:00', NULL, NULL),
(10, 1, 'Feijão', 7.8, 'Feijão tipo 02', 'public/imagem/produtos/1592946951.jpg', '2022-11-06 18:24:25', '2022-11-06 18:24:25', NULL, '102022', 0, '2022-12-31 03:00:00', NULL, NULL),
(11, 1, 'Coxinhas de Frango', 10, '', 'public/imagem/produtos/1667343225.jpg', '2022-12-01 22:42:08', '2022-12-01 22:42:08', '2022-12-01 22:42:08', '112022', 0, '2023-01-20 03:00:00', NULL, NULL),
(14, 1, 'Soja', 24.57, 'Soja vegana', 'public/imagem/produtos/download (2).jpg', '2022-12-01 22:41:42', '2022-12-01 22:41:42', '2022-12-01 22:41:42', '12345667', 0, '2023-03-16 03:00:00', NULL, NULL),
(15, 1, 'Banana', 49.8, 'Mt bom é vegano', 'public/imagem/produtos/1667689592.jpg', '2022-11-06 18:25:03', '2022-11-06 18:25:03', NULL, '152022', 0, '2023-03-18 03:00:00', NULL, NULL),
(16, 1, 'Grao de Bico', 100, 'otimo para receitas veganas', 'public/imagem/produtos/1667689683.jpg', '2022-11-06 18:25:10', '2022-11-06 18:25:10', NULL, '182732929', 0, '2023-04-08 03:00:00', NULL, NULL),
(17, 1, 'Macarrão Amalia', 4.99, '', 'public/imagem/produtos/1670023335.jpg', '2022-12-03 02:26:06', '2022-12-03 02:26:06', NULL, '172022', 28, '2022-12-23 03:00:00', '1335', '2022-12-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_pedidos`
--

CREATE TABLE `produtos_pedidos` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `quantidade` int(11) NOT NULL,
  `subtotal` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recuperacao_de_senha`
--

CREATE TABLE `recuperacao_de_senha` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexos`
--

CREATE TABLE `sexos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sexos`
--

INSERT INTO `sexos` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Masculino', '2022-11-01 17:08:58', '0000-00-00 00:00:00'),
(2, 'Feminino', '2022-11-01 17:09:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacoes_pedidos`
--

CREATE TABLE `situacoes_pedidos` (
  `id` int(11) NOT NULL,
  `legenda` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_pdv`
--

CREATE TABLE `tipos_pdv` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipos_pdv`
--

INSERT INTO `tipos_pdv` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Padrão', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Diferencial', '2022-11-01 20:02:09', '2020-05-23 20:02:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `remember_token` varchar(60) DEFAULT NULL,
  `remember_expire_date` timestamp NULL DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `imagem` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_empresa`, `nome`, `email`, `password`, `remember_token`, `remember_expire_date`, `id_sexo`, `id_perfil`, `imagem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Marcella', 'admin@admin.com', '3b5df72898847f008454f4ed60280d6bdffc890d', 'bf5afb3a8839ee21d841fdf39cd9094b6103043b', '2023-01-09 22:36:08', 1, 2, 'public/imagem/perfil_usuarios/1585493352.jpg', '2022-12-09 22:36:08', '2022-12-09 22:36:08', NULL),
(35, 1, 'Valmir', 'paidemarcela.com@gmail.com', 'd573809f2bfebe3a044eccff93ca6dc4dce91a0e', '9e8ea6c494dec39d4725579020f12ea5b80b49e0', '2022-12-06 15:06:35', 1, 4, '', '2022-11-06 15:06:35', '2022-11-06 15:06:35', NULL),
(42, 1, 'Caixa', 'caixadomap@gmail.com', '97fc35b8d2c74a75ade8aa0c8b0ad543ff1adbd0', NULL, NULL, 2, 4, '', '2022-11-05 22:46:06', '2022-11-05 22:46:06', NULL),
(49, 1, 'Elisangela', 'maedemarcela.@gmail.com', '8b5a94c09e6a845594c04bc2df7755041dfcc0b1', NULL, NULL, 2, 2, '', '2022-11-05 22:47:26', '2022-11-05 22:47:26', NULL),
(50, 1, 'Vitor', 'vitorrodriguesdarilho@gmail.com', 'a8f5db728fe1fb12d7db40da6e146c17345ce5ae', 'fabeefe8b7b7020d48f185ffadaae7e9fa734ef0', '2023-01-04 15:50:08', 1, 2, NULL, '2022-12-04 15:50:08', '2022-12-04 15:50:08', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_modulos`
--

CREATE TABLE `usuarios_modulos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `consultar` int(11) NOT NULL DEFAULT 1,
  `criar` int(11) NOT NULL DEFAULT 1,
  `editar` int(11) NOT NULL DEFAULT 1,
  `excluir` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios_modulos`
--

INSERT INTO `usuarios_modulos` (`id`, `id_usuario`, `id_empresa`, `id_modulo`, `consultar`, `criar`, `editar`, `excluir`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 1, 7, 1, 1, 1, 1, '2020-06-28 01:23:38', '2020-06-28 01:23:38', NULL),
(5, 1, 1, 11, 1, 1, 1, 1, '2020-06-24 11:05:06', '2020-06-24 11:05:07', NULL),
(6, 1, 1, 3, 1, 1, 1, 1, '2020-06-28 01:24:29', '2020-06-28 01:24:29', NULL),
(7, 1, 1, 2, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 1, 1, 6, 1, 1, 1, 1, '2020-06-24 11:07:02', '2020-06-24 11:07:02', NULL),
(9, 1, 1, 5, 1, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 1, 1, 9, 1, 1, 1, 1, '2020-06-24 11:08:22', '2020-06-24 11:08:23', NULL),
(11, 1, 1, 8, 1, 1, 1, 1, '2020-06-28 21:38:50', '2020-06-28 21:38:50', NULL),
(12, 1, 1, 10, 1, 1, 1, 1, '2019-06-24 11:08:52', '2020-06-24 11:08:53', NULL),
(13, 1, 1, 4, 1, 1, 1, 1, '2020-06-28 01:23:37', '2020-06-28 01:23:37', NULL),
(14, 38, 1, 2, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL),
(15, 38, 1, 3, 0, 0, 0, 0, '2020-06-28 21:42:25', '2020-06-28 21:42:25', NULL),
(16, 38, 1, 4, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL),
(17, 38, 1, 5, 0, 1, 1, 1, '2020-06-28 21:42:29', '2020-06-28 21:42:29', NULL),
(18, 38, 1, 6, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL),
(19, 38, 1, 7, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL),
(20, 38, 1, 8, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL),
(21, 38, 1, 9, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL),
(22, 38, 1, 10, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL),
(23, 38, 1, 11, 1, 1, 1, 1, '2020-06-28 21:39:42', '2020-06-28 21:39:42', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_meio_pagamento` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `preco` double DEFAULT 0,
  `quantidade` int(11) DEFAULT NULL,
  `valor` double NOT NULL DEFAULT 0,
  `data_compensacao` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `codigo_venda` varchar(100) DEFAULT NULL,
  `valor_recebido` varchar(100) DEFAULT NULL,
  `troco` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `id_usuario`, `id_meio_pagamento`, `id_empresa`, `id_produto`, `preco`, `quantidade`, `valor`, `data_compensacao`, `created_at`, `updated_at`, `deleted_at`, `codigo_venda`, `valor_recebido`, `troco`) VALUES
(247, 1, 3, 1, 9, 5.9, 1, 5.9, '0000-00-00', '2022-11-06 14:13:15', NULL, NULL, '16754323886367c0fb13e6d5.429734631506.11.2022', NULL, NULL),
(248, 1, 3, 1, 10, 7.8, 1, 7.8, '0000-00-00', '2022-11-06 14:13:15', NULL, NULL, '16754323886367c0fb13e6d5.429734631506.11.2022', NULL, NULL),
(249, 1, 3, 1, 14, 24.57, 1, 24.57, '0000-00-00', '2022-11-06 15:41:39', NULL, NULL, '20012195966367d5b396bbd0.609308803906.11.2022', NULL, NULL),
(250, 1, 2, 1, 5, 3.99, 1, 3.99, '0000-00-00', '2022-11-06 15:42:01', NULL, NULL, '15409458966367d5c9d18338.575851500106.11.2022', NULL, NULL),
(251, 1, 2, 1, 1, 10.5, 1, 10.5, '0000-00-00', '2022-11-06 18:21:23', NULL, NULL, '9146212806367fb23269cf3.850524132306.11.2022', NULL, NULL),
(252, 1, 2, 1, 2, 13, 1, 13, '0000-00-00', '2022-11-06 18:21:23', NULL, NULL, '9146212806367fb23269cf3.850524132306.11.2022', NULL, NULL),
(253, 1, 2, 1, 3, 18, 1, 18, '0000-00-00', '2022-11-06 18:21:23', NULL, NULL, '9146212806367fb23269cf3.850524132306.11.2022', NULL, NULL),
(254, 1, 4, 1, 11, 10, 1, 10, '2022-11-07', '2022-11-06 22:34:14', NULL, NULL, '90028542563683666b559c9.632890781406.11.2022', NULL, NULL),
(255, 1, 1, 1, 8, 9.9, 1, 9.9, '0000-00-00', '2022-11-29 19:30:05', NULL, NULL, '198410867363865dbd0b6a84.325132440529.11.2022', '100.00', 90.1),
(256, 1, 0, 1, 1, 10.5, 1, 10.5, '0000-00-00', '2022-12-01 22:09:34', NULL, NULL, '677748876389261eba2bb9.880742113401.12.2022', NULL, NULL),
(257, 1, 1, 1, 3, 18, 1, 18, '0000-00-00', '2022-12-01 22:39:25', NULL, NULL, '69655198663892d1dbda256.988896932501.12.2022', '20.00', 2),
(258, 1, 4, 1, 2, 13, 14, 182, '2022-12-02', '2022-12-01 22:40:29', NULL, NULL, '160906022563892d5d9f5905.453994362901.12.2022', NULL, NULL),
(259, 1, 0, 1, 9, 5.9, 1, 5.9, '0000-00-00', '2022-12-02 21:24:35', NULL, NULL, '1285705098638a6d13e18a48.734891073502.12.2022', NULL, NULL),
(260, 1, 3, 1, 9, 5.9, 1, 5.9, '0000-00-00', '2022-12-02 21:26:36', NULL, NULL, '363937437638a6d8c833280.777069093602.12.2022', NULL, NULL),
(261, 1, 1, 1, 17, 4.99, 1, 4.99, '0000-00-00', '2022-12-03 02:23:35', '2022-12-03 02:23:35', '2022-12-03 02:23:35', '1987486329638ab30026da60.319874535602.12.2022', '6.00', 1.01),
(262, 1, 3, 1, 1, 10.5, 1, 10.5, '0000-00-00', '2022-12-03 02:26:04', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(263, 1, 3, 1, 3, 18, 1, 18, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(264, 1, 3, 1, 4, 3.49, 1, 3.49, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(265, 1, 3, 1, 5, 3.99, 1, 3.99, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(266, 1, 3, 1, 7, 25, 1, 25, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(267, 1, 3, 1, 8, 9.9, 1, 9.9, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(268, 1, 3, 1, 9, 5.9, 1, 5.9, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(269, 1, 3, 1, 10, 7.8, 1, 7.8, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(270, 1, 3, 1, 15, 49.8, 1, 49.8, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(271, 1, 3, 1, 16, 100, 1, 100, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL),
(272, 1, 3, 1, 17, 4.99, 1, 4.99, '0000-00-00', '2022-12-03 02:26:06', NULL, NULL, '2066112693638ab3bcdf4c25.262642610402.12.2022', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `abertura`
--
ALTER TABLE `abertura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_clientes_tipos_clientes` (`id_cliente_tipo`),
  ADD KEY `FK_clientes_clientes_segmentos` (`id_cliente_segmento`),
  ADD KEY `FK_clientes_empresas` (`id_empresa`);

--
-- Índices para tabela `clientes_enderecos`
--
ALTER TABLE `clientes_enderecos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_clientes_enderecos_empresas` (`id_empresa`),
  ADD KEY `FK_clientes_enderecos_clientes` (`id_cliente`);

--
-- Índices para tabela `clientes_segmentos`
--
ALTER TABLE `clientes_segmentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes_tipos`
--
ALTER TABLE `clientes_tipos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_pdv`
--
ALTER TABLE `config_pdv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_config_pdv_clientes` (`id_empresa`),
  ADD KEY `FK_config_pdv_tipo_pdv` (`id_tipo_pdv`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_empresas_clientes_segmentos` (`id_segmento`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Índices para tabela `fornecedores_enderecos`
--
ALTER TABLE `fornecedores_enderecos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices para tabela `log_acessos`
--
ALTER TABLE `log_acessos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_log_usuarios` (`id_usuario`),
  ADD KEY `FK_log_clientes` (`id_empresa`);

--
-- Índices para tabela `meios_pagamentos`
--
ALTER TABLE `meios_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_empresas_pedidos` (`id_empresa`),
  ADD KEY `FK_usuarios_pedidos` (`id_vendedor`),
  ADD KEY `FK_clientes_pedidos` (`id_cliente`),
  ADD KEY `FK_meio_pagamentos_pedidos` (`id_meio_pagamento`),
  ADD KEY `FK_cliente_endereco_pedidos` (`id_cliente_endereco`),
  ADD KEY `FK_situacao_pedidos` (`id_situacao_pedido`);

--
-- Índices para tabela `perfis`
--
ALTER TABLE `perfis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_produtos_clientes` (`id_empresa`);

--
-- Índices para tabela `produtos_pedidos`
--
ALTER TABLE `produtos_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `recuperacao_de_senha`
--
ALTER TABLE `recuperacao_de_senha`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `situacoes_pedidos`
--
ALTER TABLE `situacoes_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipos_pdv`
--
ALTER TABLE `tipos_pdv`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_usuarios_sexo` (`id_sexo`),
  ADD KEY `FK_usuarios_perfis` (`id_perfil`),
  ADD KEY `FK_usuarios_clientes` (`id_empresa`);

--
-- Índices para tabela `usuarios_modulos`
--
ALTER TABLE `usuarios_modulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_usuarios_modulos_usuarios` (`id_usuario`),
  ADD KEY `FK_usuarios_modulos_empresas` (`id_empresa`),
  ADD KEY `FK_usuarios_modulos_modulos_permissoes` (`id_modulo`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_vendas_meios_de_pagamento` (`id_meio_pagamento`),
  ADD KEY `FK_vendas_usuarios` (`id_usuario`),
  ADD KEY `FK_vendas_clientes` (`id_empresa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abertura`
--
ALTER TABLE `abertura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `clientes_enderecos`
--
ALTER TABLE `clientes_enderecos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `clientes_segmentos`
--
ALTER TABLE `clientes_segmentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `clientes_tipos`
--
ALTER TABLE `clientes_tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `config_pdv`
--
ALTER TABLE `config_pdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `fornecedores_enderecos`
--
ALTER TABLE `fornecedores_enderecos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `log_acessos`
--
ALTER TABLE `log_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `meios_pagamentos`
--
ALTER TABLE `meios_pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de tabela `perfis`
--
ALTER TABLE `perfis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `produtos_pedidos`
--
ALTER TABLE `produtos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT de tabela `recuperacao_de_senha`
--
ALTER TABLE `recuperacao_de_senha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `situacoes_pedidos`
--
ALTER TABLE `situacoes_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tipos_pdv`
--
ALTER TABLE `tipos_pdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `usuarios_modulos`
--
ALTER TABLE `usuarios_modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `FK_clientes_clientes_segmentos` FOREIGN KEY (`id_cliente_segmento`) REFERENCES `clientes_segmentos` (`id`),
  ADD CONSTRAINT `FK_clientes_empresas` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_clientes_tipos_clientes` FOREIGN KEY (`id_cliente_tipo`) REFERENCES `clientes_tipos` (`id`);

--
-- Limitadores para a tabela `clientes_enderecos`
--
ALTER TABLE `clientes_enderecos`
  ADD CONSTRAINT `FK_clientes_enderecos_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `FK_clientes_enderecos_empresas` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`);

--
-- Limitadores para a tabela `config_pdv`
--
ALTER TABLE `config_pdv`
  ADD CONSTRAINT `FK_config_pdv_clientes` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_config_pdv_tipo_pdv` FOREIGN KEY (`id_tipo_pdv`) REFERENCES `tipos_pdv` (`id`);

--
-- Limitadores para a tabela `log_acessos`
--
ALTER TABLE `log_acessos`
  ADD CONSTRAINT `FK_log_clientes` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_log_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
