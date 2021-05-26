<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class ProductController extends Controller
{
    public function AuthLogin(){
        $admin_id = Session::get('admin_id');
        if($admin_id ){
            return redirect::to('dashboard');
        }else{
            return redirect::to('admin')->send();
        }
    }
    public function add_product()
    {
        $this->AuthLogin();
        $cate_product = DB::table('category')->orderby('cate_id', 'desc')->get();
        $brand_product = DB::table('manufactures')->orderby('manu_id', 'desc')->get();
        return view('admin.add_product')->with('cate_name', $cate_product)->with('manu_name', $brand_product);
    }
    public function all_product()
    {
        $this->AuthLogin();
        $all_product = DB::table('products')
        ->join('category', 'category.cate_id', '=', 'products.cate_id')
        ->join('manufactures', 'manufactures.manu_id', '=', 'products.manu_id')
        ->orderby('products.id', 'desc')->get();
        $manage_product = view('admin.all_product')->with('all_product', $all_product);
        return view('admin_layout')->with('admin.all_product', $manage_product);
    }
    public function save_product(Request $request)
    {
        $this->AuthLogin();
        $data = array();
        $data['name'] = $request->product_name;
        $data['manu_id'] = $request->product_manu;
        $data['cate_id'] = $request->product_cate;
        $data['price'] = $request->product_price;
        $data['description'] = $request->product_description;
        $data['hot'] = $request->product_hot;
        $data['sale'] = $request->product_sale;
        $data['image'] = $request->img_product;
        $get_image = $request->file('image');
        if ($get_image) {
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image.rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move('public/uploads/product',$new_image);
            $data['image'] = $new_image;
            DB::table('products')->insert($data);
            Session::put('message', 'thêm sản phẩm thành công');
            return Redirect::to('add-product');
        }
        $data['image'] = '';
        DB::table('products')->insert($data);
        Session::put('message', 'thêm sản phẩm thành công');
        return Redirect::to('add-product');
    }
    public function edit_product($id)
    {
        $this->AuthLogin();
        $cate_product = DB::table('category')->orderby('cate_id', 'desc')->get();
        $brand_product = DB::table('manufactures')->orderby('manu_id', 'desc')->get();
        $edit_product = DB::table('products')->where('id', $id)->get();
        $manage_product = view('admin.edit_product')->with('edit_product', $edit_product)->with('cate_name', $cate_product)
        ->with('manu_name',$brand_product);
        return view('admin_layout')->with('admin.edit_product', $manage_product);
    }
    public function update_product(Request $request, $id)
    {
        $this->AuthLogin();
        $data = array();
        $data['name'] = $request->product_name;
        $data['manu_id'] = $request->product_manu;
        $data['cate_id'] = $request->product_cate;
        $data['price'] = $request->product_price;
        $data['description'] = $request->product_description;
        $data['hot'] = $request->product_hot;
        $data['sale'] = $request->product_sale;
        $get_image = $request->file('image');
        if ($get_image) {
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image.rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move('public/uploads/product',$new_image);
            $data['image'] = $new_image;
            DB::table('products')->where('id', $id)->update($data);
            Session::put('message', 'Cập nhập sản phẩm thành công');
            return Redirect::to('all-product');
        }
        DB::table('products')->where('id', $id)->update($data);
        Session::put('message', 'Cập nhập sản phẩm thành công');
        return Redirect::to('all-product');
    }
    public function delete_product($id)
    {
        $this->AuthLogin();
        DB::table('products')->where('id', $id)->delete();
        Session::put('message', 'Xóa sản phẩm thành công');
        return Redirect::to('all-product');
    }

       //End Function Admin Page

       public function details_product($product_id){
        $cate_product = DB::table('category')->orderby('cate_id', 'desc')->get();
        $brand_product = DB::table('manufactures')->orderby('manu_id', 'desc')->get();
        $details_products = DB::table('products')
        ->join('category', 'category.cate_id', '=', 'products.cate_id')
        ->join('manufactures', 'manufactures.manu_id', '=', 'products.manu_id')
        ->where('products.id',$product_id)->get();
            return view('sanpham.show_details')->with('category', $cate_product)->with('brand', $brand_product)
            ->with('details', $details_products);
       }
}
