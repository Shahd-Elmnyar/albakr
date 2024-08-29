<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Rate>
 */
class RateFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'rate'=>$this->faker->numberBetween(1, 5),
            'comment'=>$this->faker->sentence,
            'product_id'=>Product::all()->random()->id,
            'user_id'=>User::all()->random()->id,
        ];
    }
}
