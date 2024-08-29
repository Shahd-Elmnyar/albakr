<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\OrderItem;
use App\Models\Shipping;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            CategorySeeder::class,
            BrandSeeder::class,
            ProductSeeder::class,
            AdditionSeeder::class,
            RateSeeder::class,
            FavoriteSeeder::class,
            PaymentSeeder::class,
            CartSeeder::class,
            CartItemSeeder::class,
            CouponsSeeder::class,
            OrderSeeder::class,
            OrderItemSeeder::class,
            AddressSeeder::class,
            ShippingSeeder::class,
            ImageSeeder::class,
            PriceRequestSeeder::class,
        ]);
    }
}
