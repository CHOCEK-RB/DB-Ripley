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
}
