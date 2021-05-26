<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $cate_product = DB::table('category')->orderby('cate_id', 'desc')->get();
        $brand_product = DB::table('manufactures')->orderby('manu_id', 'desc')->get();

        // $all_product = DB::table('products')
        // ->join('category', 'category.cate_id', '=', 'products.cate_id')
        // ->join('manufactures', 'manufactures.manu_id', '=', 'products.manu_id')
        // ->orderby('products.id', 'desc')->get();

        $all_product = DB::table('products')->where('hot', '1')->orderby('id', 'desc')->limit(4)->get();

        return view('partial.contact')->with('category', $cate_product)->with('brand', $brand_product)->with('all_product', $all_product);
    }
}
