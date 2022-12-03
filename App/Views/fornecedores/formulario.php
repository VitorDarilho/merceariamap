<link rel="stylesheet" type="text/css" href="<?php echo BASEURL; ?>/public/css/jquery-te-1.4.0.css">
<style>
    #codigo::-webkit-outer-spin-button,
    #codigo::-webkit-inner-spin-button {
        /* display: none; <- Crashes Chrome on hover */
        -webkit-appearance: none;
        margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
    }
    #codigo[type=number] {
        -moz-appearance:textfield; /* Firefox */
    }
</style>

<form method="post"
      action="<?php echo isset($fornecedores->cadastro_fornecedores) ? BASEURL . '/fornecedores/update' : BASEURL . '/fornecedores/save'; ?>">
    <div class="row">
    <input type="hidden" name="_token" value="<?php echo TOKEN; ?>"/> 
       
        <div class="col-md-4">
            <div class="form-group">
                <label for="nome_fornecedor">Nome fornecedor</label>
                <input type="text" class="form-control" name="nome_fornecedor" id="nome_fornecedor" placeholder="Nome fornecedor"
                       value="<?php #echo isset($produto->data) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>
    
        <div class="col-md-4">
            <div class="form-group">
                <label for="cnpj_fornecedor">CNPJ</label>
                <input type="text" class="form-control" name="cnpj_fornecedor" id="cnpj_fornecedor" placeholder="CNPJ"
                       value="<?php #echo isset($produto->data) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="endereco_fornecedor">Endereço</label>
                <input type="text" class="form-control" name="endereco_fornecedor" id="endereco_fornecedor" placeholder="Endereço"
                       value="<?php #echo isset($produto->data) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="segmento_fornecedor">Segmento</label>
                <input type="text" class="form-control" name="segmento_fornecedor" id="segmento_fornecedor" placeholder="Segmento"
                       value="<?php #echo isset($produto->data) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="form-group">
                <label for="telefone_fornecedor">Telefone</label>
                <input type="text" class="form-control" name="telefone_fornecedor" id="telefone_fornecedor" placeholder="Telefone"
                       value="<?php #echo isset($produto->data) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>

    <button type="submit" class="btn btn-success btn-sm" style="float:right">
        <i class="fas fa-save"></i> Salvar
    </button>
</form>

<br>
<br>

<script src="<?php echo BASEURL; ?>/public/js/jquery-te-1.4.0.min.js"></script>

<script>
jQuery(function ($) {
        jQuery("#cnpj_fornecedor").mask("99.999.999/9999-99");
        jQuery("#telefone_fornecedor").mask("(99) 9999-9999");
    });

</script>


    
