<?php
namespace App\Models;

use Exception;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class DBUserModel extends Model
{
    public static function registerClient(string $nombres, string $apellidos, int $dni, int $telefono, string $email, string $password)
    {
        try {
            DB::statement("CALL registerClient(?, ?, ?, ?, ?, ?)", [$nombres, $apellidos, $dni, $telefono, $email, $password]);
            return true;
        } catch (Exception $e) {
            \Log::error("Error al registrar cliente: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function registerAdministrator(string $nombres, string $apellidos, int $dni, int $telefono, string $email, string $password)
    {
        try {
            DB::statement("CALL registerAdministrator(?, ?, ?, ?, ?, ?)", [$nombres, $apellidos, $dni, $telefono, $email, $password]);
            return true;
        } catch (Exception $e) {
            \Log::error("Error al registrar administrador: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function getInformationUser(int $userId)
    {
        try {
            $query = DB::select("CALL getInformationUser(?)", [$userId]);
            return $query;
        } catch (Exception $e) {
            \Log::error("Error al optener la informacion de usuario: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function getAddresses(int $userId)
    {
        try {
            $query = DB::select("CALL getAddresses(?)", [$userId]);
            return $query;
        } catch (Exception $e) {
            \Log::error("Error al optener la informacion de direccion: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function getPay(int $userId)
    {
        try {
            $query = DB::select("CALL getPay(?)", [$userId]);
            return $query;
        } catch (Exception $e) {
            \Log::error("Error al optener la informacion de pago: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function updateInformationUser(int $userId, string $nombres, string $apellidos, string $genero, string $fechaNacimiento, int $telefono)
    {
        try {
            DB::statement("CALL updateInformationUser(?, ?, ?, ?, ?, ?)", [$userId, $nombres, $apellidos, $genero, $fechaNacimiento, $telefono]);
            return true;
        } catch (Exception $e) {
            \Log::error("Error al actualizar usuario: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function insertPay(int $userId, int $numeroSerie, int $codigo, string $fechaCaducidad, string $nombres, string $apellidos)
    {
        try {
            DB::statement("CALL insertPay(?, ?, ?, ?, ?, ?)", [$userId, $numeroSerie, $codigo, $fechaCaducidad, $nombres, $apellidos]);
            return true;
        } catch (Exception $e) {
            \Log::error("Error al insertar información de pago: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function deletePay(int $userId, int $numeroSerie)
    {
        try {
            DB::statement("CALL deletePay(?, ?)", [$userId, $numeroSerie]);
            return true;
        } catch (Exception $e) {
            \Log::error("Error al eliminar información de pago: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function insertAddress(int $userId, string $pais, string $departamento, string $direccion)
    {
        try {
            DB::statement("CALL insertAddress(?, ?, ?, ?)", [$userId, $pais, $departamento, $direccion]);
            return true;
        } catch (Exception $e) {
            \Log::error("Error al insertar dirección del cliente: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

    public static function deleteAddress(int $userId, string $pais, string $departamento, string $direccion)
    {
        try {
            DB::statement("CALL deleteAddress(?, ?, ?, ?)", [$userId, $pais, $departamento, $direccion]);
            return true;
        } catch (Exception $e) {
            \Log::error("Error al eliminar dirección del cliente: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return false;
        }
    }

}
