-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Nov-2022 às 13:43
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.28

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
(4, 'Outros...', '2020-06-02 03:00:26', '2020-06-02 03:00:27');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config_pdv`
--

INSERT INTO `config_pdv` (`id`, `id_empresa`, `id_tipo_pdv`, `created_at`, `updated_at`) VALUES
(3, 1, 2, '2020-06-28 13:17:42', '2020-06-28 13:17:42');

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
(1, 'Cliente Teste', '', '', '', 0, '2020-04-24 00:36:33', '2020-04-24 00:36:33');

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
(42, 1, 1, '2022-11-05 23:27:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `codigo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `id_empresa`, `nome`, `preco`, `descricao`, `imagem`, `created_at`, `updated_at`, `deleted_at`, `codigo`) VALUES
(1, 1, 'Açái Tradicional', 10.5, 'Tigela de Açaí tradicional!', 'public/imagem/produtos/1589923097.jpg', '2022-11-01 22:52:41', '2020-05-25 11:36:19', NULL, '12022'),
(2, 1, 'Açaí de Banana', 13, 'bghghg', 'public/imagem/produtos/1589919313.jpg', '2022-11-01 22:52:41', '2020-05-19 20:15:13', NULL, '22022'),
(3, 1, 'Dell Vale de Uva', 18, 'Néctar de Uva Del Valle 1 Litro', 'public/imagem/produtos/1589923950.jpg', '2022-11-01 22:52:41', '2020-05-19 21:32:30', NULL, '32022'),
(4, 1, 'Guaraná Antárctica', 3.49, '', 'public/imagem/produtos/1590197371.jpg', '2022-11-01 22:52:41', '2020-05-23 01:29:31', NULL, '42022'),
(5, 1, 'Refrigerante zero coca-cola', 3.99, '', 'public/imagem/produtos/1590197622.jpg', '2022-11-01 22:52:41', '2020-05-23 01:33:42', NULL, '52022'),
(7, 1, 'Macarrão', 25, '', 'public/imagem/produtos/1590197916.jpg', '2022-11-02 13:27:41', '2022-11-02 13:27:41', NULL, '72022'),
(8, 1, 'Carne vegna', 9.9, '', 'public/imagem/produtos/1591662766.jpg', '2022-11-05 22:57:05', '2022-11-02 23:14:58', NULL, '82022'),
(9, 1, 'Arroz', 5.9, 'Arroz tipo 01', 'public/imagem/produtos/1593041033.jpg', '2022-11-05 22:59:02', '2022-11-02 13:10:46', NULL, '92022'),
(10, 1, 'Feijão', 7.8, 'Feijão tipo 02', 'public/imagem/produtos/1592946951.jpg', '2022-11-05 23:00:42', '2022-11-02 13:11:19', NULL, '102022'),
(11, 1, 'Coxinhas de Frango', 10, '', 'public/imagem/produtos/1667343225.jpg', '2022-11-05 23:03:48', '2022-11-01 22:52:41', NULL, '112022'),
(14, 1, 'Soja', 24.57, 'Soja vegana', 'public/imagem/produtos/download (2).jpg', '2022-11-05 23:05:28', NULL, NULL, '12345667'),
(15, 1, 'Banana', 49.8, 'Mt bom é vegano', 'public/imagem/produtos/1667689592.jpg', '2022-11-05 23:06:32', '2022-11-05 23:06:32', NULL, '152022'),
(16, 1, 'Grao de Bico', 100, 'otimo para receitas veganas', 'public/imagem/produtos/1667689683.jpg', '2022-11-05 23:08:03', NULL, NULL, '182732929');

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
(1, 'Masculino', '2020-02-21 17:08:58', '0000-00-00 00:00:00'),
(2, 'Feminino', '2020-02-21 17:09:09', '0000-00-00 00:00:00');

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
(2, 'Diferencial', '2020-05-23 20:02:09', '2020-05-23 20:02:09');

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
(1, 1, 'Marcella', 'admin@admin.com', '3b5df72898847f008454f4ed60280d6bdffc890d', 'ac88c1117c6f4c13c06a93cf54476ff803e993d2', '2022-12-05 23:27:55', 1, 2, 'public/imagem/perfil_usuarios/1585493352.jpg', '2022-11-05 23:27:55', '2022-11-05 23:27:55', NULL),
(35, 1, 'Valmir', 'paidemarcela.com@gmail.com', 'd573809f2bfebe3a044eccff93ca6dc4dce91a0e', '81be356f7660ca6ece569d02bb8c97af3e5ba93c', '2022-12-05 23:26:47', 1, 4, '', '2022-11-05 23:26:47', '2022-11-05 23:26:47', NULL),
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
(1, 1, 1, 1, 0, 0, 0, 11, NULL, '2020-04-25 04:58:13', '2020-04-25 04:58:13', NULL, NULL, NULL),
(2, 1, 3, 1, 0, 0, 0, 12, NULL, '2020-04-25 04:58:43', '2020-04-25 04:58:43', NULL, NULL, NULL),
(3, 1, 2, 1, 0, 0, 0, 50, NULL, '2020-04-25 04:59:08', '2020-04-25 04:59:08', NULL, NULL, NULL),
(6, 38, 2, 1, 0, 0, 0, 40, NULL, '2020-04-25 22:22:24', '2020-04-25 22:22:24', NULL, NULL, NULL),
(8, 38, 3, 1, 0, 0, 0, 20, NULL, '2020-04-25 23:35:46', '2020-04-25 23:35:46', NULL, NULL, NULL),
(9, 38, 1, 1, 0, 0, 0, 12, NULL, '2020-04-26 00:38:50', '2020-04-26 00:38:50', NULL, NULL, NULL),
(10, 1, 1, 1, 0, 0, 0, 10, NULL, '2020-04-26 00:47:54', '2020-04-26 00:47:54', NULL, NULL, NULL),
(11, 38, 1, 1, 0, 0, 0, 15, NULL, '2020-04-26 12:26:22', '2020-04-26 12:26:22', NULL, NULL, NULL),
(12, 38, 2, 1, 0, 0, 0, 30, NULL, '2020-04-26 12:28:52', '2020-04-26 12:28:52', NULL, NULL, NULL),
(15, 38, 1, 1, 0, 0, 0, 15, NULL, '2020-04-26 12:49:29', '2020-04-26 12:49:29', NULL, NULL, NULL),
(16, 38, 3, 1, 0, 0, 0, 16, NULL, '2020-04-26 12:49:55', '2020-04-26 12:49:55', NULL, NULL, NULL),
(17, 1, 1, 1, 0, 0, 0, 25, NULL, '2020-04-28 02:08:22', '2020-04-28 02:08:22', NULL, NULL, NULL),
(18, 1, 2, 1, 0, 0, 0, 20, NULL, '2020-04-28 02:09:58', '2020-04-28 02:09:58', NULL, NULL, NULL),
(19, 38, 3, 1, 0, 0, 0, 15, NULL, '2020-04-28 02:10:28', '2020-04-28 02:10:28', NULL, NULL, NULL),
(20, 36, 1, 1, 0, 0, 0, 15, NULL, '2020-04-28 02:11:56', '2020-04-28 02:11:56', NULL, NULL, NULL),
(21, 1, 1, 1, 0, 0, 0, 15, NULL, '2020-04-28 19:03:18', '2020-04-28 19:03:18', NULL, NULL, NULL),
(22, 35, 2, 1, 0, 0, 0, 50, NULL, '2020-04-28 19:04:06', '2020-04-28 19:04:06', NULL, NULL, NULL),
(23, 36, 3, 1, 0, 0, 0, 12, NULL, '2020-04-28 19:04:24', '2020-04-28 19:04:24', NULL, NULL, NULL),
(24, 2, 1, 1, 0, 0, 0, 12, NULL, '2020-04-28 20:20:26', '2020-04-28 20:20:26', NULL, NULL, NULL),
(25, 1, 1, 1, 0, 0, 0, 15, NULL, '2020-04-28 20:45:52', '2020-04-28 20:45:52', NULL, NULL, NULL),
(26, 1, 1, 1, 0, 0, 0, 15, NULL, '2020-05-01 23:02:12', '2020-05-01 23:02:12', NULL, NULL, NULL),
(27, 35, 3, 1, 0, 0, 0, 25, NULL, '2020-05-01 23:02:36', '2020-05-01 23:02:36', NULL, NULL, NULL),
(28, 36, 2, 1, 0, 0, 0, 50, NULL, '2020-05-01 23:03:39', '2020-05-01 23:03:39', NULL, NULL, NULL),
(29, 36, 1, 1, 0, 0, 0, 12, NULL, '2020-05-01 23:52:10', '2020-05-01 23:52:10', NULL, NULL, NULL),
(30, 42, 1, 1, 0, 0, 0, 30, NULL, '2020-05-02 00:12:46', '2020-05-02 00:12:46', NULL, NULL, NULL),
(32, 1, 1, 1, 0, 0, 0, 0, NULL, '2020-05-03 16:32:15', '2020-05-03 16:32:15', NULL, NULL, NULL),
(33, 1, 1, 1, 0, 0, 0, 25, NULL, '2020-05-03 16:53:42', '2020-05-03 16:53:42', NULL, NULL, NULL),
(34, 1, 1, 1, 0, 0, 0, 50, NULL, '2020-05-06 00:35:54', '2020-05-06 00:35:54', NULL, NULL, NULL),
(35, 1, 3, 1, 0, 0, 0, 15, NULL, '2020-05-06 00:36:48', '2020-05-06 00:36:48', NULL, NULL, NULL),
(36, 35, 2, 1, 0, 0, 0, 12, NULL, '2020-05-06 00:55:46', '2020-05-06 00:55:46', NULL, NULL, NULL),
(37, 38, 2, 1, 0, 0, 0, 50, NULL, '2020-05-06 00:57:05', '2020-05-06 00:57:05', NULL, NULL, NULL),
(38, 1, 1, 1, 0, 0, 0, 15, NULL, '2020-05-16 06:05:30', '2020-05-16 06:05:30', NULL, NULL, NULL),
(39, 36, 3, 1, 0, 0, 0, 10, NULL, '2020-05-16 06:06:11', '2020-05-16 06:06:11', NULL, NULL, NULL),
(40, 1, 2, 1, 0, 0, 0, 25, NULL, '2020-05-16 21:26:12', '2020-05-16 21:26:12', NULL, NULL, NULL),
(41, 1, 3, 1, 0, 0, 0, 12, NULL, '2020-05-17 21:41:09', '2020-05-17 21:41:09', NULL, NULL, NULL),
(53, 1, 1, 1, 0, 0, 0, 2445, NULL, '2020-05-19 01:09:49', '2020-05-19 01:09:49', NULL, NULL, NULL),
(54, 1, 1, 1, 0, 0, 0, 2445, NULL, '2020-05-19 01:10:36', '2020-05-19 01:10:36', NULL, NULL, NULL),
(55, 1, 1, 1, 0, 0, 0, 2445.85, NULL, '2020-05-19 01:15:01', '2020-05-19 01:15:01', NULL, NULL, NULL),
(56, 1, 1, 1, 0, 0, 0, 2440.8, NULL, '2020-05-19 01:16:09', '2020-05-19 01:16:09', NULL, NULL, NULL),
(57, 1, 1, 1, 0, 0, 0, 25, NULL, '2020-05-19 01:16:28', '2020-05-19 01:16:28', NULL, NULL, NULL),
(58, 1, 1, 1, 0, 0, 0, 15.45, NULL, '2020-05-19 01:17:17', '2020-05-19 01:17:17', NULL, NULL, NULL),
(59, 1, 2, 1, 0, 0, 0, 1000, NULL, '2020-05-19 01:23:19', '2020-05-19 01:23:19', NULL, NULL, NULL),
(60, 1, 1, 1, 0, 0, 0, 1500, NULL, '2020-05-19 01:25:07', '2020-05-19 01:25:07', NULL, NULL, NULL),
(61, 36, 3, 1, 0, 0, 0, 1250, NULL, '2020-05-19 01:28:53', '2020-05-19 01:28:53', NULL, NULL, NULL),
(125, 1, 1, 1, 6, 30, 2, 60, NULL, '2020-05-23 04:32:46', '2020-05-23 04:32:46', NULL, NULL, NULL),
(126, 1, 1, 1, 5, 3.99, 2, 7.98, NULL, '2020-05-23 04:32:47', '2020-05-23 04:32:47', NULL, NULL, NULL),
(127, 1, 1, 1, 2, 13, 1, 13, NULL, '2020-05-23 21:50:07', '2020-05-23 21:50:07', NULL, NULL, NULL),
(128, 1, 1, 1, NULL, 0, NULL, 5, NULL, '2020-05-23 21:52:59', '2020-05-23 21:52:59', NULL, NULL, NULL),
(129, 1, 1, 1, NULL, 0, NULL, 15, NULL, '2020-05-24 17:20:28', '2020-05-24 17:20:28', NULL, NULL, NULL),
(130, 2, 3, 1, NULL, 0, NULL, 25, NULL, '2020-05-24 17:22:36', '2020-05-24 17:22:36', NULL, NULL, NULL),
(131, 42, 2, 1, NULL, 0, NULL, 120.1, NULL, '2020-05-24 17:23:43', '2020-05-24 17:23:43', NULL, NULL, NULL),
(132, 36, 2, 1, NULL, 0, NULL, 203.5, NULL, '2020-05-24 17:25:15', '2020-05-24 17:25:15', NULL, NULL, NULL),
(133, 1, 1, 1, 6, 30, 2, 60, NULL, '2020-05-25 11:56:17', '2020-05-25 11:56:17', NULL, NULL, NULL),
(134, 1, 1, 1, 5, 3.99, 1, 3.99, NULL, '2020-05-25 11:56:18', '2020-05-25 11:56:18', NULL, NULL, NULL),
(135, 1, 1, 1, 4, 3.49, 1, 3.49, NULL, '2020-05-25 11:56:19', '2020-05-25 11:56:19', NULL, NULL, NULL),
(136, 1, 1, 1, 7, 25, 1, 25, NULL, '2020-05-25 11:56:19', '2020-05-25 11:56:19', NULL, NULL, NULL),
(137, 1, 1, 1, NULL, 0, NULL, 0.1, NULL, '2020-05-25 19:52:15', '2020-05-25 19:52:15', NULL, NULL, NULL),
(138, 1, 2, 1, NULL, 0, NULL, 50, NULL, '2020-05-25 19:54:22', '2020-05-25 19:54:22', NULL, NULL, NULL),
(139, 1, 1, 1, NULL, 0, NULL, 25.2, NULL, '2020-05-26 02:14:09', '2020-05-26 02:14:09', NULL, NULL, NULL),
(140, 1, 3, 1, 6, 30, 1, 30, NULL, '2020-05-26 02:16:01', '2020-05-26 02:16:01', NULL, NULL, NULL),
(141, 1, 3, 1, 4, 3.49, 1, 3.49, NULL, '2020-05-26 02:16:02', '2020-05-26 02:16:02', NULL, NULL, NULL),
(142, 1, 2, 1, 6, 30, 1, 30, NULL, '2020-05-26 18:14:51', '2020-05-26 18:14:51', NULL, NULL, NULL),
(143, 1, 1, 1, 2, 13, 1, 13, NULL, '2020-05-27 08:24:56', '2020-05-27 08:24:56', NULL, NULL, NULL),
(144, 1, 1, 1, 5, 3.99, 1, 3.99, NULL, '2020-05-27 08:24:56', '2020-05-27 08:24:56', NULL, NULL, NULL),
(145, 1, 1, 1, 1, 10.5, 1, 10.5, NULL, '2020-05-27 08:24:57', '2020-05-27 08:24:57', NULL, NULL, NULL),
(146, 1, 2, 1, 3, 18, 1, 18, NULL, '2020-05-27 18:30:00', '2020-05-27 18:30:00', NULL, NULL, NULL),
(147, 1, 2, 1, 2, 13, 1, 13, NULL, '2020-05-27 18:30:04', '2020-05-27 18:30:04', NULL, NULL, NULL),
(148, 1, 2, 1, 5, 3.99, 2, 7.98, NULL, '2020-05-27 18:30:05', '2020-05-27 18:30:05', NULL, NULL, NULL),
(149, 1, 2, 1, 6, 30, 1, 30, NULL, '2020-05-27 18:30:07', '2020-05-27 18:30:07', NULL, NULL, NULL),
(150, 36, 3, 1, NULL, 0, NULL, 17, NULL, '2020-05-27 18:33:16', '2020-05-27 18:33:16', NULL, NULL, NULL),
(151, 1, 1, 1, 7, 25, 1, 25, NULL, '2020-05-29 01:14:06', '2020-05-29 01:14:06', NULL, NULL, NULL),
(152, 1, 1, 1, 4, 3.49, 2, 6.98, NULL, '2020-05-30 06:07:19', '2020-05-30 06:07:19', NULL, NULL, NULL),
(153, 1, 1, 1, 2, 13, 1, 13, NULL, '2020-06-06 04:59:38', '2020-06-06 04:59:38', NULL, NULL, NULL),
(154, 1, 1, 1, 1, 10.5, 5, 52.5, NULL, '2020-06-06 04:59:39', '2020-06-06 04:59:39', NULL, NULL, NULL),
(155, 1, 2, 1, 3, 18, 1, 18, NULL, '2020-06-06 23:45:01', '2020-06-06 23:45:01', NULL, NULL, NULL),
(156, 1, 2, 1, 4, 3.49, 1, 3.49, NULL, '2020-06-06 23:45:01', '2020-06-06 23:45:01', NULL, NULL, NULL),
(157, 35, 3, 1, NULL, 0, NULL, 25, NULL, '2020-06-06 23:45:48', '2020-06-06 23:45:48', NULL, NULL, NULL),
(158, 1, 1, 1, NULL, 0, NULL, 15, NULL, '2020-06-07 12:47:32', '2020-06-07 12:47:32', NULL, NULL, NULL),
(159, 38, 3, 1, NULL, 0, NULL, 38, NULL, '2020-06-08 13:38:15', '2020-06-08 13:38:15', NULL, NULL, NULL),
(160, 38, 2, 1, NULL, 0, NULL, 250, NULL, '2020-06-08 14:26:59', '2020-06-08 14:26:59', NULL, NULL, NULL),
(161, 1, 2, 1, 8, 1500, 1, 1500, NULL, '2020-06-09 00:35:16', '2020-06-09 00:35:16', NULL, NULL, NULL),
(162, 1, 2, 1, 9, 2580, 1, 2580, NULL, '2020-06-09 00:43:41', '2020-06-09 00:43:41', NULL, NULL, NULL),
(163, 1, 2, 1, 8, 1500, 1, 1500, NULL, '2020-06-09 00:43:42', '2020-06-09 00:43:42', NULL, NULL, NULL),
(164, 1, 1, 1, 2, 13, 1, 13, NULL, '2020-06-10 17:23:51', '2020-06-10 17:23:51', NULL, NULL, NULL),
(165, 47, 2, 1, 9, 2580, 1, 2580, NULL, '2020-06-10 18:18:17', '2020-06-10 18:18:17', NULL, NULL, NULL),
(166, 1, 3, 1, 7, 25, 1, 25, NULL, '2020-06-10 22:42:33', '2020-06-10 22:42:33', NULL, NULL, NULL),
(167, 1, 3, 1, 5, 3.99, 1, 3.99, NULL, '2020-06-10 22:42:33', '2020-06-10 22:42:33', NULL, NULL, NULL),
(168, 1, 1, 1, 2, 13, 1, 13, NULL, '2020-06-11 23:29:11', '2020-06-11 23:29:11', NULL, NULL, NULL),
(169, 1, 1, 1, 6, 30, 1, 30, NULL, '2020-06-12 14:53:21', '2020-06-12 14:53:21', NULL, NULL, NULL),
(170, 1, 1, 1, 5, 3.99, 2, 7.98, NULL, '2020-06-12 14:53:21', '2020-06-12 14:53:21', NULL, NULL, NULL),
(171, 1, 1, 1, 5, 3.99, 1, 3.99, NULL, '2020-06-13 23:21:33', '2020-06-13 23:21:33', NULL, NULL, NULL),
(172, 49, 1, 1, 4, 3.49, 1, 3.49, NULL, '2020-06-14 23:32:40', '2020-06-14 23:32:40', NULL, NULL, NULL),
(173, 49, 2, 1, 6, 30, 2, 60, NULL, '2020-06-14 23:36:48', '2020-06-14 23:36:48', NULL, NULL, NULL),
(174, 49, 2, 1, 4, 3.49, 2, 6.98, NULL, '2020-06-14 23:36:49', '2020-06-14 23:36:49', NULL, NULL, NULL),
(175, 49, 1, 1, 3, 18, 1, 18, NULL, '2020-06-14 23:51:45', '2020-06-14 23:51:45', NULL, NULL, NULL),
(176, 1, 3, 1, 1, 10.5, 2, 21, NULL, '2020-06-14 23:52:21', '2020-06-14 23:52:21', NULL, NULL, NULL),
(177, 36, 2, 1, NULL, 0, NULL, 85, NULL, '2020-06-15 16:23:35', '2020-06-15 16:23:35', NULL, NULL, NULL),
(178, 1, 1, 1, NULL, 0, NULL, 50, NULL, '2020-06-15 21:10:38', '2020-06-15 21:10:38', NULL, NULL, NULL),
(179, 1, 1, 1, 3, 18, 1, 18, NULL, '2020-06-15 21:12:39', '2020-06-15 21:12:39', NULL, NULL, NULL),
(180, 1, 1, 1, 1, 10.5, 1, 10.5, NULL, '2020-06-15 21:12:40', '2020-06-15 21:12:40', NULL, NULL, NULL),
(181, 1, 2, 1, NULL, 0, NULL, 75, NULL, '2020-06-15 21:15:56', '2020-06-15 21:15:56', NULL, NULL, NULL),
(182, 1, 3, 1, NULL, 0, NULL, 25.5, NULL, '2020-06-15 21:49:01', '2020-06-15 21:49:01', NULL, NULL, NULL),
(183, 35, 2, 1, NULL, 0, NULL, 47, NULL, '2020-06-15 23:48:36', '2020-06-15 23:48:36', NULL, NULL, NULL),
(184, 46, 2, 1, NULL, 0, NULL, 150, NULL, '2020-06-16 00:07:21', '2020-06-16 00:07:21', NULL, NULL, NULL),
(185, 2, 1, 1, NULL, 0, NULL, 15, NULL, '2020-06-16 00:10:44', '2020-06-16 00:10:44', NULL, NULL, NULL),
(186, 1, 1, 1, NULL, 0, NULL, 0, NULL, '2020-06-16 11:41:52', '2020-06-16 11:41:52', NULL, NULL, NULL),
(187, 1, 1, 1, NULL, 0, NULL, 0, NULL, '2020-06-16 11:42:39', '2020-06-16 11:42:39', NULL, NULL, NULL),
(188, 1, 1, 1, NULL, 0, NULL, 17.5, NULL, '2020-06-16 11:42:47', '2020-06-16 11:42:47', NULL, NULL, NULL),
(189, 46, 1, 1, NULL, 0, NULL, 25, NULL, '2020-06-17 10:31:22', '2020-06-17 10:31:22', NULL, NULL, NULL),
(190, 38, 3, 1, NULL, 0, NULL, 115, NULL, '2020-06-17 21:22:28', '2020-06-17 21:22:28', NULL, NULL, NULL),
(191, 1, 1, 1, NULL, 0, NULL, 4, NULL, '2020-06-19 09:32:51', '2020-06-19 09:32:51', NULL, NULL, NULL),
(192, 1, 1, 1, NULL, 0, NULL, 42, NULL, '2020-06-19 09:33:06', '2020-06-19 09:33:06', NULL, NULL, NULL),
(193, 46, 2, 1, NULL, 0, NULL, 15, NULL, '2020-06-19 10:38:52', '2020-06-19 10:38:52', NULL, NULL, NULL),
(194, 38, 2, 1, NULL, 0, NULL, 175, NULL, '2020-06-19 10:39:20', '2020-06-19 10:39:20', NULL, NULL, NULL),
(195, 1, 1, 1, NULL, 0, NULL, 15, NULL, '2020-06-19 11:20:21', '2020-06-19 11:20:21', NULL, NULL, NULL),
(196, 1, 3, 1, NULL, 0, NULL, 7, NULL, '2020-06-19 11:32:59', '2020-06-19 11:32:59', NULL, NULL, NULL),
(197, 36, 3, 1, NULL, 0, NULL, 70, NULL, '2020-06-19 13:20:31', '2020-06-19 13:20:31', NULL, NULL, NULL),
(198, 1, 2, 1, NULL, 0, NULL, 1000, NULL, '2020-06-20 00:00:20', '2020-06-20 00:00:20', NULL, NULL, NULL),
(199, 35, 2, 1, NULL, 0, NULL, 150, NULL, '2020-06-20 12:23:51', '2020-06-20 12:23:51', NULL, NULL, NULL),
(200, 1, 1, 1, NULL, 0, NULL, 16, NULL, '2020-06-20 18:33:34', '2020-06-20 18:33:34', NULL, NULL, NULL),
(201, 1, 1, 1, NULL, 0, NULL, 16.5, NULL, '2020-06-21 08:53:36', '2020-06-21 08:53:36', NULL, NULL, NULL),
(202, 1, 2, 1, NULL, 0, NULL, 17, NULL, '2020-06-22 16:29:36', '2020-06-22 16:29:36', NULL, NULL, NULL),
(203, 1, 1, 1, 2, 13, 2, 26, NULL, '2020-06-22 16:30:25', '2020-06-22 16:30:25', NULL, NULL, NULL),
(204, 1, 1, 1, 1, 10.5, 1, 10.5, NULL, '2020-06-22 16:30:25', '2020-06-22 16:30:25', NULL, NULL, NULL),
(205, 1, 2, 1, 3, 18, 1, 18, NULL, '2020-06-22 23:57:46', '2020-06-22 23:57:46', NULL, NULL, NULL),
(206, 1, 2, 1, 6, 30, 1, 30, NULL, '2020-06-22 23:57:47', '2020-06-22 23:57:47', NULL, NULL, NULL),
(207, 1, 2, 1, 10, 26, 1, 26, NULL, '2020-06-23 21:16:39', '2020-06-23 21:16:39', NULL, NULL, NULL),
(208, 1, 2, 1, 4, 3.49, 1, 3.49, NULL, '2020-06-23 21:16:39', '2020-06-23 21:16:39', NULL, NULL, NULL),
(209, 1, 1, 1, 3, 18, 1, 18, NULL, '2020-06-24 14:50:24', '2020-06-24 14:50:24', NULL, NULL, NULL),
(210, 36, 3, 1, NULL, 0, NULL, 17, NULL, '2020-06-24 15:01:47', '2020-06-24 15:01:47', NULL, NULL, NULL),
(211, 1, 1, 1, 3, 18, 1, 18, NULL, '2020-06-24 23:15:14', '2020-06-24 23:15:14', NULL, NULL, NULL),
(212, 1, 2, 1, 2, 13, 1, 13, NULL, '2020-06-24 23:20:25', '2020-06-24 23:20:25', NULL, NULL, NULL),
(213, 1, 2, 1, 6, 30, 1, 30, NULL, '2020-06-24 23:20:25', '2020-06-24 23:20:25', NULL, NULL, NULL),
(214, 1, 2, 1, 9, 2580, 1, 2580, NULL, '2020-06-24 23:24:14', '2020-06-24 23:24:14', NULL, NULL, NULL),
(215, 1, 2, 1, 9, 2580, 1, 2580, NULL, '2020-06-25 09:42:43', '2020-06-25 09:42:43', NULL, NULL, NULL),
(216, 1, 2, 1, 9, 2580, 1, 2580, NULL, '2020-06-26 16:31:40', '2020-06-26 16:31:40', NULL, NULL, NULL),
(217, 1, 3, 1, 2, 13, 1, 13, NULL, '2020-06-26 16:31:59', '2020-06-26 16:31:59', NULL, NULL, NULL),
(218, 1, 1, 1, 6, 30, 1, 30, NULL, '2020-06-26 16:32:22', '2020-06-26 16:32:22', NULL, NULL, NULL),
(219, 1, 1, 1, 5, 3.99, 1, 3.99, NULL, '2020-06-26 16:32:23', '2020-06-26 16:32:23', NULL, NULL, NULL),
(220, 1, 1, 1, 1, 10.5, 3, 31.5, NULL, '2020-06-26 16:34:18', '2020-06-26 16:34:18', NULL, NULL, NULL),
(221, 1, 3, 1, 6, 30, 1, 30, NULL, '2020-06-27 01:32:52', '2020-06-27 01:32:52', NULL, NULL, NULL),
(222, 1, 3, 1, 5, 3.99, 2, 7.98, NULL, '2020-06-27 01:32:52', '2020-06-27 01:32:52', NULL, NULL, NULL),
(223, 1, 1, 1, NULL, 0, NULL, 45, NULL, '2020-06-27 01:33:25', '2020-06-27 01:33:25', NULL, NULL, NULL),
(224, 46, 1, 1, NULL, 0, NULL, 15.5, NULL, '2020-06-27 10:56:43', '2020-06-27 10:56:43', NULL, NULL, NULL),
(225, 38, 1, 1, NULL, 0, NULL, 28.1, NULL, '2020-06-27 10:57:55', '2020-06-27 10:57:55', NULL, NULL, NULL),
(226, 1, 2, 1, 6, 30, 1, 30, NULL, '2020-06-27 18:40:20', '2020-06-27 18:40:20', NULL, NULL, NULL),
(227, 1, 2, 1, 4, 3.49, 2, 6.98, NULL, '2020-06-27 18:40:20', '2020-06-27 18:40:20', NULL, NULL, NULL),
(228, 1, 1, 1, NULL, 0, NULL, 52, NULL, '2020-06-27 18:41:13', '2020-06-27 18:41:13', NULL, NULL, NULL),
(229, 38, 2, 1, NULL, 0, NULL, 7.84, NULL, '2020-06-28 11:46:58', '2020-06-28 11:46:58', NULL, NULL, NULL),
(230, 1, 1, 1, NULL, 0, NULL, 10, NULL, '2020-06-28 13:17:29', '2020-06-28 13:17:29', NULL, NULL, NULL),
(231, 1, 1, 1, 6, 30, 2, 60, NULL, '2020-06-28 13:19:07', '2020-06-28 13:19:07', NULL, NULL, NULL),
(232, 1, 1, 1, 5, 3.99, 2, 7.98, NULL, '2020-06-28 13:19:07', '2020-06-28 13:19:07', NULL, NULL, NULL),
(233, 1, 2, 1, 7, 25, 2, 50, NULL, '2020-06-29 16:03:22', '2020-06-29 16:03:22', NULL, NULL, NULL),
(234, 1, 2, 1, 4, 3.49, 2, 6.98, NULL, '2020-06-29 16:03:22', '2020-06-29 16:03:22', NULL, NULL, NULL),
(235, 1, 1, 1, 10, 26, 1, 26, NULL, '2020-06-29 16:39:17', '2020-06-29 16:39:17', NULL, NULL, NULL),
(236, 1, 2, 1, 8, 1500, 1, 1500, NULL, '2020-06-30 14:14:08', '2020-06-30 14:14:08', NULL, NULL, NULL),
(237, 1, 1, 1, 3, 18, 1, 18, NULL, '2020-07-02 00:41:09', '2020-07-02 00:41:09', NULL, NULL, NULL),
(238, 1, 2, 1, 10, 26, 2, 52, NULL, '2020-07-02 01:08:45', '2020-07-02 01:08:45', NULL, NULL, NULL),
(239, 1, 2, 1, 4, 3.49, 2, 6.98, NULL, '2020-07-02 01:08:45', '2020-07-02 01:08:45', NULL, NULL, NULL),
(240, 1, 1, 1, 2, 13, 1, 13, NULL, '2020-07-02 11:26:18', '2020-07-02 11:26:18', NULL, NULL, NULL),
(241, 1, 3, 1, 1, 10.5, 1, 10.5, '0000-00-00', '2022-11-01 21:54:38', NULL, NULL, '4591200516361959e528da7.752678673801.11.2022', NULL),
(242, 1, 3, 1, 2, 13, 1, 13, '0000-00-00', '2022-11-01 21:54:38', NULL, NULL, '4591200516361959e528da7.752678673801.11.2022', NULL),
(243, 1, 2, 1, 9, 2580, 2, 5160, '0000-00-00', '2022-11-02 13:01:27', NULL, NULL, '65513168263626a274284c4.363141982702.11.2022', NULL),
(244, 1, 2, 1, 14, 24.57, 1, 24.57, '0000-00-00', '2022-11-05 23:09:47', NULL, NULL, '11398987156366ed3b84fca5.734469964705.11.2022', NULL),
(245, 35, 2, 1, 14, 24.57, 1, 24.57, '0000-00-00', '2022-11-05 23:27:19', NULL, NULL, '4308099736366f157c3d827.183660321905.11.2022', NULL),
(246, 35, 2, 1, 11, 10, 1, 10, '0000-00-00', '2022-11-05 23:27:19', NULL, NULL, '4308099736366f157c3d827.183660321905.11.2022', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

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
