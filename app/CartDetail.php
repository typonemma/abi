<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CartDetail extends Model
{
    protected $table = 'cart_detail';
    protected $guarded = [];
    public $timestamps = false;

    public function Cart()
    {
        return $this->belongsTo('Cart', 'id', 'cart_id');
    }
    public function Product()
    {
        return $this->belongsTo(App\Models\Product::class, 'product_id', 'id');
    }
}
