<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class BrandProduct extends Controller
{
    public function AuthLogin(){
        $admin_id = Session::get('admin_id');
        if($admin_id ){
            return redirect::to('dashboard');
        }else{
            return redirect::to('admin')->send();
        }
    }
    public function add_brand_product(){
        $this->AuthLogin();
        return view('admin.add_brand_product');
    }
    public function all_brand_product(){
        $this->AuthLogin();
        $all_brand_product = DB::table('manufactures')->get();
        $manage_brand_product = view('admin.all_brand_product')->with('all_brand_product', $all_brand_product);
        return view('admin_layout')->with('admin.all_brand_product', $manage_brand_product);
    }
    public function save_brand_product(Request $request){
        $this->AuthLogin();
        $data = array();
        $data['manu_name'] = $request->manu_name;
       DB::table('manufactures')->insert($data);
       Session::put('message', 'thêm thương hiệu thành công');
       return Redirect::to('add-brand-product');
    }
    public function edit_brand_product($id){
        $this->AuthLogin();
        $edit_brand_product = DB::table('manufactures')->where('manu_id', $id)->get();
        $manage_brand_product = view('admin.edit_brand_product')->with('edit_brand_product', $edit_brand_product);
        return view('admin_layout')->with('admin.edit_brand_product', $manage_brand_product);
    }
    public function update_brand_product(Request $request ,$id){
        $this->AuthLogin();
        $data = array();
        $data['manu_name'] = $request->manu_name;
        DB::table('manufactures')->where('manu_id', $id)->update($data);
        Session::put('message', 'Cập nhập danh mục sản phẩm thành công');
        return Redirect::to('all-brand-product');
    }
    public function delete_brand_product($id){
        $this->AuthLogin();
        DB::table('manufactures')->where('manu_id', $id)->delete();
        Session::put('message', 'Xóa danh mục sản phẩm thành công');
        return Redirect::to('all-brand-product');
    }

        //End Function Admin Page
    public function show_brand_home($brand_id)
    {
        $cate_product = DB::table('category')->orderby('cate_id', 'desc')->get();
        $brand_product = DB::table('manufactures')->orderby('manu_id', 'desc')->get();

        $brand_by_id = DB::table('products')->join('manufactures', 'products.manu_id', '=', 'manufactures.manu_id')
            ->where('products.manu_id', '=', $brand_id)->get();
        $brand_name = DB::table('manufactures')->where('manufactures.manu_id', $brand_id)->limit(1)->get();
        return view('brand.show_brand')->with('category', $cate_product)->with('brand', $brand_product)
            ->with('brand_by_id', $brand_by_id)->with('brand_name_product', $brand_name);
    }
}
