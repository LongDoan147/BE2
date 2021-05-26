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
                @foreach($edit_brand_product as $key => $edit_value)
                <div class="position-center">
                    <form role="form" action="{{URL::to('/update-brand-product/'.$edit_value->manu_id)}}" method="post">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên Thương Hiệu</label>
                            <input type="text" value="{{$edit_value->manu_name}}" name="manu_name" class="form-control" id=>
                        </div>
                        <button type="submit" name="update_brand_product" class="btn btn-info">Sửa sản phẩm</button>
                    </form>
                </div>
            @endforeach
            </div>
        </section>

    </div>

</div>
@endsection