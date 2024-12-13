<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBConstructionModel extends Model
{
    public static function showConstruction(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showConstruction", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Construccion");
    }

    public static function name()
    {
        return "Juguetes de Construccion";
    }
}
