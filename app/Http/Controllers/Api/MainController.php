<?php

namespace App\Http\Controllers\Api;

use App\Models\Category;
use App\Traits\ApiResponseTrait;
use App\Traits\ValidatesRequestsTrait;
use Illuminate\Validation\ValidationException;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;

class MainController extends BaseController
{
    use ApiResponseTrait, ValidatesRequestsTrait;

    public $user;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = $this->checkAuthorization($request);
            return $next($request);
        });
    }

    public function getPaginationData($products)
    {
        if ($products instanceof LengthAwarePaginator) {
            return [
                'total'         => $products->total(),
                'per_page'      => $products->perPage(),
                'current_page'  => $products->currentPage(),
                'last_page'     => $products->lastPage(),
                'next_page_url' => $products->nextPageUrl(),
                'prev_page_url' => $products->previousPageUrl(),
            ];
        }
        return [];
    }

    public function getCategoryById($id)
    {
        $category = Category::find($id);
        if (!$category) {
            throw ValidationException::withMessages([
                'home.category_not_found'
            ]);
        }
        return $category;
    }

    public function getCategoryProductsById($id)
    {
        $category = $this->getCategoryById($id);
        $products = $category->products;
        if ($products->isEmpty()) {
            throw ValidationException::withMessages([
                'home.products_not_found'
            ]);
        }
        return $products;
    }

}
