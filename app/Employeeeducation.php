<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employeeeducation extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
