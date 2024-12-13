<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBAccessoriesModel extends Model
{
    public static function showAccessories(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showAccessories", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Accesorios");
    }

    public static function name()
    {
        return "Accesorios";
    }
}
