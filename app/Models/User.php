<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{

  protected $table = 'users';
  protected $guarded = [];
  //protected $primaryKey = 'id';

  public function roles()
  {
    return $this->belongsToMany('App\Models\Role');
  }

    public function addNewFB($input)
    {
        $check = static::where('fb_id',$input['fb_id'])->first();
        if(is_null($check)){
            return static::create($input);
        }
        return $check;
    }
}
