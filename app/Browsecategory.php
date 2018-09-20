<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Browsecategory extends Model
{
    public function preferredareas()
    {
        return $this->belongsToMany('App\Preferredarea');
    }

    public function jobinfo()
	{
		return $this->belongsToMany('App\Jobinfo');
	}
}
