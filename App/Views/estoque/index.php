<div class="row">

    <div class="card col-lg-12 content-div">
        <div class="card-body">
            <h5 class="card-title"><i class="fas fa-box-open"></i> Estoque</h5>
        </div>
    <table class="table tabela-ajustada table-striped" style="width:100%">
        <thead>
        <tr>
            <th>#</th>
            <th>Nome</th>
            <th>Ativo</th>
            <th>R$ Preço</th>
            <th style="text-align:right;padding-right:0">
                <?php $rota = BASEURL . '/produto/modalFormulario'; ?>
                <button onclick="modalFormularioProdutos('<?php echo $rota; ?>', false);"
                        class="btn btn-sm btn-success" title="Novo Produto!">
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