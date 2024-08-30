<?php

namespace App\Http\Controllers\Api;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Resources\ProductResource;
use App\Http\Controllers\Api\MainController;

class ProductController extends MainController
{
    private $rules;

    public function __construct()
    {
        parent::__construct();
        $this->rules = [
            'search' => 'required|string|max:255',
        ];
    }

    // Display the specified product.

    public function show($id)
    {
        $product = Product::find($id);
        if (!$product) {
            return $this->errorResponse('home.product_not_found', 404);
        }
        $product->load(['images', 'brand', 'additions', 'rates']);
        $data = [new ProductResource($product)];
        return $this->resourceResponse($data, 'home.home_success');
    }


    // Filter products based on the given criteria.

    public function filter(Request $request, $id = null)
    {
        $filters = $request->only(['brand', 'top_ordered', 'order_by_rate', 'order_by_price']);
        $category = $id ? $this->getCategoryById($id) : null;

        if ($id && !$category) {
            return $this->errorResponse('home.category_not_found', 404);
        }

        $products = $id ? $category->products()->filter($filters)->paginate(4) : Product::filter($filters)->paginate(4);

        $data = [
            'products' => ProductResource::collection($products),
            'productsPagination' => $this->getPaginationData($products)
        ];
        return $this->resourceResponse($data, 'home.home_success');
    }

    //  Search for products based on the search term.
    public function search(Request $request)
    {
        $validateRequest = $this->validateRequest($request, $this->rules);

        if ($validateRequest) {
            return $validateRequest;
        }

        $filters = ['search' => $request->search];
        $products = Product::filter($filters)
            ->with(['images', 'brand', 'additions', 'rates'])
            ->paginate(4);

        $productResources = $products->isNotEmpty() ? ProductResource::collection($products) : [];
        $data = [
            'products' => $productResources,
            'productsPagination' => $this->getPaginationData($products)
        ];

        return $this->resourceResponse($data, 'home.home_success');
    }
}
