<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jobinfo extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function browsecategories()
    {
        return $this->belongsToMany('App\Browsecategory');
    }

    public function addjobinfo()
    {
        return $this->hasOne('App\Addjobinfo');
    }

    public function candidaterequirements()
    {
        return $this->hasOne('App\Candidaterequirement');
    }
}
