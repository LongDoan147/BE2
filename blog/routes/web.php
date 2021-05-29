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
//Front-End: 
Route::get('/',"HomeController@index" );
Route::get('/trang-chu',"HomeController@index" );

//Danh-mục-sản-phẩm:
Route::get('/danh-muc-san-pham/{cate_id}',"CategoryProduct@show_category_home" );

//Thương-Hiệu-Sản-Phẩm
Route::get('/thuong-hieu-san-pham/{manu_id}',"BrandProduct@show_brand_home" );

//Chi-Tiết-SP:
Route::get('/chi-tiet-san-pham/{id}',"ProductController@details_product" );


//Back-End:
Route::get('/admin',"AdminController@index" );
Route::get('/manage',"AdminController@manage");
Route::get('/logout',"AdminController@log_out" );
Route::post('/admin_dashboard',"AdminController@dashboard" );


//Category-Product:
Route::get('/add-category-product',"CategoryProduct@add_category_product" );
Route::get('/edit-category-product/{cate_id}',"CategoryProduct@edit_category_product" );
Route::get('/delete-category-product/{cate_id}',"CategoryProduct@delete_category_product" );
Route::get('/all-category-product',"CategoryProduct@all_category_product" );

Route::post('/save-category-product',"CategoryProduct@save_category_product" );
Route::post('/update-category-product/{cate_id}',"CategoryProduct@update_category_product" );

//Brand-Product:
Route::get('/add-brand-product',"BrandProduct@add_brand_product" );
Route::get('/edit-brand-product/{manu_id}',"BrandProduct@edit_brand_product" );
Route::get('/delete-brand-product/{manu_id}',"BrandProduct@delete_brand_product" );
Route::get('/all-brand-product',"BrandProduct@all_brand_product" );

Route::post('/save-brand-product',"BrandProduct@save_brand_product" );
Route::post('/update-brand-product/{manu_id}',"BrandProduct@update_brand_product" );

//Product:
Route::get('/add-product',"ProductController@add_product" );
Route::get('/edit-product/{id}',"ProductController@edit_product" );
Route::get('/delete-product/{id}',"ProductController@delete_product" );
Route::get('/all-product',"ProductController@all_product" );

Route::post('/save-product',"ProductController@save_product" );
Route::post('/update-product/{id}',"ProductController@update_product" );

//cart
Route::post('/save-cart',"cartController@save_cart");
Route::post('/update-cart-quantity',"cartController@update_cart_quantity");
Route::get('/show-cart',"cartController@show_cart");
Route::get('/delete-to-cart/{rowId}',"cartController@delete_to_cart");

//checkout:
Route::get('//login-checkout',"CheckoutController@login_checkout");






