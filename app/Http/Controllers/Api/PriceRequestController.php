<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PriceRequestController extends MainController
{
    private $rules ;
    public function __construct(){
        parent::__construct();
        $this->rules = [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'phone' => 'required|numeric',
            'email' => 'required|email',
            'type' => 'required|string|max:255',
            'message' => 'required|string|max:255',
        ];
    }
    public function store(Request $request)
    {
        $validateRequest = $this->validateRequest($request, $this->rules);
        if (isset($validateRequest)) {
            return $validateRequest;
        }
        $request->user()->priceRequests()->create($request->all());
        return $this->successResponse();
    }
}
