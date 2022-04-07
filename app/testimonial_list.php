<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class testimonial_list extends Model
{
    //
    protected $table = 'posts';
    protected $guarded = [];
    public $timestamps = false;
    public function TestimonialExtras() {
        return $this->belongsTo('testimonial_extras', 'id', 'post_id');
    }
}
