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
      action="<?php echo isset($produto->id) ? BASEURL . '/abertura/update' : BASEURL . '/abertura/save'; ?>">
    <div class="row">
    <input type="hidden" name="_token" value="<?php echo TOKEN; ?>"/> 
        <div class="col-md-4">
            <div class="form-group">
                <label for="data">Data</label>
                <input type="date" class="form-control" name="data" id="data" placeholder="data"
                       value="<?php #echo isset($produto->data) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>

         <div class="col-md-4">
            <div class="form-group">
                <label for="horario_abertura">Horario Abertura</label>
                <input type="time" class="form-control" name="horario_abertura" id="horario_abertura" placeholder="Horario de abertura"
                       value="<?php #echo isset($produto->data_validade) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>

        <div class="col-md-2">
            <div class="form-group">
                <label for="valor_abertura">Valor Abertura</label>
                <input type="text" class="form-control campo-moeda" name="valor_abertura" id="valor_abertura" placeholder="00,00"
                       value="<?php echo isset($abertura_fechamento->valor_abertura) ? real($abertura_fechamento->valor_abertura) : '' ?>">
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="horario_fechamento">Horario Fechamento</label>
                <input type="time" class="form-control" name="horario_fechamento" id="horario_fechamento" placeholder="Horario de fechamento"
                       value="<?php #echo isset($produto->data_validade) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>

        <div class="col-md-2">
            <div class="form-group">
                <label for="valor_fechamento">Valor Fechamento</label>
                <input type="text" class="form-control campo-moeda" name="valor_fechamento" id="preco" placeholder="00,00"
                       value="<?php echo isset($abertura_fechamento->valor_fechamento) ? real($abertura_fechamento->valor_fechamento) : '' ?>">
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

$(function () {
        jQuery('.campo-moeda')
            .maskMoney({
                prefix: 'R$ ',
                allowNegative: false,
                thousands: '.', decimal: ',',
                affixesStay: false
            });
    });
    </script>

    
