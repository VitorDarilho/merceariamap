<?php

namespace App\Models;

use System\Model\Model;

class Fornecedor extends Model
{
    protected $table = 'fornecedor';
    protected $timestamps = true;

    public function __construct()
    {
        parent::__construct();
    }

   public function fornecedor($idEmpresa)
    {
        return $this->query("SELECT(SELECT COUNT(*) FROM fornecedor) AS quantidadeEnderecos,
            cl.id, cl.nome, cl.email, cl.cnpj, cl.cpf, cl.telefone, cl.celular, cl.deleted_at, cl.segmento_fornecedor, 
            cs.id AS idSegmento, cs.descricao AS descricaoSegmento,
            ct.id AS idFornecedorTipo, ct.descricao AS descricaoFornecedorTipo
            FROM fornecedor AS cl
            LEFT JOIN clientes_segmentos AS cs ON cl.id_cliente_segmento = cs.id
            LEFT JOIN clientes_tipos AS ct ON cl.id_cliente_tipo = ct.id
            WHERE cl.id_empresa = {$idEmpresa} ORDER BY cl.nome");
    }

    public function quantidadeDeFornecedorCadastrados($idEmpresa)
    {
        $ativos = $this->queryGetOne("
            SELECT COUNT(*) quantidade FROM fornecedor WHERE id_empresa = {$idEmpresa} AND deleted_at IS NULL
        ");

        $inativos = $this->queryGetOne("
            SELECT COUNT(*) quantidade FROM fornecedor WHERE id_empresa = {$idEmpresa} AND deleted_at IS NOT NULL
        ");

        return (object)[
            'ativos' => $ativos->quantidade,
            'inativos' => $inativos->quantidade
        ];
    }

}
