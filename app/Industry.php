<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Industry extends Model
{
    protected $table = "industry";

    protected $fillable = [
        'name'
    ];

}
