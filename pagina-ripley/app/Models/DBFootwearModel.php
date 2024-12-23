<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBFootwearModel extends Model
{
    public static function showFootwear(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showFootwear", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Calsado");
    }

    public static function name()
    {
        return "Calsado";
    }
}
