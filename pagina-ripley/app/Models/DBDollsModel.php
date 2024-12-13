<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBDollsModel extends Model
{
    public static function showDolls(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showDolls", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Muñecos");
    }

    public static function name()
    {
        return "Muñecos y Muñecas";
    }
}
