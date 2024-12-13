<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBClothesModel extends Model
{
    public static function showClothes(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showClothes", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Ropa");
    }

    public static function name()
    {
        return "Ropa";
    }
}
