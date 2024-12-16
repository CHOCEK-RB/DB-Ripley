<?php
namespace App\Http\Controllers;

use App\Models\DBUserModel;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public static function showLogin()
    {
        return view('login');
    }

    public static function getLogin(Request $request)
    {
        $credentials = $request->validate([
            'email'    => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return response()->json(['success' => true]);
        }

        return response()->json(['success' => false]);
    }

    public static function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/');
    }

    public static function showRegister()
    {
        return view('register');
    }

    public static function showRegisterPrivate()
    {
        return view('registerPrivate');
    }

    public static function registerClient(Request $request)
    {

        try {
            $credentials = $request->validate([
                'nombres'   => 'required|string|max:60',
                'apellidos' => 'required|string|max:60',
                'dni'       => 'required|numeric|digits:8',
                'telefono'  => 'required|numeric|digits_between:9,15',
                'email'     => 'required|email|unique:users,email',
                'password'  => 'required|string|min:8',
            ]);

            $user = User::create([
                'email'    => $credentials['email'],
                'password' => Hash::make($credentials['password']),
            ]);

            $query = DBUserModel::registerClient($credentials['nombres'], $credentials['apellidos'], $credentials['dni'], $credentials['telefono'], $credentials['email'], $credentials['password']);

            if (! $query) {
                $user->delete();
                return response()->json([
                    'success' => false,
                    'error'   => "Error al registrar al usuario en la base de datos",
                ]);
            }

            return response()->json(['success' => true]);

        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'error'   => $e,
            ]);
        }
    }

    public static function registerAdministrador(Request $request)
    {

        try {
            $credentials = $request->validate([
                'nombres'   => 'required|string|max:60',
                'apellidos' => 'required|string|max:60',
                'dni'       => 'required|numeric|digits:8',
                'telefono'  => 'required|numeric|digits_between:9,15',
                'email'     => 'required|email|unique:users,email',
                'password'  => 'required|string|min:8',
            ]);

            $user = User::create([
                'email'    => $credentials['email'],
                'password' => Hash::make($credentials['password']),
            ]);

            $query = DBUserModel::registerAdministrator($credentials['nombres'], $credentials['apellidos'], $credentials['dni'], $credentials['telefono'], $credentials['email'], $credentials['password']);

            if (! $query) {
                $user->delete();
                return response()->json([
                    'success' => false,
                    'error'   => "Error al registrar al usuario en la base de datos",
                ]);
            }

            return response()->json(['success' => true]);

        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'error'   => $e,
            ]);
        }
    }
}
