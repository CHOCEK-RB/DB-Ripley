<?php
namespace App\Models;

use App\Models\DBProductsModel;
use Illuminate\Database\Eloquent\Model;

class DBPerfumeModel extends Model
{
    public static function showPerfume(int $limit, int $offset)
    {
        return DBProductsModel::showProcedures("showPerfume", $limit, $offset);
    }

    public static function count()
    {
        return DBProductsModel::countProducts("Perfume");
    }

    public static function name()
    {
        return "Perfumes";
    }
}
