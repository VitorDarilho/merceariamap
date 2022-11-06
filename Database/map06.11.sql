-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Nov-2022 às 19:30
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
-- Banco de dados: `map`
--

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `id_empresa`, `id_cliente_tipo`, `id_cliente_segmento`, `nome`, `email`, `cnpj`, `cpf`, `telefone`, `celular`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 1, 1, 'Lara', 'larinha.itac@gmail.com', NULL, '333.333.333-33', NULL, '(38) 99928-3231', '2022-11-02 23:26:36', '2022-11-02 23:26:36', NULL),
(4, 1, 1, 4, 'VITOR DAYREL', 'mariana@gmail.com', '', NULL, '(71) 9873-9218', '(71) 98530-0528', '2022-11-02 23:29:28', '2022-11-02 23:29:28', '2022-11-02 23:29:28'),
(18, 1, 2, 1, 'Vitor', 'textilsul@hotmail.com', '84.039.937/0001-60', NULL, '(71) 5656-5656', '(71) 54665-6566', '2022-11-02 23:27:05', '2022-11-02 23:27:05', NULL),
(21, 1, 1, 1, 'Cris', 'studylary@gmail.com', '', '118.377.676-45', '(38) 9999-9999', '(38) 99999-9999', '2022-11-02 23:29:12', '0000-00-00 00:00:00', NULL),
(22, 1, 1, 1, 'jamilly', 'jamily.natiely@gmail.com', '', '353.601.537-92', '(38) 9999-2334', '(38) 98393-7971', '2022-11-02 23:34:56', '0000-00-00 00:00:00', NULL),
(23, 1, 1, NULL, 'lara', 'larau.itac@gmail.com', NULL, '180.215.188-55', '(38) 9982-8282', '(38) 99999-2292', '2022-11-02 23:53:20', '2022-11-02 23:53:20', NULL),
(24, 1, 1, NULL, 'juana', 'juana.ana@gmail.com', '', '418.521.925-34', '', '', '2022-11-02 23:58:20', '0000-00-00 00:00:00', NULL),
(25, 1, 1, NULL, 'dddddd', 'ddd.aaaa@gmail.com', '18.021.518/8555-55', '211.686.453-44', '', '', '2022-11-03 00:00:20', '0000-00-00 00:00:00', NULL),
(26, 1, 1, NULL, 'wsdfgbhjmkl', 'AZDSFGH.ASDFG@GMAIL.COM', '', '970.575.132-32', '', '(38) 99928-3231', '2022-11-03 00:08:57', '0000-00-00 00:00:00', NULL),
(27, 1, 1, NULL, 'larateste2', 'studylari1000@gmail.com', '', '804.618.976-60', '(38) 9759-4841', '(38) 99864-5222', '2022-11-05 22:50:33', '0000-00-00 00:00:00', NULL);

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

--
-- Extraindo dados da tabela `clientes_enderecos`
--

INSERT INTO `clientes_enderecos` (`id`, `id_empresa`, `id_cliente`, `cep`, `endereco`, `bairro`, `cidade`, `estado`, `numero`, `complemento`, `created_at`, `updated_at`) VALUES
(3, 1, 4, '41927210', '2ª travessa são benedito', 'Chapada do Rio vermelho', 'salvador', 'Bahia', 14, NULL, '2020-05-29 15:30:33', '2020-05-30 01:04:00'),
(4, 1, 4, '41927210', '2ª travessa são benedito', 'Chapada do Rio vermelho', 'salvador', 'Bahia', 14, ' bg ', '2020-05-29 15:31:48', '2020-05-29 15:31:48');

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
(45, 1, 1, '2022-11-06 15:08:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(4, 'Boleto', '2022-11-01 19:53:53', '0000-00-00 00:00:00');

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
  `data_validade` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `id_empresa`, `nome`, `preco`, `descricao`, `imagem`, `created_at`, `updated_at`, `deleted_at`, `codigo`, `quantidade`, `data_validade`) VALUES
