<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBRefrigeratorModel extends Model
{
    public static function showRefrigerator(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showRefrigerator", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Refrigeradora");
    }

    public static function name()
    {
        return "Refrigeradoras";
    }
}
