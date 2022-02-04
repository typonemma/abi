<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('cart')->group(function() {
    Route::get('/', 'CartController@index');
    Route::get('/checkout', 'CartController@checkout');
    Route::get('/thankyou', 'CartController@thankyou');
});
