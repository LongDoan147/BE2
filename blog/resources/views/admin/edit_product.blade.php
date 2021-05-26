<?php

use Illuminate\Support\Facades\Session;
?>
@extends('admin_Layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Cập nhập mục sản phẩm
            </header>
            <div class="panel-body">
                <?php
                $message = Session::get('message');
                if ($message) {
                    echo $message;
                    Session::put('message', null);
                }
                ?>
                <div class="position-center">
                    @foreach($edit_product as $key => $pro)
                    <form role="form" action="{{URL::to('/update-product/'.$pro->id)}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên Sản Phẩm</label>
                            <input type="text" value="{{$pro->name}}" name="product_name" class="form-control" id=>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Nhãn Hiệu</label>
                            <select name="product_manu" class="form-control m-bot15">
                                @foreach($manu_name as $key => $manu )
                                @if($manu->manu_id== $pro->manu_id)
                                <option selected value="{{$manu->manu_id}}">{{$manu->manu_name}}</option>
                                @else
                                <option value="{{$manu->manu_id}}">{{$manu->manu_name}}</option>
                                @endif
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Loại</label>
                            <select name="product_cate" class="form-control m-bot15">
                                @foreach($cate_name as $key => $cate )
                                @if($cate->cate_id== $pro->cate_id)
                                <option selected value="{{$cate->cate_id}}">{{$cate->cate_name}}</option>
                                @else
                                <option value="{{$cate->cate_id}}">{{$cate->cate_name}}</option>
                                @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Giá</label>
                            <input type="text" value="{{$pro->price}}" name="product_price" class="form-control" id=>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Hình Ảnh</label>
                            <input type="file" name="img_product" class="form-control" id="">
                            <img src="{{URL::to('public/uploads/product/'.$pro->image)}}" height="100" width="100">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Mô tả</label>
                            <textarea style="resize: none" row="7" name="product_description" class="form-control" placeholder="Mô tả sản phẩm">{{$pro->description}}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Hot</label>
                            <select name="product_hot" class="form-control m-bot15">
                                <option value="1">Hot</option>
                                <option value="2">Không Hot</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Giá khuyến mẫi</label>
                            <input type="text" value="{{$pro->sale}}" name="product_sale" class="form-control" id=>
                        </div>
                        <button type="submit" name="add_produt" class="btn btn-info">Cập nhập sản phẩm</button>
                    </form>
                    @endforeach
                </div>
            </div>
        </section>

    </div>

</div>
@endsection