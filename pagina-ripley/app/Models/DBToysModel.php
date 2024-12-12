<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBToysModel extends Model
{
    public static function showToys(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showToys", $limit, $offset);
    }
}
