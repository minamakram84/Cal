<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    
    protected $table="customers";
    protected $fillable = [
        'name', 'email', 'password','registerType', 'vendorUserID', 'phone', 'address', 'bDate', 
        'homePhone', 'officePhone', 'description', 'info', 'img', 'SPID'
    ];
    public $timestamps = false;

    public function serviceProvider() {
        return $this->hasMany('App\ServiceProvider', 'id', 'SPID');
    }

}
