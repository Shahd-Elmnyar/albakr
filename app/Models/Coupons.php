<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupons extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'code',
        'type',
        'discount',
        'min_order',
        'max_discount',
        'user_limit',
        'use_limit',
        'use_count',
        'date_start',
        'date_expire',
        'active',
    ];
    public function orders() {
        return $this->hasMany(Order::class);
        }
}