(1, 1, 'Açái Tradicional', 10.5, 'Tigela de Açaí tradicional!', 'public/imagem/produtos/1589923097.jpg', '2022-11-06 18:23:17', '2022-11-06 18:23:17', NULL, '12022', 0, '2022-11-17 03:00:00'),
(2, 1, 'Açaí de Banana', 13, 'bghghg', 'public/imagem/produtos/1589919313.jpg', '2022-11-06 18:23:26', '2022-11-06 18:23:26', NULL, '22022', 0, '2022-11-30 03:00:00'),
(3, 1, 'Dell Vale de Uva', 18, 'Néctar de Uva Del Valle 1 Litro', 'public/imagem/produtos/1589923950.jpg', '2022-11-06 18:23:35', '2022-11-06 18:23:35', NULL, '32022', 0, '2022-12-15 03:00:00'),
(4, 1, 'Guaraná Antárctica', 3.49, '', 'public/imagem/produtos/1590197371.jpg', '2022-11-06 18:23:53', '2022-11-06 18:23:53', NULL, '42022', 0, '2022-11-24 03:00:00'),
(5, 1, 'Refrigerante zero coca-cola', 3.99, '', 'public/imagem/produtos/1590197622.jpg', '2022-11-06 18:23:43', '2022-11-06 18:23:43', NULL, '52022', 0, '2023-01-27 03:00:00'),
(7, 1, 'Macarrão', 25, '', 'public/imagem/produtos/1590197916.jpg', '2022-11-06 18:23:59', '2022-11-06 18:23:59', NULL, '72022', 0, '2022-11-19 03:00:00'),
(8, 1, 'Carne vegna', 9.9, '', 'public/imagem/produtos/1591662766.jpg', '2022-11-06 18:24:08', '2022-11-06 18:24:08', NULL, '82022', 0, '2023-01-27 03:00:00'),
(9, 1, 'Arroz', 5.9, 'Arroz tipo 01', 'public/imagem/produtos/1593041033.jpg', '2022-11-06 18:24:34', '2022-11-06 18:24:34', NULL, '92022', 0, '2022-12-22 03:00:00'),
(10, 1, 'Feijão', 7.8, 'Feijão tipo 02', 'public/imagem/produtos/1592946951.jpg', '2022-11-06 18:24:25', '2022-11-06 18:24:25', NULL, '102022', 0, '2022-12-31 03:00:00'),
(11, 1, 'Coxinhas de Frango', 10, '', 'public/imagem/produtos/1667343225.jpg', '2022-11-06 18:24:46', '2022-11-06 18:24:46', NULL, '112022', 0, '2023-01-20 03:00:00'),
(14, 1, 'Soja', 24.57, 'Soja vegana', 'public/imagem/produtos/download (2).jpg', '2022-11-06 18:24:54', '2022-11-06 18:24:54', NULL, '12345667', 0, '2023-03-16 03:00:00'),
(15, 1, 'Banana', 49.8, 'Mt bom é vegano', 'public/imagem/produtos/1667689592.jpg', '2022-11-06 18:25:03', '2022-11-06 18:25:03', NULL, '152022', 0, '2023-03-18 03:00:00'),
(16, 1, 'Grao de Bico', 100, 'otimo para receitas veganas', 'public/imagem/produtos/1667689683.jpg', '2022-11-06 18:25:10', '2022-11-06 18:25:10', NULL, '182732929', 0, '2023-04-08 03:00:00');

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
(1, 1, 'Marcella', 'admin@admin.com', '3b5df72898847f008454f4ed60280d6bdffc890d', 'dadb5275bb8503ff3891aaf4b5fad91b2069b307', '2022-12-06 15:08:20', 1, 2, 'public/imagem/perfil_usuarios/1585493352.jpg', '2022-11-06 15:08:20', '2022-11-06 15:08:20', NULL),
(35, 1, 'Valmir', 'paidemarcela.com@gmail.com', 'd573809f2bfebe3a044eccff93ca6dc4dce91a0e', '9e8ea6c494dec39d4725579020f12ea5b80b49e0', '2022-12-06 15:06:35', 1, 4, '', '2022-11-06 15:06:35', '2022-11-06 15:06:35', NULL),
(42, 1, 'Caixa', 'caixadomap@gmail.com', '97fc35b8d2c74a75ade8aa0c8b0ad543ff1adbd0', NULL, NULL, 2, 4, '', '2022-11-05 22:46:06', '2022-11-05 22:46:06', NULL),
(49, 1, 'Elisangela', 'maedemarcela.@gmail.com', '8b5a94c09e6a845594c04bc2df7755041dfcc0b1', NULL, NULL, 2, 2, '', '2022-11-05 22:47:26', '2022-11-05 22:47:26', NULL);

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
  `valor_recebido` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `id_usuario`, `id_meio_pagamento`, `id_empresa`, `id_produto`, `preco`, `quantidade`, `valor`, `data_compensacao`, `created_at`, `updated_at`, `deleted_at`, `codigo_venda`, `valor_recebido`) VALUES
(247, 1, 3, 1, 9, 5.9, 1, 5.9, '0000-00-00', '2022-11-06 14:13:15', NULL, NULL, '16754323886367c0fb13e6d5.429734631506.11.2022', NULL),
(248, 1, 3, 1, 10, 7.8, 1, 7.8, '0000-00-00', '2022-11-06 14:13:15', NULL, NULL, '16754323886367c0fb13e6d5.429734631506.11.2022', NULL),
(249, 1, 3, 1, 14, 24.57, 1, 24.57, '0000-00-00', '2022-11-06 15:41:39', NULL, NULL, '20012195966367d5b396bbd0.609308803906.11.2022', NULL),
(250, 1, 2, 1, 5, 3.99, 1, 3.99, '0000-00-00', '2022-11-06 15:42:01', NULL, NULL, '15409458966367d5c9d18338.575851500106.11.2022', NULL),
(251, 1, 2, 1, 1, 10.5, 1, 10.5, '0000-00-00', '2022-11-06 18:21:23', NULL, NULL, '9146212806367fb23269cf3.850524132306.11.2022', NULL),
(252, 1, 2, 1, 2, 13, 1, 13, '0000-00-00', '2022-11-06 18:21:23', NULL, NULL, '9146212806367fb23269cf3.850524132306.11.2022', NULL),
(253, 1, 2, 1, 3, 18, 1, 18, '0000-00-00', '2022-11-06 18:21:23', NULL, NULL, '9146212806367fb23269cf3.850524132306.11.2022', NULL);

--
-- Índices para tabelas despejadas
--

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
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
-- AUTO_INCREMENT de tabela `log_acessos`
--
ALTER TABLE `log_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `usuarios_modulos`
--
ALTER TABLE `usuarios_modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

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
