<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBElectrodomesticsModel extends Model
{
    public static function showElectrodomestics(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showElectrodomestics", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Electrodomestico");
    }

    public static function name()
    {
        return "Electrodomesticos";
    }
}
