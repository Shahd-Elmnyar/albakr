<?php

namespace Database\Factories;

use App\Models\Brand;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        static $i = 0;
        $i++;
        return [
            'name' => json_encode([
                'en' => $this->faker->name,
                'ar' => $this->faker->name,
            ]),
            'description' => json_encode([
                'en' => $this->faker->paragraph,
                'ar' => $this->faker->paragraph,
            ]),
            'price' => $this->faker->numberBetween(100, 10000),
            'discount' => $this->faker->numberBetween(0, 100),
            'discount_type' => 'percentage',
            'active' => 1,
            'brand_id' => Brand::all()->random()->id,
        ];
    }
}
