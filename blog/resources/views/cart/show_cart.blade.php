@extends('layouts.master');
@section('content')
@include('partial.slider')

<section id="cart_items">
    <div class="container">
        <div class="col-sm-3">
            @include("layouts.show")
        </div>
        <div class="col-sm-9 padding-right">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="{{URl::to('/')}}">Trang Chủ</a></li>
                    <li class="active">Giỏ Hàng Của Bạn</li>
                </ol>
            </div>
            <div class="table-responsive cart_info">
                <?php
                $content = Cart::content();
                ?>
                <table class="table table-condensed">
                    <thead>
                        <tr class="cart_menu">
                            <td class="image">Hình Ảnh</td>
                            <td class="description">Mô Tả</td>
                            <td class="price">Giá</td>
                            <td class="quantity">Số Lượng</td>
                            <td class="total">Tổng Tiền</td>
                            <td></td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($content as $v_content)
                        <tr>
                            <td class="cart_product">
                                <a href=""><img src="{{URL::to('public/uploads/product/'.$v_content->options->image)}}" width="50" alt="" /></a>
                            </td>
                            <td class="cart_description">
                                <h4><a href="">{{$v_content->name}}</a></h4>
                                <p>Web ID: 1089772</p>
                            </td>
                            <td class="cart_price">
                                <p>{{number_format($v_content->price).' VND'}}</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <form action="{{URL::to('update-cart-quantity')}}" method="POST">
                                        {{csrf_field()}}
                                        <input class="cart_quantity_input" type="text" name="cart_quantity" value="{{$v_content->qty}}" autocomplete="off" size="2">
                                        <input type="hidden" name="rowId_Cart" value="{{$v_content->rowId}}" class="form-control">
                                        <input type="submit" name="update_qty" value="Cập Nhập" class="btn btn-default btn-sm">
                                    </form>
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">
                                    <?php
                                    $subtotal = $v_content->price * $v_content->qty;
                                    echo number_format($subtotal) . ' VND';
                                    ?>
                                </p>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete" href="{{URL::to('/delete-to-cart/'.$v_content->rowId)}}"><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>



            <div class="total_area">
                <ul>
                    <li>Tổng<span>{{Cart::total().' VND'}}</span></li>
                    <li>Thuế<span>{{Cart::tax().' VND'}}</span></li>
                    <li>Phí Vận Chuyển <span>Free</span></li>
                    <li>Thành Tiền <span>{{Cart::total().' VND'}}</span></li>
                </ul>
                
                <a class="btn btn-default check_out" href="{{URL::to('/login-checkout')}}">Thanh Toán</a>
            </div>

        </div>
</section>
<!--/#do_action-->
</div>
</div>
</section>
<!--/#cart_items-->

@endsection;