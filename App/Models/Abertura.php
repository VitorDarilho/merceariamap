<?php

namespace App\Models;

use System\Model\Model;

class Abertura extends Model
{
    protected $table = 'abertura';
    protected $timestamps = false;

    public function __construct()
    {
        parent::__construct();
    }
}