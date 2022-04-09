<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminPaymentMethod extends Model
{
    //
    protected $table = 'list_bank';
    protected $guarded = [];
    public $timestamps = false;
}
