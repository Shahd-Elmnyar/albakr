<?php

namespace App\Http\Controllers\Api;

use App\Models\Brand;
use App\Http\Resources\BrandResource;

class BrandController extends MainController
{
    public function index (){
        $brand = Brand::all();
        $brands = BrandResource::collection($brand);
        return $this->resourceResponse($brands , 'home.home_success');
    }
}
