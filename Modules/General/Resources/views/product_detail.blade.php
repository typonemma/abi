@extends('partials.main')
@section('navbar')
<li>
        <a href="/home" class="nav-link">Home</a>
    </li>
    <li>
        <a href="/aboutus">about us</a>
    </li>
    <li class="active">
        <a href="/product">products</a>
    </li>
    <li>
        <a href="/shipment">Shipment</a>
    </li>
    <li>
        <a href="/blogs">blogs</a>
    </li>
    <li>
        <a href="/contact">contact us</a>
    </li>
@endsection
@section('content')
        <div id="content-block">            
            <div class="container">
                <div class="empty-space col-xs-b15 col-sm-b30"></div>
                <div class="breadcrumbs">
                    <a href="#">home</a>
                    <a href="#">accessories</a>
                    <a href="#">gadgets</a>
                    <a href="#">sport gadgets</a>
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

                                            <div class="swiper-slide">
                                                <?php                                                
                                                    $key_value = $product_detail->image_url;
                                                    $filename = $_SERVER['DOCUMENT_ROOT'] . $key_value; 
                                                    $data_foto='';                                                  
                                                    if ($key_value == ''){                                                 
                                                        echo "<img src='/public/uploads/no-image.jpg' style='width:202px;height:200px;'>";                                                    
                                                    }   
                                                    else if (!file_exists($filename)) {
                                                        echo "<img src='/public/uploads/no-image.jpg' style='width:202px;height:200px;'>";  
                                                    }                                
                                                    else {                                                 
                                                        echo "<img src='$key_value' style='width:201px;height:200px;'>";                                                    
                                                    }
                                                ?> 
                                                <div class="swiper-lazy-preloader"></div>
                                                <div class="product-big-preview-entry swiper-lazy" data-background="{{$data_foto}}"></div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <div class="empty-space col-xs-b30 col-sm-b60"></div>
                                    <div class="swiper-container swiper-control-bottom" data-breakpoints="1" data-xs-slides="3" data-sm-slides="3" data-md-slides="3" data-lt-slides="3" data-slides-per-view="3" data-center="1" data-click="1">
                                        <div class="swiper-button-prev hidden"></div>
                                        <div class="swiper-button-next hidden"></div>
                                        <div class="swiper-wrapper">

                                            <div class="swiper-slide">
                                                <div class="product-small-preview-entry">
                                                    <?php                                                
                                                        $key_value = $product_detail->image_url;
                                                        $filename = $_SERVER['DOCUMENT_ROOT'] . $key_value; 
                                                        $data_foto='';                                                  
                                                        if ($key_value == ''){                                                 
                                                            echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:97px;'>";                                                    
                                                        }   
                                                        else if (!file_exists($filename)) {
                                                            echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:97px;'>";  
                                                        }                                
                                                        else {                                                 
                                                            echo "<img src='$key_value' style='width:100px;height:97px;'>";                                                    
                                                        }
                                                    ?> 
                                                </div>
                                                <div class="product-small-preview-entry">
                                                    <img src="img/adaptor_.jpg" alt="" />
                                                </div>
                                                <div class="product-small-preview-entry">
                                                    <img src="img/adaptor_.jpg" alt="" />
                                                </div>
                                                <div class="product-small-preview-entry">
                                                    <img src="img/adaptor_.jpg" alt="" />
                                                </div>
                                                <div class="product-small-preview-entry">
                                                    <img src="img/adaptor_.jpg" alt="" />
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <div class="simple-article size-3 text-blue col-xs-b5">SMART WATCHES</div>
                                <div class="h3 col-xs-b25">{{ $product_detail->title }}</div>
                                <div class="row col-xs-b25">
                                    <div class="col-sm-6">
                                        <div class="simple-article size-5 grey">PRICE: <span class="color"> ${{number_format($product_detail->price,0,',','.')}} </span></div>
                                    </div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="simple-article size-3 col-xs-b5">ITEM NO.: <span class="grey">127-#5238</span></div>
                                        <div class="simple-article size-3 col-xs-b20">SKU : <span class="grey">BK98U17H</span></div>
                                    </div>
                                    <div class="col-sm-6 col-sm-text-right">
                                        
                                    </div>
                                </div>
                                <div class="simple-article size-3 col-xs-b20">Vivamus in tempor eros. Phasellus rhoncus in nunc sit amet mattis. Integer in ipsum vestibulum, molestie arcu ac, efficitur tellus. Phasellus id vulputate erat.</div>
                                <div class="simple-article size-3 col-xs-b30">
                                    <div class="h4">AVAILABLE STORE</div>
                                    <p>SURABAYA, SEMARANG, DENPASAR, MATARAM</p>
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
                                        <a class="button size-2 style-3 block" href="#">
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
                                            <a class="entry" href="#"><i class="fa fa-whatsapp"></i></a>
                                            <a class="entry" href="#"><i class="fa fa-facebook"></i></a>
                                            <a class="entry" href="#"><i class="fa fa-envelope"></i></a>
                                            <a class="entry" href="#"><i class="fa fa-chain"></i></a>
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
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare lobortis magna.
                                    Maecenas varius leo convallis erat aliquet pulvinar ut vel odio. Integer placerat urna urna, in egestas tortor mollis id. Mauris interdum euismod neque quis sollicitudin. Mauris vel auctor tellus. Morbi sagittis sapien justo, tincidunt pulvinar dui cursus a. Pellentesque et suscipit ex. Praesent varius turpis vel quam ornare mollis. Sed ac tincidunt tortor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer lobortis eu est feugiat condimentum. Nullam elementum quam a est pellentesque consectetur.</p>
                                    <p>Fusce vel molestie est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam erat volutpat. Aenean lacus justo, viverra sit amet convallis vel, viverra id neque. Donec est ipsum, tincidunt in interdum ut, aliquet eget metus. Aliquam erat volutpat. Donec elementum vulputate nisl, dignissim ultricies elit laoreet at. Morbi vel lectus vel ipsum tempor interdum.</p>
                                </div>
                            </div>
                            <div class="tab-entry">
                                <div class="h5">compatible by type/brand</div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="{{URL::asset('public/custom/img/acer.png')}}">
                                        <!-- <img src="img/acer.png"> -->
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
                                    <div class="col-sm-3">
                                        <img src="{{URL::asset('public/custom/img/hp.png')}}">
                                        <!-- <img src="img/hp.png"> -->
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
                                <div class="h5">compatible by part number</div>
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <img src="{{URL::asset('public/custom/img/acer.png')}}">
                                        <!-- <img src="img/acer.png"> -->
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
                                    <div class="col-sm-3">
                                        <div class="product-shortcode style-1">
                                            <div class="title">
                                                <div class="simple-article size-1 color col-xs-b5"><a href="#">LCD/LED</a></div>
                                                <div class="h5 animate-to-green"><a href="#">LED LCD Laptop Asus A455L</a></div>
                                            </div>
                                            <div class="preview">
                                                <img src="{{URL::asset('public/custom/img/product-40.jpg')}}">
                                                <!-- <img src="img/product-40.jpg" alt=""> -->
                                                <div class="preview-buttons valign-middle">
                                                    <div class="valign-middle-content">
                                                        <a class="button size-2 style-3" href="#">
                                                            <span class="button-wrapper">
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                                <span class="text">SEE DETAIL</span>
                                                            </span>
                                                        </a>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price">
                                                
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
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                            <span class="text">ADD TO CART</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-shortcode style-1">
                                            <div class="title">
                                                <div class="simple-article size-1 color col-xs-b5"><a href="#">LCD/LED</a></div>
                                                <div class="h5 animate-to-green"><a href="#">LED LCD Laptop Asus A455L</a></div>
                                            </div>
                                            <div class="preview">
                                                <img src="{{URL::asset('public/custom/img/product-41.jpg')}}">
                                                <!-- <img src="img/product-41.jpg" alt=""> -->
                                                <div class="preview-buttons valign-middle">
                                                    <div class="valign-middle-content">
                                                        <a class="button size-2 style-3" href="#">
                                                            <span class="button-wrapper">
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                                <span class="text">SEE DETAIL</span>
                                                            </span>
                                                        </a>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price">
                                                <div class="simple-article size-4 dark">Rp 200.000</div>
                                            </div>
                                            <div class="description">
                                                <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                                <div class="icons">
                                                    <a class="entry"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                    <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                                    <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                                    <a class="button size-1 style-3 button-long-list" href="#">
                                                        <span class="button-wrapper">
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                            <span class="text">ADD TO CART</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-shortcode style-1">
                                            <div class="title">
                                                <div class="simple-article size-1 color col-xs-b5"><a href="#">LCD/LED</a></div>
                                                <div class="h5 animate-to-green"><a href="#">LED LCD Laptop Asus A455L</a></div>
                                            </div>
                                            <div class="preview">
                                                <img src="{{URL::asset('public/custom/img/product-42.jpg')}}">
                                                <!-- <img src="img/product-42.jpg" alt=""> -->
                                                <div class="preview-buttons valign-middle">
                                                    <div class="valign-middle-content">
                                                        <a class="button size-2 style-3" href="#">
                                                            <span class="button-wrapper">
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                                <span class="text">SEE DETAIL</span>
                                                            </span>
                                                        </a>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price">
                                                <div class="simple-article size-4 dark">Rp 200.000</div>
                                            </div>
                                            <div class="description">
                                                <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                                <div class="icons">
                                                    <a class="entry"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                    <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                                    <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                                    <a class="button size-1 style-3 button-long-list" href="#">
                                                        <span class="button-wrapper">
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                            <span class="text">ADD TO CART</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="product-shortcode style-1">
                                            <div class="title">
                                                <div class="simple-article size-1 color col-xs-b5"><a href="#">LCD/LED</a></div>
                                                <div class="h5 animate-to-green"><a href="#">LED LCD Laptop Asus A455L</a></div>
                                            </div>
                                            <div class="preview">
                                                <img src="{{URL::asset('public/custom/img/product-43.jpg')}}">
                                                <!-- <img src="img/product-43.jpg" alt=""> -->
                                                <div class="preview-buttons valign-middle">
                                                    <div class="valign-middle-content">
                                                        <a class="button size-2 style-3" href="#">
                                                            <span class="button-wrapper">
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                                <span class="text">SEE DETAIL</span>
                                                            </span>
                                                        </a>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price">
                                                <div class="simple-article size-4 dark">Rp 200.000</div>
                                            </div>
                                            <div class="description">
                                                <div class="simple-article text size-2">Mollis nec consequat at In feugiat mole stie tortor a malesuada</div>
                                                <div class="icons">
                                                    <a class="entry"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                    <a class="entry open-popup" data-rel="3"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                                    <a class="entry"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                                    <a class="button size-1 style-3 button-long-list" href="#">
                                                        <span class="button-wrapper">
                                                                <span class="icon">
                                                                    <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                                    <!-- <img src="img/icon-4.png" alt=""> -->
                                                                </span> 
                                                            <span class="text">ADD TO CART</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="empty-space col-md-b70"></div>
                    </div>
                    <div class="col-md-3 col-md-pull-9">
                        <div class="h4 col-xs-b10">popular categories</div>
                        <ul class="categories-menu ">
                            <li>
                                <a href="#">baterai laptop</a>
                                <div class="toggle"></div>
                                <ul>
                                    <li>
                                        <a href="#">laptops &amp; computers</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">laptops &amp; computers</a>
                                            </li>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">video &amp; photo cameras</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">smartphones</a>
                                    </li>
                                    <li>
                                        <a href="#">tv &amp; audio</a>
                                    </li>
                                    <li>
                                        <a href="#">gadgets</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">keyboard laptop</a>
                                <div class="toggle"></div>
                                <ul>
                                    <li>
                                        <a href="#">laptops &amp; computers</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">laptops &amp; computers</a>
                                            </li>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">video &amp; photo cameras</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">laptops &amp; computers</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">smartphones</a>
                                    </li>
                                    <li>
                                        <a href="#">tv &amp; audio</a>
                                    </li>
                                    <li>
                                        <a href="#">gadgets</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">power adaptor</a>
                                <div class="toggle"></div>
                                <ul>
                                    <li>
                                        <a href="#">laptops &amp; computers</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">laptops &amp; computers</a>
                                            </li>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">video &amp; photo cameras</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">smartphones</a>
                                    </li>
                                    <li>
                                        <a href="#">tv &amp; audio</a>
                                    </li>
                                    <li>
                                        <a href="#">gadgets</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">adaptor lainnya</a>
                                <div class="toggle"></div>
                                <ul>
                                    <li>
                                        <a href="#">laptops &amp; computers</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">laptops &amp; computers</a>
                                            </li>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">video &amp; photo cameras</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">smartphones</a>
                                    </li>
                                    <li>
                                        <a href="#">tv &amp; audio</a>
                                    </li>
                                    <li>
                                        <a href="#">gadgets</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">kabel dan konektor</a>
                                <div class="toggle"></div>
                                <ul>
                                    <li>
                                        <a href="#">laptops &amp; computers</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">laptops &amp; computers</a>
                                            </li>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">video &amp; photo cameras</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">smartphones</a>
                                    </li>
                                    <li>
                                        <a href="#">tv &amp; audio</a>
                                    </li>
                                    <li>
                                        <a href="#">gadgets</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">optical disk drive</a>
                                <div class="toggle"></div>
                                <ul>
                                    <li>
                                        <a href="#">laptops &amp; computers</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">laptops &amp; computers</a>
                                            </li>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">video &amp; photo cameras</a>
                                        <div class="toggle"></div>
                                        <ul>
                                            <li>
                                                <a href="#">video &amp; photo cameras</a>
                                            </li>
                                            <li>
                                                <a href="#">smartphones</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">smartphones</a>
                                    </li>
                                    <li>
                                        <a href="#">tv &amp; audio</a>
                                    </li>
                                    <li>
                                        <a href="#">gadgets</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">lcd & led</a>
                            </li>
                            <li>
                                <a href="#">communication</a>
                            </li>
                            
                        </ul>
                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                        <div class="h4 col-xs-b25">location</div>
                        <label class="checkbox-entry">
                            <input type="checkbox"><span>all location</span>
                        </label>
                        <div class="empty-space col-xs-b10"></div>
                        <label class="checkbox-entry">
                            <input type="checkbox"><span>surabaya</span>
                        </label>
                        <div class="empty-space col-xs-b10"></div>
                        <label class="checkbox-entry">
                            <input type="checkbox"><span>semarang</span>
                        </label>
                        <div class="empty-space col-xs-b10"></div>
                        <label class="checkbox-entry">
                            <input type="checkbox"><span>denpasar</span>
                        </label>
                        <div class="empty-space col-xs-b10"></div>
                        <label class="checkbox-entry">
                            <input type="checkbox"><span>mataram</span>
                        </label>
                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                        <div class="row">
                            <div class="col-sm-6 col-md-12">
                                <div class="banner-shortcode style-2">
                                    <div class="content">
                                        <div class="background" style="background-image: url(img/promo1.jpg);"></div>
                                        <div class="description valign-middle">
                                            <div class="valign-middle-content">
                                                <div class="simple-article size-1 color"><a href="#">BLACK FRIDAY PROMO</a></div>
                                                <div class="h4 "><a href="#">TUPPERWARE BLUE TOPLES</a></div>
                                                <div class="banner-title text-red">- 35% OFF</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                
                            </div>
                        </div>
                        <div class="empty-space col-xs-b25 col-sm-b50"></div>
                        
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