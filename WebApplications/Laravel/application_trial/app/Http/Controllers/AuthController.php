<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function register(Request  $request) {
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
        $user->password = $request->password;
        $user->save();

        // Token
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
