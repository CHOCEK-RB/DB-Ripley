<?php
namespace App\Http\Controllers;

use App\Models\DBProductsModel;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    private static function paginateProducts(int $page, int $perPage = 20)
    {
        $offset     = ($page - 1) * $perPage;
        $data       = DBProductsModel::showProducts($perPage, $offset);
        $total      = DBProductsModel::count();
        $totalPages = ceil($total / $perPage);

        return [
            'data'        => $data,
            'currentPage' => $page,
            'totalPages'  => $totalPages,
        ];
    }

    public static function showProductsPaginated(Request $request)
    {
        $request->validate([
            'page' => 'required|int|min:1',
        ]);

        $page = $request->input('page');

        return view('productsPage');

    }
    public static function getProducts(Request $request)
    {
        $request->validate([
            'page' => 'required|int|min:1',
        ]);

        $page          = $request->input('page');
        $paginatedData = self::paginateProducts($page);

        return response()->json($paginatedData);
    }
}
