<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class term_extras extends Model
{
    //
    protected $table = 'term_extras';
    protected $guarded = [];
    public $timestamps = false;
    public function Term() {
        return $this->hasMany('availableAt_list', 'term_id', 'term_id');
    }
}
