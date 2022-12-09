<?php
namespace App\Models;

use System\Model\Model;

class Fornecedores extends Model
{
    protected $table = 'fornecedores';
    protected $timestamps = false;

    public function __construct()
    {
        parent::__construct();
    }
   
    public function getBy(int $idEmpresa, string $column = null, $value = null)
    {
        $sql = "SELECT * FROM produtos WHERE id_empresa = :id_empresa";
        $data = [':id_empresa' => $idEmpresa];
        if ($column !== null && $value !== null) {
            $sql .= " AND $column = :$column";
            $column = ':' . $column;
            $data[$column] = $value;
        }
        $sql .= ' AND deleted_at IS NULL;';
        return $this->prepare($sql, $data);
    }


}

