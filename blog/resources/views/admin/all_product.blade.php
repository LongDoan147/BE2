<?php

use Illuminate\Support\Facades\Session;
?>
@extends('admin_Layout')
@section('admin_content')
<div class="panel panel-default">
    <div class="panel-heading">
        Liệt kê sản phẩm
    </div>
    <div class="table-responsive">
        <table class="table table-striped b-t b-light">
            <thead>
                <?php
                $message = Session::get('message');
                if ($message) {
                    echo $message;
                    Session::put('message', null);
                }
                ?>
                <tr>
                    <th>Hình ảnh</th>
                    <th>Tên danh mục sản phẩm</th>
                    <th>Nhãn hiệu</th>
                    <th>Loại</th>
                    <th>Giá</th>
                    <th>Mô Tả</th>
                    <th>sale</th>
                    <th style="width:30px;"></th>
                </tr>
            </thead>
            <tbody>
                @foreach($all_product as $key => $pro)
                <tr>
                    <td><img src="public/uploads/product/{{$pro->image}}" height="100" width="100" > </td>
                    <td>{{$pro->name}}</td>
                    <td>{{$pro->manu_name}}</td>
                    <td>{{$pro->cate_name}}</td>
                    <td>{{$pro->price}}</td>
                    <td>{{$pro->description}}</td>                 
                    <td>{{$pro->sale}}</td>
                    <td>
                        <a href="{{URL::to('/edit-product/'.$pro->id)}}">edit</a>
                        <a onclick="return confirm('Bạn có chắc chắn muốn xóa')" href="{{URL::to('/delete-product/'.$pro->id)}}">delete</a>
                        <!-- <a href="" class="active" ui-toggle-class=""><i class="fa fa-pencil-square-o text-success text-active"></i><i class="fa fa-times text-danger text"></i></a> -->
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <footer class="panel-footer">
        <div class="row">

            <div class="col-sm-5 text-center">
                <small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of 50 items</small>
            </div>
            <div class="col-sm-7 text-right text-center-xs">
                <ul class="pagination pagination-sm m-t-none m-b-none">
                    <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                    <li><a href="">1</a></li>
                    <li><a href="">2</a></li>
                    <li><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                </ul>
            </div>
        </div>
    </footer>
</div>
@endsection