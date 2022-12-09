<?php

use App\Config\ConfigPerfil;
use System\Session\Session;

?>

<div class="sidebar-wrapper">
    <ul class="nav">

        <li class="">
            <a href="<?php echo BASEURL; ?>/home"
               class="<?php currentRouteFromMenu('home', 'inicioBorder'); ?>">
                <i class="fas fa-tachometer-alt"></i>
                <p>Inicio</p>
            </a>
        </li>

        <!--Modulo PDV Padrão e Diferencial-->
        <li class="">
            <!--Modulo Relatórios-->
            <?php if ($configPdv->id_tipo_pdv == 1): ?>
                <a href="<?php echo BASEURL; ?>/pdvPadrao"
                   class="<?php currentRouteFromMenu('pdvPadrao', 'pdvBorder'); ?>">
                    <i class="fas fa-cart-arrow-down"></i>
                    <p>Vendas <small style="float:right;opacity:0.50">Padrão</small></p>
                </a>
            <?php elseif ($configPdv->id_tipo_pdv == 2): ?>
                <a href="<?php echo BASEURL; ?>/vendas"
                   class="<?php currentRouteFromMenu('vendas', 'pdvBorder'); ?>">
                    <i class="fas fa-cart-arrow-down"></i>
                    <p>Vendas <small style="float:right;opacity:0.50"></small></p>
                </a>
            <?php endif; ?>
        </li>

        <?php if (Session::get('idPerfil') != ConfigPerfil::vendedor()): ?>
            <li class="">
                <a href="<?php echo BASEURL; ?>/produto"
                   class="<?php currentRouteFromMenu('produto', 'produtoBorder'); ?>">
                    <i class="fas fa-box-open"></i>
                    <p>Estoque</p>
                </a>
            </li>
        <?php endif; ?>
        
    
        <li class="">
            <a href="<?php echo BASEURL; ?>/fornecedor"
               class="<?php currentRouteFromMenu('fornecedor', 'fornecedorBorder'); ?>
          <?php currentRouteFromMenu('clienteEndereco', 'clienteBorder'); ?>">
                <i class="fas fa-truck"></i>
                <p>Fornecedores</p>
            </a>

        </li>

        <li class="">
            <a href="<?php echo BASEURL; ?>/fornecedores"
               class="<?php currentRouteFromMenu('fornecedores'); ?>">
                <i class="fas fa-truck"></i>
                <p>Fornecedores(inativo)</p>
            </a>
        </li>


        <li class="">
            <a href="<?php echo BASEURL; ?>/abertura"
               class="<?php currentRouteFromMenu('abertura'); ?>">
                <i class="fas fa-money-bill"></i>
                <p>Abertura de Caixa</p>
            </a>
        </li>

        <li class="">
            <a href="<?php echo BASEURL; ?>/caixafechamento"
               class="<?php currentRouteFromMenu('caixafechamento'); ?>">
                <i class="fas fa-money-bill"></i>
                <p>Fechamento de Caixa</p>
            </a>
        </li>
        
        

        <?php if (Session::get('idPerfil') != ConfigPerfil::vendedor()): ?>
            <li class="">
                <a href="<?php echo BASEURL; ?>/relatorio/vendasPorPeriodo"
                   class="<?php currentRouteFromMenu('relatorio', 'relatorioBorder'); ?>
                    <?php currentRouteFromMenu('relatorio/vendasPorPeriodo', 'relatorioBorder'); ?>">
                    <i class="fas fa-file-contract"></i>
                    <p>Relatorio</p>
                </a>
            </li>
        <?php endif; ?>

        <!--<div class="dropdown">
            <li class="active-pro dropdown-toggle dropdown-toggle dropdown-toggle-split" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <a>
                    <i class="fas fa-cogs" style="color:#6e6e6d"></i>
                    <p><p>Configurações</p></p>
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="margin-left:50px">
                    <a class="dropdown-item" href="#"><i class="fas fa-users" style="color:#212120"></i> Usuários</a>
                    <a class="dropdown-item" href="#"><i class="fas fa-store" style="color:#212120"></i> Empresas</a>
                    <a class="dropdown-item" href="#"><i class="fas fa-file-signature" style="color:#212120"></i> Logs de acessos</a>
                </div>
            </li>
        </div>-->

    </ul>
</div>
<script>
    //const urlNav = `${location.origin}${location.pathname}`;
    //const elmNav = document.querySelector(`.sidebar-wrapper li a[href='${urlNav}']`);

    //console.log(urlNav, elmNav);
    /*if (elmNav) {
      elmNav.parentNode.classList.add('active');
    }*/
</script>
