<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
        'fullname',
        'email',
        'mobile_number',
        'order_size',
        'country',
        'state',
        'message'
    ];
}
