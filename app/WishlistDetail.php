<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WishlistDetail extends Model
{
    protected $table = 'wishlist_detail';
    protected $guarded = [];
    public $timestamps = false;

    public function Wishlist()
    {
        return $this->belongsTo('Wishlist', 'id', 'wishlist_id');
    }
}
