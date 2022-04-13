@extends('partials.main')
@section('content')
<div class="container">
    <div class="empty-space col-xs-b15 col-sm-b30"></div>
    <div class="breadcrumbs">
        <a href="#">home</a>
        <a href="#">products</a>
        <?php
            $or = App\Models\ObjectRelationship::where('object_id', $product->id)->first();
            $term = App\Models\Term::where('term_id', $or->term_id)->first();
        ?>
        <a href="#">{{$term->name}}</a>
        <a href="#">{{$product->title}}</a>
    </div>
    <div class="empty-space col-xs-b15 col-sm-b50 col-md-b100"></div>
    <div class="row">
        <div class="col-md-9 col-md-push-3">
            <div class="row">
                <div class="col-sm-5 col-xs-b30 col-sm-b0">

                    <div class="main-product-slider-wrapper swipers-couple-wrapper">
                        <div class="swiper-container swiper-control-top">
                            <div class="swiper-button-prev hidden"></div>
                            <div class="swiper-button-next hidden"></div>
                            <div class="swiper-wrapper">
                                <?php
                                    $slider = json_decode($product->product_related_img_json)->product_gallery_images;
                                ?>
                                @foreach ($slider as $value)
                                    <div class="swiper-slide">
                                        <div class="swiper-lazy-preloader"></div>
                                        <div class="product-big-preview-entry swiper-lazy" data-background="{{$value->url}}"></div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="empty-space col-xs-b30 col-sm-b60"></div>
                        <div class="swiper-container swiper-control-bottom" data-breakpoints="1" data-xs-slides="3" data-sm-slides="3" data-md-slides="3" data-lt-slides="3" data-slides-per-view="3" data-center="1" data-click="1">
                            <div class="swiper-button-prev hidden"></div>
                            <div class="swiper-button-next hidden"></div>
                            <div class="swiper-wrapper">
                                @foreach ($slider as $value)
                                <div class="swiper-slide">
                                    <div class="product-small-preview-entry">
                                        <img src="{{$value->url}}" alt="" style="width: 70px;height:70px" />
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="simple-article size-3 text-blue col-xs-b5">{{isset($product->tags)?$product->tags:'-'}}</div>
                    <div class="h3 col-xs-b25">{{$product->title}}</div>
                    <div class="row col-xs-b25">
                        <div class="col-sm-6">
                            <div class="simple-article size-5 grey">PRICE: <span class="color">Rp {{number_format($product->regular_price,0,',','.')}}</span></div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            {{-- <div class="simple-article size-3 col-xs-b5">ITEM NO.: <span class="grey">127-#5238</span></div> --}}
                            <div class="simple-article size-3 col-xs-b20">SKU : <span class="grey">{{$product->sku}}</span></div>
                        </div>
                        <div class="col-sm-6 col-sm-text-right">

                        </div>
                    </div>
                    <div class="simple-article size-3 col-xs-b20">{!! htmlspecialchars_decode($product->content) !!}</div>
                    <div class="simple-article size-3 col-xs-b30">
                        <div class="h4">AVAILABLE STORE</div>
                        <p>{{implode(', ',$product->tag)}}</p>
                    </div>


                    <div class="row col-xs-b40">
                        <input id="product-id" type="hidden" value="{{$product->id}}">
                        <div class="col-sm-3">
                            <div class="h6 detail-data-title size-1">quantity:</div>
                        </div>
                        <div class="col-sm-9">
                            <div class="quantity-select">
                                <span class="minus"></span>
                                <span id="quantity" class="number">1</span>
                                <span class="plus"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row m5 col-xs-b40">
                        <div class="col-sm-6 col-xs-b10 col-sm-b0">
                            <a class="button size-2 style-3 block" onclick="ajaxAddToCart()">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-2.png')}}" alt=""></span>
                                    <span class="text">add to cart</span>
                                </span>
                            </a>
                        </div>
                        <div class="col-sm-6">
                            <a class="button size-2 style-1 block noshadow" onclick="ajaxAddToWishlist()">
                                <span class="button-wrapper">
                                    <span class="icon"><i class="fa fa-heart-o" aria-hidden="true"></i></span>
                                    <span class="text">add to favourites</span>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="h6 detail-data-title size-2">share:</div>
                        </div>
                        <div class="col-sm-9">
                            <div class="follow light">
                                <a id="wa" class="entry" href=""><i class="fa fa-whatsapp"></i></a>
                                <a id="fb" class="entry" href="" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a id="mail" class="entry" href=""><i class="fa fa-envelope"></i></a>
                                <a class="entry" onclick="copyToClipboard()"><i class="fa fa-chain"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b35 col-md-b70"></div>
            <div class="tabs-block">
                <div class="tabulation-menu-wrapper text-center">
                    <div class="tabulation-title simple-input">technical specs</div>
                    <ul class="tabulation-toggle">
                        <li><a class="tab-menu active">technical specs</a></li>
                        <li><a class="tab-menu">compatibility</a></li>

                    </ul>
                </div>
                <div class="empty-space col-xs-b30 col-sm-b60"></div>
                <div class="tab-entry visible">
                    <div class="simple-article size-3">
                        {!! htmlspecialchars_decode($product->technical_description) !!}
                    </div>
                </div>
                <div class="tab-entry">
                    <div class="h5">compatible by type/brand</div>
                    <hr/>
                    <div class="row">
                        <div class="col-sm-3"><img src="{{URL::asset('public/custom/img/acer.png')}}"></div>
                        <div class="col-sm-3">
                            <div class="simple-article size-3">
                                <p>
                                    Aspire 4551 Series<br/>
                                    Aspire 4551G Series<br/>
                                    Aspire 4738ZG Series<br/>
                                    Aspire 4714G Series<br/>
                                    Aspire 5741 Series<br/>
                                    Aspire 5741-334G32Mn<br/>
                                    Aspire 4551 Series<br/>
                                    Aspire 4551G Series<br/>
                                    Aspire 4738ZG Series<br/>
                                    Aspire 4714G Series<br/>
                                    Aspire 5741 Series<br/>
                                    Aspire 5741-334G32Mn<br/>
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="simple-article size-3">
                                <p>
                                    Aspire 4551 Series<br/>
                                    Aspire 4551G Series<br/>
                                    Aspire 4738ZG Series<br/>
                                    Aspire 4714G Series<br/>
                                    Aspire 5741 Series<br/>
                                    Aspire 5741-334G32Mn<br/>
                                    Aspire 4551 Series<br/>
                                    Aspire 4551G Series<br/>
                                    Aspire 4738ZG Series<br/>
                                    Aspire 4714G Series<br/>
                                    Aspire 5741 Series<br/>
                                    Aspire 5741-334G32Mn<br/>
                                </p>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="simple-article size-3">
                                <p>
                                    Aspire 4551 Series<br/>
                                    Aspire 4551G Series<br/>
                                    Aspire 4738ZG Series<br/>
                                    Aspire 4714G Series<br/>
                                    Aspire 5741 Series<br/>
                                    Aspire 5741-334G32Mn<br/>
                                    Aspire 4551 Series<br/>

                                </p>
                            </div>
                        </div>


                    </div>
                    <hr/>
                    <div class="row col-xs-b35">
                        <div class="col-sm-3"><img src="{{URL::asset('public/custom/img/hp.png')}}"></div>
                        <div class="col-sm-3">
                            <div class="simple-article size-3">
                                <p>
                                    Aspire 4551 Series<br/>
                                    Aspire 4551G Series<br/>
                                    Aspire 4738ZG Series<br/>
                                    Aspire 4714G Series<br/>
                                    Aspire 5741 Series<br/>
                                    Aspire 5741-334G32Mn<br/>
                                    Aspire 4551 Series<br/>

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="h5">compatible by part number</div>
                    <hr/>
                    <div class="row">
                        <div class="col-sm-3"><img src="{{URL::asset('public/custom/img/acer.png')}}"></div>
                        <div class="col-sm-3">
                            <div class="simple-article size-3">
                                <p>
                                    31CR19/652<br/>
                                    AS10D31<br/>
                                    AS10D51<br/>
                                    BT.00603.111<br/>
                                    BT.00607.127<br/>
                                    934T2078F<br/>
                                    AS10D3E<br/>
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="simple-article size-3">
                                <p>
                                    31CR19/652<br/>
                                    AS10D31<br/>
                                    AS10D51<br/>
                                    BT.00603.111<br/>
                                    BT.00607.127<br/>
                                    934T2078F<br/>
                                    AS10D3E<br/>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="empty-space col-xs-b35 col-md-b70"></div>
            <div class="h4">related products</div>
            <div class="empty-space col-xs-b15 col-md-b30"></div>
            <div class="products-content">
                <div class="products-wrapper">
                    <div class="row nopadding">
                        @foreach ($product->related as $value)
                            {{-- Start Related Product --}}
                            <div class="col-sm-3">
                                <div class="product-shortcode style-1">
                                    <div class="title">
                                        <?php
                                            $or = App\Models\ObjectRelationship::where('object_id', $value['id'])->first();
                                            $term = App\Models\Term::where('term_id', $or->term_id)->first();
                                        ?>
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">{{$term->name}}</a></div>
                                        <div class="h5 animate-to-green"><a href="#">{{$value['post_title']}}</a></div>
                                    </div>
                                    <div class="preview">
                                        <?php
                                            $img_url = $value['post_image_url'];
                                            if ($img_url == '') {
                                                $img_url = '/public/uploads/no-image.jpeg';
                                            }
                                        ?>
                                        <img src="{{$img_url}}" alt="" style="width: 200px;height:200px">
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-3" href="/product/detail/{{$value['id']}}">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                                        <span class="text">SEE DETAIL</span>
                                                    </span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        @if(!empty($value['post_sale_price']) && $value['post_sale_price'] < $value['post_regular_price'])
                                            <div class="simple-article size-4"><span class="color">Rp {{number_format($value['post_sale_price'],0,',','.')}}</span>
                                                &nbsp;&nbsp;&nbsp;<span class="line-through">Rp {{number_format($value['post_regular_price'],0,',','.')}}</span>
                                            </div>
                                        @else
                                            Rp {{number_format($value['post_regular_price'],0,',','.')}}
                                        @endif
                                    </div>
                                    <div class="description">
                                        <div class="simple-article text size-2">{!! !empty($value['post_content'])?htmlspecialchars_decode($value['post_content']):'-' !!}</div>
                                        <div class="icons">
                                            <a class="entry" onclick="ajaxInsertToCart({{$value['id']}})"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                            <a class="entry" href="/product/detail/{{$value['id']}}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            <a class="entry" onclick="ajaxInsertToWishlist({{$value['id']}})"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                            <a class="button size-1 style-3 button-long-list">
                                                <span class="button-wrapper">
                                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                                    <span class="text">ADD TO CART</span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- End Related Product --}}
                        @endforeach



                    </div>
                </div>
            </div>
            <div class="empty-space col-md-b70"></div>
        </div>

        @include('product::partial.productCategory')
    </div>
</div>
<script src="{{URL::asset('public/custom/js/jquery-2.2.4.min.js')}}"></script>
<script>
    let body = "Hey%20I%20am%20in%20PusatBaterai,%20checkout%20this%20product:%20" + location.href;
    document.getElementById("wa").href = "whatsapp://send?text=" + body;
    document.getElementById("fb").href = "https://www.facebook.com/sharer/sharer.php?u=" + location.href;
    document.getElementById("mail").href = "mailto:?subject=PusatBaterai%20Product&body=" + body;
    function copyToClipboard() {
        navigator.clipboard.writeText(location.href);
        alert("Copied link !");
    }
    let id = document.getElementById("product-id").value;
    function ajaxAddToCart(){
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
    function ajaxAddToWishlist(){
        let quantity = document.getElementById("quantity").innerText;
        var ajaxAddToWishlist = $.ajax({
            type:"post",
            url : "/insertWishlist",
            data:{_token:"{{csrf_token()}}",id:id,quantity:quantity},
        }).done(function(){
            alert('Item added to wishlist successfully !');
        });
    }
</script>
@endsection
