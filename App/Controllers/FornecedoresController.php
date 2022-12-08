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
use App\Models\Fornecedores;

ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);

class FornecedoresController extends Controller
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

    
    public function index()
    {
       
        $fornecedores = new Fornecedores();
        $fornecedoress = $fornecedores->fornecedores();
        
        #$informacoes = $produto->informacaoesGeraisDosProdutos($this->idEmpresa);

       $this->view('fornecedores/index', $this->layout, compact('fornecedores'));
    }
    

    public function save()
    {   
        $fornecedores = new Fornecedores();
        $dados = (array) $this->post->only(
            ['nome_fornecedor','cnpj_fornecedor','endereco_fornecedor', 'segmento_fornecedor', 'telefone_fornecedor']);
        #dd($dados);
        try {
            $fornecedores->save($dados);
            return $this->get->redirectTo("fornecedores");

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    } 


    public function update()
    {
        $fornecedores = new Fornecedores();
        $dados = $fornecedores->find($this->post->data()->id);
        $dados = (array)$this->post->only([
            'nome_fornecedor','cnpj_fornecedor','endereco_fornecedor', 'segmento_fornecedor', 'telefone_fornecedor'
        ]);

        try {
            $fornecedores->update($dados, $fornecedores->id);
            return $this->get->redirectTo("fornecedores");

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
    
    public function modalFormulario($idFornecedores)
    {
        $fornecedores = false;

        #if ($idFechamento) {
        #    $produto = new Produto();
        #    $produto = $produto->find($idFechamento);
       # }

        $this->view('fornecedores/formulario', null, compact('fornecedores'));
    }
}
