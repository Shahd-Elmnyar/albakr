<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Coupons>
 */
class CouponsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->word,
            'code' => $this->faker->word,
            'type' => 'percentage',
            'discount' => $this->faker->numberBetween(1, 100),
            'min_order' => $this->faker->numberBetween(1, 100),
            'max_discount' => $this->faker->numberBetween(1, 100),
            'user_limit' => $this->faker->numberBetween(1, 100),
            'use_limit' => $this->faker->numberBetween(1, 100),
            'use_count' => $this->faker->numberBetween(1, 100),
        ];
    }
}
