<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class DBProductsModel extends Model
{
    private static $validProcedures = ['showProducts', 'showBeauty', 'showElectrodomestics', 'showElectronics', 'showFashion', 'showFurniture', 'showToys', 'showAccessories', 'showBoard', 'showChair', 'showClothes', 'showComputer', 'showConstruction', 'showCouch', 'showCream', 'showDolls', 'showFootwear', 'showKitchen', 'showMakeup', 'showPerfume', 'showRefrigerator', 'showSmartphone', 'showTV', 'showTable', 'showWashing'];
    private static $validTables     = ['Producto', 'Belleza_Cuidado', 'Electrodomestico', 'Electronica', 'Moda', 'Mueble', 'Juguetes', 'Accesorios', 'Calsado', 'Cocina', 'Computadora', 'Construccion', 'Crema', 'Juegos_mesa', 'Lavadora', 'Maquillaje', 'Mesa', 'Muñecos', 'Perfume', 'Refrigeradora', 'Ropa', 'Silla', 'Smartphone', 'Sofa', 'Televisor'];

    public static function showProcedures(string $procedure, int $limit, int $offset)
    {
        if (! in_array($procedure, self::$validProcedures)) {
            throw new \InvalidArgumentException("Procedimiento no válido: $procedure");
        }

        try {
            return DB::select("CALL $procedure(?, ?)", [$limit, $offset]);
        } catch (\Exception $e) {
            \Log::error("Error al ejecutar el procedimiento $procedure: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return null;
        }
    }

    public static function countProducts(string $tableProducts)
    {
        if (! in_array($tableProducts, self::$validTables)) {
            throw new \InvalidArgumentException("Tabla no válida: $tableProducts");
        }

        try {
            return DB::table($tableProducts)->count();
        } catch (\Exception $e) {
            \Log::error("Error al obtener la cantidad de datos de la tabla $tableProducts: " . $e->getMessage(), ['stack' => $e->getTraceAsString()]);
            return null;
        }
    }

    public static function showProducts(int $limit, int $offset)
    {
        return self::showProcedures("showProducts", $limit, $offset);
    }

    public static function count()
    {
        return self::countProducts("Producto");
    }

    public static function name()
    {
        return "Productos";
    }
}
