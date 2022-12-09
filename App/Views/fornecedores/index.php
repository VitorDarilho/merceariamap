<?php
use System\HtmlComponents\Modal\Modal;
?>

<div class="row">

    <div class="card col-lg-12 content-div">
        <div class="card-body">
            <h5 class="card-title"><i class="fas fa-truck"></i> Fornecedores</h5>
        </div>
    <table class="table tabela-ajustada table-striped" style="width:100%">
        <thead>
        <tr>
            <th>Nome Fornecedor</th>
            <th>CNPJ</th>
            <th>Endereço</th>
            <th>Segmento</th>
            <th>Telefone</th>
            <th style="text-align:right;padding-right:0">
                <?php $rota = BASEURL . '/fornecedores/modalFormulario';?>
                <button onclick="modalFormularioFornecedores('<?php echo $rota; ?>', false);"
                        class="btn btn-sm btn-success" title="Novo Produto!">
                    <i class="fas fa-plus"></i>
                </button>
            </th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($fornecedores as $fornecedores): ?>
            <tr>
            <td>
                <?php echo $fornecedoress->$nome_fornecedor; ?>

            </td>
        </tr>
        <?php endforeach;?>






        <tfoot></tfoot>
    </table>
</div>
</div>

<?php Modal::start([
    'id' => 'modalFormulario',
    'width' => 'modal-lg',
    'title' => 'Cadastro Fornecedores',
]);?>

<div id="formulario"></div>

<?php Modal::stop();?>

<script src="<?php echo BASEURL; ?>/public/assets/js/core/jquery.min.js"></script>

<script>
function modalFormularioFornecedores(rota, id) {
        var url = "";

        if (id) {
            url = rota + "/" + id;
        } else {
            url = rota;
        }

        $("#formulario").html("<center><h3>Carregando...</h3></center>");
        $("#modalFormulario").modal({backdrop: 'static'});

        $("#formulario").load(url);
    }

</script>

