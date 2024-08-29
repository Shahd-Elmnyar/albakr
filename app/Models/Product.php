<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'img',
        'price',
        'discount',
        'discount_type',
        'active',
        'brand_id',
    ];
    protected $casts = [
        'content' => 'array',
        'name' => 'array',
    ];

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function images()
    {
        return $this->hasMany(Image::class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function rates()
    {
        return $this->hasMany(Rate::class);
    }

    public function orderItem()
    {
        return $this->hasMany(OrderItem::class);
    }

    public function cartItems()
    {
        return $this->hasMany(CartItem::class);
    }

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }

    public function additions()
    {
        return $this->belongsToMany(Addition::class, 'product_addition', 'product_id', 'addition_id')
            ->withTimestamps();
    }

    public function userAdditions()
    {
        return $this->belongsToMany(Addition::class, 'user_product_addition')
            ->withPivot('quantity')
            ->withTimestamps();
    }

    public static function getTotalQuantities()
    {
        return self::select('products.*', DB::raw('SUM(order_items.quantity) as total_quantity'))
            ->leftJoin('order_items', 'products.id', '=', 'order_items.product_id')
            ->groupBy('products.id', 'products.name', 'products.description', 'products.price', 'products.discount', 'products.discount_type', 'products.active', 'products.brand_id', 'products.created_at', 'products.updated_at')
            ->orderByDesc('total_quantity')
            ->with(['additions', 'brand', 'images', 'category'])
            ->get(); 
    }

    // Calculate the average rating
    public function averageRating()
    {
        return $this->rates()->avg('rate');
    }

    public function scopeFilter($query, array $filters)
    {
        $query->when($filters['search'] ?? false, function ($query, $search) {
            $query->where(
                fn($query) => $query
                    ->where('name', 'like', '%' . $search . '%')
                    ->orWhere('description', 'like', '%' . $search . '%')
            );
        });

        $query->when($filters['brand'] ?? false, function ($query, $brand) {
            $query->where('brand_id', $brand);
        });

        $query->when($filters['order_by_rate'] ?? false, function ($query, $order_by_rate) {
            $query->withAvg('rates', 'rate')->orderBy('rates_avg_rate', $order_by_rate);
        });

        $query->when($filters['order_by_price'] ?? false, function ($query, $order_by_price) {
            $query->orderBy('price', $order_by_price);
        });

        $query->when($filters['top_ordered'] ?? false, function ($query, $order_by_top_ordered) {
            $query->leftJoin('order_items', 'products.id', '=', 'order_items.product_id')
                ->select('products.*', DB::raw('SUM(order_items.quantity) as total_quantity'))
                ->groupBy('products.id', 'products.name', 'products.description', 'products.price', 'products.discount', 'products.discount_type', 'products.active', 'products.brand_id', 'products.created_at', 'products.updated_at')
                ->orderBy('total_quantity', $order_by_top_ordered);
        });
    }

}

