<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'total'=>$this->faker->numberBetween(100, 10000),
            'status'=>'processing',
            'user_id'=>User::all()->random()->id,
            'payment_id'=>1,
            'coupon_id'=>1
        ];
    }
}
