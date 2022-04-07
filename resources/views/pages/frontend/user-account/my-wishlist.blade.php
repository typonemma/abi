@extends('partials.main')
@section('content')
<div class="container">
    <div class="empty-space col-xs-b25 col-sm-b50"></div>

    <div class="text-center">
        <div class="simple-article size-3 text-blue uppercase col-xs-b5">wishlist</div>
        <div class="h2">your wishlist</div>
        <div class="title-underline center"><span></span></div>
    </div>
    <div class="tab-entry visible">
        <div class="row nopadding">
            @foreach ($user_wishlist_detail as $item)
                <?php
                    $product = App\Models\Product::find($item->product_id);
                    $or = App\Models\ObjectRelationship::where('object_id', '=', $item->product_id)->first();
                    $term_id = $or->term_id;
                    $term = App\Models\Term::where('term_id', '=', $term_id)->first();
                ?>
                <div class="col-sm-3">
                    <div class="product-shortcode style-1">
                        <div class="title">
                            <div class="simple-article size-1 color col-xs-b5"><a href="#">{{$term->name}}</a></div>
                            <div class="h6 animate-to-green"><a href="/product/detail/{{$product->id}}">{{$product->title}}</a></div>
                        </div>
                        <div class="preview">
                            @if ($product->image_url == '')
                                <?php
                                    $product->image_url = '/public/uploads/no-image.jpeg';
                                ?>
                            @endif
                            <img src="{{$product->image_url}}" alt="" />
                            <div class="preview-buttons valign-middle">
                                <div class="valign-middle-content">
                                    <a class="button size-2 style-3" href="/product/detail/{{$product->id}}">
                                        <span class="button-wrapper">
                                            <span class="icon"><img src="img/icon-4.png" alt=""></span>
                                            <span class="text">see detail</span>
                                        </span>
                                    </a>

                                </div>
                            </div>
                        </div>
                        <div class="price">
                            <div class="simple-article size-4 dark">Rp {{number_format($product->regular_price,0,',','.')}}</div>
                        </div>
                        <div class="description">
                            <div class="simple-article text size-2">{!! htmlspecialchars_decode($product->content) !!}</div>
                            <div class="icons">
                                <a class="entry" onclick="ajaxInsertToCart({{$product->id}})"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                <a class="entry" href="/product/detail/{{$product->id}}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <a class="entry" onclick="ajaxInsertToWishlist({{$product->id}})"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    <div class="empty-space col-xs-b25 col-md-b30"></div>
    @if ($page_count > 0)
        <div class="row">
            <div class="col-sm-3 hidden-xs">
                <a class="button size-1 style-5" href="{{ "wishlist?page=" . max($page - 1, 1) }}">
                    <span class="button-wrapper">
                        <span class="icon"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                        <span class="text">prev page</span>
                    </span>
                </a>
            </div>
            <div class="col-sm-6 text-center">
                <div class="pagination-wrapper">
                    <?php
                        $start = 0;
                        $end = 0;
                        if ($page + 4 <= $page_count) {
                            if ($page - 4 < 1) {
                            $start = 1;
                            $end = 5;
                            }
                            else {
                                $start = $page - 2;
                                $end = $page + 2;
                            }
                        }
                        else {
                            $start = $page_count - 4;
                            $end = $page_count;
                        }
                    ?>
                    @for ($i = $start; $i <= $end; $i++)
                        @if ($i > 0)
                                @if ($i == $page)
                                    <a class="pagination active" href="wishlist?page={{ $i }}">{{ $i }}</a>
                                @else
                                    <a class="pagination" href="wishlist?page={{ $i }}">{{ $i }}</a>
                                @endif
                        @endif
                    @endfor
                    @if ($page + 5 <= $page_count)
                        <a class="pagination" href="wishlist?page={{ $page + 5 }}">...</a>
                    @endif
                </div>
            </div>
            <div class="col-sm-3 hidden-xs text-right">
                <a class="button size-1 style-5" href="{{ "wishlist?page=" . min($page + 1, $page_count)}}">
                    <span class="button-wrapper">
                        <span class="icon"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                        <span class="text">next page</span>
                    </span>
                </a>
            </div>
        </div>
    @endif
    <div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="empty-space col-md-b70"></div>
