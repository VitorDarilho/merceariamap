-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Nov-2022 às 15:18
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
-- Estrutura da tabela `abertura_fechamento`
--
-- Erro ao ler a estrutura para a tabela map.abertura_fechamento: #1932 - Table 'map.abertura_fechamento' doesn't exist in engine
-- Erro ao ler dados para tabela map.abertura_fechamento: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`abertura_fechamento`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--
-- Erro ao ler a estrutura para a tabela map.clientes: #1932 - Table 'map.clientes' doesn't exist in engine
-- Erro ao ler dados para tabela map.clientes: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`clientes`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_enderecos`
--
-- Erro ao ler a estrutura para a tabela map.clientes_enderecos: #1932 - Table 'map.clientes_enderecos' doesn't exist in engine
-- Erro ao ler dados para tabela map.clientes_enderecos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`clientes_enderecos`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_segmentos`
--
-- Erro ao ler a estrutura para a tabela map.clientes_segmentos: #1932 - Table 'map.clientes_segmentos' doesn't exist in engine
-- Erro ao ler dados para tabela map.clientes_segmentos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`clientes_segmentos`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_tipos`
--
-- Erro ao ler a estrutura para a tabela map.clientes_tipos: #1932 - Table 'map.clientes_tipos' doesn't exist in engine
-- Erro ao ler dados para tabela map.clientes_tipos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`clientes_tipos`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_pdv`
--
-- Erro ao ler a estrutura para a tabela map.config_pdv: #1932 - Table 'map.config_pdv' doesn't exist in engine
-- Erro ao ler dados para tabela map.config_pdv: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`config_pdv`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--
-- Erro ao ler a estrutura para a tabela map.empresas: #1932 - Table 'map.empresas' doesn't exist in engine
-- Erro ao ler dados para tabela map.empresas: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`empresas`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_acessos`
--
-- Erro ao ler a estrutura para a tabela map.log_acessos: #1932 - Table 'map.log_acessos' doesn't exist in engine
-- Erro ao ler dados para tabela map.log_acessos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`log_acessos`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `meios_pagamentos`
--
-- Erro ao ler a estrutura para a tabela map.meios_pagamentos: #1932 - Table 'map.meios_pagamentos' doesn't exist in engine
-- Erro ao ler dados para tabela map.meios_pagamentos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`meios_pagamentos`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--
-- Erro ao ler a estrutura para a tabela map.migrations: #1932 - Table 'map.migrations' doesn't exist in engine
-- Erro ao ler dados para tabela map.migrations: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`migrations`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulos`
--
-- Erro ao ler a estrutura para a tabela map.modulos: #1932 - Table 'map.modulos' doesn't exist in engine
-- Erro ao ler dados para tabela map.modulos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`modulos`' na linha 1

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
-- Erro ao ler a estrutura para a tabela map.perfis: #1932 - Table 'map.perfis' doesn't exist in engine
-- Erro ao ler dados para tabela map.perfis: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`perfis`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--
-- Erro ao ler a estrutura para a tabela map.produtos: #1932 - Table 'map.produtos' doesn't exist in engine
-- Erro ao ler dados para tabela map.produtos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`produtos`' na linha 1

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
-- Erro ao ler a estrutura para a tabela map.recuperacao_de_senha: #1932 - Table 'map.recuperacao_de_senha' doesn't exist in engine
-- Erro ao ler dados para tabela map.recuperacao_de_senha: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`recuperacao_de_senha`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexos`
--
-- Erro ao ler a estrutura para a tabela map.sexos: #1932 - Table 'map.sexos' doesn't exist in engine
-- Erro ao ler dados para tabela map.sexos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`sexos`' na linha 1

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
-- Erro ao ler a estrutura para a tabela map.tipos_pdv: #1932 - Table 'map.tipos_pdv' doesn't exist in engine
-- Erro ao ler dados para tabela map.tipos_pdv: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`tipos_pdv`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--
-- Erro ao ler a estrutura para a tabela map.usuarios: #1932 - Table 'map.usuarios' doesn't exist in engine
-- Erro ao ler dados para tabela map.usuarios: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`usuarios`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_modulos`
--
-- Erro ao ler a estrutura para a tabela map.usuarios_modulos: #1932 - Table 'map.usuarios_modulos' doesn't exist in engine
-- Erro ao ler dados para tabela map.usuarios_modulos: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`usuarios_modulos`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--
-- Erro ao ler a estrutura para a tabela map.vendas: #1932 - Table 'map.vendas' doesn't exist in engine
-- Erro ao ler dados para tabela map.vendas: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `map`.`vendas`' na linha 1

--
-- Índices para tabelas despejadas
--

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
-- Índices para tabela `produtos_pedidos`
--
ALTER TABLE `produtos_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `situacoes_pedidos`
--
ALTER TABLE `situacoes_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de tabela `produtos_pedidos`
--
ALTER TABLE `produtos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT de tabela `situacoes_pedidos`
--
ALTER TABLE `situacoes_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
