<?php
namespace App\Models;

use System\Model\Model;

class Fornecedores extends Model
{
    protected $table = 'cadastro_fornecedores';
    protected $timestamps = false;

    public function __construct()
    {
        parent::__construct();
    }
}