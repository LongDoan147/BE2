<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class AdminController extends Controller
{
    public function AuthLogin(){
        $admin_id = Session::get('admin_id');
        if($admin_id ){
            return redirect::to('dashboard');
        }else{
            return redirect::to('admin')->send();
        }
    }
    public function index()
    {
        return view('admin_login');
    }
    public function manage()
    {
        $this->AuthLogin();
        return view('admin.manage');
    }
    public function dashboard(Request $request)
    {
        $admin_email = $request->admin_email;
        $admin_password = md5($request->admin_password);
        $result = DB::table('tbl_admin')->where('admin_email', $admin_email)->where('admin_password', $admin_password)->first();
        if ($result) {
            Session::put('admin_name', $result->admin_name);
            Session::put('admin_id', $result->admin_id);
            return Redirect::to('/manage');
        } else {
            Session::put('message', 'Tài Khoản hoặt mật Khẩu bị sai. Yêu cầu nhập lại');
            return Redirect::to('/admin');
        }
    }
    public function log_out()
    {
        $this->AuthLogin();
        Session::put('admin_name',null);
        Session::put('admin_id',null);
        return Redirect::to('/admin');
    }
    
}