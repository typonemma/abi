<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $table = 'cart';
    protected $guarded = [];
    public $timestamps = false;

    public function DetailCart()
    {
        return $this->hasMany('Cart', 'cart_id', 'id');
    }
}
