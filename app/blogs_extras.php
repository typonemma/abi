<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class blogs_extras extends Model
{
    //
    protected $table = 'post_extras';
    protected $guarded = [];
    public $timestamps = false;
    public function Testimonial() {
        return $this->hasMany('blogs_list', 'post_id', 'id');
    }
}
