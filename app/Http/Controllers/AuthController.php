<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login()
    {
        return view('login', ['title' => 'Login | SiBeta']);
    }

    public function loginPost(Request $request)
    {
        $data = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (Auth::attempt($data)) {
            return redirect('/news')->with('success', 'Login Berhasil');
        }else{
            return back()->with('error', 'Email atau Password salah');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }
}
    