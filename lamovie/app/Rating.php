<?php

namespace App;

use Illuminate\Database\Eloquent\Relations\Pivot;

class Rating extends Pivot
{
    protected $fillable=['user_id','film_id','rate','comment'];
    protected $table='ratings';
}
