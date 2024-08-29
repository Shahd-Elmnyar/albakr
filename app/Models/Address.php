<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'neighborhood',
        'building',
        'area',
        'type',
        'information',
        'geo_address',
        'longitude',
        'latitude',
        'city_id',
        'user_id',
        'active',
        'type',
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function city()
    {
        return $this->belongsTo(City::class);
    }
}
