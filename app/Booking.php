<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $table = "booking";
    public $timestamps = false;

    protected $fillable = [
        'SPID','calendarID','title','date','timeFrom','timeTo', 'paymentType', 'total'
    ];

     
}
