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
    Route::get('/blog_detail', 'GeneralController@blog_detail');
    Route::get('/product_detail', 'GeneralController@product_detail');
    
    Route::get('/email_template', 'GeneralController@email_template');
    Route::post('/send-email', 'GeneralController@sendEmail')->name('send.email');
});
