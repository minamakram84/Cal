<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StaffBreak extends Model
{
    protected $table = "userbreak";
    public $timestamps = false;

    protected $fillable = [
     'day', 'timeFrom', 'timeTo', 'userID','SPID'
    ];

    public function day() {
        return $this->belongsTo('App\Day', 'day', 'id');
    }

    public function userBussinessHours() {
        return $this->belongsTo('App\UserBussinessHours', 'day', 'day');
    }
}
