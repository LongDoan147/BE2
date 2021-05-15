<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
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

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/contact', 'WelcomeController@demo');
// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/admin')->middleware('checkage');
Route::get('/trangchu', function () {
    return view('trangchu');
});
// Route::get('/gioithieu', function () {
//     return view('gioithieu');
// });
// Route::get('/lienhe', function () {
//     return view('lienhe');
// });
//Route::get('/', 'WelcomeController@index');
Route::get('/{controller?}/{id?}', 'WelcomeController@index');
//Route::get('/gioithieu', 'WelcomeController@gioithieu');
//Route::get('/lienhe', 'WelcomeController@lienhe');
//Route::get('product','WelcomeController@getAllProduct');
//Route::get('manufacture','WelcomeController@getAllManufacture');




