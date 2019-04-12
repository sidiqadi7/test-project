<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/login', 'Api\Auth\AuthController@login');
Route::post('/register', 'Api\Auth\AuthController@register');

Route::middleware('auth:api')->group(function(){
	Route::get('/jobs', 'Api\JobController@index');
	Route::post('/jobs', 'Api\JobController@store');
	Route::put('/jobs/{id}', 'Api\JobController@update');
	Route::delete('/jobs/{id}', 'Api\JobController@destroy');
});

// Route::middleware('auth:api')->get('/jobs', 'Api\JobController@index');
// Route::middleware('auth:api')->post('/jobs', 'Api\JobController@store');
// Route::middleware('auth:api')->put('/jobs/{id}', 'Api\JobController@update');
// Route::middleware('auth:api')->delete('/jobs/{id}', 'Api\JobController@destroy');

Route::middleware('auth:api')->post('/logout', 'Api\Auth\AuthController@logout');

