<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class CategoryProduct extends Controller
{
    public function AuthLogin()
    {
        $admin_id = Session::get('admin_id');
        if ($admin_id) {
            return redirect::to('dashboard');
        } else {
            return redirect::to('admin')->send();
        }
    }
    public function add_category_product()
    {
        $this->AuthLogin();
        return view('admin.add_category_product');
    }
    public function all_category_product()
    {
        $this->AuthLogin();
        $all_category_product = DB::table('category')->get();
        $manage_category_product = view('admin.all_category_product')->with('all_category_product', $all_category_product);
        return view('admin_layout')->with('admin.all_category_product', $manage_category_product);
    }
    public function save_category_product(Request $request)
    {
        $this->AuthLogin();
        $data = array();
        $data['cate_name'] = $request->cate_name;
        $data['cate_id'] = $request->cate_id;
        DB::table('category')->insert($data);
        Session::put('message', 'thêm thương hiệu thành công');
        return Redirect::to('add-category-product');
    }
    public function edit_category_product($id)
    {
        $this->AuthLogin();
        $edit_category_product = DB::table('category')->where('cate_id', $id)->get();
        $manage_category_product = view('admin.edit_category_product')->with('edit_category_product', $edit_category_product);
        return view('admin_layout')->with('admin.edit_category_product', $manage_category_product);
    }
    public function update_category_product(Request $request, $id)
    {
        $this->AuthLogin();
        $data = array();
        $data['cate_name'] = $request->cate_name;
        DB::table('category')->where('cate_id', $id)->update($data);
        Session::put('message', 'Cập nhập danh mục sản phẩm thành công');
        return Redirect::to('all-category-product');
    }
    public function delete_category_product($id)
    {
        $this->AuthLogin();
        DB::table('category')->where('cate_id', $id)->delete();
        Session::put('message', 'Xóa danh mục sản phẩm thành công');
        return Redirect::to('all-category-product');
    }

    //End Function Admin Page

    public function show_category_home($category_id)
    {
        $cate_product = DB::table('category')->orderby('cate_id', 'desc')->get();
        $brand_product = DB::table('manufactures')->orderby('manu_id', 'desc')->get();

        $category_by_id = DB::table('products')->join('category', 'products.cate_id', '=', 'category.cate_id')
            ->where('products.cate_id', '=', $category_id)->get();
        $category_name = DB::table('category')->where('category.cate_id', $category_id)->limit(1)->get();
        return view('category.show_category')->with('category', $cate_product)->with('brand', $brand_product)
            ->with('category_by_id', $category_by_id)->with('category_name', $category_name);
    }
 
}
