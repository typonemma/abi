@extends('partials.main')
@section('navbar')
    <li>
        <a href="home" class="nav-link">Home</a>
    </li>
    <li>
        <a href="aboutus">about us</a>
    </li>
    <li class="active">
        <a href="/product/">products</a>
    </li>
    <li>
        <a href="shipment">Shipment</a>
    </li>
    <li>
        <a href="blogs">blogs</a>
    </li>
    <li>
        <a href="contact">contact us</a>
    </li>
@endsection
@section('content')
<div class="container">
    <div class="empty-space col-xs-b15 col-sm-b30 col-md-b60"></div>
    <div class="row">
        <div class="col-md-9 col-md-push-3">
            <div class="swiper-container rounded">
                <div class="swiper-button-prev style-1 hidden"></div>
                <div class="swiper-button-next style-1 hidden"></div>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="banner-shortcode style-1">
                            <div class="background" style="background-image: url({{URL::asset('public/custom/img/banner.jpg')}});"></div>
                            <div class="description valign-middle">
                                <div class="valign-middle-content">
                                    <div class="simple-article size-4 light">DON'T MISS!</div>
                                    <div class="banner-title light">UP TO 70%</div>
                                    <div class="h4 light">best android tv box</div>
                                    <div class="empty-space col-xs-b25"></div>

                                </div>
                                <div class="empty-space col-xs-b60 col-sm-b0"></div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="empty-space col-xs-b35 col-md-b70"></div>
            <div class="slider-wrapper">
                <div class="swiper-container arrows-align-top" data-breakpoints="1" data-xs-slides="1" data-sm-slides="3" data-md-slides="4" data-lt-slides="4" data-slides-per-view="4">
                    <div class="h4 swiper-title">promo products</div>
                    <div class="empty-space col-xs-b20"></div>
                    <div class="swiper-button-prev style-1"></div>
                    <div class="swiper-button-next style-1"></div>
                    <div class="swiper-wrapper">

                        {{-- START HERE --}}

                        <?php
                            $bestsellerproduct_list = session('bestsellerproduct_list');
                        ?>
                        @foreach ($bestsellerproduct_list as $b)
                            <div class="swiper-slide">
                                <div class="product-shortcode style-1 small">
                                    <div class="title">
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">POWER ADAPTOR</a></div>
                                        <div class="h5 animate-to-green"><a href="#">{{ $b->title }}</a></div>
                                    </div>
                                    <div class="preview">
                                        <?php                                                
                                            $key_value = $b->image_url;
                                            $filename = $_SERVER['DOCUMENT_ROOT'] . $key_value;                                                   
                                            if ($key_value == ''){                                                 
                                                echo "<img src='/public/uploads/no-image.jpg' style='width:202px;height:200px;'>";                                                    
                                            }   
                                            else if (!file_exists($filename)) {
                                                echo "<img src='/public/uploads/no-image.jpg' style='width:202px;height:200px;'>";  
                                            }                                
                                            else {                                                 
                                                echo "<img src='$key_value' style='width:201px;height:200px;'>";                                                    
                                            }
                                        ?> 
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-3" href="product_detail">
                                                    <span class="button-wrapper">
                                                        <span class="icon">
                                                            <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                            <!-- <img src="img/icon-4.png" alt=""> -->
                                                        </span> 
                                                        <span class="text">SEE DETAIL</span>
                                                    </span>
                                                </a>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <div class="simple-article size-4 dark">Rp 200.000</div>
                                    </div>
                                </div>
                            </div>
                        @endforeach 

                        <!-- <div class="swiper-slide">
                            <div class="product-shortcode style-1 small">
                                <div class="title">
                                    <div class="simple-article size-1 color col-xs-b5"><a href="#">POWER ADAPTOR</a></div>
                                    <div class="h5 animate-to-green"><a href="#">charger asus a455l</a></div>
                                </div>
                                <div class="preview">
                                    <img src="{{URL::asset('public/custom/img/product-111.jpg')}}" alt="">
                                    <div class="preview-buttons valign-middle">
                                        <div class="valign-middle-content">
                                            <a class="button size-2 style-3" href="#">
                                                <span class="button-wrapper">
                                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                                    <span class="text">SEE DETAIL</span>
                                                </span>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                                <div class="price">
                                    <div class="simple-article size-4 dark">Rp 200.000</div>
                                </div>
                            </div>
                        </div> -->

                        {{-- END HERE --}}
                    </div>
                    <div class="swiper-pagination relative-pagination visible-xs"></div>
                </div>
            </div>
            <div class="empty-space col-xs-b35 col-md-b50"></div>
            <div class="row">
                <div class="col-sm-7">
                    <div class="align-inline spacing-1">
                        <div class="h4">keyboard laptop</div>
                    </div>
                    <div class="align-inline spacing-1">
                        <div class="simple-article size-1">SHOWING <b class="grey">15</b> OF <b class="grey">2 358</b> RESULTS</div>
                    </div>
                </div>
                <div class="col-sm-5 text-right">
                    <div class="align-inline spacing-1 hidden-xs">
                        <a class="pagination toggle-products-view active"><img src="{{URL::asset('public/custom/img/icon-14.png')}}" alt="" /><img src="{{URL::asset('public/custom/img/icon-15.png')}}" alt="" /></a>
                        <a class="pagination toggle-products-view"><img src="{{URL::asset('public/custom/img/icon-16.png')}}" alt="" /><img src="{{URL::asset('public/custom/img/icon-17.png')}}" alt="" /></a>
                    </div>

                    <div class="align-inline spacing-1 filtration-cell-width-2">
                        <select class="SlectBox small">
                            <option disabled="disabled" selected="selected">Show 30</option>
                            <option value="volvo">30</option>
                            <option value="saab">50</option>
                            <option value="mercedes">100</option>
                            <option value="audi">200</option>
                        </select>
                    </div>
                </div>
            </div>


            <div class="empty-space col-xs-b15 col-sm-b20"></div>
            <div class="products-content">
                <div class="products-wrapper">
                    <div class="row nopadding" id="appendProduct">

                        {{-- LIST PRODUCT START  HERE --}}

                        <div class="col-sm-4" style="display: none">
                            <div class="product-shortcode style-1">
                                <div class="title">
                                    <div class="simple-article size-1 color col-xs-b5"><a href="#">LCD/LED</a></div>
                                    <div class="h5 animate-to-green"><a href="#">LED LCD Laptop Asus A455L</a></div>
                                </div>
                                <div class="preview">
                                    <img src="{{URL::asset('public/custom/img/product-40.jpg')}}" alt="">
                                    <div class="preview-buttons valign-middle">
                                        <div class="valign-middle-content">
                                            <a class="button size-2 style-3" href="#">
                                                <span class="button-wrapper">
                                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                                    <span class="text">SEE DETAIL</span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price">
                                    <div class="color-selection">
                                        <div class="entry active" style="color: #a7f050;"></div>
                                        <div class="entry" style="color: #50e3f0;"></div>
                                        <div class="entry" style="color: #eee;"></div>
                                    </div>
                                    <div class="simple-article size-4"><span class="color">Rp 200.000</span>&nbsp;&nbsp;&nbsp;<span class="line-through">$350.00</span></div>
                                </div>
                                <div class="description">
                                    <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                    <div class="icons">
                                        <a class="entry"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                        <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                        <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        <a class="button size-1 style-3 button-long-list" href="#">
                                            <span class="button-wrapper">
                                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                                <span class="text">ADD TO CART</span>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- LIST PRODUCT END HERE --}}


                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b25 col-md-b30"></div>
            <div class="row">
                <div class="col-sm-3 hidden-xs">
                    <a class="button size-1 style-5" href="#">
                        <span class="button-wrapper">
                            <span class="icon"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                            <span class="text">prev page</span>
                        </span>
                    </a>
                </div>
                <div class="col-sm-6 text-center">
                    <div class="pagination-wrapper">
                        <a class="pagination active">1</a>
                        <a class="pagination">2</a>
                        <a class="pagination">3</a>
                        <a class="pagination">4</a>
                        <span class="pagination">...</span>
                        <a class="pagination">23</a>
                    </div>
                </div>
                <div class="col-sm-3 hidden-xs text-right">
                    <a class="button size-1 style-5" href="#">
                        <span class="button-wrapper">
                            <span class="icon"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                            <span class="text">prev page</span>
                        </span>
                    </a>
                </div>
            </div>
            <div class="empty-space col-xs-b35 col-md-b70"></div>
            <div class="empty-space col-md-b70"></div>
        </div>
        @include('product::partial.productCategory')
    </div>

