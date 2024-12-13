<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBSmartphoneModel extends Model
{
    public static function showSmartphone(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showSmartphone", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Smartphone");
    }

    public static function name()
    {
        return "Smartphones";
    }
}
