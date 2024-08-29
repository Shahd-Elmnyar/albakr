<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Address>
 */
class AddressFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name,
            'neighborhood'=>$this->faker->word,
            'building' => $this->faker->optional()->buildingNumber,
            'area'=>$this->faker->optional()->streetName,
            'type'=>'home',
            'user_id'=>User::all()->random()->id

        ];
    }
}
