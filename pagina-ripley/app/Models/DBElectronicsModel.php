<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBElectronicsModel extends Model
{
    public static function showElectronics(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showElectronics", $limit, $offset);
    }
}
