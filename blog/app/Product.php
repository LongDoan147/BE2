<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class Product extends Model
{
    public $timestamps = false;
    public function manufacture(){
        return $this->belongsTo('App/Manufacture', 'manu_id');
    }
}


