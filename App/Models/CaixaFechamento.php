<?php
namespace App\Models;

use System\Model\Model;

class CaixaFechamento extends Model
{
    protected $table = 'fechamento_caixa';
    protected $timestamps = false;

    public function __construct()
    {
        parent::__construct();
    }
}