<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Category>
 */
class CategoryFactory extends Factory
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
            'name' =>json_encode([
                'en' => $this->faker->name,
                'ar' => $this->faker->name,
            ]),
            'description' => json_encode([
                'en' => $this->faker->paragraph,
                'ar' => $this->faker->paragraph,
            ]),
            'active' => 1,
            'img'=> $i . '.png',
            'parent_id' => null
            ];
    }
}
