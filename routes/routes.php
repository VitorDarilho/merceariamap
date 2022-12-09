<?php
/*-----------------------------------------------------
* Declaração das rotas do Sistema
*/

# ----- LoginController --------------------------------
$route->get('/', 'LoginController@index');
$route->get('login', 'LoginController@index');
$route->post('login/logar', 'LoginController@logar');
$route->get('login/logout', 'LoginController@logout');

# recuperação de senha do usuário
$route->get('login/senha', 'Login\SenhaController@index');
$route->post('login/senha', 'Login\SenhaController@recuperar');
$route->get('login/senha/recuperacao/{any}', 'Login\SenhaController@recuperacao');
$route->post('login/senha/recuperacao/{any}', 'Login\SenhaController@update');

$route->get('home', 'HomeController@index');

# ----- UsuarioController --------------------------------
$route->get('usuario', 'UsuarioController@index');
$route->post('usuario/save', 'UsuarioController@save');
$route->get('usuario/modalFormulario/{idUsuario?}', 'UsuarioController@modalFormulario');
$route->post('usuario/update', 'UsuarioController@update');
$route->get('usuario/verificaSeEmailExiste/{email}/{idUsuario?}', 'UsuarioController@verificaSeEmailExiste');
$route->get('usuario/desativarUsuario/{idUsuario}', 'UsuarioController@desativarUsuario');
$route->get('usuario/ativarUsuario/{idUsuario}', 'UsuarioController@ativarUsuario');

$route->get('usuario/teste', 'UsuarioController@testeEmail');


# ----- RelatorioController --------------------------------
$route->get('relatorio', 'RelatorioController@index');
$route->get('relatorio/vendasPorPeriodo', 'RelatorioController@vendasPorPeriodo');
$route->post('relatorio/vendasChamadaAjax', 'RelatorioController@vendasChamadaAjax');
$route->get('relatorio/gerarXls/{de}/{ate}/{opcao?}', 'RelatorioController@gerarXls');
$route->get('relatorio/gerarPDF/{de}/{ate}/{opcao?}', 'RelatorioController@gerarPDF');
$route->get('desativarVenda/{idVenda}', 'PdvPadraoController@desativarVenda');
$route->get('relatorio/itensDaVenda/{codigo}', 'RelatorioController@itensDaVendaChamadaAjax');
$route->get('relatorio/vendasPorPeriodo/pdf_caixa', 'RelatorioController@gerarPDFCaixa');


# ----- ProdutoController --------------------------------
$route->get('produto', 'ProdutoController@index');
$route->get('produto/modalFormulario/{idProduto?}', 'ProdutoController@modalFormulario');
$route->post('produto/save', 'ProdutoController@save');
$route->post('produto/update', 'ProdutoController@update');
$route->get('produto/pesquisarProdutoPorNome/{nome?}', 'ProdutoController@pesquisarProdutoPorNome');
$route->get('produto/pesquisarProdutoPorCodigoDeBarras/{codigo?}', 'ProdutoController@pesquisarProdutoPorCodigoDeBarras');

# ----- ConfiguracaoController --------------------------------
$route->get('configuracao', 'ConfiguracaoController@index');
$route->post('configuracao/alterarConfigPdv', 'ConfiguracaoController@alterarConfigPdv');

# ----- PdvPadraoController  --------------------------------
$route->get('pdvPadrao', 'PdvPadraoController@index');
$route->post('pdvPadrao/save', 'PdvPadraoController@save');

# ----- PdvDiferencialController  --------------------------------
$route->get('vendas', 'PdvDiferencialController@index');
$route->get('pdvDiferencial/colocarProdutosNaMesa/{idProduto}', 'PdvDiferencialController@colocarProdutosNaMesa');
$route->get('pdvDiferencial/obterProdutosDaMesa/{posicaoProduto?}', 'PdvDiferencialController@obterProdutosDaMesa');
$route->get('pesquisarProdutoPorNome/{nome?}', 'PdvDiferencialController@pesquisarProdutoPorNome');

$route->get('pdvDiferencial/alterarAquantidadeDeUmProdutoNaMesa/{idProduto}/{quantidade}',
    'PdvDiferencialController@alterarAquantidadeDeUmProdutoNaMesa');

$route->get('pdvDiferencial/retirarProdutoDaMesa/{idProduto}', 'PdvDiferencialController@retirarProdutoDaMesa');
$route->post('pdvDiferencial/saveVendasViaSession', 'PdvDiferencialController@saveVendasViaSession');

$route->get('pdvDiferencial/obterValorTotalDosProdutosNaMesa',
    'PdvDiferencialController@obterValorTotalDosProdutosNaMesa');

$route->get('pdvDiferencial/calcularTroco/{valorRecebido}',
    'PdvDiferencialController@calcularTroco');

# ----- ClienteController --------------------------------
$route->get('fornecedor', 'ClienteController@index');
$route->get('cliente/modalFormulario/{idCliente?}', 'ClienteController@modalFormulario');
$route->post('cliente/save', 'ClienteController@save');
$route->post('cliente/update', 'ClienteController@update');
$route->get('cliente/desativarCliente/{idCliente}', 'ClienteController@desativarCliente');
$route->get('cliente/ativarCliente/{idCliente}', 'ClienteController@ativarCliente');

