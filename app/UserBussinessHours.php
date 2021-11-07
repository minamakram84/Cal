<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserBussinessHours extends Model
{
    protected $table = "userbussinesshours";
    public $timestamps = false;

    protected $fillable = [
     'day', 'timeFrom', 'timeTo', 'userID','SPID', 'dayActive'
    ];

    public function day() {
        return $this->belongsTo('App\Day', 'day', 'id');
    }

    public function userBussinessHours() {
        return $this->belongsTo('App\UserBussinessHours', 'day', 'day');
    }
}
