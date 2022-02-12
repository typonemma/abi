@extends('partials.main')

@section('content')
        <div id="content-block">            
            <div class="container">
                <div class="empty-space col-xs-b15 col-sm-b30"></div>
                <div class="breadcrumbs">
                    <a href="blogs">blog</a>
                    <a href="#" class="color underline">cara membersihkan keyboard laptop</a>
                </div>
                <div class="empty-space col-xs-b15 col-sm-b30 col-md-b50"></div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="simple-article size-1 grey uppercase col-xs-b10">apr 07 / 15</div>
                                <h1 class="h3 col-xs-b5 col-sm-b30">cara membersihkan keyboard pada laptop</h1>
                            </div>
                            <div class="col-sm-4 col-sm-text-right">
                                
                            </div>
                        </div>
                        <div class="simple-article size-2">
                            <img src="{{URL::asset('public/custom/img/blog-big.jpg')}}">
                            <!-- <img src="img/blog-big.jpg"> -->
                            <h5>Praesent lobortis leo mi</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque faucibus, lacus a pretium facilisis, urna lectus efficitur quam, ac posuere justo leo nec diam. Integer dapibus dolor non arcu consectetur volutpat. Nunc auctor, mi vitae cursus tempor, ipsum tortor sagittis ante, nec euismod massa nisl in mi. Quisque sed dignissim turpis. Vestibulum et risus nec dolor maximus tempor nec vel lorem.</p>
                            <p>Etiam lobortis, sapien et aliquam scelerisque, sapien augue mattis orci, dignissim varius augue nisi ut lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla facilisi. Donec porttitor semper dictum. Ut sed sapien aliquam.</p>
                            <h5>In hac habitasse platea dictumst</h5>
                            <p>Aliquam eu pellentesque libero. Morbi ipsum diam, vestibulum sit amet sapien a, euismod fermentum dolor. Nunc accumsan sed dolor nec gravida. Morbi maximus leo eu semper ultrices. Nam ornare ultricies dapibus. Vestibulum consectetur iaculis suscipit. Integer eget rhoncus augue.</p>
                            <img src="{{URL::asset('public/custom/img/blog-big2.jpg')}}">
                            <!-- <img src="img/blog-big2.jpg"> -->
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque faucibus, lacus a pretium facilisis, urna lectus efficitur quam, ac posuere justo leo nec diam. Integer dapibus dolor non arcu consectetur volutpat. Nunc auctor, mi vitae cursus tempor, ipsum tortor sagittis ante, nec euismod massa nisl in mi. Quisque sed dignissim turpis. Vestibulum et risus nec dolor maximus tempor nec vel lorem.</p>
                            <p>Etiam lobortis, sapien et aliquam scelerisque, sapien augue mattis orci, dignissim varius augue nisi ut lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla facilisi. Donec porttitor semper dictum. Ut sed sapien aliquam.</p>
                        </div>
                        
                        <div class="empty-space col-xs-b35 col-md-b70"></div>
                        
                    </div>
                    <div class="col-md-3">
                        
                        <div class="h4 col-xs-b25">related blog</div>
                        <div class="blog-shortcode style-2">
                            <a href="#" class="preview rounded-image simple-mouseover">
                                <img class="rounded-image" src="{{URL::asset('public/custom/img/blog1.jpg')}}" alt="" />
                            </a>
                            <div class="description simple-article size-1 grey uppercase">apr 07 / 15 &nbsp;&nbsp;</div>
                            <div class="title h6"><a href="#">Phasellus rhoncus in nunc sit</a></div>
                            
                            <div class="simple-article size-2">Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus</div>
                        </div>
                        <div class="empty-space col-xs-b25"></div>
                        <div class="blog-shortcode style-2">
                            <a href="#" class="preview rounded-image simple-mouseover">
                                <img class="rounded-image" src="{{URL::asset('public/custom/img/blog2.jpg')}}" alt="" />
                                <!-- <img class="rounded-image" src="img/blog2.jpg" alt="" /> -->
                            </a>
                            <div class="description simple-article size-1 grey uppercase">apr 07 / 15 &nbsp;&nbsp;</div>
                            <div class="title h6"><a href="#">Fusce viverra id diam nec</a></div>
                            
                            <div class="simple-article size-2">Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus</div>
                        </div>
                        <div class="empty-space col-xs-b25"></div>
                        <div class="blog-shortcode style-2">
                            <a href="#" class="preview rounded-image simple-mouseover">
                                <img class="rounded-image" src="{{URL::asset('public/custom/img/blog2.jpg')}}" alt="" />
                                <!-- <img class="rounded-image" src="img/blog2.jpg" alt="" /> -->
                            </a>
                            <div class="description simple-article size-1 grey uppercase">apr 07 / 15 &nbsp;&nbsp;</div>
                            <div class="title h6"><a href="#">Fusce viverra id diam nec</a></div>
                            
                            <div class="simple-article size-2">Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus</div>
                        </div>
                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                    </div>
                </div>
            </div>
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