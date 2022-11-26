<?php
use System\HtmlComponents\Modal\Modal;
?>

<div class="row">

    <div class="card col-lg-12 content-div">
        <div class="card-body">
            <h5 class="card-title"><i class="fas fa-box-open"></i> Abertura e Fechamento de Caixa</h5>
        </div>
    <table class="table tabela-ajustada table-striped" style="width:100%">
        <thead>
        <tr>
            <th>Data</th>
            <th>Horário Abertura</th>
            <th>Valor Abertura</th>
            <th>Horario Fechamento</th>
			<th>Valor Fechamento</th>
            <th style="text-align:right;padding-right:0">
                <?php $rota = BASEURL . 'abertura/modalFormulario'; ?>
                <button onclick="modalFormularioAbertura('<?php echo $rota; ?>', false);"
                        class="btn btn-sm btn-success" title="Abertura e Fechamento de Caixa!">
                    <i class="fas fa-plus"></i>
                </button>
            </th>
        </tr>
        </thead>
        <tbody>

        

        <tfoot></tfoot>
    </table>
</div>
</div>

<?php Modal::start([
    'id' => 'modalFormulario',
    'width' => 'modal-lg',
    'title' => 'Abertura e Fechamento de Caixa'
]); ?>

<div id="formulario"></div>

<?php Modal::stop(); ?>

<script src="<?php echo BASEURL; ?>/public/assets/js/core/jquery.min.js"></script>

<script>
function modalFormularioAbertura(rota, id) {
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