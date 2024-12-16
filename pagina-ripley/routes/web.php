<?php

use App\Http\Controllers\LoginController;
use App\Http\Controllers\ProductInformationController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\UserInformationControler;
use App\Http\Middleware\CheckLogged;
use App\Http\Middleware\CheckUser;
use Illuminate\Support\Facades\Route;

Route::get('/', [ProductsController::class, 'home'])->name('home');

Route::get('/login', [LoginController::class, 'showLogin'])->name('login.page')->middleware(CheckLogged::class);

Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

Route::get('/register', [LoginController::class, 'showRegister'])->name('register.page')->middleware(CheckLogged::class);

Route::get('/user', [UserInformationControler::class, 'showUser'])->name('user.page')->middleware(CheckUser::class);

Route::get('/user/update/information', [UserInformationControler::class, 'showUpdateUser'])->name('user.page')->middleware(CheckUser::class);

Route::get('/user/insert/address', [UserInformationControler::class, 'showInsertAddress'])->name('user.page')->middleware(CheckUser::class);

Route::get('/user/insert/payment', [UserInformationControler::class, 'showInsertPayment'])->name('user.page')->middleware(CheckUser::class);

Route::get('/private/register', [LoginController::class, 'showRegisterPrivate'])->name('register.private.page')->middleware(CheckLogged::class);

Route::get('/productos/information{categorie?}{id?}', [ProductInformationController::class, 'informationProducts'])->name('products.information');

Route::get('/{categorie}', [ProductsController::class, 'showProductsPaginated'])->name('products.page');

Route::post('/api/products', [ProductsController::class, 'getProducts']);

Route::post('/api/product/information', [ProductInformationController::class, 'getInformation']);

Route::post('/api/login', [LoginController::class, 'getLogin']);

Route::post('/api/register/client', [LoginController::class, 'registerClient']);

Route::post('/api/register/administrator', [LoginController::class, 'registerAdministrador']);

Route::post('/api/user/information', [UserInformationControler::class, 'userInformation']);

Route::post('/api/user/mininformation', [UserInformationControler::class, 'userMinInformation']);

Route::post('/api/update/user', [UserInformationControler::class, 'updateInformation']);

Route::post('/api/insert/address', [UserInformationControler::class, 'insertAddress']);

Route::post('/api/insert/paymend', [UserInformationControler::class, 'insertPayment']);

Route::post('/api/delete/address', [UserInformationControler::class, 'deleteAddress']);

Route::post('/api/delete/paymend', [UserInformationControler::class, 'deletePayment']);
