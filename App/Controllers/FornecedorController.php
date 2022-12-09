<?php

namespace App\Controllers;

use App\Models\Cliente;
use App\Models\FornecedorSegmento;
use App\Models\FornecedorTipo;
use App\Rules\Logged;
use Exception;
use System\Controller\Controller;
use System\Get\Get;
use System\Post\Post;
use System\Session\Session;
use App\Models\Fornecedor;

class FornecedorController extends Controller
{
    protected $post;
    protected $get;
    protected $layout;
    protected $idEmpresa;
    protected $idUsuario;
    protected $idPerfilUsuarioLogado;

    public function __construct()
    {
        parent::__construct();
        $this->layout = 'default';

        $this->post = new Post();
        $this->get = new Get();
        $this->idEmpresa = Session::get('idEmpresa');
        $this->idUsuario = Session::get('idUsuario');
        $this->idPerfilUsuarioLogado = Session::get('idPerfil');

        $logged = new Logged();
        $logged->isValid();
    }

    public function index()
    {
        $fornecedor = new Fornecedor();
        $fornecedores = $fornecedor->fornecedor($this->idEmpresa);

        $this->view('fornecedor/index', $this->layout, compact("fornecedor"));
    }

    public function save()
    {
        if ($this->post->hasPost()) {
            $fornecedor = new Fornecedor();
            $dados = (array)$this->post->data();
            $dados['id_empresa'] = $this->idEmpresa;

            try {
                $fornecedor->save($dados);
                return $this->get->redirectTo("fornecedor");

            } catch (Exception $e) {
                dd($e->getMessage());
            }
        }
    }

    public function update()
    {
        $fornecedor = new Fornecedor();
        $dadosFornecedor = $fornecedor->find($this->post->data()->id);
        $dados = (array)$this->post->only([
            'id_cliente_tipo', 'id_cliente_segmento',
            'nome', 'email', 'cnpj', 'cpf', 'telefone', 'celular', 'segmento_fornecedor'
        ]);

        $dados['id_empresa'] = $this->idEmpresa;

        try {
            $fornecedor->update($dados, $dadosFornecedor->id);
            return $this->get->redirectTo("fornecedor");

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }

    public function modalFormulario($idFornecedor = false)
    {
        $fornecedor = false;

        if ($idFornecedor) {
            $fornecedor = new Fornecedor();
            $fornecedor = $fornecedor->find($idFornecedor);
        }

        /*$fornecedorTipo = new FornecedorTipo();
        $fornecedoresTipos = $fornecedorTipo->all();

        $fornecedorSegmento = new FornecedorSegmento();
        $fornecedorSegmentos = $fornecedorSegmento->segmentos();
        */
        
        $this->view('fornecedor/formulario', null,
            compact(
                'fornecedor'
                
            ));
           
    }


    function desativarCliente($idCliente)
    {
        $cliente = new Cliente();
        $dados['deleted_at'] = date('Y-m-d H:i:s');

        try {
            $cliente->update($dados, $idCliente);
            echo json_encode(['status' => true]);

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }

    function ativarCliente($idCliente)
    {
        $cliente = new Cliente();
        $dados['deleted_at'] = null;

        try {
            $cliente->update($dados, $idCliente);
            echo json_encode(['status' => true]);

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
}
