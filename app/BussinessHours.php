<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BussinessHours extends Model
{
    protected $table = "bussinesshours";
    public $timestamps = false;

    protected $fillable = [
     'day', 'fromHour', 'toHour', 'SPID','dayID', 'dayName', 'dayActive'
    ];

    // public function day() {
    //     return $this->belongsTo('App\Day', 'day', 'id');
    // }
}
