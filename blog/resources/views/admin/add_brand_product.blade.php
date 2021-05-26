<?php

use Illuminate\Support\Facades\Session;
?>
@extends('admin_Layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Thêm Thương Hiệu
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
                    <form role="form" action="{{URL::to('/save-brand-product')}}" method="post">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên Thương Hiệu</label>
                            <input type="text" name="manu_name" class="form-control" id=>
                        </div>
                        <button type="submit" name="add_brand_produt" class="btn btn-info">Thêm Thương Hiệu</button>
                    </form>
                </div>
            </div>
        </section>

    </div>

</div>
@endsection