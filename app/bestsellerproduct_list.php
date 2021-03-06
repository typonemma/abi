<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bestsellerproduct_list extends Model
{
    //
    protected $table = 'products';
    // protected $table = 'list_bestsellerproducts';
    protected $guarded = [];
    public $timestamps = false;
    public function ProductExtras() {
        return $this->belongsTo('product_etras', 'id', 'product_id');
    }
}
