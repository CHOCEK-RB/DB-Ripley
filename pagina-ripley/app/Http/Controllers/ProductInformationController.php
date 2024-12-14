<?php
namespace App\Http\Controllers;

use App\Models\DBProductsModel;
use Illuminate\Http\Request;

class ProductInformationController extends Controller
{
    private static $categoryProcedureMap = [
        'accesorios'            => 'informationAccessories',
        'juegos-mesa'           => 'InformationBoard',
        'silla'                 => 'informationChair',
        'ropa'                  => 'informationClothes',
        'computadora'           => 'informationComputer',
        'juguetes-construccion' => 'informationConstruction',
        'sofa'                  => 'informationCouch',
        'crema'                 => 'informationCream',
        "muñeco"                => 'informationDolls',
        "calsado"               => 'informationFootwear',
        "cocina"                => 'informationKitchen',
        "maquillaje"            => 'informationMakeup',
        "perfume"               => 'informationPerfume',
        "refrigeradora"         => 'informationRefrigerator',
        "smartphone"            => 'informationSmartphone',
        "mesa"                  => 'informationTable',
        "televisor"             => 'informationTV',
        "lavadora"              => 'informationWashing',
    ];

    public static function getInformation(Request $request)
    {
        $request->validate([
            'id'        => 'required|int',
            'categorie' => 'required|string',
        ]);

        $id        = $request->input('id');
        $categorie = $request->input('categorie');

        $procedure = self::$categoryProcedureMap[$categorie];

        $information = DBProductsModel::informationProcedures($procedure, $id);

        $data = [
            'information' => $information,
        ];
        return response()->json($data);
    }

    public static function informationProducts(Request $request)
    {

        $request->validate([
            'id'        => 'required|int',
            'categorie' => 'required|string',
        ]);

        $categorie = $request->input('categorie');

        if (! isset(self::$categoryProcedureMap[$categorie])) {
            abort(404, "Categoría no encontrada.");
        }
        return view("productInformation");
    }
}
