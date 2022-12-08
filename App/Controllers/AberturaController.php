<?php
namespace App\Controllers;

use App\Models\Produto;
use App\Rules\Logged;
use App\Services\UploadService\UploadFiles;
use Exception;
use System\Controller\Controller;
use System\Get\Get;
use System\Post\Post;
use System\Session\Session;
use App\Models\Abertura;

ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);

class AberturaController extends Controller
{
    protected $post;
    protected $get;
    protected $layout;
    protected $idEmpresa;
    protected $diretorioImagemProdutoNoEnv;
    protected $diretorioImagemProdutoPadrao;

    public function __construct()
    {
        parent::__construct();
        $this->layout = 'default';

        $this->diretorioImagemProdutoPadrao = 'public/imagem/produtos/';
        # Pega o diretório setado no .env
        $this->diretorioImagemProdutoNoEnv = getenv('DIRETORIO_IMAGENS_PRODUTO');

        $this->post = new Post();
        $this->get = new Get();
        $this->idEmpresa = Session::get('idEmpresa');

        $logged = new Logged();
        $logged->isValid();
    }

    public function save()
    {   
        $dados = (array) $this->post->only([
        'data', 'horario_abertura', 'valor_abertura', 'vendedor'
            
        ]);
        #dd($dados);
        try {
            $abertura = new Abertura();  
            $abertura->save($dados);
            return $this->get->redirectTo("abertura");

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    } 

    public function index()
    {
       
        
        #$produto = new Produto();
        #$informacoes = $produto->informacaoesGeraisDosProdutos($this->idEmpresa);

       $this->view('abertura/index', $this->layout);
    }
    
    public function modalFormulario($idAbertura)
    {
        $abertura = false;

        #if ($idAbertura) {
           # $abertura = new Abertura();
          #  $abertura = $Abertura->find($idAbertura);
       # }

        $this->view('abertura/formulario', null, compact('abertura'));
    }

}