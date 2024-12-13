<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBWashingModel extends Model
{
    public static function showWashing(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showWashing", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Lavadora");
    }

    public static function name()
    {
        return "Lavadoras";
    }
}
