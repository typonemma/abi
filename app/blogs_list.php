<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class blogs_list extends Model
{
    //
    protected $table = 'posts';
    protected $guarded = [];
    public $timestamps = false;
    public function BlogsExtras() {
        return $this->belongsTo('blogs_extras', 'id', 'post_id');
    }
}
