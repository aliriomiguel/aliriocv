<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    protected $fillable = ['name', 'description','website','picture','picture2','picture3'];
    protected $guarded = [];
    //
}
