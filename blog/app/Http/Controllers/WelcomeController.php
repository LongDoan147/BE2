<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//khai bao model
use App\Product;
use App\Manufacture;

class WelcomeController extends Controller
{
    public function index($controller = "welcome", $name = 'hello')
    {
        $trangchu["trangchu"] = "Đây là trang chủ";
        if ($controller == 'admin' && $name == true) {
            return view($controller, $trangchu);
        }
        return view($controller, $trangchu);
    }
    // public function trangchu()
    // {
    //     return view('trangchu');
    // }
    // public function gioithieu()
    // {
    //     return view('gioithieu');
    // }
    // public function lienhe()
    // {
    //     return view('lienhe');
    // }
    public function demo()
    {
        $contact=['Contact 1','Contact 2', 'Contact 3'];
        return view('partial.contact', compact('contact'));
    }
    public function getAllProduct()
    {
        $products = Product::all();
        return view('welcome', ['products' => $products]);
    }
    public function getAllManufacture()
    {
        $manufactures = manufacture::all();
        return view('welcome', ['manufactures' => $manufactures]);
    }

}
