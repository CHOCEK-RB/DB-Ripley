<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBBeautyModel extends Model
{
    public static function showshowBeauty(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showBeauty", $limit, $offset);
    }
}
