<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BrandResource extends MainResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */ protected function transformData(array $data): array

    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'description' => $this->description,
            'img' => url('uploads/' . $this->img),
        ];
    }
}
