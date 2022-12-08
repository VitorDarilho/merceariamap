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
      action="<?php echo isset($caixafechamento->fechamento_caixa) ? BASEURL . '/caixafechamento/update' : BASEURL . '/caixafechamento/save'; ?>">
    <div class="row">
    <input type="hidden" name="_token" value="<?php echo TOKEN; ?>"/> 
       
        <div class="col-md-4">
            <div class="form-group">
                <label for="vendedor">Vendedor</label>
                <input type="text" class="form-control" name="vendedor" id="vendedor" placeholder="Vendedor"
                       value="<?php #echo isset($produto->data) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>
    
        <div class="col-md-4">
            <div class="form-group">
                <label for="data_fechamento">Data</label>
                <input type="date" class="form-control" name="data_fechamento" id="data_fechamento" placeholder= "Data"
                       value="<?php echo isset($caixa_fechamento->data) ? date('Y-m-d', strtotime($caixa_fechamento->data)) : '' ?>">
            </div>
        </div>

         <div class="col-md-4">
            <div class="form-group">
                <label for="hora_fechamento">Horario Fechamento</label>
                <input type="time" class="form-control" name="hora_fechamento" id="hora_fechamento" placeholder="Horario de fechamento"
                       value="<?php #echo isset($produto->data_validade) ? date('Y-m-d', strtotime($produto->data_validade)) : '' ?>">
            </div>
        </div>

        <div class="col-md-2">
            <div class="form-group">
                <label for="valor_fechamento">Valor Fechamento</label>
                <input type="float" class="form-control campo-moeda" name="valor_fechamento" id="valor_fechamento" placeholder="00,00"
                       value="<?php echo isset($fechamento_caixa->valor_fechamento) ? real($fechamento_caixa->valor_fechamento) : '' ?>">
            </div>
        </div>

        
    <button type="submit" class="btn btn-success btn-sm" style="float:right">
        <i class="fas fa-save"></i> Salvar
    </button>
</form>

<br>
<br>

<script src="<?php echo BASEURL; ?>/public/js/jquery-te-1.4.0.min.js"></script>
<script src="<?php echo BASEURL; ?>/public/js/maskedInput.js"></script>
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

    
