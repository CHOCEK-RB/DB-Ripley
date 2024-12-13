<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBMakeupModel extends Model
{
    public static function showMakeup(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showMakeup", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Maquillaje");
    }

    public static function name()
    {
        return "Maquillaje";
    }
}