# ----- ClienteController --------------------------------
$route->get('fornecedor', 'FornecedorController@index');
$route->get('fornecedor/modalFormulario/{idCliente?}', 'FornecedorController@modalFormulario');
$route->post('fornecedor/save', 'FornecedorController@save');
$route->post('fornecedor/update', 'FornecedorController@update');
$route->get('fornecedor/desativarFornecedor/{idFornecedor}', 'FornecedorController@desativarFornecedor');
$route->get('fornecedor/ativarFornecedor/{idFornecedor}', 'FornecedorController@ativarFornecedor');

$route->get('cliente/verificaSeEmailExiste/{email}/{idCliente?}', 'ClienteController@verificaSeEmailExiste');
$route->get('cliente/verificaSeCnpjExiste/{cnpj}/{idCliente?}', 'ClienteController@verificaSeCnpjExiste');
$route->get('cliente/verificaSeCpfExiste/{cpf}/{idCliente?}', 'ClienteController@verificaSeCpfExiste');

# ----- EnderecoController --------------------------------
$route->post('clienteEndereco/save', 'ClienteEnderecoController@save');
$route->post('clienteEndereco/update', 'ClienteEnderecoController@update');
$route->get('clienteEndereco/modalFormulario/{idCliente}/{idEnderecoCliente?}',
    'ClienteEnderecoController@modalFormulario');
$route->get('clienteEndereco/buscarEnderecoViaCep/{cep?}', 'ClienteEnderecoController@buscarEnderecoViaCep');
$route->get('clienteEndereco/modalVisualizarEnderecos/{idCliente}',
    'ClienteEnderecoController@modalVisualizarEnderecos');

# ----- PedidoController --------------------------------
$route->get('pedido', 'PedidoController@index');
$route->get('pedido/modalFormulario/{idPedido?}', 'PedidoController@modalFormulario');
$route->get('pedido/enderecoPorIdCliente/{idCliente?}', 'PedidoController@enderecoPorIdCliente');
$route->post('pedido/tabelaDepedidosChamadosViaAjax', 'PedidoController@tabelaDepedidosChamadosViaAjax');

$route->post('pedido/adicionarClienteEendereco', 'PedidoController@adicionarClienteEendereco');
$route->post('pedido/alterarClienteEndereco', 'PedidoController@alterarClienteEndereco');
$route->post('pedido/adicionarProduto', 'PedidoController@adicionarProduto');
$route->get('pedido/excluirProdutoPedido/{idProdutoPedido}', 'PedidoController@excluirProdutoPedido');
$route->post('pedido/alterarQuantidadeProdutoPedido', 'PedidoController@alterarQuantidadeProdutoPedido');
$route->get('pedido/produtosPorIdPedido/{idPedido}', 'PedidoController@produtosPorIdPedido');
$route->post('pedido/finalizarPedido', 'PedidoController@finalizarPedido');
$route->get('pedido/obterValorTotalDosProdutos/{idPedido}', 'PedidoController@obterValorTotalDosProdutos');
$route->post('pedido/alterarSituacaoPedido', 'PedidoController@alterarSituacaoPedido');

$route->get('pedido/teste', 'PedidoController@teste');

# ----- LogController --------------------------------
$route->get('logs', 'LogAcessoController@index');

# ----- EmpresaController --------------------------------
$route->get('empresa', 'EmpresaController@index');
$route->post('empresa/save', 'EmpresaController@save');
$route->post('empresa/update', 'EmpresaController@update');
$route->get('empresa/modalFormulario/{idEmpresa?}', 'EmpresaController@modalFormulario');
$route->get('empresa/verificaSeEmailExiste/{email}/{idEmpresa?}', 'EmpresaController@verificaSeEmailExiste');


# ----- FornecedoresController --------------------------------
$route->get('fornecedor','FornecedorController@index');
$route->get('fornecedor/modalFormulario/{idFornecedor?}', 'FornecedorController@modalFormulario');
$route->post('fornecedor/save', 'FornecedorController@save');
$route->post('fornecedor/update', 'FornecedorController@update');

# ----- AberturaController --------------------------------
$route->get('abertura','AberturaController@index');
$route->get('abertura/modalFormulario/{idAbertura?}', 'AberturaController@modalFormulario');
$route->post('abertura/save', 'AberturaController@save');
$route->post('abertura/update', 'AberturaController@update');

# ----- FechamentoController --------------------------------
$route->get('caixafechamento','CaixaFechamentoController@index');
$route->get('caixafechamento/modalFormulario/{idCaixaFechamento?}', 'CaixaFechamentoController@modalFormulario');
$route->post('caixafechamento/save', 'CaixaFechamentoController@save');
$route->post('caixafechamento/update', 'CaixaFechamentoController@update');






#$route->get('fornecedores', 'FornecedoresController@index');
#$route->get('Fornecedores/modalFormulario/{idCliente?}', 'FornecedoresController@modalFormulario');
#$route->post('fornecedores/save', 'FornecedoresController@save');
#$route->post('Fornecedores/update', 'FornecedoresController@update');
#$route->get('Fornecedores/desativarFornecedores/{idFornecedores}', 'FornecedoresController@desativarFornecedores');
#$route->get('Fornecedores/ativarFornecedores/{idFornecedores}', 'FornecedoresController@ativarFornecedores');


# TESTE
$route->get('pwa/login', 'Api\InicioPwaController@index');
$route->post('pwa/logar', 'Api\LoginController@logar');
$route->get('pwa/pdv', 'Api\InicioPwaController@pdv');
$route->get('test/vendedores', 'Api\TesteController@vendedores');

# Router run
$route->run();
