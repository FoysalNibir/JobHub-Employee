<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Addjobinfo extends Model
{
    public function jobinfo()
    {
        return $this->belongsTo('App\Jobinfo');
    }
}
