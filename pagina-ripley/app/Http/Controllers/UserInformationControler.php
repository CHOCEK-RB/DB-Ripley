<?php
namespace App\Http\Controllers;

use App\Models\DBUserModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserInformationControler extends Controller
{
    public static function showUser()
    {
        return view("userInformation");
    }

    public static function showUpdateUser()
    {
        return view("userUpdateUser");
    }

    public static function showInsertAddress()
    {
        return view("userInsertAddress");
    }

    public static function showInsertPayment()
    {
        return view("userInsertPayment");
    }

    public static function userInformation(Request $request)
    {
        $userId      = Auth::id();
        $information = DBUserModel::getInformationUser($userId);
        $address     = DBUserModel::getAddresses($userId);
        $pay         = DBUserModel::getPay($userId);

        $data = [
            'information' => $information,
            'address'     => $address,
            'pay'         => $pay,
        ];
        return response()->json($data);
    }

    public static function userMinInformation(Request $request)
    {
        $userId      = Auth::id();
        $information = DBUserModel::getInformationUser($userId);

        $data = [
            'information' => $information,
        ];
        return response()->json($data);
    }

    public static function updateInformation(Request $request)
    {
        $data = $request->validate([
            'nombres'    => 'required|string',
            'apellidos'  => 'required|string',
            'genero'     => 'required|string|max:1',
            'nacimiento' => 'required|string',
            'telefono'   => 'required|int',
        ]);

        $userId = Auth::id();

        $query = DBUserModel::updateInformationUser($userId, $data['nombres'], $data['apellidos'], $data['genero'], $data['nacimiento'], $data['telefono']);

        if (! $query) {
            return response()->json([
                'success' => false,
                'error'   => "Error al actualizar datos del usuario",
            ]);
        }

        return response()->json([
            'success' => true,
        ]);
    }

    public static function insertPayment(Request $request)
    {
        $data = $request->validate([
            'numero_serie'    => 'required|int',
            'codigo'          => 'required|int',
            'fecha_caducidad' => 'required|date',
            'nombres'         => 'required|string|max:60',
            'apellidos'       => 'required|string|max:60',
        ]);

        $userId = Auth::id();

        $query = DBUserModel::insertPay($userId, $data['numero_serie'], $data['codigo'], $data['fecha_caducidad'], $data['nombres'], $data['apellidos']);

        if (! $query) {
            return response()->json([
                'success' => false,
                'error'   => "Error al insertar información de pago",
            ]);
        }

        return response()->json([
            'success' => true,
        ]);
    }

    public static function deletePayment(Request $request)
    {
        $data = $request->validate([
            'numero_serie' => 'required|int',
        ]);

        $userId = Auth::id();

        $query = DBUserModel::deletePay($userId, $data['numero_serie']);

        if (! $query) {
            return response()->json([
                'success' => false,
                'error'   => "Error al eliminar información de pago",
            ]);
        }

        return response()->json([
            'success' => true,
        ]);
    }

    public static function insertAddress(Request $request)
    {
        $data = $request->validate([
            'pais'         => 'required|string|max:20',
            'departamento' => 'required|string|max:20',
            'direccion'    => 'required|string|max:100',
        ]);

        $userId = Auth::id();

        $query = DBUserModel::insertAddress($userId, $data['pais'], $data['departamento'], $data['direccion']);

        if (! $query) {
            return response()->json([
                'success' => false,
                'error'   => "Error al insertar dirección del cliente",
            ]);
        }

        return response()->json([
            'success' => true,
        ]);
    }

    public static function deleteAddress(Request $request)
    {
        $data = $request->validate([
            'pais'         => 'required|string|max:20',
            'departamento' => 'required|string|max:20',
            'direccion'    => 'required|string|max:100',
        ]);

        $userId = Auth::id();

        $query = DBUserModel::deleteAddress($userId, $data['pais'], $data['departamento'], $data['direccion']);

        if (! $query) {
            return response()->json([
                'success' => false,
                'error'   => "Error al eliminar dirección del cliente",
            ]);
        }

        return response()->json([
            'success' => true,
        ]);
    }

}
