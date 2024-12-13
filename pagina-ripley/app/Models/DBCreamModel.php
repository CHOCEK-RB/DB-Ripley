<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBCreamModel extends Model
{
    public static function showCream(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showCream", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Crema");
    }

    public static function name()
    {
        return "Cremas";
    }
}
