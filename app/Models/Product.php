<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    public function CartDetail()
    {
        return $this->hasMany(App\CartDetail::class, 'id', 'product_id');
    }
}
