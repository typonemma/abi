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

Route::prefix('product')->group(function() {
    Route::get('/', 'ProductController@index');
    Route::get('/details', 'ProductController@details');
    Route::get('/ajaxProduct', 'ProductController@ajaxProduct')->name('product.ajaxProduct');
    Route::post('/ajaxProductPromo', 'ProductController@ajaxProductPromo')->name('product.ajaxProductPromo');
    Route::post('/ajaxGetDetail', 'ProductController@ajaxGetDetail')->name('product.ajaxGetDetail');
    Route::get('/detail/{id}','ProductController@details')->name('product.details');
});
