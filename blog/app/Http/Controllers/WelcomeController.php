<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index($controller = "welcome",$name = 'hello')
    {
        $trangchu["trangchu"] = "Đây là trang chủ";
        if($controller=='admin'&& $name==true){
            return view($controller,$trangchu);
        }
        return view($controller,$trangchu);
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
}
