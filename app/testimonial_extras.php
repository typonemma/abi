<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class testimonial_extras extends Model
{
    //
    protected $table = 'post_extras';
    protected $guarded = [];
    public $timestamps = false;
    public function Testimonial() {
        return $this->hasMany('testimonial_list', 'post_id', 'id');
    }
}
