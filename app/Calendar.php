<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Calendar extends Model
{
    protected $table = "calendar";

    protected $fillable = [
        'name','SPID','personID','serviceID','limit', 'fromDate', 'toDate', 'sessionTime','active'
    ];

    public function service() {
        return $this->belongsTo('App\Service',  'serviceID', 'id');
    }

    public function calendarBussinessHours() {
        return $this->hasMany('App\CalendarBussinessHours',   'calendarID', 'id' );
    }

}
