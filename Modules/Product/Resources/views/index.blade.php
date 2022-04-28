@extends('partials.main')
@section('content')
<div class="container">
    <input id="user" type="hidden" value="{{session('user')}}">
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
            <div class="slider-wrapper" style="margin-top:-36px">
                <div class="swiper-container arrows-align-top" data-breakpoints="1" data-xs-slides="1" data-sm-slides="3" data-md-slides="4" data-lt-slides="4" data-slides-per-view="4">
                    <div class="h4 swiper-title">promo products</div>
                    <div class="empty-space col-xs-b20"></div>
                    <div class="swiper-button-prev style-1"></div>
                    <div class="swiper-button-next style-1"></div>
                    <div class="swiper-wrapper"id="productPromo">
                        {{-- START HERE --}}

                        {{-- <div class="swiper-slide">
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
                        </div> --}}

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
                        <div class="simple-article size-1">SHOWING <b class="grey" id="startLimit">15</b> OF <b class="grey" id="endLimit">2 358</b> RESULTS</div>
                    </div>
                </div>
                <div class="col-sm-5 text-right">
                    <div class="align-inline spacing-1 hidden-xs">
                        <a class="pagination toggle-products-view active" onclick="toggle(0)"><img src="{{URL::asset('public/custom/img/icon-14.png')}}" alt="" /><img src="{{URL::asset('public/custom/img/icon-15.png')}}" alt="" /></a>
                        <a class="pagination toggle-products-view" onclick="toggle(1)"><img src="{{URL::asset('public/custom/img/icon-16.png')}}" alt="" /><img src="{{URL::asset('public/custom/img/icon-17.png')}}" alt="" /></a>
                    </div>

                    <div class="align-inline spacing-1 filtration-cell-width-2">
                        <select class="SlectBox small" id="limit">
                            <option disabled="disabled" selected="selected">Show 30</option>
                            <option value="30">30</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                            <option value="200">200</option>
                        </select>
                    </div>
                </div>
            </div>


            <div class="empty-space col-xs-b15 col-sm-b20"></div>
            <div class="products-content">
                <div class="products-wrapper">
                    <div class="row nopadding" id="appendProduct">

                        {{-- LIST PRODUCT START  HERE --}}

                        {{-- <div class="col-sm-4" style="display: none">
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
                        </div> --}}

                        {{-- LIST PRODUCT END HERE --}}


                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b25 col-md-b30"></div>
            <div class="row">
                <div class="col-sm-3 hidden-xs">
                    <a class="button size-1 style-5" id="prevPage">
                        <span class="button-wrapper">
                            <span class="icon"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                            <span class="text">prev page</span>
                        </span>
                    </a>
                </div>
                <div class="col-sm-6 text-center">
                    <div class="pagination-wrapper" id="pagination">
                    </div>
                </div>
                <div class="col-sm-3 hidden-xs text-right">
                    <a class="button size-1 style-5" id="nextPage">
                        <span class="button-wrapper">
                            <span class="icon"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                            <span class="text">next page</span>
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
<div class="footer-form-block">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-xs-b10 col-lg-b0">
                <div class="cell-view empty-space col-lg-b50">
                    <h3 class="h3 light">dont miss your chance</h3>
                </div>
            </div>
            <div class="col-lg-3 col-xs-b10 col-lg-b0">
                <div class="cell-view empty-space col-lg-b50">
                    <div class="simple-article size-3 light transparent">ONLY 200 PROMO CODES ON DISCOUNT!</div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="single-line-form">
                    <input class="simple-input light" type="text" value="" placeholder="Your email">
                    <div class="button size-2 style-1">
                        <span class="button-wrapper">
                            <span class="icon"><img src="img/icon-4.png" alt=""></span>
                            <span class="text">submit</span>
                        </span>
                        <input type="submit" value="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<input id="loggedIn" type="hidden" value="{{session('user')}}">

{{-- @include('partials.ads') --}}
@endsection

<script src="{{URL::asset('public/custom/js/jquery-2.2.4.min.js')}}"></script>

