<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Preferredarea extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function browsecategories()
    {
        return $this->belongsToMany('App\Browsecategory');
    }
}
