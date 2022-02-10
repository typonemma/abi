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

Route::prefix('auth')->group(function() {
    // Login
    Route::get('/login', 'AuthController@login');
    Route::post('doLogin', 'AuthController@doLogin');

    // Register
    Route::get('/register', 'AuthController@register');
    Route::post('doRegister', 'AuthController@doRegister');

    // Profile addresses
    Route::get('/profile-addresses', 'AuthController@profile_addresses');
    Route::post('/saveAddressChanges', 'AuthController@saveAddressChanges');

    // Profile detail
    Route::get('/profile-detail', 'AuthController@profile_detail');
    Route::post('/saveAccountChanges', 'AuthController@saveAccountChanges');

    Route::get('/profile-history', 'AuthController@profile_history');
    Route::get('/profile-yourorder', 'AuthController@profile_yourorder');

    // Logout
    Route::get('/logout', 'AuthController@logout');
});
