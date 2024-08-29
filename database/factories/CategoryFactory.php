<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Category>
 */
class CategoryFactory extends Factory
{
    private static $categories = [
        'مكيف جداري' => [
            'en' => 'Wall-mounted Air Conditioner',
            'ar' => 'مكيف جداري'
        ],
        'مكيف اسبلت' => [
            'en' => 'Split Air Conditioner',
            'ar' => 'مكيف اسبلت'
        ],
        'مكيف كاسيت' => [
            'en' => 'Cassette Air Conditioner',
            'ar' => 'مكيف كاسيت'
        ],
        'مكيف مخفي' => [
            'en' => 'Concealed Air Conditioner',
            'ar' => 'مكيف مخفي'
        ],
        'مكيف دولابي' => [
            'en' => 'Floor-standing Air Conditioner',
            'ar' => 'مكيف دولابي'
        ],
        'مكيف باكيج' => [
            'en' => 'Package Air Conditioner',
            'ar' => 'مكيف باكيج'
        ],
        'فتحات التكييف الألومنيوم' => [
            'en' => 'Aluminum Air Conditioning Ducts',
            'ar' => 'فتحات التكييف الألومنيوم'
        ]
    ];

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        static $i = 0;
        $i++;

        // Ensure categories are not repeated
        if (empty(self::$categories)) {
            // Handle the case where all categories are used (optional)
            throw new \Exception('No more categories available.');
        }

        $categoryKey = array_rand(self::$categories);
        $category = self::$categories[$categoryKey];
        unset(self::$categories[$categoryKey]); // Remove used category

        return [
            'name' => json_encode($category),
            'description' => json_encode([
                'en' => 'Description for ' . $categoryKey . ' in English.',
                'ar' => 'وصف لـ ' . $categoryKey . ' باللغة العربية.'
            ]),
            'active' => 1,
            'img' => $i . '.png',
            'parent_id' => null
        ];
    }
}
