<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Day extends Model
{
    protected $table = "days";
    public $timestamps = false;

    protected $fillable = [
     'name'
    ];
}
