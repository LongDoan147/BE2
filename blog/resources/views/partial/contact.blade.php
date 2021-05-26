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
					<!--features_items-->
					<h2 class="title text-center">Sản Phẩm Mới Nhất</h2>
					@foreach($all_product as $key =>$product)
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
					@endforeach
				</div>
			</div>
		</div>
	</div>
</section>
@endsection;