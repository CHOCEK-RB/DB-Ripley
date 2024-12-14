<?php

use App\Http\Controllers\ProductInformationController;
use App\Http\Controllers\ProductsController;
use Illuminate\Support\Facades\Route;

Route::get('/productos/information{categorie?}{id?}', [ProductInformationController::class, 'informationProducts'])->name('products.information');

Route::get('/{categorie}', [ProductsController::class, 'showProductsPaginated'])->name('products.page');

Route::post('/api/products', [ProductsController::class, 'getProducts']);

Route::post('/api/product/information', [ProductInformationController::class, 'getInformation']);
