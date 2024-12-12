<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBFashionModel extends Model
{
    public static function showFashion(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showFashion", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Moda");
    }
}
