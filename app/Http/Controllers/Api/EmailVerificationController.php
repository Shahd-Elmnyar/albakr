<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Ichtrojan\Otp\Otp;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Traits\ApiResponseTrait;
use App\Traits\ValidatesRequestsTrait;
use App\Http\Controllers\Api\AuthController;

class EmailVerificationController extends AuthController
{
    protected $rules;
    private $otp;
    public function __construct()
    {
        parent::__construct();
        $this->rules = array_merge($this->email_rules, [
            'otp' => 'required|max:5'
        ]);

        $this->otp = new Otp;
    }
    public function emailVerification(Request $request){
        $validateRequest = $this->validateRequest($request, $this->rules, 'auth.email_verification_failed');
        if (isset($validateRequest)) {
            return $validateRequest;
        }
        $otp = $this->otp->validate($request->email, $request->otp);
        if (!$otp->status) {
            return $this->errorResponse('auth.otp_invalid', Response::HTTP_BAD_REQUEST);
        }
        $user = User::where('email', $request->email)->first();
        $user->update(['email_verified_at' => now()]);
        return $this->successResponse('auth.email_verified');
    }

}
