@extends('layouts.master');
@section('content')

@include('partial.slider')
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Danh Mục Sản Phẩm</h2>
                    <div class="panel-group category-products" id="accordian">
                        <!--category-productsr-->
                        @foreach($category as $key => $cate)
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="{{URL::to('/danh-muc-san-pham/'.$cate->cate_id)}}">{{$cate->cate_name}}</a></h4>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <!--/category-products-->

                    <div class="brands_products">
                        <!--brands_products-->
                        <h2>Thương Hiệu Sản Phẩm</h2>
                        @foreach($brand as $key => $brand)
                        <div class="brands-name">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="{{URL::to('/thuong-hieu-san-pham/'.$brand->manu_id)}}"> <span class="pull-right">(50)</span>{{$brand->manu_name}}</a></li>

                            </ul>
                        </div>
                        @endforeach
                    </div>
                    <!--/brands_products-->
                </div>
            </div>
            <div class="col-sm-9 padding-right">
                <div class="features_items">
                </div>
                <!--features_items-->
                @foreach($category_name as $key => $name)
                <h2 class="title text-center">{{$name->cate_name}}</h2>
                @endforeach
                @foreach($category_by_id as $key =>$product)
                <a href="{{URL::to('/chi-tiet-san-pham/'.$brand->manu_id)}}">
                    <div class="col-sm-4">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="{{URL::to('public/uploads/product/'.$product->image)}}" alt="" />
                                    <h2>{{number_format($product->price).' VND'}}</h2>
                                    <p>{{($product->name)}}</p>
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