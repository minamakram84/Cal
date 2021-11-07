<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceProvider extends Model
{
    protected $table="serviceprovider";
    protected $fillable = [
        'name', 'subdomainaname', 'website','email', 'tel', 'mobile', 'unit', 'userId', 
        'img', 'contryID', 'stateID', 'city', 'address', 'zipCode', 'industryID', 'aboutYou', 'facebook', 'twitter'
    ];
    public $timestamps = false;

    public function service() {
        return $this->hasMany('App\Service', 'id', 'SPID');
    }

    public function country() {
        return $this->belongsTo('App\Country', 'contryID', 'id');
    }

    public function state() {
        return $this->belongsTo('App\State', 'stateID', 'id');
    }

    public function industry() {
        return $this->belongsTo('App\Industry', 'industryID', 'id');
    }
}
