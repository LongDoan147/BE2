<?php

use Illuminate\Support\Facades\Session;
?>
@extends('admin_Layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Cập nhập danh mục sản phẩm
            </header>
            <?php
            $message = Session::get('message');
            if ($message) {
                echo $message;
                Session::put('message', null);
            }
            ?>
            <div class="panel-body">
                @foreach($edit_category_product as $key => $edit_value)
                <div class="position-center">
                    <form role="form" action="{{URL::to('/update-category-product/'.$edit_value->cate_id)}}" method="post">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên Danh Mục Sản Phẩm</label>
                            <input type="text" value="{{$edit_value->cate_name}}" name="cate_name" class="form-control" id=>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">id Danh Mục Sản Phẩm</label>
                            <input type="text" value="{{$edit_value->cate_id}}" name="cate_id" class="form-control" id=>
                        </div>
                        <button type="submit" name="update_category_product" class="btn btn-info">Sửa danh mục sản phẩm</button>
                    </form>
                </div>
            @endforeach
            </div>
        </section>

    </div>

</div>
@endsection