<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Ichtrojan\Otp\Otp;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;
use App\Notifications\PasswordResetNotification;

class ResetPasswordController extends AuthController
{
    private $rules;
    private $otp;
    private $password_rules;
    public function __construct(){
        parent::__construct();

        $this->rules = array_merge($this->email_rules, [
            'otp' => 'required|max:5'
        ]);
        $this->otp = new Otp;

        $this->password_rules = array_merge($this->email_rules, [
            'password' =>
            [
                'required',
                'string',
                'min:8',
                'regex:/[a-z]/',
                'regex:/[A-Z]/',
                'regex:/\d/',
                'regex:/[@$!%*#?&]/',
                'confirmed'
            ]
        ]);

    }
    public function sendEmail(Request $request){
        $validateRequest = $this->validateRequest($request, $this->email_rules);
        if (isset($validateRequest)) {
            return $validateRequest;
        }
        $user = User::where('email', $request->email)->first();
        if (!$user) {
            return $this->errorResponse('auth.user_not_found', Response::HTTP_NOT_FOUND);
        }
        $user->notify(new PasswordResetNotification());
        return $this->successResponse('auth.password_reset_email_sent');
    }

    public function validateOtp(Request $request){
        $validateRequest = $this->validateRequest($request, $this->rules, 'auth.email_verification_failed');
        if (isset($validateRequest)) {
            return $validateRequest;
        }
        $otp = $this->otp->validate($request->email, $request->otp);
        if (!$otp->status) {
            return $this->errorResponse('auth.otp_invalid', Response::HTTP_BAD_REQUEST);
        }

        $user = User::where('email', $request->email)->first();
        $user->update(['otp_validated'=>1]);
        return $this->successResponse('auth.otp_verified');
    }

    public function resetPassword(Request $request){
        $validateRequest = $this->validateRequest($request, $this->password_rules, 'auth.password_reset_failed');
        if (isset($validateRequest)) {
            return $validateRequest;
        }

        $user = User::where('email', $request->email)->first();
        if ($user->otp_validated != 1) {
            return $this->errorResponse('auth.otp_not_verified', Response::HTTP_UNAUTHORIZED);
        }
        $user->update(array_merge($request->only('password'),['otp_validated' => 0]));
        return $this->successResponse('auth.password_reset');
    }


}
