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

Route::post('/teams/create', 'TeamsController@store');
Route::get('/teams/edit/{id}', 'TeamsController@edit');
Route::get('/teams/players/{id}', 'TeamsController@players');
Route::post('/teams/update/{id}', 'TeamsController@update');
Route::delete('/teams/delete/{id}', 'TeamsController@delete');
Route::get('/teams/matches', 'TeamsController@matches');
Route::get('/teams/points', 'TeamsController@points');
Route::get('/teams', 'TeamsController@index');
