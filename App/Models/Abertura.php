<?php

namespace App\Models;

use System\Model\Model;

class Abertura extends Model
{
    protected $table = 'abertura_fechamento';
    protected $timestamps = false;

    public function __construct()
    {
        parent::__construct();
    }
}