<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function authFailed() {
        return response('unauthenticated', 401);
    }

    public function register(Request $request) {
        $validatedData = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|email:rfc|string|max:255|unique:users',
            'password' => 'required|string|max:255|confirmed',
        ]);
        $user = new User();
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        return $this->getResponse($user);
    }

    public function login(Request $request) {
        $validatedData = $request->validate([
            'email' => 'required|email:rfc|string|max:255',
            'password' => 'required|string|max:255',
        ]);

        $credentials = \request(['email', 'password']);

        if (Auth::attempt($credentials)) {
            $user = $request->user();
            return $this->getResponse($user);
        } else {
            return response(["error" => "error"], 400);
        }
    }

    public function logout(Request $request) {
        $request->user()->token()->revoke();
        return response('Successfully logged out');
    }

    public function user(Request $request) {
        return $request->user();
    }

    private function getResponse(User $user) {
        $token = $user->createToken('Personal Access Token');
        $token->token->expires_at = Carbon::now()->addWeek(1);
        $token->token->save();

        return response([
            'accessToken' => $token->accessToken,
            'tokenType' => 'Bearer',
            'expiresAt' => Carbon::parse($token->token->expires_at)->toDateTimeString()
        ], 200);
    }
}
