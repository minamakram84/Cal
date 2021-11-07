<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CalendarBussinessHours extends Model
{
    protected $table = "calendarbussinesshours";

    protected $fillable = [
        'day','timeFrom','timeTo','calendarID'
    ];

   
}
