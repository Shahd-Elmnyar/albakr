<?php

namespace App\Http\Controllers\Api;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Response;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\ProductResource;

class HomeController extends MainController
{
    public function index()
    {
        $categories = $this->getCategories();
        $topProducts = Product::getTotalQuantities();
        $categoryProducts = $this->getProductsByCategory('Aluminum air conditioning vents', 'فتحات التكييف الألومنيوم');

        if ($categories->isEmpty()) {
            return $this->errorResponse('home.categories_not_found', Response::HTTP_NOT_FOUND);
        }

        if (!$topProducts) {
            return $this->errorResponse('home.products_not_found', Response::HTTP_NOT_FOUND);
        }

        if (!$categoryProducts) {
            $categoryProducts = [];
        }

        $data = [
            'categories' => CategoryResource::collection($categories),
            'topProducts' => ProductResource::collection($topProducts),
            'topProductsPagination' => $this->getPaginationData($topProducts),
            'AluminumAirConditioningVents' => ProductResource::collection($categoryProducts),
            'AluminumAirConditioningVentsPagination' => $this->getPaginationData($categoryProducts),
        ];

        return $this->resourceResponse($data, 'home.home_success');
    }

    public function getCategories()
    {
        return Category::with(['parent', 'children', 'products'])
            ->where('name->en', '!=', 'Aluminum air conditioning vents')
            ->where('name->ar', '!=', 'فتحات التكييف الألومنيوم')
            ->get();
    }

    public function getProductsByCategory($categoryEn, $categoryAr)
    {
        return Product::whereHas('category', function ($query) use ($categoryEn, $categoryAr) {
            $query  ->where('name->en', $categoryEn)
                    ->orWhere('name->ar', $categoryAr);
        })->paginate(2);
    }
}
