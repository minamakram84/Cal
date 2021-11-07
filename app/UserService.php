<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserService extends Model
{
    protected $table = "userservices";
    public $timestamps = false;

    protected $fillable = [
     'staffID', 'serviceID'
    ];
}
