<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserShippingAddress extends Model
{
    protected $table = 'user_shipping_address';
    protected $guarded = [];
    public $timestamps = false;

    public function User()
    {
        return $this->belongsTo('User', 'user_id', 'id');
    }
}
