<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $this->validate($request, [
            'name' =>'required',
            'email' =>'required|email|unique:users,email',
            'password' => 'required|min:6'
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        return response()->json([
            'message' => 'User successfully registered'
        ]);
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'email' =>'required|email',
            'password' => 'required|min:6'
        ]);

        $credentials = $request->only('email', 'password');
        if(!auth()->attempt($credentials)) {
            return response()->json(['message' => 'Email or password is invalid'], 422);
        }

        $user  = User::select('id','name','email')->where('email', $request->email)->first();
        $authToken = $user->createToken('auth-token');

        return response()->json([
            'user' => $user,
            'access_token' => $authToken->plainTextToken
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        return response()->json(['message' => 'Successfully logged out']);
    }
}
