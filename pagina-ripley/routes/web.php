<?php

use App\Http\Controllers\LoginController;
use App\Http\Controllers\ProductInformationController;
use App\Http\Controllers\ProductsController;
use App\Http\Middleware\CheckLogged;
use Illuminate\Support\Facades\Route;

Route::get('/', [ProductsController::class, 'home'])->name('home');

Route::get('/login', [LoginController::class, 'showLogin'])->name('login.page')->middleware(CheckLogged::class);

Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

Route::get('/register', [LoginController::class, 'showRegister'])->name('register.page')->middleware(CheckLogged::class);

Route::get('/productos/information{categorie?}{id?}', [ProductInformationController::class, 'informationProducts'])->name('products.information');

Route::get('/{categorie}', [ProductsController::class, 'showProductsPaginated'])->name('products.page');

Route::post('/api/products', [ProductsController::class, 'getProducts']);

Route::post('/api/product/information', [ProductInformationController::class, 'getInformation']);

Route::post('/api/login', [LoginController::class, 'getLogin']);

Route::post('/api/register/client', [LoginController::class, 'registerClient']);
