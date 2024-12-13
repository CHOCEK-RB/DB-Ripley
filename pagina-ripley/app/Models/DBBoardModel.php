<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBBoardModel extends Model
{
    public static function showBoard(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showBoard", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Juegos_mesa");
    }

    public static function name()
    {
        return "Juegos de Mesa";
    }
}
