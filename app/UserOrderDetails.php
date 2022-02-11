<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserOrderDetails extends Model
{
    protected $table = 'user_order_details';
    protected $guarded = [];
    public $timestamps = false;

    public function UserOrderDetails()
    {
        return $this->hasMany('UserOrder', 'user_order_id', 'id');
;    }
}
