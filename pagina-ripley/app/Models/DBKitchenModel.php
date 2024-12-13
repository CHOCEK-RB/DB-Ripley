<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBKitchenModel extends Model
{
    public static function showKitchen(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showKitchen", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Cocina");
    }

    public static function name()
    {
        return "Cocina";
    }
}
