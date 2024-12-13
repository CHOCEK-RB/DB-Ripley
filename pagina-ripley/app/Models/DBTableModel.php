<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBTableModel extends Model
{
    public static function showTable(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showTable", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Mesa");
    }

    public static function name()
    {
        return "Mesas";
    }
}
