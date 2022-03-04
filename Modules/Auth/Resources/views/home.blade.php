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
                                        <img src="{{URL::asset('public/custom/img/product10.jpg')}}" alt="" />
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
                                        <img src="img/product-11.jpg" alt="" />
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
                                        <img src="img/product-12.jpg" alt="" />
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
                                <a href="#" class="preview simple-mouseover"><img src="img/blog1.jpg" alt="" /></a>
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
<div class="popup-wrapper">
    <div class="bg-layer"></div>
    <div class="popup-content" data-rel="1">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">Log in</h3>
                <form>
                    <div class="empty-space col-xs-b30"></div>
                    <input id="phone_number" name="phone_number" class="simple-input" type="text" value="" placeholder="Phone Number" />
                    <ul class="phone-number-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="password" name="password" class="simple-input" type="password" value="" placeholder="Password" />
                    <ul class="password-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-6 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b5"></div>
                            <a class="simple-link open-popup" data-rel="3" onclick="ForgotPassword()">Forgot password?</a>
                            <div class="empty-space col-xs-b5"></div>
                            <a class="simple-link open-popup" data-rel="2" onclick="Load()">register now</a>
                        </div>
                        <input id="temp" name="temp" type="hidden" value="">
                        <div class="col-sm-6 text-right">
                            <a class="button size-2 style-3 login">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                    <span class="text">login</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </form>
                <div class="popup-or">
                    <span>or</span>
                </div>
                <div class="row m5">
                    <div class="col-sm-4 col-xs-b10 col-sm-b0">
                        <a class="button facebook-button size-2 style-4 block" href="facebook">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">facebook</span>
                            </span>
                        </a>
                    </div>
                    <div class="col-sm-4 col-xs-b10 col-sm-b0">
                        <a class="button twitter-button size-2 style-4 block" href="#">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">twitter</span>
                            </span>
                        </a>
                    </div>
                    <div class="col-sm-4">
                        <a class="button google-button size-2 style-4 block" href="#">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">google+</span>
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="popup-content" data-rel="2">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">register</h3>
                <form>
                    <div class="empty-space col-xs-b30"></div>
                    <input id="name" name="name" class="simple-input" type="text" value="" placeholder="Your name" />
                    <ul class="name-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="reg_phone_number" name="phone_number" class="simple-input" type="text" value="" placeholder="Phone Number" />
                    <ul class="reg-phone-number-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="reg_password" name="password" class="simple-input" type="password" value="" placeholder="Enter password" />
                    <ul class="reg-password-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="repeat_password" name="repeat_password" class="simple-input" type="password" value="" placeholder="Repeat password" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-7 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b15"></div>
                            <a class="simple-link size-3 open-popup" data-rel="1" onclick="Load()">BACK TO LOGIN</a>
                        </div>
                        <input id="reg_temp" name="temp" type="hidden" value="">
                        <div class="col-sm-5 text-right">
                            <a class="button size-2 style-3 register">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                    <span class="text">register</span>
                                </span>
                            </a>
                        </div>
                    </div>
                    <ul class="reg-errors" style="list-style-type:none;color:red;">

                    </ul>
                </form>
            </div>
        </div>
    </div>
    <div class="popup-content" data-rel="3">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">forgot password</h3>
                <div class="empty-space col-xs-b20"></div>
                <h6 class="h6 text-center" style="font-weight: normal;text-transform: none;">We will send you an OTP code, please input your phone number. </h6>
                <div class="empty-space col-xs-b20"></div>
                <input id="fp1-phone-number" name="fp1_phone_number" type="text" class="simple-input" type="text" value="" placeholder="Phone Number" />
                <ul class="fp1-phone-errors" style="list-style-type:none;color:red;margin-left:27%">

                </ul>
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <div class="row">
                    <div class="col-sm-6 col-xs-b10 col-sm-b0">
                        <div class="empty-space col-sm-b5"></div>
                        <div class="empty-space col-sm-b5"></div>

                        <a class="simple-link open-popup" data-rel="1">BACK TO LOGIN</a>
                    </div>
                    <div class="col-sm-6 text-right">
                        <a id="verifyPhoneNumber" class="button size-2 style-3 open-popup verify-phone-number" data-rel="4" href="#">
                        <span class="button-wrapper">
                            <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                            <span class="text">submit</span>
                        </span>
                    </a>
                    </div>
                </div>
                </div>
                <div class="button-close"></div>
            </div>
        </div>
        <div class="popup-content" data-rel="4">
            <div class="layer-close"></div>
            <div class="popup-container size-1">
                <div class="popup-align">
                    <h3 class="h3 text-center">forgot password</h3>
                    <div class="empty-space col-xs-b20"></div>
                    <h6 class="h6 text-center" style="font-weight: normal;text-transform: none;">Enter the OTP code that has been sent to your phone number</h6>
                    <div class="empty-space col-xs-b20"></div>
                    <div class="otp">
                        <input type="text" id="digit-1" name="digit-1" data-next="digit-2" />
                        <input type="text" id="digit-2" name="digit-2" data-next="digit-3" data-previous="digit-1" />
                        <input type="text" id="digit-3" name="digit-3" data-next="digit-4" data-previous="digit-2" />
                        <input type="text" id="digit-4" name="digit-4" data-next="digit-5" data-previous="digit-3" />
                        <input type="text" id="digit-5" name="digit-5" data-next="digit-6" data-previous="digit-4" />
                        <input type="text" id="digit-6" name="digit-6" data-previous="digit-5" />
                    </div>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-6 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b5"></div>
                            <a class="simple-link">RESEND CODE</a>
                            <div class="empty-space col-xs-b5"></div>
                            <a class="simple-link open-popup" data-rel="1">BACK TO LOGIN</a>
                        </div>
                        <div class="col-sm-6 text-right">
                            <a id="verifyOTP" class="button size-2 style-3 open-popup" data-rel="5" href="#">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                    <span class="text">submit</span>
                                </span>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="button-close"></div>
            </div>
        </div>
    </div>
    <div class="popup-content" data-rel="5">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">forgot password</h3>
                <form id="forgotPassword2Form" method="post" action="verifyPassword">
                    <div class="empty-space col-xs-b20"></div>
                    <h6 class="h6 text-center" style="font-weight: normal;text-transform: none;">Please input your new password</h6>
                    <div class="empty-space col-xs-b20"></div>
                    <input id="new-password" name="new_password" class="simple-input" type="password" value="" placeholder="New password" />
                    <ul class="fp2-password-errors" style="list-style-type:none;color:red;margin-left:27%">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="confnewpasswd" name="confnewpasswd" class="simple-input" type="password" value="" placeholder="Confirm New password" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="fp_temp" name="fp_temp" type="hidden" value="">
                    <div class="row text-center">
                        <a class="button size-2 style-3 verify-password">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">make new password</span>
                            </span>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div style="display:none" id="recaptcha-container"></div>
