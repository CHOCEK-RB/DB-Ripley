<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductsController extends Controller
{

    private static $categoryModelMap = [
        'accesorios'            => "App\\Models\\DBAccessoriesModel",
        'belleza'               => "App\\Models\\DBBeautyModel",
        'juegos-mesa'           => "App\\Models\\DBBoardModel",
        'silla'                 => "App\\Models\\DBChairModel",
        'ropa'                  => "App\\Models\\DBClothesModel",
        'computadora'           => "App\\Models\\DBComputerModel",
        'juguetes-construccion' => "App\\Models\\DBConstructionModel",
        'sofa'                  => "App\\Models\\DBCouchModel",
        'crema'                 => "App\\Models\\DBCreamModel",
        "muñeco"                => "App\\Models\\DBDollsModel",
        "electrodomestico"      => "App\\Models\\DBElectrodomesticsModel",
        "electronico"           => "App\\Models\\DBElectronicsModel",
        "moda"                  => "App\\Models\\DBFashionModel",
        "calsado"               => "App\\Models\\DBFootwearModel",
        "mueble"                => "App\\Models\\DBFurnitureModel",
        "cocina"                => "App\\Models\\DBKitchenModel",
        "maquillaje"            => "App\\Models\\DBMakeupModel",
        "perfume"               => "App\\Models\\DBPerfumeModel",
        "productos"             => "App\\Models\\DBProductsModel",
        "refrigeradora"         => "App\\Models\\DBRefrigeratorModel",
        "smartphone"            => "App\\Models\\DBSmartphoneModel",
        "mesa"                  => "App\\Models\\DBTableModel",
        "juguete"               => "App\\Models\\DBToysModel",
        "televisor"             => "App\\Models\\DBTVModel",
        "lavadora"              => "App\\Models\\DBWashingModel",
    ];

    private static $modelProcedureMap = [
        "productos"             => 'showProducts',
        'belleza'               => 'showBeauty',
        "electrodomestico"      => 'showElectrodomestics',
        "electronico"           => 'showElectronics',
        "moda"                  => 'showFashion',
        "mueble"                => 'showFurniture',
        "juguete"               => 'showToys',
        'accesorios'            => 'showAccessories',
        'juegos-mesa'           => 'showBoard',
        'silla'                 => 'showChair',
        "ropa"                  => 'showClothes',
        'computadora'           => 'showComputer',
        'juguetes-construccion' => 'showConstruction',
        'sofa'                  => 'showCouch',
        'crema'                 => 'showCream',
        "muñeco"                => 'showDolls',
        "calsado"               => 'showFootwear',
        "cocina"                => 'showKitchen',
        "maquillaje"            => 'showMakeup',
        "perfume"               => 'showPerfume',
        "refrigeradora"         => 'showRefrigerator',
        "smartphone"            => 'showSmartphone',
        "televisor"             => 'showTV',
        "mesa"                  => 'showTable',
        "lavadora"              => 'showWashing',
    ];

    private static function paginateProducts(string $modelClass, string $procedure, int $page, int $perPage = 20)
    {
        if (! class_exists($modelClass)) {
            throw new \InvalidArgumentException("El modelo no existe: $modelClass");
        }

        $offset     = ($page - 1) * $perPage;
        $data       = $modelClass::$procedure($perPage, $offset);
        $total      = $modelClass::count();
        $name       = $modelClass::name();
        $totalPages = ceil($total / $perPage);

        return [
            'data'        => $data,
            'currentPage' => $page,
            'totalPages'  => $totalPages,
            'name'        => $name,
        ];
    }

    public static function showProductsPaginated(Request $request, string $categorie)
    {
        $request->validate([
            'page' => 'required|int|min:1',
        ]);

        if (! isset(self::$categoryModelMap[$categorie])) {
            abort(404, "Categoría no encontrada.");
        }

        return view('productsPage', ['categorie' => $categorie]);

    }
    public static function getProducts(Request $request)
    {
        $request->validate([
            'categorie' => 'required|string',
            'page'      => 'required|int|min:1',
        ]);
        $page       = $request->input('page');
        $categorie  = $request->input('categorie');
        $modelClass = self::$categoryModelMap[$categorie];
        $procedure  = self::$modelProcedureMap[$categorie];

        $paginatedData = self::paginateProducts($modelClass, $procedure, $page);

        return response()->json($paginatedData);
    }
}
