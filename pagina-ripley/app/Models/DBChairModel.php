<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBChairModel extends Model
{
    public static function showChair(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showChair", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Silla");
    }

    public static function name()
    {
        return "Sillas";
    }
}
