<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Log;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Hash;
use App\Notifications\EmailVerificationNotification;

class AuthController extends MainController
{

    protected $email_rules = [
        'email' => 'required|email',
    ];

    protected $login_rules;
    protected $register_rules;

    public function __construct()
    {
        $this->login_rules = array_merge($this->email_rules, [
            'password' => [
                'required', 'string', 'min:8', 'regex:/[a-z]/',
                'regex:/[A-Z]/', 'regex:/\d/', 'regex:/[@$!%*#?&]/'
            ]
        ]);

        $this->register_rules = array_merge($this->login_rules, [
            'first_name'=> 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'phone'     => 'required|max:50|regex:/^01[0-2,5][0-9]{8}/',
            'password'  => [
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

    public function sendEmail(Request $request)
    {
        try {
            $validateRequest = $this->validateRequest($request, $this->email_rules);
            if (isset($validateRequest)) {
                return $validateRequest;
            }
            if (User::where('email', $request->email)->exists()) {
                return $this->errorResponse('auth.email_exists', Response::HTTP_CONFLICT);
            }
            $user = User::create($request->only('email'));
            $user->notify(new EmailVerificationNotification());
            return $this->successResponse('auth.email_sent');
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            return $this->errorResponse('auth.email_failed', Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function register (Request $request){
        $validateRequest = $this->validateRequest($request, $this->register_rules);
        if (isset($validateRequest)) {
            return $validateRequest;
        }
        $user = User::where('email', $request->email)->first();
        if (!$user) {
            return $this->errorResponse('auth.user_not_found', Response::HTTP_NOT_FOUND);
        }
        if (!isset($user->email_verified_at)) {
            return $this->errorResponse('auth.email_not_verified', Response::HTTP_UNAUTHORIZED);
        }
        $name = $request->first_name . ' ' . $request->last_name;
        $user->name = $name;
        $user->update(array_merge($request->all(), ['name' => $name]));
        $token = $user->createToken('auth-token')->plainTextToken;
        $userData = new UserResource($user);

        return $this->resourceResponse($userData, 'auth.register_success', $token);
    }


    public function login (Request $request){
        $validateRequest = $this->validateRequest($request, $this->login_rules);
        if (isset($validateRequest)) {
            return $validateRequest;
        }
        $user = User::where('email', $request->email)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            return $this->errorResponse('auth.invalid_credentials', Response::HTTP_UNAUTHORIZED);
        }
        if (!isset($user->email_verified_at)) {
            return $this->errorResponse('auth.email_not_verified', Response::HTTP_UNAUTHORIZED);
        }
        $token = $user->createToken('auth-token')->plainTextToken;
        $userData = new UserResource($user);
        return $this->resourceResponse($userData,'auth.login_success',$token);
    }
}
