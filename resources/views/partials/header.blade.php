<header>
    <div class="header-bottom">
        <div class="content-margins">
            <div class="row">
                <div class="col-xs-4 col-sm-12">
                    <div class="nav-wrapper">
                        <div class="nav-close-layer"></div>
                        <nav>
                            <ul>
                                @yield('navbar')
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
                    <div class="header-bottom-icon toggle-search"><i class="fa fa-search" aria-hidden="true"></i></div>-->
                    <div class="header-bottom-icon visible-rd"><i class="fa fa-heart-o" aria-hidden="true"></i></div>
                    <div class="header-bottom-icon visible-rd">
                        <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                        <span class="cart-label">5</span>
                    </div>-->
                    <a id="logo" href="home" class="text-center"><img src="{{URL::asset('public/custom/img/logo.jpg')}}" alt="" /></a>
                    <div class="text-right">
                        @if (session('user'))
                            <div class="entry hidden-xs hidden-sm cart">
                                <div id="calculate">
                                    <?php
                                        $user = session('user');
                                        $cart = App\Cart::where('user_id', '=', $user->id)->first();
                                        $cart_detail = array();
                                        if ($cart != null) {
                                            $cart_detail = App\CartDetail::where('cart_id', '=', $cart->id)->get();
                                        }
                                        else {
                                            $cart = new Cart;
                                            $cart->total = 0;
                                        }
                                    ?>
                                </div>
                                <a href="/cart-slice">
                                    <b class="hidden-xs">YOUR CART</b>
                                    <span class="cart-icon">
                                        <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span class="cart-label"><div id="cart-count">{{count($cart_detail)}}</div></span>
                                    </span>
                                    <span id="cart-title-total" class="cart-title hidden-xs">Rp {{ number_format($cart->total, 0, '.', '.') }}</span>
                                </a>
                                <div class="cart-toggle hidden-xs hidden-sm">
                                    <div id="cart-detail-dropdown" class="cart-overflow">
                                        @foreach ($cart_detail as $cd)
                                            <?php
                                                $product = App\Models\Product::find($cd->product_id);
                                                $image = $product->image_url;
                                                if ($image == '') {
                                                    $image = 'public/uploads/no-image.jpg';
                                                }
                                            ?>
                                            <div class="cart-entry clearfix">
                                                <a class="cart-entry-thumbnail" href="/product/detail/{{$product->slug}}"><img src="{{$image}}" alt="" style="width:30%;height:30%;"></a>
                                                <div class="cart-entry-description">
                                                    <table>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <div class="h6"><a href="/product/detail/{{$product->slug}}">{{$product->title}}</a></div>
                                                                    <div class="simple-article size-1">QUANTITY: {{$cd->quantity}}</div>
                                                                </td>
                                                                <td>
                                                                    <div class="simple-article size-3 grey">RP {{number_format($product->regular_price, 0, '.', '.')}}</div>
                                                                    <div class="simple-article size-1">TOTAL: RP {{number_format($product->regular_price * $cd->quantity, 0, '.', '.')}}</div>
                                                                </td>
                                                                <td>
                                                                    <div class="cart-color" style="background: #eee;"></div>
                                                                </td>
                                                                <td>
                                                                    <div class="button-close" onclick="ajaxDeleteFromCart({{$cd->id}})"></div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="col-xs-6 text-right">
                                        <a class="button size-2 style-3" href="/cart-slice/checkout">
                                            <span class="button-wrapper">
                                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                                <span class="text">proceed to checkout</span>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @endif
                        @if (session('user'))
                            <div class="entry hidden-xs hidden-sm"><a href="/wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></div>
                        @endif
                        <div class="entry">
                            @if (session('user'))
                                <a href="/profile-detail">
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
            if (element.type != 'hidden') {
                element.setAttribute("style", "border-color:none");
                if (element.type == 'password') {
                    element.value = "";
                }
            }
        }
    }
    function Load2() {
        let input = document.getElementsByTagName("input");
        document.getElementById("city-errors").innerHTML = "";
        document.getElementById("postcode-errors").innerHTML = "";
        document.getElementById("address-errors").innerHTML = "";
        for (let i = 0; i < input.length; i++) {
            const element = input[i];
            if (element.type != 'hidden') {
                element.setAttribute("style", "border-color:none");
                if (element.type == 'password') {
                    element.value = "";
                }
            }
        }
    }
    function Load3() {
        let input = document.getElementsByTagName("input");
        document.getElementById("country-errors").innerHTML = "";
        document.getElementById("fname-errors").innerHTML = "";
        document.getElementById("email-errors").innerHTML = "";
        document.getElementById("phone-errors").innerHTML = "";
        document.getElementById("address-errors").innerHTML = "";
        document.getElementById("note-errors").innerHTML = "";
        document.getElementById("ppa-errors").innerHTML = "";
        for (let i = 0; i < input.length; i++) {
            const element = input[i];
            if (element.type != 'hidden') {
                element.setAttribute("style", "border-color:none");
                if (element.type == 'password') {
                    element.value = "";
                }
            }
        }
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
        });
    }
</script>
