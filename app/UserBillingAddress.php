<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserBillingAddress extends Model
{
    protected $table = 'user_billing_address';
    protected $guarded = [];
    public $timestamps = false;

    public function User()
    {
        return $this->belongsTo('User', 'user_id', 'id');
    }
}
