<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBBeautyModel extends Model
{
    public static function showBeauty(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showBeauty", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Belleza_Cuidado");
    }
}
