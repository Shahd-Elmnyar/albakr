<?php

namespace App\Http\Controllers\Api;

use App\Models\Category;
use App\Http\Resources\ProductResource;
use Illuminate\Http\Response;

class CategoryController extends MainController
{
    public function show(Category $category)
    {
        $products = $this->getCategoryById($category);

        return $this->resourceResponse(ProductResource::collection($products), 'home.home_success');
    }
}
