<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teams extends Model
{
    protected $fillable = ['name','logoUri'];
    
    public function players(){
        return $this->hasMany(Teams::class);
    }
}
