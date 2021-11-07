<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = [
        'name', 'serviceTime', 'price','description','categoryID', 'private','needConfirmation','SPID', 'img'
    ];
    public $timestamps = false;


    public function serviceProvider() {
        return $this->belongsTo('App\ServiceProvider', 'id', 'SPID');
    }

    public function calender() {
        return $this->hasMany('App\Calendar', 'id', 'serviceID');
    }
}
