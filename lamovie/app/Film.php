<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Film extends Model
{
    protected $fillable = ['title', 'story', 'released_at', 'duration', 'info'];
    use SoftDeletes;

    public function genres() {
    	return $this->belongsToMany('App\Genre', 'film_genre');
    }

    public function actors() {
    	return $this->belongsToMany('App\Actor', 'film_actor_role');
    }

    public function roles() {
    	return $this->belongsToMany('App\Role', 'film_actor_role');
    }

    public function producers() {
    	return $this->belongsToMany('App\Producer','film_producer');
    }

    public function users(){
        return $this->belongsToMany('App\User','ratings')->using(Rating::class)->withPivot(['rate','comment', 'created_at']);
    }
}
