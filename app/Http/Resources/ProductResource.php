<?php

namespace App\Http\Resources;

class ProductResource extends MainResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    protected function transformData(array $data): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'description' => $this->description,
            'price' => $this->price,
            'discount' => $this->discount,
            'discount_type' => $this->discount_type,
            'image' => $this->when($this->relationLoaded('images'), function () {
                return ImageResource::collection($this->images);
            }),
            'brand' => new BrandResource($this->brand),
            'order_count' => $this->total_quantity,
            'is_favorite' => $this->isFavoriteByUser(request()->user()),
            'average_rating' => $this->averageRating(),
            'rates' => RateResource::collection($this->rates),
            'additions' => AdditionResource::collection($this->additions),
        ];
    }

    protected function isFavoriteByUser($user): bool
    {
        if (!$user) {
            return false;
        }

        return $this->favorites()->where('user_id', $user->id)->exists();
    }
}
