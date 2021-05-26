@extends('layouts.master');
@section('content')
<section id="slider">
    <!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2>Free E-Commerce Template</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="{{('public/FrontEnd/images/girl1.jpg')}}" class="girl img-responsive" alt="" />
                                <img src="{{('public/FrontEnd/images/pricing.png')}}" class="pricing" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2>100% Responsive Design</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="{{('public/FrontEnd/images/girl2.jpg')}}" class="girl img-responsive" alt="" />
                                <img src="{{('public/FrontEnd/images/pricing.png')}}" class="pricing" alt="" />
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2>Free Ecommerce Template</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="{{('public/FrontEnd/images/girl3.jpg')}}" class="girl img-responsive" alt="" />
                                <img src="{{('public/FrontEnd/images/pricing.png" class="pricing')}}" alt="" />
                            </div>
                        </div>

                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section>
<!--/slider-->

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