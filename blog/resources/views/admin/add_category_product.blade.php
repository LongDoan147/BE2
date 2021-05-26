<?php

use Illuminate\Support\Facades\Session;
?>
@extends('admin_Layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Thêm danh mục sản phẩm
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
                    <form role="form" action="{{URL::to('/save-category-product')}}" method="post">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên Danh Mục Sản Phẩm</label>
                            <input type="text" name="cate_name" class="form-control" id=>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">id Danh Mục Sản Phẩm</label>
                            <input type="text" name="cate_id" class="form-control" id=>
                        </div>
                        <button type="submit" name="add_category_produt" class="btn btn-info">Thêm danh mục</button>
                    </form>
                </div>
            </div>
        </section>

    </div>

</div>
@endsection