<header>
    <div class="header-bottom">
        <div class="content-margins">
            <div class="row">
                <div class="col-xs-4 col-sm-12">
                    <div class="nav-wrapper">
                        <div class="nav-close-layer"></div>
                        <nav>
                            <ul>
                                <li id="home">
                                    <a href="/">Home</a>
                                </li>
                                <li id="about-us">
                                    <a href="about.html">about us</a>
                                </li>
                                <li id="product">
                                    <a href="/product">products</a>
                                </li>
                                <li id="shipment">
                                    <a href="services.html">Shipment</a>
                                </li>
                                <li id="blog">
                                    <a href="blog.html">blogs</a>
                                </li>
                                <li id="contact-us"><a href="contact.html">contact us</a></li>
                            </ul>
                            <div class="navigation-title">
                                Navigation
                                <div class="hamburger-icon active">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <!--<div class="header-bottom-icon toggle-search"><i class="fa fa-search" aria-hidden="true"></i></div>-->
                    <!--<div class="header-bottom-icon visible-rd"><i class="fa fa-heart-o" aria-hidden="true"></i></div>
                    <div class="header-bottom-icon visible-rd">
                        <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                        <span class="cart-label">5</span>
                    </div>-->
                    <a id="logo" style="padding-left:4%" href="index.html" class="text-center"><img src="{{URL::asset('public/custom/img/logo.jpg')}}" alt="" /></a>
                    <div class="text-right">
                        @if (session('user'))
                            <div class="entry hidden-xs hidden-sm cart">
                                @yield('cart')
                                <div class="cart-toggle hidden-xs hidden-sm">
                                    <div class="cart-overflow">
                                        <div class="cart-entry clearfix">
                                            <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-1.png')}}" alt=""></a>
                                            <div class="cart-entry-description">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="h6"><a href="#">modern beat ht</a></div>
                                                                <div class="simple-article size-1">QUANTITY: 2</div>
                                                            </td>
                                                            <td>
                                                                <div class="simple-article size-3 grey">$155.00</div>
                                                                <div class="simple-article size-1">TOTAL: $310.00</div>
                                                            </td>
                                                            <td>
                                                                <div class="cart-color" style="background: #eee;"></div>
                                                            </td>
                                                            <td>
                                                                <div class="button-close"></div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="cart-entry clearfix">
                                            <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-2.png')}}" alt=""></a>
                                            <div class="cart-entry-description">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="h6"><a href="#">modern beat ht</a></div>
                                                                <div class="simple-article size-1">QUANTITY: 2</div>
                                                            </td>
                                                            <td>
                                                                <div class="simple-article size-3 grey">$155.00</div>
                                                                <div class="simple-article size-1">TOTAL: $310.00</div>
                                                            </td>
                                                            <td>
                                                                <div class="cart-color" style="background: #bf584b;"></div>
                                                            </td>
                                                            <td>
                                                                <div class="button-close"></div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="cart-entry clearfix">
                                            <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-3.png')}}" alt=""></a>
                                            <div class="cart-entry-description">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="h6"><a href="#">modern beat ht</a></div>
                                                                <div class="simple-article size-1">QUANTITY: 2</div>
                                                            </td>
                                                            <td>
                                                                <div class="simple-article size-3 grey">$155.00</div>
                                                                <div class="simple-article size-1">TOTAL: $310.00</div>
                                                            </td>
                                                            <td>
                                                                <div class="cart-color" style="background: #facc22;"></div>
                                                            </td>
                                                            <td>
                                                                <div class="button-close"></div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="empty-space col-xs-b40"></div>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div class="cell-view empty-space col-xs-b50">
                                                <div class="simple-article size-5 grey">TOTAL <span class="color">$1195.00</span></div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <a class="button size-2 style-3" href="checkout1.html">
                                                <span class="button-wrapper">
                                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                                    <span class="text">proceed to checkout</span>
                                                </span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                        <div class="entry hidden-xs hidden-sm"><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a></div>
                        <div class="entry">
                            @if (session('user'))
                                <a data-rel="1">
                                    <b>profile</b>
                                </a>
                            @else
                                <a class="login-popup open-popup" data-rel="1" onclick="Load()">
                                    <b>login</b>
                                </a>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-search-wrapper">
                <div class="header-search-content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2 col-lg-6 col-lg-offset-3">
                                <form>
                                    <div class="search-submit">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                        <input type="submit"/>
                                    </div>
                                    <input class="simple-input style-1" type="text" value="" placeholder="Enter keyword" />
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="button-close"></div>
                </div>
            </div>
        </div>
    </div>
</header>
<script>
    function Load() {
        let ul = document.getElementsByTagName("ul");
        let input = document.getElementsByTagName("input");
        for (let i = 1; i < ul.length; i++) {
            const element = ul[i];
            element.innerHTML = "";
        }
        for (let i = 0; i < input.length; i++) {
            const element = input[i];
            element.value = "";
            element.setAttribute("style", "border-color:none");
        }
    }
</script>
