<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBTVModel extends Model
{
    public static function showTV(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showTV", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Televisor");
    }

    public static function name()
    {
        return "Televisores";
    }
}
