<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Addition>
 */
class AdditionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => json_encode([
                'en' => $this->faker->name,
                'ar' => $this->faker->name,
            ]),
            'price' => $this->faker->numberBetween(100, 10000),
            'active' => 1,
        ];
    }
}
