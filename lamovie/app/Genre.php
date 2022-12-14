<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    protected $fillable = ['genre'];

    public function films() {
    	return $this->belongsToMany('App\Film','film_genre');
    }
}
