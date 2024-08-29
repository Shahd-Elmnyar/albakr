<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\ResetPasswordController;
use App\Http\Controllers\Api\EmailVerificationController;
use App\Http\Controllers\Api\PriceRequestController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


Route::middleware('lang')->group(function () {

    // Auth
        //Register
            Route::post('sendEmail',[AuthController::class,'sendEmail']);
            Route::post('emailVerification',[EmailVerificationController::class,'emailVerification']);
            Route::post('register',[AuthController::class,'register']);
        //login
            Route::post('login',[AuthController::class,'login']);
        //forget password
            Route::post('sendResetPasswordEmail',[ResetPasswordController::class,'sendEmail']);
            Route::post('otpVerification',[ResetPasswordController::class, 'validateOtp']);
            Route::post('resetPassword',[ResetPasswordController::class, 'resetPassword']);

    Route::middleware('auth:sanctum')->group(function () {
        //home
            Route::get('home',[HomeController::class, 'index']);
        //categories
            Route::get('category/{id}',[CategoryController::class, 'show']);
        //products
            Route::post('products/filter/{id?}', [ProductController::class, 'filter']);
            Route::post('search', [ProductController::class, 'search']);
            Route::get('product/{id}', [ProductController::class, 'show']);
        //price request
            Route::post('priceRequest', [PriceRequestController::class, 'store']);

    });
});