</div>


@include('partials.ads')
@endsection

@section('script')

<script>
    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    var id  = 0;
    var selected = [];
    function ajaxProduct(){
        var ajaxProduct = $.ajax({
            type:"POST",
            url : "{{route('product.ajaxProduct')}}",
            data:{_token:"{{csrf_token()}}",id:id,location:selected},
        }).done(function(data){
                $('#appendProduct').empty();
            $.each(data, function( index, value ) {
                //header
                var str = '<div class="col-sm-4"><div class="product-shortcode style-1">';

                //Title
                str = str + '<div class="title"><div class="simple-article size-1 color col-xs-b5"><a href="#">LCD/LED</a></div><div class="h5 animate-to-green"><a href="#">'+value.title+'</a></div></div>';

                //Preview Image
                var img = "{{URL::asset('/')}}";
                img = img + value.image_url;
                str = str + '<div class="preview"><img src="'+img+'" alt="" style="width:200px;height:200px;"><div class="preview-buttons valign-middle"><div class="valign-middle-content"><a class="button size-2 style-3" href="#"><span class="button-wrapper"><span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span><span class="text">SEE DETAIL</span></span></a></div></div></div>';

                //Price
                if(value.sale_price > 0){
                    str = str + '<div class="price"><div class="color-selection"><div class="entry active" style="color: #a7f050;"></div><div class="entry" style="color: #50e3f0;"></div><div class="entry" style="color: #eee;"></div></div><div class="simple-article size-4"><span class="color">Rp. '+numberWithCommas(value.sale_price)+'</span>&nbsp;&nbsp;&nbsp;<span class="line-through">Rp. '+numberWithCommas(value.regular_price)+'</span></div></div>';
                }else{
                    str = str + '<div class="price"><div class="color-selection"><div class="entry active" style="color: #a7f050;"></div><div class="entry" style="color: #50e3f0;"></div><div class="entry" style="color: #eee;"></div></div><div class="simple-article size-4"><span class="color">Rp. '+numberWithCommas(value.regular_price)+'</span></div></div>';
                }

                //Description
                str = str + '<div class="description"><div class="simple-article text size-2">'+unescape(value.content)+'</div><div class="icons"><a class="entry"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a><a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a><a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a><a class="button size-1 style-3 button-long-list" href="#"><span class="button-wrapper"><span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span><span class="text">ADD TO CART</span></span></a></div></div>';

                //Footer
                str = str + '</div></div>';

                $('#appendProduct').append(str);
            });
        });
    }
    $(".menuSelect").on("click",function(){
         id = $(this).data("id");
         ajaxProduct();
    });
    $(".checkboxProduct").on("change",function(){
        selected = [];
        $('.checkboxP input:checked').each(function() {
            selected.push($(this).val());
        });
        ajaxProduct();
    });
</script>
@endsection
