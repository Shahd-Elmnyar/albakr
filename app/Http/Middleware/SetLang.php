<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class SetLang
{
    /**
     * Handle an incoming request.
     *
     * @param \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response) $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $availableLocales = config('app.available_locales', []);

        if (Auth::check()) {
            $userLang = Auth::user()->lang;

            if (in_array($userLang, $availableLocales)) {
                App::setLocale($userLang);
            } else {
                abort(400, 'User language not available');
            }
        } else {
            $userLang = $request->header('Accept-Language');

            if (isset($userLang) ) {
                App::setLocale($userLang);
            } else {
                App::setLocale('ar');
            }
        }

        return $next($request);
    }
}
