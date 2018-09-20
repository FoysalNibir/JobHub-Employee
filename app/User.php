<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends \TCG\Voyager\Models\User
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function personalinfo()
    {
        return $this->hasOne('App\Personalinfo');
    }

    public function employeecareerinfo()
    {
        return $this->hasOne('App\Employeecareerinfo');
    }

    public function preferredarea()
    {
        return $this->hasOne('App\Preferredarea');
    }

    public function employeeotherinfo()
    {
        return $this->hasOne('App\Employeeotherinfo');
    }

    public function employeeeducations()
    {
        return $this->hasMany('App\Employeeeducation');
    }

    public function employeetrainings()
    {
        return $this->hasMany('App\Employeetraining');
    }

    public function professionalqualifications()
    {
        return $this->hasMany('App\Professionalqualification');
    }

    public function employments()
    {
        return $this->hasMany('App\Employment');
    }

    public function armyemployment()
    {
        return $this->hasOne('App\Armyemployment');
    }

    public function specialization()
    {
        return $this->hasOne('App\Specialization');
    }

    public function languages()
    {
        return $this->hasMany('App\Language');
    }

    public function references()
    {
        return $this->hasMany('App\Reference');
    }

    public function cv()
    {
        return $this->hasOne('App\Cv');
    }

    public function jobinfos()
    {
        return $this->hasMany('App\Jobinfo');
    }

    public function companydetail()
    {
        return $this->hasOne('App\Companydetail');
    }
}
