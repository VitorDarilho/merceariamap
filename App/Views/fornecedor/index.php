<!--Usando o Html Components-->
<?php use System\HtmlComponents\Modal\Modal; ?>
!
<style type="text/css">
    .desativado {
        color: #cc0033;
    }
</style>

<div class="row">

    <div class="card col-lg-12 content-div">
        <div class="card-body">
            <h5 class="card-title"><i class="fas fa-user-tie"></i> Fornecedores</h5>
        </div>

        <?php if (is_countable($fornecedor)&& count($fornecedor) > 0): ?>
            <table id="example" class="table tabela-ajustada table-striped" style="width:100%">
                <thead>
                <tr>
                    <th>Fornecedor</th>
                    <th class="hidden-when-mobile">CNPJ</th>
                    <th class="hidden-when-mobile">Segmento</th>
                    <th>Ativo</th>
                    <th>Endereço</th>
                    <th style="text-align:right;padding-right:0">
                        <?php $rota = BASEURL . '/fornecedor/modalFormulario'; ?>
                        <button onclick="modalFormularioFornecedor('<?php echo $rota; ?>', false);"
                                class="btn btn-sm btn-success" title="Novo Fornecedor">
                            <i class="fas fa-plus"></i>
                        </button>
                    </th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($fornecedores as $fornecedor): ?>
                    <tr>
                        <td><?php echo $fornecedor->nome; ?></td>
                        <td class="hidden-when-mobile"><?php echo $fornecedor->cnpj; ?></td>

                        <td><?php echo $fornecedor->segmento_fornecedor; ?></td>
                        

                        <td class="<?php echo (is_null($fornecedor->deleted_at)) ? 'ativo' : 'desativado'; ?>">
                            <?php echo (is_null($fornecedor->deleted_at)) ? 'Sim' : 'Não'; ?>
                        </td>

                        <td>
                            <button title="Endereços" onclick="modalVisualizarEnderecos(
                                '<?php echo BASEURL . "/clienteEndereco/modalVisualizarEnderecos"; ?>',
                                '<?php echo in64($fornecedor->id); ?>',
                                '<?php echo $fornecedor->nome; ?>'
                                )" class="btn btn-sm
                                <?php if ($fornecedor->quantidadeEnderecos == 0):?>
                                   btn-danger
                                <?php endif;?>">
                                <i class="fas fa-map-marker-alt"></i>
                            </button>
                        </td>

                        <td style="text-align:right">
                            <div class="btn-group" role="group">

                                <button id="btnGroupDrop1" type="button"
                                        class="btn btn-sm btn-secondary dropdown-toggle" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-cogs"></i>
                                </button>

                                <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">

                                    <button class="dropdown-item" href="#"
                                            onclick="modalFormularioFornecedor('<?php echo $rota; ?>', '<?php echo $fornecedor->id; ?>')">
                                        <i class="fas fa-edit"></i> Editar
                                    </button>

                                    <?php if (is_null($fornecedor->deleted_at)): ?>

                                        <button class="dropdown-item" href="#"
                                                onclick="modalAtivarEdesativarFornecedor('<?php echo $fornecedor->id; ?>', '<?php echo $fornecedor->nome; ?>', 'desativar')">
                                            <i class="fas fa-window-close"></i> Desativar
                                        </button>

                                    <?php else: ?>

                                        <button class="dropdown-item" href="#"
                                                onclick="modalAtivarEdesativarFornecedor('<?php echo $fornecedor->id; ?>', '<?php echo $fornecedor->nome; ?>', 'ativar')">
                                            <i class="fas fa-square"></i> Ativar
                                        </button>

                                    <?php endif; ?>
                                </div>
                            </div>

                        </td>
                    </tr>
                <?php endforeach; ?>
                <tfoot></tfoot>
            </table>

        <?php else: ?>
            <center>
                <i class="far fa-grin-beam" style="font-size:50px;opacity:0.60"></i> <br> <br>
                Poxa, ainda não há nenhum Fornecedor cadastrado! <br>
                <?php $rota = BASEURL . '/fornecedor/modalFormulario'; ?>
                <button
                    onclick="modalFormularioFornecedor('<?php echo $rota; ?>', null);"
                    class="btn btn-sm btn-success">
                    <i class="fas fa-plus"></i>
                    Cadastrar Fornecedor
                </button>
            </center>
        <?php endif; ?>

        <br>

    </div>
</div>

<!--Modal Clientes-->
<?php Modal::start([
    'id' => 'modalFornecedor',
    'width' => 'modal-lg',
    'title' => 'Cadastrar Fornecedores'
]); ?>
<div id="formulario"></div>
<?php Modal::stop(); ?>

