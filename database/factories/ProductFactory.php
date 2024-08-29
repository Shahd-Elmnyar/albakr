<?php

namespace Database\Factories;

use App\Models\Brand;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    private static $products = [
        'مكيف جداري' => [
            'CoolMaster Wall AC' => [
                'en' => 'CoolMaster Wall AC',
                'ar' => 'مكيف جداري CoolMaster'
            ],
            'UltraCool Wall Unit' => [
                'en' => 'UltraCool Wall Unit',
                'ar' => 'وحدة جداري UltraCool'
            ],
            'EcoChill Wall AC' => [
                'en' => 'EcoChill Wall AC',
                'ar' => 'مكيف جداري EcoChill'
            ]
        ],
        'مكيف اسبلت' => [
            'SplitCool 5000' => [
                'en' => 'SplitCool 5000',
                'ar' => 'مكيف اسبلت SplitCool 5000'
            ],
            'AirPro Split AC' => [
                'en' => 'AirPro Split AC',
                'ar' => 'مكيف اسبلت AirPro'
            ],
            'CoolBreeze Split Unit' => [
                'en' => 'CoolBreeze Split Unit',
                'ar' => 'وحدة اسبلت CoolBreeze'
            ]
        ],
        'مكيف كاسيت' => [
            'CassetteChill 360' => [
                'en' => 'CassetteChill 360',
                'ar' => 'مكيف كاسيت CassetteChill 360'
            ],
            'ProCool Cassette AC' => [
                'en' => 'ProCool Cassette AC',
                'ar' => 'مكيف كاسيت ProCool'
            ],
            'MaxAir Cassette Unit' => [
                'en' => 'MaxAir Cassette Unit',
                'ar' => 'وحدة كاسيت MaxAir'
            ]
        ],
        'مكيف مخفي' => [
            'InvisiCool System' => [
                'en' => 'InvisiCool System',
                'ar' => 'نظام تكييف InvisiCool'
            ],
            'Hideaway AC Unit' => [
                'en' => 'Hideaway AC Unit',
                'ar' => 'وحدة تكييف Hideaway'
            ],
            'ConcealAir Plus' => [
                'en' => 'ConcealAir Plus',
                'ar' => 'ConcealAir Plus'
            ]
        ],
        'مكيف دولابي' => [
            'FloorMaster Pro' => [
                'en' => 'FloorMaster Pro',
                'ar' => 'مكيف دولابي FloorMaster Pro'
            ],
            'PowerCool Floor Unit' => [
                'en' => 'PowerCool Floor Unit',
                'ar' => 'وحدة دولابي PowerCool'
            ],
            'EliteFloor AC' => [
                'en' => 'EliteFloor AC',
                'ar' => 'مكيف دولابي EliteFloor'
            ]
        ],
        'مكيف باكيج' => [
            'PackCool Elite' => [
                'en' => 'PackCool Elite',
                'ar' => 'مكيف باكيج PackCool Elite'
            ],
            'TotalComfort Package AC' => [
                'en' => 'TotalComfort Package AC',
                'ar' => 'مكيف باكيج TotalComfort'
            ],
            'MegaCool Pack Unit' => [
                'en' => 'MegaCool Pack Unit',
                'ar' => 'وحدة باكيج MegaCool'
            ]
        ],
        'فتحات التكييف الألومنيوم' => [
            'AluDuct Premium' => [
                'en' => 'AluDuct Premium',
                'ar' => 'فتحات التكييف AluDuct Premium'
            ],
            'FlexiAir Ducts' => [
                'en' => 'FlexiAir Ducts',
                'ar' => 'فتحات FlexiAir'
            ],
            'AluFlow Air Ducts' => [
                'en' => 'AluFlow Air Ducts',
                'ar' => 'فتحات التكييف AluFlow'
            ]
        ]
    ];

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $categories = Category::all()->pluck('id', 'name')->toArray();

        // Ensure categories are available
        if (empty($categories)) {
            return [];
        }

        // Pick a random category name
        $categoryName = array_rand(self::$products);

        // Pick a random product name within the selected category
        $productNames = array_keys(self::$products[$categoryName]);
        $productName = $productNames[array_rand($productNames)];
        $description = self::$products[$categoryName][$productName];

        // Get the category ID from the categories array
        $categoryId = $categories[$categoryName] ?? null;

        return [
            'name' => json_encode([
                'en' => $description['en'],
                'ar' => $description['ar'],
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
            'category_id' => Category::all()->random()->id,
        ];
    }
}
