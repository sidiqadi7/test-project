<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class Jobs extends Model
{
    protected $fillable = [
        'name',
        'description',
        'wage_amount',
        'currency'
    ];
}