<!--Modal Desativar e ativar Clientes-->
<?php Modal::start([
    'id' => 'modalDesativarFornecedor',
    'width' => 'modal-sm',
    'title' => '<i class="fas fa-user-tie" style="color:#ad54da"></i>'
]); ?>
<div id="modalConteudo">
    <p id="nomeFornecedor"></p>

    <center>
        <set-modal-button class="set-modal-button"></set-modal-button>
        <button class="btn btn-sm btn-default" data-dismiss="modal">
            <i class="fas fa-window-close"></i> Não
        </button>
    </center>
</div>
<?php Modal::stop(); ?>

<!--Modal Visualizar endereços dos Clientes-->
<?php Modal::start([
    'id' => 'modalVisualizarEnderecos',
    'width' => 'modal-lg',
    'title' => 'Endereços'
]); ?>
<div id="containerModalVisualizarEnderecos"></div>
<?php Modal::stop(); ?>

<!--Modal Formulário de cadastro de endereços dos Clientes-->
<?php Modal::start([
    'id' => 'modalFormulario',
    'width' => 'modal-lg',
    'title' => 'Cadastrar Endereços'
]); ?>
<div id="modalEnderecoFormulario"></div>
<?php Modal::stop(); ?>

<script>
    function modalFormularioFornecedor(rota, id) {
        var url = "";

        if (id) {
            url = rota + "/" + id;
        } else {
            url = rota;
        }

        $("#formulario").html("<center><h3>Carregando...</h3></center>");
        $("#modalFornecedor").modal({backdrop: 'static'});
        $("#formulario").load(url);
    }

    function modalVisualizarEnderecos(rota, idFornecedor, nomeFornecedor) {
        var url = "";

        if (idFornecedor) {
            url = rota + "/" + idFornecedor;
        } else {
            url = rota;
        }

        $("#containerModalVisualizarEnderecos").html("<center><h3>Carregando...</h3></center>");
        $("#modalVisualizarEnderecos").modal({backdrop: 'static'});
        $("#modalVisualizarEnderecos .modal-title").html("<b>" + nomeFornecedor + "</b>");
        $("#containerModalVisualizarEnderecos").load(url);
    }

    function modalFormularioEndereco(rota, idFornecedor, id) {
        var url = "";

        if (id) {
            url = rota + "/" + idFornecedor + "/" + id;
        } else {
            url = rota + "/" + idFornecedor;
        }

        $("#modalEnderecoFormulario").html("<center><h3>Carregando...</h3></center>");
        $("#modalFormulario").modal({backdrop: 'static'});

        $("#modalEnderecoFormulario").load(url);
    }

    function modalAtivarEdesativarFornecedor(id, nome, operacao) {
        if (operacao == 'desativar') {
            $("#nomeFornecedor").html('Tem certeza que deseja desativar o fornecedor ' + nome + '?');
            $("set-modal-button").html('<button class="btn btn-sm btn-success" id="buttonDesativarFornecedor" data-id-cliente="" onclick="desativarFornecedor(this)"><i class="far fa-check-circle"></i> Sim</button>');

        } else if (operacao == 'ativar') {
            $("set-modal-button").html('<button class="btn btn-sm btn-success" id="buttonDesativarFornecedor" data-id-cliente="" onclick="ativarFornecedor(this)"><i class="far fa-check-circle"></i> Sim</button>');
            $("#nomeFornecedor").html('Você deseja ativar o fornecedor ' + nome + '?');
        }

        $("#modalDesativarFornecedor").modal({backdrop: 'static'});
        document.querySelector("#buttonDesativarFornecedor").dataset.idFornecedor = id;
    }

    function desativarFornecedor(elemento) {
        modalValidacao('Validação', 'Desativando Fornecedor...');
        id = elemento.dataset.idCliente;

        var rota = getDomain() + "/cliente/desativarFornecedor/" + id;
        $.get(rota, function (data, status) {
            var dados = JSON.parse(data);
            if (dados.status == true) {
                location.reload();
                //$("#modalDesativarCliente .close").click();
            }
        });
    }

    function ativarFornecedor(elemento) {
        modalValidacao('Validação', 'Ativando Fornecedor...');
        id = elemento.dataset.idFornecedor;

        var rota = getDomain() + "/cliente/ativarFornecedor/" + id;
        $.get(rota, function (data, status) {
            var dados = JSON.parse(data);
            if (dados.status == true) {
                location.reload();
                //$("#modalDesativarCliente .close").click();
            }
        });
    }
</script>
