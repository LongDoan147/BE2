<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class CheckoutController extends Controller
{
    public function login_checkout(){
        $cate_product = DB::table('category')->orderby('cate_id', 'desc')->get();
        $brand_product = DB::table('manufactures')->orderby('manu_id', 'desc')->get();
        return view('checkout.login_checkout')->with('category', $cate_product)->with('brand', $brand_product);
    }
}
