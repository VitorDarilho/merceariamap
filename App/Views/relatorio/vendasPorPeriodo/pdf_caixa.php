<?php

// Carregar o Composer
require './vendor/autoload.php';

// Incluir conexao com BD
include_once './conexao.php';

// QUERY para recuperar os registros do banco de dados
$query_abertura = "SELECT horario_abertura, valor_abertura, vendedor FROM abertura";

// Prepara a QUERY
$result_abertura = $conn->prepare($query_abertura);

// Executar a QUERY
$result_abertura->execute();

// Informacoes para o PDF
$dados = "<!DOCTYPE html>";
$dados .= "<html lang='pt-br'>";
$dados .= "<head>";
$dados .= "<meta charset='UTF-8'>";
$dados .= "<link rel='stylesheet' href='http://localhost/celke/css/custom.css'";
$dados .= "<title>Celke - Gerar PDF</title>";
$dados .= "</head>";
$dados .= "<body>";
$dados .= "<h1>Listar os Usuário</h1>";

// Ler os registros retornado do BD
while($row_abertura = $result_abertura->fetch(PDO::FETCH_ASSOC)){
    //var_dump($row_abertura);
    extract($row_abertura);
    $dados .= "data: $data <br>";
    $dados .= "horario_abertura: $horario_abertura <br>";
    $dados .= "valor_abertura: $valor_abertura <br>";
    $dados .= "vendedor: $vendedor <br>";
    $dados .= "<hr>";
}

$dados .= "<img src='http://localhost/celke/imagens/celke.jpg'><br>";
$dados .= "O PHP proin iaculis, libero et dictum fringilla, ex metus scelerisque mauris, sit amet lobortis enim justo quis arcu. Proin eget pharetra ipsum, eget auctor purus.";
$dados .= "</body>";


// Referenciar o namespace Dompdf
use Dompdf\Dompdf;

// Instanciar e usar a classe dompdf
$dompdf = new Dompdf(['enable_remote' => true]);

// Instanciar o metodo loadHtml e enviar o conteudo do PDF
$dompdf->loadHtml($dados);

// Configurar o tamanho e a orientacao do papel
// landscape - Imprimir no formato paisagem
//$dompdf->setPaper('A4', 'landscape');
// portrait - Imprimir no formato retrato
$dompdf->setPaper('A4', 'portrait');

// Renderizar o HTML como PDF
$dompdf->render();

// Gerar o PDF
$dompdf->stream();
