<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBComputerModel extends Model
{
    public static function showComputer(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showComputer", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Computadora");
    }

    public static function name()
    {
        return "Computadoras";
    }
}
