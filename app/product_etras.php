<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class product_etras extends Model
{
    //
    protected $table = 'product_extras';
    // protected $table = 'list_bestsellerproducts';
    protected $guarded = [];
    public $timestamps = false;
    public function Product() {
        return $this->hasMany('bestsellerproduct_list', 'product_id', 'id');
    }
}
