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

    // Forgot password
    Route::get('/forgot-password-1', 'AuthController@forgotPassword1');
    Route::get('resendOTP', 'AuthController@sendOTP');
    Route::get('/forgot-password-2', 'AuthController@forgotPassword2');
    Route::post('verifyPassword', 'AuthController@verifyPassword');

    // Facebook login
    Route::get('/facebook', 'AuthController@redirectToFacebook');
    Route::get('/facebook/callback', 'AuthController@handleFacebookCallback');

    // Register
    Route::get('/register', 'AuthController@register');
    Route::post('doRegister', 'AuthController@doRegister');

    // Profile addresses
    Route::get('/profile-addresses', 'AuthController@profile_addresses');
    Route::post('/saveAddressChanges', 'AuthController@saveAddressChanges');

    // Profile detail
    Route::get('/profile-detail', 'AuthController@profile_detail');
    Route::post('/saveAccountChanges', 'AuthController@saveAccountChanges');

    // Profile history
    Route::get('/profile-history', 'AuthController@profile_history');

    // Profile your order
    Route::get('/profile-yourorder', 'AuthController@profile_yourorder');

    // Logout
    Route::get('/logout', 'AuthController@logout');
});
