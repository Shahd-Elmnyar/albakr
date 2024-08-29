<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\CartItem>
 */
class CartItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'quantity'=> $this->faker->numberBetween(1, 10),
            'price' => $this->faker->numberBetween(100, 10000),
            'addition_quantity'=> $this->faker->numberBetween(1, 10),
            'total_addition_price'=> $this->faker->numberBetween(100, 10000),
            'total'=> $this->faker->numberBetween(100, 10000),
            'cart_id'=> $this->faker->numberBetween(1, 10),
            'product_id'=>Product::all()->random()->id,
        ];
    }
}
