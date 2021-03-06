<!DOCTYPE html>
<?php
    header("Access-Control-Allow-Origin: *");
?>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="format-detection" content="telephone=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no, minimal-ui"/>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <!-- fonts -->
        <link href="https://fonts.googleapis.com/css?family=Questrial|Raleway:700,900" rel="stylesheet">
        <link href="{{ URL::asset('public/custom/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{ URL::asset('public/custom/css/bootstrap.extension.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{ URL::asset('public/custom/css/style.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{ URL::asset('public/custom/css/swiper.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{ URL::asset('public/custom/css/sumoselect.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{ URL::asset('public/custom/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="{{URL::asset('public/custom/img/favicon.png')}}" />
        <title>Pusat Baterai</title>
    </head>
    <body>
        <!-- LOADER -->
        <div id="loader-wrapper"></div>
        <div id="content-block">
            <!-- HEADER -->
            @include('partials.header')
            <div class="header-empty-space"></div>
            @yield('content')
                <div>
                @include('partials.footer')
                </div>
                <div class="popup-wrapper">
                    <div class="bg-layer"></div>
                    <div id="popupProduct" class="popup-content" data-rel="0">
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
                                                <div id="gallery-images" class="swiper-wrapper">
                                                    {{-- <div class="swiper-slide">
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
                                                    </div> --}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="simple-article size-3 grey col-xs-b5">SMART WATCHES</div>
                                        <div class="h3 col-xs-b25">watch 42mm smartwatch</div>
                                        <div class="row col-xs-b25">
                                            <div class="col-sm-6">
                                                <div class="simple-article size-5 grey">PRICE: <span id="product-price-popup" class="color">$225.00</span></div>
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
                                        <div id="product-desc-popup" class="simple-article size-3 col-xs-b30">Vivamus in tempor eros. Phasellus rhoncus in nunc sit amet mattis. Integer in ipsum vestibulum, molestie arcu ac, efficitur tellus. Phasellus id vulputate erat.</div>
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
                                        @if (session('user'))
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
                                        @endif
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
                            </div>
                            <div class="button-close"></div>
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
                                    <input id="reg_phone_number" name="phone_number" class="simple-input" type="text" value="" placeholder="Phone Number (08xxxxxxxxxx)" />
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
                            <div class="button-close"></div>
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
                                <input id="fp1-phone-number" name="fp1_phone_number" type="text" class="simple-input" type="text" value="" placeholder="Phone Number (08xxxxxxxxxx)" />
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
                                        <a id="temp1" class="button size-2 style-3 open-popup" style="display:none" data-rel="4" href="#">
                                        <a id="verifyPhoneNumber" class="button size-2 style-3 verify-phone-number">
                                            <span class="button-wrapper">
                                            <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
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
                                    <h6 id="desc-enter-otp" class="h6 text-center" style="font-weight: normal;text-transform: none;">Enter the OTP code that has been sent to your phone number: {{ session('phone_number') }}</h6>
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
                                            <a class="simple-link" onclick="otpSend()">RESEND CODE</a>
                                            <div class="empty-space col-xs-b5"></div>
                                            <a class="simple-link open-popup" data-rel="1">BACK TO LOGIN</a>
                                        </div>
                                        <div class="col-sm-6 text-right">
                                            <a id="temp2" class="button size-2 style-3 open-popup" style="display:none" data-rel="5" href="#">
                                            <a id="verifyOTP" class="button size-2 style-3" onclick="otpVerify()">
                                                <span class="button-wrapper">
                                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                                    <span class="text">submit</span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                                <div class="button-close"></div>
                            </div>
                        </div>

                        <div class="popup-content" data-rel="5">
                            <div class="layer-close"></div>
                            <div class="popup-container size-1">
                                <div class="popup-align">
                                    <h3 class="h3 text-center">forgot password</h3>
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
                                </div>
                                <div class="button-close"></div>
                            </div>
                        </div>

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
                                                            <img src="{{URL::asset('public/custom/img/product-preview-4_.jpg')}}" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="product-small-preview-entry">
                                                            <img src="{{URL::asset('public/custom/img/product-preview-5_.jpg')}}" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="product-small-preview-entry">
                                                            <img src="{{URL::asset('public/custom/img/product-preview-6_.jpg')}}" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="product-small-preview-entry">
                                                            <img src="{{URL::asset('public/custom/img/product-preview-7_.jpg')}}" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="product-small-preview-entry">
                                                            <img src="{{URL::asset('public/custom/img/product-preview-8_.jpg')}}" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="product-small-preview-entry">
                                                            <img src="{{URL::asset('public/custom/img/product-preview-9_.jpg')}}" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="product-small-preview-entry">
                                                            <img src="{{URL::asset('public/custom/img/product-preview-10_.jpg')}}" alt="" />
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
                                                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-2.png')}}" alt=""></span>
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
                <div style="display:none" id="recaptcha-container"></div>
                <script src="{{URL::asset('public/custom/js/jquery-2.2.4.min.js')}}"></script>
                <script src="{{URL::asset('public/custom/js/swiper.jquery.min.js')}}"></script>
                <script src="{{URL::asset('public/custom/js/global.js')}}"></script>
                <!-- styled select -->
                <script src="{{URL::asset('public/custom/js/jquery.sumoselect.min.js')}}"></script>
                <!-- counter -->
                <script src="{{URL::asset('public/custom/js/jquery.classycountdown.js')}}"></script>
                <script src="{{URL::asset('public/custom/js/jquery.knob.js')}}"></script>
                <script src="{{URL::asset('public/custom/js/jquery.throttle.js')}}"></script>
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
                    let nav = location.href.split("/")[3];
                    if (nav === "") {
                        document.getElementById("home").classList.add("active");
                    }
                    else {
                        document.getElementById(nav).classList.add("active");
                    }
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
                                    otpSend();
                                    $('#desc-enter-otp').load(' #desc-enter-otp');
                                    $('#temp1').click();
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
                                    fp_temp : temp
                                },
                                success: function() {
                                    $('.login-popup').click();
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
                                    if ('fp_temp' in errors['errors']) {
                                        errorsHtml = '';
                                        if (errors['errors']['fp_temp'].length > 0) {
                                            $('#new-password').attr('style', 'border-color:red');
                                        }
                                        $.each(errors['errors']['fp_temp'], function (index, value) {
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
                        phoneNumber = '+62' + phoneNumber.substring(1);
                        const appVerifier = window.recaptchaVerifier;
                        firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
                        .then((confirmationResult) => {
                            window.confirmationResult = confirmationResult;
                        }).catch((error) => {
                            console.log(error.message);
                        });
                    }

                    function otpVerify() {
                        let code = '';
                        for (let i = 1; i <= 6; i++) {
                            let digit = document.getElementById('digit-' + i.toString()).value;
                            code += digit;
                        }
                        if (code == '') {
                            alert('Please enter the sent OTP code');
                        }
                        else {
                            confirmationResult.confirm(code).then(function (result) {
                                $('#temp2').click();
                            }).catch(function (error) {
                                alert(error.message);
                            });
                        }
                    }

                    function numberWithCommas(x) {
                        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
                    }

                    function ajaxInsertToCart(id){
                        $.ajaxSetup({
                            headers: {
                                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                            }
                        });
                        var ajaxInsertToCart = $.ajax({
                            type:"post",
                            url :"/cart-slice/insert",
                            data : {
                                id: id,
                                quantity: 1
                            },
                        }).done(function () {
                            $('#cart-detail').load(' #cart-detail');
                            $('#calculate').load(' #calculate');
                            $('#cart-count').load(' #cart-count');
                            $('#user-wallet').load(' #user-wallet');
                            $('#cart-detail-dropdown').load(' #cart-detail-dropdown');
                            $('#cart-total').load(' #cart-total');
                            $('#temp-cart-total').load(' #temp-cart-total');
                            $('#subtotal').load(' #subtotal');
                            $('#order-total').load(' #order-total');
                            $('#temp-total').load(' #temp-total');
                            $('#cart-title-total').load(' #cart-title-total');
                            alert('Item successfully added to cart !');
                        });
                    }

                    function ajaxInsertToWishlist(id){
                        $.ajaxSetup({
                            headers: {
                                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                            }
                        });
                        var ajaxInsertToWishlist = $.ajax({
                            type:"post",
                            url :"/insertWishlist",
                            data : {
                                id: id,
                                quantity: 1
                            },
                        }).done(function () {
                            alert('Item successfully added to wishlist !');
                        });
                    }

                    function ajaxUpdateCartItem(d, id){
                        var ajaxUpdateCartItem = $.ajax({
                            type:"get",
                            url:"/cart-slice/update/" + id,
                            data: {d:d}
                        }).done(function (data) {
                            $('#total-'+id).text('Rp. '+numberWithCommas(data));
                            $('#calculate').load(' #calculate');
                            $('#cart-count').load(' #cart-count');
                            $('#user-wallet').load(' #user-wallet');
                            $('#cart-detail-dropdown').load(' #cart-detail-dropdown');
                            $('#cart-total').load(' #cart-total');
                            $('#temp-cart-total').load(' #temp-cart-total');
                            $('#subtotal').load(' #subtotal');
                            $('#order-total').load(' #order-total');
                            $('#temp-total').load(' #temp-total');
                            $('#cart-title-total').load(' #cart-title-total');
                        });
                    }

                    function ajaxDeleteFromCart(id){
                        var ajaxDeleteFromCart = $.ajax({
                            type:"get",
                            url :"/cart-slice/delete/" + id
                        }).done(function () {
                            $('#cart-detail').load(' #cart-detail');
                            $('#calculate').load(' #calculate');
                            $('#cart-count').load(' #cart-count');
                            $('#user-wallet').load(' #user-wallet');
                            $('#cart-detail-dropdown').load(' #cart-detail-dropdown');
                            $('#cart-total').load(' #cart-total');
                            $('#temp-cart-total').load(' #temp-cart-total');
                            $('#subtotal').load(' #subtotal');
                            $('#order-total').load(' #order-total');
                            $('#temp-total').load(' #temp-total');
                            $('#cart-title-total').load(' #cart-title-total');
                            $('#calc-ship-btn').load(' #calc-ship-btn');
                        });
                    }

                    function isNumeric(str) {
                        for (let i = 0; i < str.length; i++) {
                            let c = str.charCodeAt(i);
                            if (c < 48 || c > 57) {
                                return false;
                            }
                        }
                        return true;
                    }

                    function ajaxCalcShipping() {
                        let cart_total = $('#subtotal').text();
                        if (cart_total == 'RP. 0') {
                            alert('Cart cannot be empty !');
                            return;
                        }
                        let selected_city = $('#city').val();
                        let postcode = $('#postcode').val();
                        let address = $('#address').val();
                        if (selected_city != null && (postcode != '' && isNumeric(postcode)) && address != '') {
                            $('#shipping-cost').text('Loading...');
                        }
                        $.ajaxSetup({
                            headers: {
                                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                            }
                        });
                        $.ajax({
                            method: "POST",
                            url: "/cart-slice/calculateShipping",
                            data : {
                                city:selected_city,
                                postcode:postcode,
                                address:address
                            },
                            success: function(res) {
                                Load2();
                                let data = JSON.parse(res);
                                document.getElementById('jne').style.display = 'block';
                                let cost = data.rajaongkir.results[0].costs[0].cost[0].value;
                                let etd = data.rajaongkir.results[0].costs[0].cost[0].etd;
                                let city = data.rajaongkir.destination_details.city_name;
                                $('#shipping-cost').text('Rp. ' + numberWithCommas(cost));
                                $('#ship-cost').text('Rp. ' + numberWithCommas(cost));
                                $('#temp-ship-cost').val(cost);
                                let order_total = $('#temp-total').val();
                                order_total = parseInt(order_total) + parseInt(cost);
                                $('#order-total').text('Rp. ' + numberWithCommas(order_total));
                                $('#jne-city').text('SURABAYA - ' + city.toUpperCase() + '(' + etd + 'DAYS)');
                                $('#jne-city-cost').text('Rp ' + numberWithCommas(cost));
                                $.ajax({
                                    type:"post",
                                    url :"/cart-slice/getShippingCost",
                                    data : {
                                        cost: cost
                                    }
                                })
                            },
                            error: function(jqXhr, json, errorThrown) {
                                Load2();
                                let errors = jqXhr.responseJSON;
                                console.log(errors);
                                let errorsHtml = '';
                                if ('city' in errors['errors']) {
                                    if (errors['errors']['city'].length > 0) {
                                        $('#city').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['city'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#city-errors').append(errorsHtml);
                                }
                                if ('postcode' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['postcode'].length > 0) {
                                        $('#postcode').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['postcode'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#postcode-errors').append(errorsHtml);
                                }
                                if ('address' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['address'].length > 0) {
                                        $('#address').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['address'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#address-errors').append(errorsHtml);
                                }
                            }
                        });
                    }

                    function toggleCheck(cb) {
                        if (cb.checked) {
                            $('#ppa').val('1');
                        }
                        else {
                            $('#ppa').val('');
                        }
                    }

                    function ajaxPlaceOrder() {
                        let country = $('#country').val();
                        let fname = $('#fname').val();
                        let email = $('#email').val();
                        let phone = $('#phone').val();
                        let address = $('#address').val();
                        let note = $('#note').val();
                        let ppa = $('#ppa').val();
                        let payment = $('#payment').val();
                        let user = JSON.parse($('#user').val());
                        let user_billing = JSON.parse($('#user_billing').val());
                        let user_shipping = JSON.parse($('#user_shipping').val());
                        let cart = JSON.parse($('#cart').val());
                        let cart_items = JSON.parse($('#cart_items').val());
                        let ship = JSON.parse($('#ship').val());
                        let ship_cost = $('#temp-ship-cost').val();
                        let coupon_amount = $('#coupon-amount').val();
                        for (let i = 0; i < cart_items.length; i++) {
                            cart_items[i].options = '';
                            cart_items[i].access_token = '';
                        }
                        $.ajaxSetup({
                            headers: {
                                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                            }
                        });
                        $.ajax({
                            method: "POST",
                            url: "/cart-slice/placeOrder",
                            data : {
                                country:country,
                                fname:fname,
                                email:email,
                                phone:phone,
                                address:address,
                                note:note,
                                ppa:ppa,
                                payment:payment,
                                billing: {
                                    'first_name': user_billing.first_name,
                                    'last_name': user_billing.last_name,
                                    'email': user_billing.email,
                                    'phone_number': user_billing.phone_number,
                                    'country': country,
                                    'address_1': user_billing.address,
                                    'city': user_billing.city,
                                    'postcode': user_billing.zip_code
                                },
                                shipping: {
                                    'first_name': user_shipping.first_name,
                                    'last_name': user_shipping.last_name,
                                    'email': user_shipping.email,
                                    'phone_number': user_shipping.phone_number,
                                    'country': country,
                                    'address_1': user_shipping.address,
                                    'city': user_shipping.city,
                                    'postcode': user_shipping.zip_code
                                },
                                line_items: cart_items,
                                customer_id: user.id,
                                shipping_method: ship.courier,
                                payment_method_title: 'Bank Transfer',
                                total: cart.total,
                                currency: 'IDR',
                                shipping_cost: ship_cost,
                                coupon_amount: coupon_amount
                            },
                            success: function() {
                                location.href = '/cart-slice/thankyou';
                            },
                            error: function(jqXhr, json, errorThrown) {
                                Load3();
                                let errors = jqXhr.responseJSON;
                                let errorsHtml = '';
                                if ('country' in errors['errors']) {
                                    if (errors['errors']['country'].length > 0) {
                                        $('#country').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['country'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#country-errors').append(errorsHtml);
                                }
                                if ('fname' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['fname'].length > 0) {
                                        $('#fname').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['fname'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#fname-errors').append(errorsHtml);
                                }
                                if ('email' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['email'].length > 0) {
                                        $('#email').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['email'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#email-errors').append(errorsHtml);
                                }
                                if ('phone' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['phone'].length > 0) {
                                        $('#phone').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['phone'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#phone-errors').append(errorsHtml);
                                }
                                if ('address' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['address'].length > 0) {
                                        $('#address').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['address'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#address-errors').append(errorsHtml);
                                }
                                if ('note' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['note'].length > 0) {
                                        $('#note').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['note'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#note-errors').append(errorsHtml);
                                }
                                if ('ppa' in errors['errors']) {
                                    errorsHtml = '';
                                    if (errors['errors']['ppa'].length > 0) {
                                        $('#ppa').attr('style', 'border-color:red');
                                    }
                                    $.each(errors['errors']['ppa'], function (index, value) {
                                        errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                                    });
                                    $('#ppa-errors').append(errorsHtml);
                                }
                            }
                        });
                    }

                    function checkChanged(rb) {
                        if (rb.checked) {
                            let payment = $('#pay-'+rb.id).text();
                            $('#payment').val(payment);
                        }
                    }

                    function numberFormat(x) {
                        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
                    }

                    function submitCoupon() {
                        var coupon = $('#coupon').val();
                        var ajaxCoupon = $.ajax({
                            type:"POST",
                            url : "{{route('user-coupon-apply')}}",
                            headers: { 'X-CSRF-TOKEN' : "{{csrf_token()}}" },
                            data:{_couponCode:coupon},
                        }).success(function(data){

                            if(data.error == true && data.error_type == 'no_coupon_data'){
                                console.log('asd');
                            alert("Coupon does not exist");
                            }
                            else if(data.error == true && data.error_type == 'less_from_min_amount' && data.min_amount){
                            alert('The minimum spend for this coupon is '+ data.min_amount);
                            }
                            else if(data.error == true && data.error_type == 'exceed_from_max_amount' && data.max_amount){
                            alert('The maximum spend for this coupon is '+ data.max_amount);
                            }
                            else if(data.error == true && data.error_type == 'no_login'){
                            alert("need to login as a user for using this coupon");
                            }
                            else if(data.error == true && data.error_type == 'user_role_not_match' && data.role_name){
                            alert( data.role_name +' need to login as a user for using this coupon');
                            }
                            else if(data.error == true && data.error_type == 'coupon_expired'){
                            alert( "Now this coupon has expired" );
                            }
                            else if(data.error == true && data.error_type == 'coupon_already_apply'){
                            alert( 'Sorry, this coupon already exist' );
                            }
                            else if(data.success == true && (data.success_type == 'discount_from_product' || data.success_type == 'percentage_discount_from_product' || data.success_type == 'percentage_discount_from_product' || data.success_type == 'discount_from_total_cart' || data.success_type == 'percentage_discount_from_total_cart')){
                            const total = parseInt($('#temp-cart-total').val()) + parseInt($('#temp-ship-cost').val()) - data.coupon_amount;
                            const order_total = 'RP. ' + numberFormat(total);
                            $('#coupon-discount').text('RP. ' + numberFormat(data.coupon_amount));
                            $('#order-total').text(order_total);
                            $('#temp-total').val(total);
                            alert( 'Your coupon successfully added' );
                            shopist_frontend.event.remove_user_coupon();
                            }
                            else if(data.error == true && data.error_type == 'exceed_from_cart_total'){
                            alert( 'Discount price can not be greater than from cart total' );
                            }
                        });
                    }

                    function ajaxAddToCart(id){
                        let quantity = document.getElementById("quantity").innerText;
                        var ajaxAddToCart = $.ajax({
                            type:"post",
                            url : "/cart-slice/insert",
                            data:{_token:"{{csrf_token()}}",id:id,quantity:quantity},
                        }).done(function(data){
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

                    function popup(id) {
                        var ajax = $.ajax({
                            type:'POST',
                            url:"{{route('product.ajaxGetDetail')}}",
                            data:{_token:"{{csrf_token()}}",id:id},
                        }).done(function(data){
                            var gallery = JSON.parse(data.product_related_img_json).product_gallery_images;
                            var str = "";
                            //Header
                            str = str + '<div class="layer-close"></div><div class="popup-container size-2"><div class="popup-align"><div class="row"><div class="col-sm-6 col-xs-b30 col-sm-b0"><div class="main-product-slider-wrapper swipers-couple-wrapper">';

                            //Image Preloader header
                            str = str + '<div class="swiper-container swiper-control-top"><div class="swiper-button-prev hidden"></div><div class="swiper-button-next hidden"></div><div class="swiper-wrapper">';

                            //Image Preloader Body (Loopable)

                            $.each(gallery, function( index, value ) {
                                str = str + '<div class="swiper-slide"><div class="swiper-lazy-preloader"></div><div class="product-big-preview-entry swiper-lazy" data-background="'+value.url+'"  style="width:470px;height:470px" ></div></div>';
                            });
                            //Image Preloader Footer
                            str = str + '</div></div>';


                            //Swiper Header
                            str = str + '<div class="empty-space col-xs-b30 col-sm-b60"></div><div class="swiper-container swiper-control-bottom" data-breakpoints="1" data-xs-slides="3" data-sm-slides="3" data-md-slides="4" data-lt-slides="5" data-slides-per-view="5" data-center="1" data-click="1"><div class="swiper-button-prev hidden"></div><div class="swiper-button-next hidden"></div><div class="swiper-wrapper">';

                            //Swipper Body (Loopable)
                            $.each(gallery, function( index, value ) {
                                str = str + '<div class="swiper-slide"><div class="product-small-preview-entry"><img src="'+value.url+'" alt="" style="width:70px;height:70px" /></div></div>';
                            });
                            //Swiper Footer
                            str = str + '</div></div></div></div>';

                            //Content | Category
                            var tags = data.tags;
                            if(tags == null){
                                tags = '-';
                            }
                            str = str + '<div class="col-sm-6"><div class="simple-article size-3 grey col-xs-b5">'+tags+'</div>';

                            //Content | Product Name
                            str = str + ' <div class="h3 col-xs-b25">'+data.title+'</div>';

                            //Content | Price
                            str = str + '<div class="row col-xs-b25"><div class="col-sm-6"><div class="simple-article size-5 grey">PRICE: <span class="color">Rp. '+numberWithCommas(data.regular_price)+'</span></div></div>';

                            //Content | Review
                            // str = str + '<div class="col-sm-6 col-sm-text-right"><div class="rate-wrapper align-inline"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i></div><div class="simple-article size-2 align-inline">128 Reviews</div></div></div>';
                            str = str + '<div class="col-sm-6 col-sm-text-right"><div class="rate-wrapper align-inline"></div></div></div>';

                            //Content | SKU
                            var sku = data.sku;
                            if(sku == ""){
                                sku = '-';
                            }
                            str = str + '<div class="row"><div class="col-sm-6"><div class="simple-article size-3 col-xs-b5">SKU : <span class="grey">'+sku+'</span></div></div>';

                            //Content | Availibility
                            var avail = "YES";
                            if(data.status == 0){
                                avail = "NO";
                            }
                            str = str + '<div class="col-sm-6 col-sm-text-right"><div class="simple-article size-3 col-xs-b20">AVAILABLE.: <span class="grey">'+avail+'</span></div></div></div>';

                            //Content | Description
                            str = str + '<div class="simple-article size-3 col-xs-b30">'+unescape(data.content)+'</div>';

                            if(data.size.length > 0){
                                //Content | Size (Header)
                                str = str + '<div class="row col-xs-b40"><div class="col-sm-3"><div class="h6 detail-data-title size-1">size:</div></div><div class="col-sm-9">';

                                //Choose size disabled
                                str = str + '<select class="SlectBox"><option disabled="disabled" selected="selected">Choose size</option>';

                                //Content | Size (Body) Loopable
                                $.each(data.size, function( index, value ) {
                                    console.log(value.name);
                                    str = str + '<option value="'+value.term_id+'">'+value.name+'</option>';
                                });

                                //Content | Size (Footer)
                                str = str + '</select></div></div>';
                            }

                            if(data.color.length > 0){

                                //Content | Color (Header)
                                str = str + '<div class="row col-xs-b40"><div class="col-sm-3"><div class="h6 detail-data-title">color:</div></div><div class="col-sm-9"><div class="color-selection size-1">';

                                //Content | Color (Body) Loopable
                                $.each(data.color, function( index, value ) {
                                    str = str + '<div class="entry" style="color: #'+value.color_code+';"></div>';
                                });
                                //Content | Color (Footer)
                                str = str + '</div></div></div>';

                            }

                            var user = $('#loggedIn').val();

                            if (user != '') {

                                //Quantity Input
                                str = str + '<div class="row col-xs-b40"><div class="col-sm-3"><div class="h6 detail-data-title size-1">quantity:</div></div><div class="col-sm-9"><div class="quantity-select"><span class="minus"></span><span id="quantity" class="number">1</span><span class="plus"></span></div></div></div>';

                                //Add to cart
                                str = str + '<div class="row m5 col-xs-b40"><div class="col-sm-6 col-xs-b10 col-sm-b0"><a class="button size-2 style-2 block" href="#" onclick="ajaxAddToCart('+data.id+')"><span class="button-wrapper"><span class="icon"><img src="{{URL::asset('public/custom/img/icon-2.png')}}" alt=""></span><span class="text">add to cart</span></span></a></div>';

                                //Add to Whislist
                                str = str + '<div class="col-sm-6"><a class="button size-2 style-1 block noshadow" href="#" onclick="ajaxAddToWishlist('+data.id+')"><span class="button-wrapper"><span class="icon"><i class="fa fa-heart-o" aria-hidden="true"></i></span><span class="text">add to favourites</span></span></a></div></div>';

                            }

                            const url = 'https://pusatbaterai.local/detail/'+product.slug;

                            //Share
                            str = str + `<div class="row"><div class="col-sm-3"><div class="h6 detail-data-title size-2">share:</div></div><div class="col-sm-9"><div class="follow light"><a class="entry" href="https://www.facebook.com/sharer/sharer.php?u=${url}"><i class="fa fa-facebook"></i></a><a class="entry" href="https://twitter.com/intent/tweet?url=${url}"><i class="fa fa-twitter"></i></a><a class="entry" href="https://www.linkedin.com/sharing/share-offsite/?url=${url}"><i class="fa fa-linkedin"></i></a><a class="entry" href="https://plus.google.com/share?url=${url}"><i class="fa fa-google-plus"></i></a><a class="entry" href="http://pinterest.com/pin/create/link/?url=${url}"><i class="fa fa-pinterest-p"></i></a></div></div></div>`;

                            //Footer
                            str = str + '</div></div></div><div class="button-close"></div></div>';

                            $('#popupProduct').empty();
                            $('#popupProduct').append(str);
                            _functions.initSwiper();
                            _functions.initSelect();

                        });
                    }

                    // $(document).on('click', '.open-popup', popup());
                </script>
            </body>

        </html>
