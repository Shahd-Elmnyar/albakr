<?php
namespace App\Traits;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

trait ValidatesRequestsTrait
{
    use ApiResponseTrait;
    public function validateRequest(Request $request, array $rules,$message='validation_error')
    {
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->validationErrorResponse($validator->errors(), $message);
        }
    }
}

