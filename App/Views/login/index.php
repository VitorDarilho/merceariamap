<!--Usando o Html Components-->
<?php

use System\HtmlComponents\FlashMessage\FlashMessage; ?>

<div class="col-md-12">
    <?php FlashMessage::show(); ?>
</div>

<form class="form-signin" method="post" action="<?php echo BASEURL; ?>/login/logar">

    <!-- token de segurança -->
    <input type="hidden" name="_token" value="<?php echo TOKEN; ?>"/>

    <div class="form-label-group">
        <input type="email" id="email" name="email" class="form-control" placeholder="Email address" required autofocus>
        <label for="email">Email</label>
    </div>

    <div class="form-label-group">
        <input type="password" id="password" name="password" class="form-control" placeholder="password" required>
        <label for="password">Senha</label>
    </div>

    <div class="p-2">
        <label for="remember" class="checkbox-options">
            <input type="checkbox" name="remember" id="remember" checked/>
            Permanecer conectado
        </label>
    </div>
<div class="fist-button">
    <div class="second-button">
        <button class="button-login" type="submit">Entrar</button>
    </div>
</div>

    <div class="form-links">
        <a href="<?php echo BASEURL; ?>/login/senha">Esqueceu a sua senha?</a>
    </div>

    <hr class="my-4">



</form>
