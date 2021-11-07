<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TimeOff extends Model
{
    protected $table = "timeoff";
    public $timestamps = false;

    protected $fillable = [
     'SPID', 'userID', 'fromDate', 'toDate','description'
    ];
}
