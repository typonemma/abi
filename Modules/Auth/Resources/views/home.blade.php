@extends('partials.main')
@section('content')
<div class="header-empty-space"></div>
<div class="container">
<div class="text-center">
    <div class="empty-space col-sm-b60"></div>
    <div class="h1">WELCOME TO RADIANT COMPUTER</div>
    <div class="title-underline center"><span></span></div>
    <div class="simple-article size-5 grey uppercase col-xs-b5">Temukan komponen Laptop yang anda butuhkan disini</div>
    <div class="empty-space col-sm-b10"></div>
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-2  selecthome">
            <select class="SlectBox">
                <option disabled="disabled" selected="selected">SEMUA</option>
                <option value="volvo">CATEGORY</option>
                <option value="saab">CATEGORY</option>
                <option value="mercedes">CATEGORY</option>
                <option value="audi">CATEGORY</option>
            </select>
        </div>
        <div class="col-sm-4">
            <form>
                <div class="search-submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                    <input type="submit">
                </div>
                <input class="simple-input style-1" type="text" value="" placeholder="Enter keyword">
            </form>
        </div>
        <div class="col-sm-3"></div>

    </div>
    <div class="empty-space col-xs-b40 col-sm-b80"></div>
</div>
</div>
<div>
<div class="grey-background">
    <div class="empty-space col-xs-b40 col-sm-b80"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-push-3">
                <div class="tabs-block">
                    <div class="h4 col-xs-b25">BEST SELLER PRODUCTS</div>
                    <div class="tab-entry visible">
                        <div class="row nopadding">
                            <div class="col-sm-4">
                                <div class="product-shortcode style-1">
                                    <div class="title">
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">SMART PHONES</a></div>
                                        <div class="h6 animate-to-green"><a href="#">Smartphone vibe x2</a></div>
                                    </div>
                                    <div class="preview">
                                        <img src="{{URL::asset('public/custom/img/product-7.jpg')}}" alt="" />
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-2" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                                                        <span class="text">Learn More</span>
                                                    </span>
                                                </a>
                                                <a class="button size-2 style-3" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-3.png')}}" alt=""></span>
                                                        <span class="text">Add To Cart</span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <div class="simple-article size-4 dark">$630.00</div>
                                    </div>
                                    <div class="description">
                                        <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                        <div class="icons">
                                            <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-shortcode style-1">
                                    <div class="title">
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">SMART PHONES</a></div>
                                        <div class="h6 animate-to-green"><a href="#">Smartphone vibe x2</a></div>
                                    </div>
                                    <div class="preview">
                                        <img src="{{URL::asset('public/custom/img/product-8.jpg')}}" alt="" />
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-2" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                                                        <span class="text">Learn More</span>
                                                    </span>
                                                </a>
                                                <a class="button size-2 style-3" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-3.png')}}" alt=""></span>
                                                        <span class="text">Add To Cart</span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <div class="simple-article size-4 dark">$630.00</div>
                                    </div>
                                    <div class="description">
                                        <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                        <div class="icons">
                                            <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-shortcode style-1">
                                    <div class="title">
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">SMART PHONES</a></div>
                                        <div class="h6 animate-to-green"><a href="#">Smartphone vibe x2</a></div>
                                    </div>
                                    <div class="preview">
                                        <img src="{{URL::asset('public/custom/img/product-9.jpg')}}" alt="" />
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-2" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                                                        <span class="text">Learn More</span>
                                                    </span>
                                                </a>
                                                <a class="button size-2 style-3" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-3.png')}}" alt=""></span>
                                                        <span class="text">Add To Cart</span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <div class="simple-article size-4"><span class="color">$630.00</span>&nbsp;&nbsp;&nbsp;<span class="line-through">$350.00</span></div>
                                    </div>
                                    <div class="description">
                                        <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                        <div class="icons">
                                            <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-shortcode style-1">
                                    <div class="title">
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">SMART PHONES</a></div>
                                        <div class="h6 animate-to-green"><a href="#">Smartphone vibe x2</a></div>
                                    </div>
                                    <div class="preview">
                                        <img src="{{URL::asset('public/custom/img/product-10.jpg')}}" alt="" />
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-2" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                                                        <span class="text">Learn More</span>
                                                    </span>
                                                </a>
                                                <a class="button size-2 style-3" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-3.png')}}" alt=""></span>
                                                        <span class="text">Add To Cart</span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <div class="simple-article size-4 dark">$630.00</div>
                                    </div>
                                    <div class="description">
                                        <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                        <div class="icons">
                                            <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-shortcode style-1">
                                    <div class="title">
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">SMART PHONES</a></div>
                                        <div class="h6 animate-to-green"><a href="#">Smartphone vibe x2</a></div>
                                    </div>
                                    <div class="preview">
                                        <img src="{{URL::asset('public/custom/img/product-11.jpg')}}" alt="" />
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-2" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                                                        <span class="text">Learn More</span>
                                                    </span>
                                                </a>
                                                <a class="button size-2 style-3" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-3.png')}}" alt=""></span>
                                                        <span class="text">Add To Cart</span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <div class="simple-article size-4 dark">$630.00</div>
                                    </div>
                                    <div class="description">
                                        <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                        <div class="icons">
                                            <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="product-shortcode style-1">
                                    <div class="title">
                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">SMART PHONES</a></div>
                                        <div class="h6 animate-to-green"><a href="#">Smartphone vibe x2</a></div>
                                    </div>
                                    <div class="preview">
                                        <img src="{{URL::asset('public/custom/img/product-12.jpg')}}" alt="" />
                                        <div class="preview-buttons valign-middle">
                                            <div class="valign-middle-content">
                                                <a class="button size-2 style-2" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                                                        <span class="text">Learn More</span>
                                                    </span>
                                                </a>
                                                <a class="button size-2 style-3" href="#">
                                                    <span class="button-wrapper">
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-3.png')}}" alt=""></span>
                                                        <span class="text">Add To Cart</span>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price">
                                        <div class="simple-article size-4 dark">$630.00</div>
                                    </div>
                                    <div class="description">
                                        <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                        <div class="icons">
                                            <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                            <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="empty-space col-xs-b35 col-md-b70"></div>
                <div class="container">
                    <div class="text-center">
                        <div class="h2">testimonials</div>
                        <div class="title-underline center"><span></span></div>
                    </div>
                </div>
                <div class="empty-space col-xs-b35 col-md-b70"></div>
                <div class="container">
                    <div class="slider-wrapper our-team-slider">
                        <div class="swiper-button-prev hidden-xs hidden-sm"></div>
                        <div class="swiper-button-next hidden-xs hidden-sm"></div>
                        <div class="swiper-container" data-breakpoints="1" data-xs-slides="1" data-sm-slides="2" data-md-slides="3" data-lt-slides="3"  data-slides-per-view="3">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="product-shortcode style-9">
                                        <div class="preview">
                                            <div class="main-testi">
                                                <div class="text-center">
                                                    <span>ADMIN</span>
                                                    <H4>MONICA RAJAN</H4>
                                                    <p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-shortcode style-9">
                                        <div class="preview">
                                            <div class="main-testi">
                                                <div class="text-center">
                                                    <span>ADMIN</span>
                                                    <H4>MONICA RAJAN</H4>
                                                    <p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-shortcode style-9">
                                        <div class="preview">
                                            <div class="main-testi">
                                                <div class="text-center">
                                                    <span>ADMIN</span>
                                                    <H4>MONICA RAJAN</H4>
                                                    <p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-shortcode style-9">
                                        <div class="preview">
                                            <div class="main-testi">
                                                <div class="text-center">
                                                    <span>ADMIN</span>
                                                    <H4>MONICA RAJAN</H4>
                                                    <p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-shortcode style-9">
                                        <div class="preview">
                                            <div class="main-testi">
                                                <div class="text-center">
                                                    <span>ADMIN</span>
                                                    <H4>MONICA RAJAN</H4>
                                                    <p>lorem ipsum dolor sit amet lorem ipsum dolor sit amet</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-pagination relative-pagination visible-xs visible-sm"></div>
                        </div>
                    </div>
                </div>
                <div class="empty-space col-xs-b35 col-md-b70"></div>
                <div class="container">
                    <div class="text-center">
                        <div class="h2">available at</div>
                        <div class="title-underline center"><span></span></div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3 col-md-b10"><img src="{{URL::asset('public/custom/img/tokopedia.jpg')}}"></div>
                        <div class="col-sm-3 col-md-b10"><img src="{{URL::asset('public/custom/img/shopee.jpg')}}"></div>
                        <div class="col-sm-3 col-md-b10"><img src="{{URL::asset('public/custom/img/bukalapak.jpg')}}"></div>
                        <div class="col-sm-3 col-md-b10"><img src="{{URL::asset('public/custom/img/blibli.jpg')}}"></div>
                        <div class="col-sm-3"><img src="{{URL::asset('public/custom/img/lazada.jpg')}}"></div>
                        <div class="col-sm-3"><img src="{{URL::asset('public/custom/img/jdid.jpg')}}"></div>
                        <div class="col-sm-3"><img src="{{URL::asset('public/custom/img/tokopedia.jpg')}}"></div>
                        <div class="col-sm-3"><img src="{{URL::asset('public/custom/img/shopee.jpg')}}"></div>

                    </div>
                </div>
            </div>
            <div class="col-md-3 col-md-pull-9">
                <div class="row">
                    <div class="col-sm-6 col-md-12">
                        <div class="h4 col-xs-b25">latest blog</div>
                        <div class="row m5 ">
                            <div class="blog-shortcode style-1">
                                <a href="#" class="preview simple-mouseover"><img src="{{URL::asset('public/custom/img/blog1.jpg')}}" alt="" /></a>
                                <div class="description">
                                    <div class="simple-article size-1 grey col-xs-b5">APR 07 / 15</div>
                                    <h6 class="h6 col-xs-b10"><a href="#">Phasellus rhoncus in</a></h6>
                                    <div class="simple-article size-2">Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus</div>
                                </div>
                            </div>
                            <div class="blog-shortcode style-1">
                                <a href="#" class="preview simple-mouseover"><img src="{{URL::asset('public/custom/img/blog2.jpg')}}" alt="" /></a>
                                <div class="description">
                                    <div class="simple-article size-1 grey col-xs-b5">APR 07 / 15</div>
                                    <h6 class="h6 col-xs-b10"><a href="#">Phasellus rhoncus in</a></h6>
                                    <div class="simple-article size-2">Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus</div>
                                </div>
                            </div>
                            <div class="blog-shortcode style-1">
                                <a href="#" class="preview simple-mouseover"><img src="{{URL::asset('public/custom/img/blog3.jpg')}}" alt="" /></a>
                                <div class="description">
                                    <div class="simple-article size-1 grey col-xs-b5">APR 07 / 15</div>
                                    <h6 class="h6 col-xs-b10"><a href="#">Phasellus rhoncus in</a></h6>
                                    <div class="simple-article size-2">Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus</div>
                                </div>
                            </div>
                        </div>
                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-md-12">
                        <div class="banner-shortcode style-2">
                            <div class="content">
                                <div class="background" style="background-image: {{URL::asset('public/custom/img/promo1.jpg')}};"></div>
                                <div class="description valign-middle">
                                    <div class="valign-middle-content">
                                        <div class="simple-article size-1 color"><a href="#">BLACK FRIDAY PROMO</a></div>
                                        <div class="h4 "><a href="#">TUPPERWARE BLUE TOPLES</a></div>
                                        <div class="banner-title text-red">- 35% OFF</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="banner-shortcode style-2">
                            <div class="content">
                                <div class="background" style="background-image: {{URL::asset('public/custom/img/promo1.jpg')}};"></div>
                                <div class="description valign-middle">
                                    <div class="valign-middle-content">
                                        <div class="simple-article size-1 color"><a href="#">BLACK FRIDAY PROMO</a></div>
                                        <div class="h4 "><a href="#">TUPPERWARE BLUE TOPLES</a></div>
                                        <div class="banner-title text-red">- 35% OFF</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- FOOTER -->
<footer>
    <div class="container">
        <div class="footer-top">
            <div class="row">
                <div class="col-sm-6 col-md-6 col-xs-b30 col-md-b0">
                    <img src="{{URL::asset('public/custom/img/logo-footer.png')}}" alt="" />
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
                            <a class="image" href="#"><img src="{{URL::asset('public/custom/img/blog1.jpg')}}" alt="" /></a>
                            <div class="description">
                                <div class="date">apr 07 / 15</div>
                                <a class="title">Fusce tincidunt accumsan pretium sit amet</a>
                            </div>
                        </div>
                        <div class="footer-post-preview clearfix">
                            <a class="image" href="#"><img src="{{URL::asset('public/custom/img/blog2.jpg')}}" alt="" /></a>
                            <div class="description">
                                <div class="date">apr 07 / 15</div>
                                <a class="title">Fusce tincidunt accumsan pretium sit amet</a>
                            </div>
                        </div>
                        <div class="footer-post-preview clearfix">
                            <a class="image" href="#"><img src="{{URL::asset('public/custom/img/blog3.jpg')}}" alt="" /></a>
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
@endsection
