@extends('partials.main')

@section('content')
        <div id="content-block">   
            <div class="block-entry fixed-background" style="background-image: url({{url('public/custom/img/bg-contact.jpg')}});">        
            <!-- <div class="block-entry fixed-background" style="background-image: url(img/bg-contact.jpg);"> -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <div class="cell-view simple-banner-height text-center">
                                <div class="empty-space col-xs-b35 col-sm-b70"></div>
                                <h1 class="h1 light">contact us</h1>
                                <div class="title-underline center"><span></span></div>
                                <div class="simple-article light transparent size-4">In feugiat molestie tortor a malesuada. Etiam a venenatis ipsum. Proin pharetra elit at feugiat commodo vel placerat tincidunt sapien nec</div>
                                <div class="empty-space col-xs-b35 col-sm-b70"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="empty-space col-xs-b35 col-md-b70"></div>
            <div class="container">
                <div class="text-center">
                    <div class="simple-article size-3 text-blue uppercase col-xs-b5">contact us</div>
                    <div class="h2">we ready for your questions</div>
                    <div class="title-underline center"><span></span></div>
                </div>
            </div>
            <div class="empty-space col-sm-b15 col-md-b50"></div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="icon-description-shortcode style-1">
                            <img src="{{URL::asset('public/custom/img/icon-25.png')}}">
                            <!-- <img class="icon" src="img/icon-25.png" alt=""> -->
                            <div class="title h6">address</div>
                            <div class="description simple-article size-2">
                                <p>
                                    <b>SURABAYA</b><br/>
                                    HI-TECH MALL - Lt. Dasar Blok A1/12-12A<br/>
                                    Kusuma Bangsa 116 - 118, Surabaya, Jawa Timur
                                </p>
                                <p>
                                    <b>SEMARANG</b><br/>
                                    PLAZA SIMPANG LIMA I - SCC Lt. 5 <br/>No. 64-65, Semarang, Jawa Tengah
                                </p>
                                <p>
                                    <b>DENPASAR</b><br/>
                                    RIMO TRADE CENTRE - Lt. 3 No. 40<br/>
                                    Jl. Diponegoro no 136, Denpasar, Bali
                                </p>
                                <p>
                                    <b>MATARAM</b><br/>
                                    Jalan Catur Warga no.16 D<br/>
                                    Mataram, Nusa Tenggara Barat
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="icon-description-shortcode style-1">
                            <img src="{{URL::asset('public/custom/img/icon-23.png')}}">
                            <!-- <img class="icon" src="img/icon-23.png" alt=""> -->
                            <div class="title h6">phone</div>
                            <div class="description simple-article size-2">
                                <p>
                                    <b>SURABAYA</b><br/>
                                    (031) 5325340, 5329905<br/>
                                    wa: 087853221379
                                </p>
                                <p><b>SEMARANG</b><br/>
                                    (024) 8457038<br/>
                                WA: 087832993898</p>
                                <p>
                                    <b>DENPASAR</b><br/>
                                    (0361) 242806<br/>
                                    WA: 087861722876
                                </p>
                                <p>
                                    <b>MATARAM</b><br/>
                                    (0370) 7503116<br/>
                                    WA: 087865311946
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="icon-description-shortcode style-1">
                            <img src="{{URL::asset('public/custom/img/open.png')}}">
                            <!-- <img class="icon" src="img/open.png" alt=""> -->
                            <div class="title h6">working hours</div>
                            <div class="description simple-article size-2">
                                <p>
                                    <b>SURABAYA</b><br/>
                                    Senin - Sabtu 10.00-17.00 WIB<br/>
                                    Minggu dan Tanggal Merah Libur
                                </p>
                                <p>
                                    <b>SEMARANG</b><br/>
                                    Senin - Minggu 10.00-18.00 WIB<br/>
                                    Hari Raya Nasional Libur
                                </p>
                                <p>
                                    <b>DENPASAR</b><br/>
                                    Senin - Minggu 11.00-20.00 WITA<br/>
                                    Hari Raya Nasional Libur
                                </p>
                                <p>
                                    <b>MATARAM</b><br/>
                                    Senin - Sabtu 09.00-19.00 WITA<br/>
                                    Minggu dan Tanggal Merah Libur
                                </p>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="icon-description-shortcode style-1">
                            <img src="{{URL::asset('public/custom/img/icon-28.png')}}">
                            <!-- <img class="icon" src="img/icon-28.png" alt=""> -->
                            <div class="title h6">email</div>
                            <div class="description simple-article size-2"><a href="mailto:sales@pusatbaterai.com">sales@pusatbaterai.com</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b25 col-sm-b50"></div>
            
            <div class="container">
                <div class="row" style="background: url({{url('public/custom/img/bg-banner-contact.jpg')}}) no-repeat;">            
                <!-- <div class="row" style="background: url(img/bg-banner-contact.jpg) no-repeat;"> -->
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6 text-center">
                        <div class="empty-space col-xs-b25 col-sm-b100"></div>
                        <p class="h5 light">FIND US ON</p>                            
                        <p>
                            <img src="{{URL::asset('public/custom/img/tokopedia-contact.png')}}">
                            <!-- <img class="icon" src="img/tokopedia-contact.png" alt=""> -->
                        </p>
                        <p class="h6 light">tokopedia.com/radiantkomputer</p>
                        <div class="empty-space col-sm-b10"></div>
                        <a class="button size-1 style-1" href="https://www.tokopedia.com/radiantkomputer?source=universe&st=product">
                            <span class="button-wrapper">
                                <span class="icon">
                                    <img src="{{URL::asset('public/custom/img/icon-1.png')}}">
                                    <!-- <img src="img/icon-1.png" alt=""> -->
                                </span>
                                <span class="text">visit shop</span>
                            </span>
                        </a>
                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b25 col-sm-b50"></div>
            <div class="container">
                <h4 class="h4 text-center col-xs-b25">have a questions?</h4>
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <form class="contact-form">
                            <div class="row m5">
                                <div class="col-sm-6">
                                    <input class="simple-input col-xs-b20" type="text" value="" placeholder="Name" name="name" />
                                </div>
                                <div class="col-sm-6">
                                    <input class="simple-input col-xs-b20" type="text" value="" placeholder="Email" name="email" />
                                </div>
                                <div class="col-sm-6">
                                    <input class="simple-input col-xs-b20" type="text" value="" placeholder="Phone" name="phone" />
                                </div>
                                <div class="col-sm-6">
                                    <input class="simple-input col-xs-b20" type="text" value="" placeholder="Subject" name="subject" />
                                </div>
                                <div class="col-sm-12">
                                    <textarea class="simple-input col-xs-b20" placeholder="Your message" name="message"></textarea>
                                </div>
                                <div class="col-sm-12">
                                    <div class="text-center">
                                        <div class="button size-2 style-3">
                                            <span class="button-wrapper">
                                                <span class="icon">
                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                </span> 
                                                <span class="text">send message</span>
                                            </span>
                                            <input type="submit"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b35 col-md-b70"></div>
            <div class="empty-space col-xs-b35 col-md-b70"></div>            
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