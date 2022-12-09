<style>
.obs {
    background:#fffcf5;
    margin-bottom:20px;
    opacity:0.80;
}
</style>

<form method="post"
      action="<?php echo isset($fornecedor->id) ? BASEURL . '/fornecedor/update' : BASEURL . '/fornecedor/save'; ?>"
      enctype='multipart/form-data'>
    <div class="row">


        <input type="hidden" name="_token" value="<?php echo TOKEN; ?>"/>

        <?php if (isset($fornecedor->id)): ?>
            <input type="hidden" name="id" value="<?php echo $fornecedor->id; ?>">
        <?php endif; ?>

        <div class="col-md-4">
            <div class="form-group">
                <label for="nome">Nome *</label>
                <input type="text" class="form-control" name="nome" id="nome" placeholder="Digite aqui..."
                       value="<?php echo isset($fornecedor->id) ? $fornecedor->nome : '' ?>">
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="nome">Segmento</label>
                <input type="text" class="form-control" name="segmento_fornecedor" id="segmento_fornecedor" placeholder="Digite aqui..."
                       value="<?php #echo isset($cliente->id) ? $cliente->nome : '' ?>">
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="email">E-mail * <span class="label-email"></span></label>
                <input type="text" class="form-control" name="email" id="email" placeholder="Digite o e-mail!"
                       value="<?php echo isset($fornecedor->id) ? $fornecedor->email : '' ?>"
                       onchange="verificaSeEmailExiste(this, <?php echo isset($fornecedor->id) ? $fornecedor->id : false; ?>)">
            </div>
        </div>


        <div class="col-md-4 elemento-quando-for-pessoa-juridica">
            <div class="form-group">
                <label for="cnpj">CNPJ </span></label>
                <input type="text" class="form-control" name="cnpj" id="cnpj" placeholder="Digite o CNPJ"
                       value="<?php echo isset($fornecedor->id) ? $fornecedor->cnpj : '' ?>"
                       >
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="telefone">Telefone</label>
                <input type="text" class="form-control" name="telefone" id="telefone"
                       placeholder="Digite o número de Telefone"
                       value="<?php echo isset($fornecedor->id) ? $fornecedor->telefone : '' ?>">
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="celular">Celular</label>
                <input type="text" class="form-control" name="celular" id="celular"
                       placeholder="Digite o número de Celular"
                       value="<?php echo isset($fornecedor->id) ? $fornecedor->celular : '' ?>">
            </div>
        </div>

    </div><!--end row-->

    <button type="submit" class="btn btn-success btn-sm button-salvar-clientes" style="float:right"
            onclick="return salvarClientes()">
        <i class="fas fa-save"></i> Salvar
    </button>

</form>

<script src="<?php echo BASEURL; ?>/public/js/maskedInput.js"></script>
<script>
    // Anula duplo click em salvar
    anulaDuploClick($('form'));


    // Aplica as mascas nos elementos
    jQuery(function ($) {
        jQuery("#cnpj").mask("99.999.999/9999-99");
        jQuery("#cpf").mask("999.999.999-99");
        jQuery("#telefone").mask("(99) 9999-9999");
        jQuery("#celular").mask("(99) 99999-9999");
    });

    function salvarFornecedor() {
        var idFornecedorTipo = $("#id_fornecedor_tipo");

        if ($('#nome').val() == '') {
            modalValidacao('Validação', 'Campo (Nome) deve ser preenchido!');
            return false;

        } else if ($('#email').val() == '') {
            modalValidacao('Validação', 'Campo (Email) deve ser preenchido!');
            return false;

        } else if (!emailValido($('#email').val())) {
            modalValidacao('Validação', 'Digite um Email valido!');
            return false;

        } else if ($('#id_cliente_tipo').val() == 'selecione') {
            modalValidacao('Validação', 'Este cliente é Pessoa Física ou Jurídica?');
            return false;

        } else if ($('#id_cliente_segmento').val() == 'selecione') {
            modalValidacao('Validação', 'Em qual segmento este cliente atua?');
            return false;

        } else if (idClienteTipo.val() == 1 && $('#cpf').val() == '') {
            modalValidacao('Validação', 'Campo (CPF) deve ser preenchido!');
            return false;

        } else if (idClienteTipo.val() == 1 && !cpfValido($('#cpf').val())) {
            modalValidacao('Validação', 'Digite um (CPF) valido!');
            return false;

        } else if (idClienteTipo.val() == 2 && $('#cnpj').val() == '') {
            modalValidacao('Validação', 'Campo (CNPJ) deve ser preenchido!');
            return false;

        } 

        return true;
    }


// Select2
jQuery('#id_fornecedor_segmento').select2();
</script>
