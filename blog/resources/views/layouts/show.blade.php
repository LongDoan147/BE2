
<!--/slider-->
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