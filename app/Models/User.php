<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{

  protected $table = 'users';
  protected $guarded = [];
  //protected $primaryKey = 'id';

  public function roles()
  {
    return $this->belongsToMany('App\Models\Role');
  }

}
