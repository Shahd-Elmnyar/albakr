<?php

namespace App\Traits;

use Illuminate\Http\Response;
use Illuminate\Http\Resources\Json\JsonResource;


trait ApiResponseTrait
{
    protected function validationErrorResponse($errors, $message = 'validation_error', $statusCode = Response::HTTP_FORBIDDEN)
    {
        return response()->json([
            'status' => 'error',
            'message'=> __($message),
            'data' => (object)[],
            'errors' => $errors,
        ], $statusCode);
    }
    protected function SuccessResponse( $message = '', $data = null , $statusCode = Response::HTTP_OK)
    {
        if ($data == null) {
            $data = (object)[];
        }

        return response()->json([
            'status' => 'success',
            'message' => __($message),
            'data' => $data,
            'errors' => (object)[],
        ], $statusCode);
    }
    protected function resourceResponse( $resource,$message='success',$token = null, $statusCode = Response::HTTP_OK)
    {
        
        $data = ['data' => $resource];
        if ($token) {
            $data['token'] = $token;
        }

        return $this->successResponse($message,$data, $statusCode);
    }
    protected function errorResponse($message = 'An error occurred', $statusCode = Response::HTTP_INTERNAL_SERVER_ERROR , $errors = null)
    {
        if ($errors == null) {
            $errors = (object)[];
        }
        return response()->json([
            'status' => 'error',
            'message' => __($message),
            'data' => (object)[],
            'errors' => $errors,
        ], $statusCode);
    }
    public function checkAuthorization($request)
    {
        $user = $request->user();

        if (!$user) {
            return $this->unauthorizedResponse('auth.user_not_found');
        }
        return $user;
    }
    public function unauthorizedResponse($message)
    {
        return response()->json([
            'code' => 'error',
            'message' => __($message),
        ], 401);
    }
}