<script>
    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    var id  = 0;
    var limit = 30;
    var page = 1;
    var lastPage = 1;
    var selected = [];
    function ajaxAddToCart(id){
        let quantity = document.getElementById("quantity").innerText;
        var ajaxAddToCart = $.ajax({
            type:"post",
            url : "/cart-slice/insert",
            data:{_token:"{{csrf_token()}}",id:id,quantity:quantity},
        }).done(function(){
            $('#calculate').load(' #calculate');
            $('#cart-count').load(' #cart-count');
            $('#user-wallet').load(' #user-wallet');
            $('#cart-detail-dropdown').load(' #cart-detail-dropdown');
            $('#cart-total').load(' #cart-total');
            $('#cart-title-total').load(' #cart-title-total');
            alert('Item added to cart successfully !');
        });
    }
    function ajaxAddToWishlist(id){
        let quantity = document.getElementById("quantity").innerText;
        var ajaxAddToWishlist = $.ajax({
            type:"post",
            url : "/insertWishlist",
            data:{_token:"{{csrf_token()}}",id:id,quantity:quantity},
        }).done(function(){
            alert('Item added to wishlist successfully !');
        });
    }
    function toggle(n) {
        if (n == 0) {
            $('.col-sm-4').removeAttr('style');
        }
        else {
            $('.col-sm-4').css('height', '50%');
        }
    }
    function ajaxProduct(){
        var ajaxProduct = $.ajax({
            type:"get",
            url : "{{route('product.ajaxProduct')}}",
            data:{_token:"{{csrf_token()}}",id:id,location:selected,limit:limit,page:page},
        }).done(function(data){
                $('#appendProduct').empty();
                $('#startLimit').text(data.data.length);
                lastPage = data.last_page;
                $('#endLimit').text(data.total);
                paginate(lastPage,data.current_page);
            $.each(data.data, function( index, value ) {
                //header
                var str = '<div class="col-sm-4"><div class="product-shortcode style-1">';

                //Title
                var tags = value.tags;
                if(tags == null){
                    tags = '-'
                }
                str = str + '<div class="title"><div class="simple-article size-1 color col-xs-b5"><a href="#">'+tags+'</a></div><div class="h5 animate-to-green"><a href="/product/detail/'+value.slug+'">'+value.title+'</a></div></div>';

                //Preview Image
                var img = "{{URL::asset('/')}}";
                var file = value.image_url;
                if (file == '') {
                    file = '/public/uploads/no-image.jpeg';
                }
                img = img + file;

                var url = "{{route('product.details',-99)}}";
                url = url.replace('-99',value.slug);

                str = str + '<div class="preview"><img src="'+img+'" alt="" style="width:200px;height:200px;"><div class="preview-buttons valign-middle"><div class="valign-middle-content"><a class="button size-2 style-3" href="'+url+'"><span class="button-wrapper"><span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span><span class="text">SEE DETAIL</span></span></a></div></div></div>';

                //Price
                if(value.sale_price < value.regular_price){
                    str = str + '<div class="price"><div class="color-selection"><div class="entry active" style="color: #a7f050;"></div><div class="entry" style="color: #50e3f0;"></div><div class="entry" style="color: #eee;"></div></div><div class="simple-article size-4"><span class="color">Rp. '+numberWithCommas(value.sale_price)+'</span>&nbsp;&nbsp;&nbsp;<span class="line-through">Rp. '+numberWithCommas(value.regular_price)+'</span></div></div>';
                }else{
                    str = str + '<div class="price"><div class="color-selection"><div class="entry active" style="color: #a7f050;"></div><div class="entry" style="color: #50e3f0;"></div><div class="entry" style="color: #eee;"></div></div><div class="simple-article size-4"><span class="color">Rp. '+numberWithCommas(value.regular_price)+'</span></div></div>';
                }

                var user = $('#user').val();

                if (user == '') {
                    //Description
                    str = str + '<div class="description"><div class="simple-article text size-2">'+value.content+'</div><div class="icons"><a id="products-'+value.id+'" class="entry open-popup" data-rel="0" data-id="'+value.id+'" onclick="popup('+value.id+')"><i class="fa fa-eye" aria-hidden="true"></i></a>';
                }
                else {
                    //Description
                    str = str + '<div class="description"><div class="simple-article text size-2">'+value.content+'</div><div class="icons"><a class="entry" onclick="ajaxInsertToCart('+value.id+')"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a><a id="products-'+value.id+'" class="entry open-popup" data-rel="0" data-id="'+value.id+'" onclick="popup('+value.id+')"><i class="fa fa-eye" aria-hidden="true"></i></a><a class="entry" onclick="ajaxInsertToWishlist('+value.id+')"><i class="fa fa-heart-o" aria-hidden="true"></i></a><a class="button size-1 style-3 button-long-list" onclick="ajaxInsertToCart('+value.id+')"><span class="button-wrapper"><span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span><span class="text">ADD TO CART</span></span></a></div></div>';
                }

                //Footer
                str = str + '</div></div>';

                $('#appendProduct').append(str);
            });
        });
    }
    function paginate(last,current){
        $('#pagination').empty();
        for(var i=0;i<last;i++){
            if(i == (current-1)){
                $('#pagination').append('<a class="pagination active">'+current+'</a>');
            }else{
                $('#pagination').append('<a class="pagination" onclick="changePage('+(i+1)+')" value="'+(i+1)+'">'+(i+1)+'</a>');

            }
        }
    }

    function changePage(changed){
        page = changed;
        ajaxProduct();
    }
    function ajaxProductPromo(){
        var ajaxProductPromo = $.ajax({
            type:"POST",
            url : "{{route('product.ajaxProductPromo')}}",
            data:{_token:"{{csrf_token()}}"},
        }).done(function(data){
                $('#productPromo').empty();
            $.each(data, function( index, value ) {
                //header
                var str = '<div class="swiper-slide"><div class="product-shortcode style-1 small">';

                //Title
                var tags = value.tags;
                if(tags == null){
                    tags = '-'
                }
                str = str + '<div class="title"><div class="simple-article size-1 color col-xs-b5"><a href="#">'+tags+'</a></div><div class="h5 animate-to-green"><a href="/product/detail/'+value.slug+'">'+value.title+'</a></div></div>';

                //Preview Image
                var img = "{{URL::asset('/')}}";
                var file = value.image_url;
                if (file == '') {
                    file = '/public/uploads/no-image.jpeg';
                }
                img = img + file;
                var url = "{{route('product.details',-99)}}";
                url = url.replace('-99',value.slug);
                str = str + '<div class="preview"><img src="'+img+'" alt="" style="width:150px;height:150px"><div class="preview-buttons valign-middle"><div class="valign-middle-content"><a class="button size-2 style-3" href="'+url+'"><span class="button-wrapper"><span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span><span class="text">SEE DETAIL</span></span></a></div></div></div>';

                //Price
                str = str + '<div class="price"><div class="simple-article size-4 dark">Rp. '+numberWithCommas(value.sale_price)+'</div></div>';

                //Footer
                str = str + '</div></div>';

                $('#productPromo').append(str);
                $('#productPromo').parent().removeClass('initialized');
		        _functions.initSwiper();
            });
        });
    }
    $(document).ready(function(){
         ajaxProduct();
         ajaxProductPromo();
         $('#nextPage').on("click",function(){
            if((page+1) <= lastPage){
                page = page+1;
                ajaxProduct();
            }
        });
        $('#prevPage').on("click",function(){
            if((page-1) > 0){
                page = page-1;
                ajaxProduct();
            }
        });
         $(".menuSelect").on("click",function(){
            id = $(this).data("id");
            ajaxProduct();
            ajaxProductPromo();
        });
        $("#limit").on("change",function(){
            limit = $(this).val();
            ajaxProduct();
        });
        $(".checkboxProduct").on("change",function(){
            selected = [];
            $('.checkboxP input:checked').each(function() {
                selected.push($(this).val());
            });
            ajaxProduct();
            ajaxProductPromo();
        });
    });
</script>