</div>
<div class="empty-space col-xs-b35 col-md-b70"></div>
<div>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <div class="footer-top">
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-xs-b30 col-md-b0">
                        <img src="img/logo-footer.png" alt="" />
                        <div class="empty-space col-xs-b20"></div>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="footer-contact"><i class="fa fa-mobile" aria-hidden="true"></i> contact us:<br/>
                                    <h6 class="h6 light">surabaya</h6>
                                    <p>(031) 5325340, 5329905</p>
                                    <h6 class="h6 light">semarang</h6>
                                    <p>(024) 8457038</p>
                                    <h6 class="h6 light">denpasar</h6>
                                    <p>(0361) 242806</p>
                                    <h6 class="h6 light">mataram</h6>
                                    <p>(0370) 7503116</p>
                                </div>
                                <div class="footer-contact"><i class="fa fa-envelope-o" aria-hidden="true"></i> email: <br/>
                                    <a href="mailto:sales@pusatbaterai.com">SALES@PUSATBATERAI.COM</a></div>

                                </div>
                                <div class="col-sm-8">
                                    <div class="footer-contact"><i class="fa fa-map-marker" aria-hidden="true"></i> address: <br/>
                                        <h6 class="h6 light"> surabaya</h6>
                                        <p>HI-TECH MALL - Lt. Dasar Blok A1/12-12A<br/>
                                        Kusuma Bangsa 116 - 118, Surabaya, Jawa Timur</p>
                                        <h6 class="h6 light">semarang</h6>
                                        <p>PLAZA SIMPANG LIMA I - SCC Lt. 5 No. 64-65<br/>
                                        Semarang, Jawa Tengah</p>
                                        <h6 class="h6 light">denpasar</h6>
                                        <p>RIMO TRADE CENTRE - Lt. 3 No. 40<br/>
                                        Jl. Diponegoro no 136, Denpasar, Bali</p>
                                        <h6 class="h6 light">mataram</h6>
                                        <p>Jalan Catur Warga no.16 D<br/>
                                        Mataram, Nusa Tenggara Barat</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-b30 col-md-b0">
                            <h6 class="h6 light">quick links</h6>
                            <div class="empty-space col-xs-b20"></div>
                            <div class="footer-column-links">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <a href="#">home</a>
                                        <a href="#">products</a>
                                        <a href="#">about us</a>
                                        <a href="#">shipment</a>
                                        <a href="#">blogs</a>
                                        <a href="#">contact us</a>
                                    </div>
                                    <div class="col-xs-6">
                                        <a href="#">privacy policy</a>
                                        <a href="#">warranty</a>
                                        <a href="#">marketplace</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clear visible-sm"></div>
                        <div class="col-sm-6 col-md-3 col-xs-b30 col-sm-b0">
                            <h6 class="h6 light">latest blogs</h6>
                            <div class="empty-space col-xs-b20"></div>
                            <div class="footer-post-preview clearfix">
                                <a class="image" href="#"><img src="img/blog1.jpg" alt="" /></a>
                                <div class="description">
                                    <div class="date">apr 07 / 15</div>
                                    <a class="title">Fusce tincidunt accumsan pretium sit amet</a>
                                </div>
                            </div>
                            <div class="footer-post-preview clearfix">
                                <a class="image" href="#"><img src="img/blog2.jpg" alt="" /></a>
                                <div class="description">
                                    <div class="date">apr 07 / 15</div>
                                    <a class="title">Fusce tincidunt accumsan pretium sit amet</a>
                                </div>
                            </div>
                            <div class="footer-post-preview clearfix">
                                <a class="image" href="#"><img src="img/blog3.jpg" alt="" /></a>
                                <div class="description">
                                    <div class="date">apr 07 / 15</div>
                                    <a class="title">Fusce tincidunt accumsan pretium sit amet</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="row">
                        <div class="col-lg-8 col-xs-text-center col-lg-text-left col-xs-b20 col-lg-b0">
                            <div class="copyright">Copyright &copy; 2021 Radiant Computer. All rights reserved.</div>

                        </div>
                        <div class="follow col-lg-4 col-xs-text-center col-lg-text-right">
                            <a class="entry" href="#"><i class="fa fa-facebook"></i></a>
                            <a class="entry" href="#"><i class="fa fa-twitter"></i></a>
                            <a class="entry" href="#"><i class="fa fa-linkedin"></i></a>
                            <a class="entry" href="#"><i class="fa fa-google-plus"></i></a>
                            <a class="entry" href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <div class="popup-wrapper">
        <div class="bg-layer"></div>
        <div class="popup-content" data-rel="1">
            <div class="layer-close"></div>
            <div class="popup-container size-1">
                <div class="popup-align">
                    <h3 class="h3 text-center">Log in</h3>
                    <div class="empty-space col-xs-b30"></div>
                    <input class="simple-input" type="text" value="" placeholder="Your email" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input class="simple-input" type="password" value="" placeholder="Enter password" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-6 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b5"></div>
                            <a class="simple-link">Forgot password?</a>
                            <div class="empty-space col-xs-b5"></div>
                            <a class="simple-link">register now</a>
                        </div>
                        <div class="col-sm-6 text-right">
                            <a class="button size-2 style-3" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">submit</span>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="popup-or">
                        <span>or</span>
                    </div>
                    <div class="row m5">
                        <div class="col-sm-4 col-xs-b10 col-sm-b0">
                            <a class="button facebook-button size-2 style-4 block" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">facebook</span>
                                </span>
                            </a>
                        </div>
                        <div class="col-sm-4 col-xs-b10 col-sm-b0">
                            <a class="button twitter-button size-2 style-4 block" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">twitter</span>
                                </span>
                            </a>
                        </div>
                        <div class="col-sm-4">
                            <a class="button google-button size-2 style-4 block" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">google+</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="button-close"></div>
            </div>
        </div>
        <div class="popup-content" data-rel="2">
            <div class="layer-close"></div>
            <div class="popup-container size-1">
                <div class="popup-align">
                    <h3 class="h3 text-center">register</h3>
                    <div class="empty-space col-xs-b30"></div>
                    <input class="simple-input" type="text" value="" placeholder="Your name" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input class="simple-input" type="text" value="" placeholder="Your email" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input class="simple-input" type="password" value="" placeholder="Enter password" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input class="simple-input" type="password" value="" placeholder="Repeat password" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-7 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b15"></div>
                            <label class="checkbox-entry">
                                <input type="checkbox" /><span><a href="#">Privacy policy agreement</a></span>
                            </label>
                        </div>
                        <div class="col-sm-5 text-right">
                            <a class="button size-2 style-3" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">submit</span>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="popup-or">
                        <span>or</span>
                    </div>
                    <div class="row m5">
                        <div class="col-sm-4 col-xs-b10 col-sm-b0">
                            <a class="button facebook-button size-2 style-4 block" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">facebook</span>
                                </span>
                            </a>
                        </div>
                        <div class="col-sm-4 col-xs-b10 col-sm-b0">
                            <a class="button twitter-button size-2 style-4 block" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">twitter</span>
                                </span>
                            </a>
                        </div>
                        <div class="col-sm-4">
                            <a class="button google-button size-2 style-4 block" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">google+</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="button-close"></div>
            </div>
        </div>
        <div class="popup-content" data-rel="3">
            <div class="layer-close"></div>
            <div class="popup-container size-2">
                <div class="popup-align">
                    <div class="row">
                        <div class="col-sm-6 col-xs-b30 col-sm-b0">
                            <div class="main-product-slider-wrapper swipers-couple-wrapper">
                                <div class="swiper-container swiper-control-top">
                                    <div class="swiper-button-prev hidden"></div>
                                    <div class="swiper-button-next hidden"></div>
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="swiper-lazy-preloader"></div>
                                            <div class="product-big-preview-entry swiper-lazy" data-background="img/product-preview-4.jpg"></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="swiper-lazy-preloader"></div>
                                            <div class="product-big-preview-entry swiper-lazy" data-background="img/product-preview-5.jpg"></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="swiper-lazy-preloader"></div>
                                            <div class="product-big-preview-entry swiper-lazy" data-background="img/product-preview-6.jpg"></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="swiper-lazy-preloader"></div>
                                            <div class="product-big-preview-entry swiper-lazy" data-background="img/product-preview-7.jpg"></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="swiper-lazy-preloader"></div>
                                            <div class="product-big-preview-entry swiper-lazy" data-background="img/product-preview-8.jpg"></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="swiper-lazy-preloader"></div>
                                            <div class="product-big-preview-entry swiper-lazy" data-background="img/product-preview-9.jpg"></div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="swiper-lazy-preloader"></div>
                                            <div class="product-big-preview-entry swiper-lazy" data-background="img/product-preview-10.jpg"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="empty-space col-xs-b30 col-sm-b60"></div>
                                <div class="swiper-container swiper-control-bottom" data-breakpoints="1" data-xs-slides="3" data-sm-slides="3" data-md-slides="4" data-lt-slides="5" data-slides-per-view="5" data-center="1" data-click="1">
                                    <div class="swiper-button-prev hidden"></div>
                                    <div class="swiper-button-next hidden"></div>
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="product-small-preview-entry">
                                                <img src="img/product-preview-4_.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="product-small-preview-entry">
                                                <img src="img/product-preview-5_.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="product-small-preview-entry">
                                                <img src="img/product-preview-6_.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="product-small-preview-entry">
                                                <img src="img/product-preview-7_.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="product-small-preview-entry">
                                                <img src="img/product-preview-8_.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="product-small-preview-entry">
                                                <img src="img/product-preview-9_.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="product-small-preview-entry">
                                                <img src="img/product-preview-10_.jpg" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="simple-article size-3 grey col-xs-b5">SMART WATCHES</div>
                            <div class="h3 col-xs-b25">watch 42mm smartwatch</div>
                            <div class="row col-xs-b25">
                                <div class="col-sm-6">
                                    <div class="simple-article size-5 grey">PRICE: <span class="color">$225.00</span></div>
                                </div>
                                <div class="col-sm-6 col-sm-text-right">
                                    <div class="rate-wrapper align-inline">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                    </div>
                                    <div class="simple-article size-2 align-inline">128 Reviews</div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="simple-article size-3 col-xs-b5">ITEM NO.: <span class="grey">127-#5238</span></div>
                                </div>
                                <div class="col-sm-6 col-sm-text-right">
                                    <div class="simple-article size-3 col-xs-b20">AVAILABLE.: <span class="grey">YES</span></div>
                                </div>
                            </div>
                            <div class="simple-article size-3 col-xs-b30">Vivamus in tempor eros. Phasellus rhoncus in nunc sit amet mattis. Integer in ipsum vestibulum, molestie arcu ac, efficitur tellus. Phasellus id vulputate erat.</div>
                            <div class="row col-xs-b40">
                                <div class="col-sm-3">
                                    <div class="h6 detail-data-title size-1">size:</div>
                                </div>
                                <div class="col-sm-9">
                                    <select class="SlectBox">
                                        <option disabled="disabled" selected="selected">Choose size</option>
                                        <option value="volvo">Volvo</option>
                                        <option value="saab">Saab</option>
                                        <option value="mercedes">Mercedes</option>
                                        <option value="audi">Audi</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row col-xs-b40">
                                <div class="col-sm-3">
                                    <div class="h6 detail-data-title">color:</div>
                                </div>
                                <div class="col-sm-9">
                                    <div class="color-selection size-1">
                                        <div class="entry active" style="color: #a7f050;"></div>
                                        <div class="entry" style="color: #50e3f0;"></div>
                                        <div class="entry" style="color: #eee;"></div>
                                        <div class="entry" style="color: #4d900c;"></div>
                                        <div class="entry" style="color: #edb82c;"></div>
                                        <div class="entry" style="color: #7d3f99;"></div>
                                        <div class="entry" style="color: #3481c7;"></div>
                                        <div class="entry" style="color: #bf584b;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row col-xs-b40">
                                <div class="col-sm-3">
                                    <div class="h6 detail-data-title size-1">quantity:</div>
                                </div>
                                <div class="col-sm-9">
                                    <div class="quantity-select">
                                        <span class="minus"></span>
                                        <span class="number">1</span>
                                        <span class="plus"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row m5 col-xs-b40">
                                <div class="col-sm-6 col-xs-b10 col-sm-b0">
                                    <a class="button size-2 style-2 block" href="#">
                                        <span class="button-wrapper">
                                            <span class="icon"><img src="img/icon-2.png" alt=""></span>
                                            <span class="text">add to cart</span>
                                        </span>
                                    </a>
                                </div>
                                <div class="col-sm-6">
                                    <a class="button size-2 style-1 block noshadow" href="#">
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
                                        <a class="entry" href="#"><i class="fa fa-facebook"></i></a>
                                        <a class="entry" href="#"><i class="fa fa-twitter"></i></a>
                                        <a class="entry" href="#"><i class="fa fa-linkedin"></i></a>
                                        <a class="entry" href="#"><i class="fa fa-google-plus"></i></a>
                                        <a class="entry" href="#"><i class="fa fa-pinterest-p"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="button-close"></div>
            </div>
        </div>
    </div>
@endsection
