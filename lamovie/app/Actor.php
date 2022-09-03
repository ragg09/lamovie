<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Actor extends Model
{
    protected $fillable = ['name', 'note'];
    use SoftDeletes;

    public function films() {
    	return $this->belongsToMany('App\Film','film_actor_role');
    }

    public function roles() {
    	return $this->belongsToMany('App\Role','film_actor_role');
    }
}
