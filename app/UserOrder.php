<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserOrder extends Model
{
    protected $table = 'user_order';
    protected $guarded = [];
    public $timestamps = false;

    public function UserOrderDetails()
    {
        return $this->hasMany('UserOrderDetails', 'id', 'user_order_id');
;    }
}
