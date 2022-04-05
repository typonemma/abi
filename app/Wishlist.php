<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    protected $table = 'wishlist';
    protected $guarded = [];
    public $timestamps = false;

    public function DetailWishlist()
    {
        return $this->hasMany('Wishlist', 'wishlist_id', 'id');
    }
}
