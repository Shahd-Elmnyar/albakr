<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Response;
use App\Http\Resources\ProductResource;
use App\Http\Controllers\Api\MainController;

class CategoryController extends MainController
{
    public function show( $id)
    {
        try{
            $products = $this->getCategoryProductsById($id);
            return $this->resourceResponse(ProductResource::collection($products), 'home.home_success');
        }catch (\Illuminate\Validation\ValidationException $e){
            return $this->errorResponse($e->getMessage(), Response::HTTP_NOT_FOUND);
        }
    }
}
