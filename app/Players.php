<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Players extends Model
{
    public function teams(){
        return $this->belongsTo(Teams::class);
    }
}
