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

use App\Http\Controllers\Api\OrdersController;

Route::prefix('cart-slice')->group(function() {
    Route::get('/', 'CartController@index');
    Route::get('/checkout', 'CartController@checkout');
    Route::get('/thankyou', 'CartController@thankyou');
    Route::post('/calculateShipping', 'CartController@calculateShipping');
    Route::get('/getShippingCost/{cost}', 'CartController@getShippingCost');
    Route::post('/insert', 'CartController@insert');
    Route::get('/update/{id}', 'CartController@update');
    Route::get('/delete/{id}', 'CartController@delete');
    Route::post('/placeOrder', [OrdersController::class, 'store']);
});