<script src="{{ URL::asset('public/jquery/jquery-1.10.2.js') }}"></script>
<script src="https://www.gstatic.com/firebasejs/8.9.1/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.9.1/firebase-auth.js"></script>
<script type="text/javascript">
    const config = {
        apiKey: "AIzaSyBWBs5b2LgRvhSzgQ1ROu2t81zdiuXuE8c",
        authDomain: "laravel-otp-authenticati-b8b94.firebaseapp.com",
        projectId: "laravel-otp-authenticati-b8b94",
        storageBucket: "laravel-otp-authenticati-b8b94.appspot.com",
        messagingSenderId: "616261656632",
        appId: "1:616261656632:web:abdfb97eb6bd71a3d2c6cd",
        measurementId: "G-85TM774S3P"
    };
    firebase.initializeApp(config);
</script>
<script>
    $(function(){
        $('.login').click(function(e){
            let phone_number = $('#phone_number').val();
            let password = $('#password').val();
            let temp = phone_number + '-' + password;
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                method: "POST",
                url: "/doLogin",
                data : {
                    phone_number : phone_number,
                    password : password,
                    temp : temp
                },
                success: function() {
                    location.href = "/profile-detail"
                },
                error: function(jqXhr, json, errorThrown) {
                    Load();
                    let errors = jqXhr.responseJSON;
                    let errorsHtml = '';
                    if ('phone_number' in errors['errors']) {
                        if (errors['errors']['phone_number'].length > 0) {
                            $('#phone_number').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['phone_number'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.phone-number-errors').append(errorsHtml);
                    }
                    if ('password' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['password'].length > 0) {
                            $('#password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['password'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.password-errors').append(errorsHtml);
                    }
                    if ('temp' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['temp'].length > 0) {
                            $('#password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['temp'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.password-errors').append(errorsHtml);
                    }
                }
            });
        });

        $('.register').click(function(e){
            let name = $('#name').val();
            let phone_number = $('#reg_phone_number').val();
            let password = $('#reg_password').val();
            let confpasswd = $('#repeat_password').val();
            let temp = password + '-' + confpasswd;
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                method: "POST",
                url: "/doRegister",
                data : {
                    name : name,
                    phone_number : phone_number,
                    password : password,
                    temp : temp
                },
                success: function() {
                    $('.login-popup').click();
                },
                error: function(jqXhr, json, errorThrown) {
                    Load();
                    let errors = jqXhr.responseJSON;
                    let errorsHtml = '';
                    if ('name' in errors['errors']) {
                        if (errors['errors']['name'].length > 0) {
                            $('#name').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['name'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.name-errors').append(errorsHtml);
                    }
                    if ('phone_number' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['phone_number'].length > 0) {
                            $('#reg_phone_number').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['phone_number'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.reg-phone-number-errors').append(errorsHtml);
                    }
                    if ('password' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['password'].length > 0) {
                            $('#reg_password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['password'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.reg-password-errors').append(errorsHtml);
                    }
                    if ('temp' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['temp'].length > 0) {
                            $('#reg_password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['temp'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.reg-password-errors').append(errorsHtml);
                    }
                }
            });
        });

        $('.verify-phone-number').click(function(e){
            let phone_number = $('#fp1-phone-number').val();
            let verifyPhoneNumber = document.getElementById('verifyPhoneNumber');
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                method: "POST",
                url: "/verifyPhoneNumber",
                data : {
                    phone_number : phone_number,
                },
                success: function() {
                    verifyPhoneNumber.classList.add('open-popup');
                    verifyPhoneNumber.click();
                    otpSend();
                },
                error: function(jqXhr, json, errorThrown) {
                    Load();
                    let errors = jqXhr.responseJSON;
                    let errorsHtml = '';
                    if ('phone_number' in errors['errors']) {
                        if (errors['errors']['phone_number'].length > 0) {
                            $('#fp1-phone-number').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['phone_number'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.fp1-phone-errors').append(errorsHtml);
                    }
                }
            });
        });

        $('.verify-password').click(function(e){
            let password = $('#new-password').val();
            let confpasswd = $('#confnewpasswd').val();
            let temp = password + '-' + confpasswd;
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                method: "POST",
                url: "/verifyPassword",
                data : {
                    new_password : password,
                    temp : temp
                },
                success: function() {
                    location.href = ""
                },
                error: function(jqXhr, json, errorThrown) {
                    Load();
                    let errors = jqXhr.responseJSON;
                    let errorsHtml = '';
                    if ('new_password' in errors['errors']) {
                        if (errors['errors']['new_password'].length > 0) {
                            $('#new-password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['new_password'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.fp2-password-errors').append(errorsHtml);
                    }
                    if ('temp' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['temp'].length > 0) {
                            $('#new-password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['temp'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.fp2-password-errors').append(errorsHtml);
                    }
                }
            });
        });
    });

    function ForgotPassword() {
        Load();
        window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container', {
            'size': 'invisible',
            'callback': (response) => {
                onSignInSubmit();
            }
        });
    }

    function otpSend() {
        var phoneNumber = document.getElementById('fp1-phone-number').value;
        const appVerifier = window.recaptchaVerifier;
        firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
        .then((confirmationResult) => {
            window.confirmationResult = confirmationResult;
        }).catch((error) => {
            console.log(error.message);
        });
    }

    function otpVerify() {
        let verifyOTP = document.getElementById('verifyOTP');
        if (!verifyOTP.classList.contains('open-popup')) {
            let code = '';
            for (let i = 1; i <= 6; i++) {
                let digit = document.getElementById('digit-' + i.toString()).value;
                code += digit;
            }
            confirmationResult.confirm(code).then(function (result) {
                verifyOTP.classList.add('open-popup');
                verifyOTP.click();
            }).catch(function (error) {
                alert(error.message);
            });
        }
    }
</script>
@endsection
