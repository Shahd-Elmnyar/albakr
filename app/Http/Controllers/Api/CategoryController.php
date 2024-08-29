<?php

namespace App\Http\Controllers\Api;

use App\Models\Category;
use App\Http\Resources\ProductResource;
use Illuminate\Http\Response;

class CategoryController extends MainController
{
    public function show( $id)
    {
        try{
        $category = Category::find($id);
        $products = $this->getCategoryById($category);

        return $this->resourceResponse(ProductResource::collection($products), 'home.home_success');
    }catch (\Illuminate\Validation\ValidationException $e){

        return $this->errorResponse($e->getMessage(), Response::HTTP_NOT_FOUND);
    }
    }
}
