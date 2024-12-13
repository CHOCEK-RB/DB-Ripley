<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBCouchModel extends Model
{
    public static function showCouch(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showCouch", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Sofa");
    }

    public static function name()
    {
        return "Sofas";
    }
}
