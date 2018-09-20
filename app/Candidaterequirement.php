<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Candidaterequirement extends Model
{
    public function jobinfo()
    {
        return $this->belongsTo('App\Jobinfo');
    }
}
