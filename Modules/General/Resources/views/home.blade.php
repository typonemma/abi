@extends('partials.main')
@section('navbar')
    <li class="active">
        <a href="home" class="nav-link">Home</a>
    </li>
    <li>
        <a href="aboutus">about us</a>
    </li>
    <li>
        <a href="products">products</a>
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
                    <option selected="selected">SEMUA</option>
                    @foreach ($categori_list as $kl)
                    <option value="volvo">{{ $kl->name }}</option>
                    @endforeach
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
                                            <img src="{{URL::asset($b->image_url)}}">
                                            <!-- <img src="img/product-7.jpg" alt="" /> -->
                                            <div class="preview-buttons valign-middle">
                                                <div class="valign-middle-content">
                                                    <a class="button size-2 style-2" href="product_detail/<?= $b->post_slug ?>">
                                                        <span class="button-wrapper">
                                                            <span class="icon">
                                                                <img src="{{URL::asset('public/custom/img/icon-1.png')}}">
                                                                <!-- <img src="img/icon-1.png" alt=""> -->
                                                            </span>
                                                            <span class="text">Learn More</span>
                                                        </span>
                                                    </a>
                                                    <a class="button size-2 style-3" href="checkout">
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
                                            <div class="simple-article size-4 dark">${{number_format($b->price,0,',','.')}}</div>
                                        </div>
                                        <div class="description">
                                            <div class="simple-article text size-2">{!! htmlspecialchars_decode($b->content)!!}</div>
                                            <div class="icons">
                                                <a class="entry"><i class="fa fa-check" aria-hidden="true"></i></a>
                                                <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                                <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach 
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
                                @foreach ($testimonial_list as $tl)
                                    <div class="swiper-slide">
                                        <div class="product-shortcode style-9">
                                            <div class="preview">
                                                <div class="main-testi">                                                
                                                    <div class="text-center">
                                                        <span>{{ $tl->post_title }}</span>
                                                        <H4>{{ $tl->post_title }}</H4>
                                                        <p>{!! htmlspecialchars_decode($tl->post_content)!!}</p>
                                                    </div>                                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
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
                            @foreach ($availableAt as $x)
                                <div class="col-sm-3 col-md-b10">
                                    <a href="$x->key_value">
                                        <img src="{{URL::asset($x->key_value)}}" width="202" height="130">  
                                    </a>                                                                        
                                </div>
                            @endforeach
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
                                        <img src="{{URL::asset($a->image)}}">                                                 
                                    </a>
                                    <div class="description">
                                        <!-- Tanggal -->                                                    
                                        <div class="simple-article size-1 grey col-xs-b5">
                                            <?php
                                                $tanggal = $a->created_at;
                                                echo date ("F d / Y", strtotime($tanggal));
                                            ?>
                                        </div>
                                        <h6 class="h6 col-xs-b10">
                                            <a href="blog_detail/<?= $a->post_slug ?>">
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
    
    <!-- ADS -->
    <?php
        use Edujugon\GoogleAds\GoogleAds;
        use Google\AdsApi\AdWords\v201809\cm\CampaignService;
    ?>
    <div class="adsleft">                            
        <a href="#">
            <?php
                $ads = new GoogleAds();
                $ads->service(CampaignService::class);
                // $campaigns = $ads->service(CampaignService::class)->select(['Id'])->get();
                
                // $ads->service(CampaignService::class)
                //     ->select(['Id', 'Name', 'Status', 'ServingStatus', 'StartDate', 'EndDate'])
                //     ->get();
            ?>
        </a>
        <a href="#">
            <?php
                $ads = new GoogleAds();
            ?>
        </a>
    </div>
    <div class="ads-right">
        <a href="#">
            <?php
                $ads = new GoogleAds();
            ?>
        </a>
        <a href="#">
            <?php
                $ads = new GoogleAds();
            ?>
        </a>
    </div>
@endsection
