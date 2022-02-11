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

Route::prefix('general')->group(function() {
    Route::get('/', 'GeneralController@home');
    Route::get('/home', 'GeneralController@home');
    Route::get('/aboutus', 'GeneralController@aboutus');
    Route::get('/products', 'GeneralController@products');
    Route::get('/blogs', 'GeneralController@blogs');
    Route::get('/contact', 'GeneralController@contact');    
    Route::get('/shipment', 'GeneralController@shipment');
});