<?php

use App\Http\Controllers\ProductsController;
use Illuminate\Support\Facades\Route;

Route::get('/products', [ProductsController::class, 'showProductsPaginated'])->name('products.page');

Route::post('/api/products', [ProductsController::class, 'getProducts']);
