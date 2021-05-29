@extends('layouts.master');
@section('content')

@include('partial.slider')

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                @include("layouts.show")
            </div>
            <div class="col-sm-9 padding-right">
                <div class="features_items">
                </div>
                <!--features_items-->
                @foreach($brand_name_product as $key => $name)
                <h2 class="title text-center">{{$name->manu_name}}</h2>
                @endforeach
                @foreach($brand_by_id as $key =>$brand)
                <a href="{{URL::to('/chi-tiet-san-pham/'.$brand->id)}}">
                    <div class="col-sm-4">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="{{URL::to('public/uploads/product/'.$brand->image)}}" alt="" />
                                    <h2>{{number_format($brand->price).' VND'}}</h2>
                                    <p>{{($brand->name)}}</p>
                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>
                            <div class="choose">
                                <ul class="nav nav-pills nav-justified">
                                    <li><a href="#"><i class="fa fa-plus-square"></i>Yêu Thích</a></li>
                                    <li><a href="#"><i class="fa fa-plus-square"></i>So sánh</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </a>
                @endforeach
            </div>
        </div>
    </div>
    </div>
</section>
@endsection;