@extends('partials.main')

@section('content')       
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

                                        @foreach ($bestsellerproduct_list as $b)
                                        <div class="col-sm-4">
                                                <div class="product-shortcode style-1">
                                                    <div class="title">
                                                        <div class="simple-article size-1 color col-xs-b5">
                                                            <a href="#">{{ $b->type }}</a>
                                                        </div>
                                                        <div class="h6 animate-to-green">
                                                            <a href="#">{{ $b->title }}</a>
                                                        </div>
                                                    </div>
                                                    <div class="preview">
                                                        <img src="{{URL::asset('public/storage/' . $b->image_url)}}">
                                                        <!-- <img src="img/product-7.jpg" alt="" /> -->
                                                        <div class="preview-buttons valign-middle">
                                                            <div class="valign-middle-content">
                                                                <a class="button size-2 style-2" href="product_detail">
                                                                    <span class="button-wrapper">
                                                                        <span class="icon">
                                                                            <img src="{{URL::asset('public/custom/img/icon-1.png')}}">
                                                                            <!-- <img src="img/icon-1.png" alt=""> -->
                                                                        </span>
                                                                        <span class="text">Learn More</span>
                                                                    </span>
                                                                </a>
                                                                <a class="button size-2 style-3" href="#">
                                                                    <span class="button-wrapper">
                                                                        <span class="icon">
                                                                            <img src="{{URL::asset('public/custom/img/icon-3.png')}}">
                                                                            <!-- <img src="img/icon-3.png" alt=""> -->
                                                                        </span>
                                                                        <span class="text">Add To Cart</span>
                                                                    </span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <div class="simple-article size-4 dark">Rp.{{ $b->price }}</div>
                                                    </div>
                                                    <div class="description">
                                                        <div class="simple-article text size-2">{{ $b->content }}</div>
                                                        <div class="icons">
                                                            <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                                            <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                                            <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach 


                                            <!-- <div class="col-sm-4">
                                                <div class="product-shortcode style-1">
                                                    <div class="title">
                                                        <div class="simple-article size-1 color col-xs-b5"><a href="#">SMART PHONES</a></div>
                                                        <div class="h6 animate-to-green"><a href="#">Smartphone vibe x2</a></div>
                                                    </div>
                                                    <div class="preview">
                                                        <img src="{{URL::asset('public/custom/img/product-7.jpg')}}"> -->
                                                        <!-- <img src="img/product-7.jpg" alt="" /> -->
                                                        <!-- <div class="preview-buttons valign-middle">
                                                            <div class="valign-middle-content">
                                                                <a class="button size-2 style-2" href="product_detail">
                                                                    <span class="button-wrapper">
                                                                        <span class="icon">
                                                                            <img src="{{URL::asset('public/custom/img/icon-1.png')}}"> -->
                                                                            <!-- <img src="img/icon-1.png" alt=""> -->
                                                                        <!-- </span>
                                                                        <span class="text">Learn More</span>
                                                                    </span>
                                                                </a>
                                                                <a class="button size-2 style-3" href="#">
                                                                    <span class="button-wrapper">
                                                                        <span class="icon">
                                                                            <img src="{{URL::asset('public/custom/img/icon-3.png')}}"> -->
                                                                            <!-- <img src="img/icon-3.png" alt=""> -->
                                                                        <!-- </span>
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
                                            </div> -->

                                        </div>
                                    </div>
                                </div>
                                <div class="container" style="margin-top: 50px;">
                                    <center>
                                        <a class="button size-2 style-3" href="products">
                                            <span class="button-wrapper">
                                                <span class="icon">
                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                </span>
                                                <span class="text">SEE MORE</span>
                                            </span>
                                        </a>
                                    </center>
                                </div>
                                <div class="empty-space col-xs-b35 col-md-b70"></div>
                                <div class="container" style="margin-top: -25px;">
                                    <div class="text-center">
                                        <div class="h2">testimonials</div>
                                        <div class="title-underline center"><span></span></div>
                                    </div>
                                </div>
                                <div class="empty-space col-xs-b35 col-md-b70"></div>
                                <div class="container" style="margin-top: -40px;">
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
                                <div class="container" style="margin-top: 50px;">
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
                                        <div class="h4 col-xs-b25">latest blog &emsp;&emsp;<U><a class="h6" href="blogs">SEE ALL BLOGS</a></U></div>                                                                               
                                        @foreach ($relatedblog_list as $a)
                                        <div class="row m5 ">                                            
                                            <div class="blog-shortcode style-1">
                                                <a href="blog_detail" class="preview simple-mouseover">
                                                    <!-- <img src="{{URL::asset('public/storage/' . $a->foto)}}"> -->
                                                    <img src="{{URL::asset('public/custom/img/blog1.jpg')}}">
                                                </a>
                                                <div class="description">
                                                    <!-- Tanggal -->                                                    
                                                    <div class="simple-article size-1 grey col-xs-b5">{{ $a->created_at }}</div>
                                                    <h6 class="h6 col-xs-b10">
                                                        <a href="#">
                                                        {{Str::limit($a->post_title, 25, '..')}}
                                                        <!-- {{ $a->post_title }} -->
                                                        </a>
                                                    </h6>
                                                    <div class="simple-article size-2">
                                                        {{Str::limit($a->post_content, 80, '')}}
                                                        <!-- {{ $a->post_content }} -->
                                                    </div>
                                                </div>                                                
                                            </div>                                                                                        
                                        </div>
                                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 col-md-12">
                                        <div class="banner-shortcode style-2">
                                            <div class="content">                                                
                                                <div class="background" style="background-image: url({{url('public/custom/img/promo1.jpg')}});"></div>
                                                <!-- <div class="background" style="background-image: url(img/promo1.jpg);"></div> -->
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
                                                <div class="background" style="background-image: url({{url('public/custom/img/promo1.jpg')}});"></div>
                                                <!-- <div class="background" style="background-image: url(img/promo1.jpg);"></div> -->
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
                </div>
                <div class="popup-wrapper">
                    <div class="bg-layer"></div>
                    <div class="popup-content" data-rel="1">
                        <div class="layer-close"></div>
                        <div class="popup-container size-1">
                            <div class="popup-align">
                                <h3 class="h3 text-center">Log in</h3>
                                <div class="empty-space col-xs-b30"></div>
                                <input class="simple-input" type="text" value="" placeholder="Phone Number" />
                                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                                <input class="simple-input" type="password" value="" placeholder="Password" />
                                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                                <div class="row">
                                    <div class="col-sm-6 col-xs-b10 col-sm-b0">
                                        <div class="empty-space col-sm-b5"></div>
                                        <a class="simple-link open-popup" data-rel="3">Forgot password?</a>
                                        <div class="empty-space col-xs-b5"></div>
                                        <a class="simple-link open-popup" data-rel="2">register now</a>
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
                                <input class="simple-input" type="text" value="" placeholder="Phone Number" />
                                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                                <input class="simple-input" type="password" value="" placeholder="Enter password" />
                                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                                <input class="simple-input" type="password" value="" placeholder="Repeat password" />
                                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                                <div class="row">
                                    <div class="col-sm-7 col-xs-b10 col-sm-b0">
                                        <div class="empty-space col-sm-b15"></div>
                                        <a class="simple-link open-popup size-3" data-rel="1">BACK TO LOGIN</a>
                                    </div>
                                    <div class="col-sm-5 text-right">
                                        <a class="button size-2 style-3" href="#">
                                            <span class="button-wrapper">
                                                <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                                <span class="text">regist</span>
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
                        <div class="popup-container size-1">
                            <div class="popup-align">
                                <h3 class="h3 text-center">forgot password</h3>
                                <div class="empty-space col-xs-b20"></div>
                                <h6 class="h6 text-center" style="font-weight: normal;text-transform: none;">Please input your new password</h6>
                                <div class="empty-space col-xs-b20"></div>
                                <input class="simple-input" type="password" value="" placeholder="New password" />
                                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                                <input class="simple-input" type="password" value="" placeholder="Confirm New password" />
                                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                                <div class="row text-center">
                                    
                                    <a class="button size-2 style-3 open-popup" data-rel="4" href="#">
                                        <span class="button-wrapper">
                                            <span class="icon"><img src="img/icon-4.png" alt="" /></span>
                                            <span class="text">make new password</span>
                                        </span>
                                    </a>
                                    
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
                                        <a class="button size-2 style-3" href="#">
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
                @foreach ($ads_list as $ads)
                <div class="adsleft">                    
                    <a href="#">
                        <?php
                            $ads = App\ads_list::find(5);
                        ?>
                        <img src="{{URL::asset('public/storage/' . $ads->image)}}">
                        <!-- <img src="{{URL::asset('public/custom/img/ads1.jpg')}}"> -->
                    </a>
                    <a href="#">
                        <?php
                            $ads = App\ads_list::find(6);
                        ?>
                        <img src="{{URL::asset('public/storage/' . $ads->image)}}">
                    </a>
                </div>
                <div class="ads-right">
                    <a href="#">
                        <?php
                            $ads = App\ads_list::find(7);
                        ?>
                        <img src="{{URL::asset('public/storage/' . $ads->image)}}">
                    </a>
                    <a href="#">
                        <?php
                            $ads = App\ads_list::find(8);
                        ?>
                        <img src="{{URL::asset('public/storage/' . $ads->image)}}">
                    </a>
                </div>
                @endforeach
@endsection
