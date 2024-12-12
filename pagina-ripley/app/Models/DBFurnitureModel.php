<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBFurnitureModel extends Model
{
    public static function showFurniture(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showFurniture", $limit, $offset);
    }
}
