<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class availableAt_list extends Model
{
    //
    protected $table = 'terms';
    protected $guarded = [];
    public $timestamps = false;
    public function TermExtras() {
        return $this->belongsTo('term_extras', 'term_id', 'term_id');
    }
}
