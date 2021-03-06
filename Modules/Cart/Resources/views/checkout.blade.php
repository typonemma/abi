@extends('partials.main')
<?php
    $ship = session('ship');
    $user = session('user');
    $user_encode = json_encode($user);
    $user_billing_encode = json_encode(App\UserBillingAddress::where('user_id', '=', $user->id)->first());
    $user_shipping_encode = json_encode(App\UserShippingAddress::where('user_id', '=', $user->id)->first());
    $cart = App\Cart::where('user_id', '=', $user->id)->first();
    $cart_encode = json_encode($cart);
    $cart_items_encode = json_encode(App\CartDetail::join('products', 'products.id', '=', 'cart_detail.product_id')->where('cart_id', '=', $cart->id)->select('products.id AS product_id', 'products.title AS name', 'cart_detail.quantity', 'cart_detail.price', 'products.image_url AS img_src', 'products.type AS product_type')->get());
    $ship_encode = json_encode($ship);
    $coupon_amount = session('coupon_amount');
?>
@section('content')
<div class="container">
    <div class="empty-space col-xs-b15 col-sm-b50"></div>

    <div class="text-center">
        <div class="simple-article size-3 text-blue uppercase col-xs-b5">checkout</div>
        <div class="h2">check your info</div>
        <div class="title-underline center"><span></span></div>
    </div>
</div>
<div class="empty-space col-xs-b35 col-md-b70"></div>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-xs-b50 col-md-b0">
            <h4 class="h4 col-xs-b25">billing details</h4>
            <select id="country" class="SlectBox">
                <option selected="selected">Indonesia</option>
            </select>
            <ul id="country-errors" style="list-style-type:none;color:red;">

            </ul>
            <div class="empty-space col-xs-b20"></div>
            <div class="row m10">
                <div class="col-sm-12">
                    <input id="fname" class="simple-input" type="text" value="" placeholder="Full name" />
                    <ul id="fname-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b20"></div>
                </div>

            </div>
            <div class="row m10">
                <div class="col-sm-6">
                    <input id="email" class="simple-input" type="text" value="" placeholder="Email" />
                    <ul id="email-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b20"></div>
                </div>
                <div class="col-sm-6">
                    <input id="phone" class="simple-input" type="text" value="" placeholder="Phone" />
                    <ul id="phone-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b20"></div>
                </div>
            </div>
            <input id="address" class="simple-input" type="text" value="" placeholder="Street address" />
            <ul id="address-errors" style="list-style-type:none;color:red;">

            </ul>
            <div class="empty-space col-xs-b20"></div>
            <textarea id="note" class="simple-input" placeholder="Note about your order"></textarea>
            <ul id="note-errors" style="list-style-type:none;color:red;">

            </ul>
            <div class="empty-space col-xs-b20"></div>
            <label class="checkbox-entry">
                <input id="ppa" type="checkbox" checked value="1" onclick="toggleCheck(this)"><span>Privacy policy agreement</span>
                <ul id="ppa-errors" style="list-style-type:none;color:red;">

                </ul>
            </label>
            <div class="empty-space col-xs-b30"></div>
            <h4 class="h4 col-xs-b25">your order</h4>
            {{-- Start Product --}}
            @foreach ($cart_detail as $cd)
                <?php
                    $product = App\Models\Product::find($cd->product_id);
                    $image = $product->image_url;
                    if ($image == '') {
                        $image = 'public/uploads/no-image.jpg';
                    }
                ?>
                <div class="cart-entry clearfix">
                    <a class="cart-entry-thumbnail" href="/product/detail/{{$product->slug}}"><img src="{{$image}}" alt="" style="width:20%;height:20%;"></a>
                    <div class="cart-entry-description">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="h6"><a href="/product/detail/{{$product->slug}}">{{$product->title}}</a></div>
                                        <div class="simple-article size-1">QUANTITY: {{$cd->quantity}}</div>
                                    </td>
                                    <td class="text-right">
                                        <div class="simple-article size-3 grey">Rp. {{number_format($product->regular_price,0,',','.')}}</div>
                                        <div class="simple-article size-1">TOTAL: Rp. {{number_format($product->regular_price * $cd->quantity,0,',','.')}}</div>
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            @endforeach
            {{-- End Product --}}
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-xs-b50 col-md-b0">
                <h4 class="h4 col-xs-b25">billing details</h4>
                <select class="SlectBox disabled">
                    <option disabled="disabled" selected="selected">Indonesia</option>

                </select>
                <div class="empty-space col-xs-b20"></div>
                <div class="row m10">
                    <div class="col-sm-12">
                        <input class="simple-input" type="text" value="" placeholder="Full name" />
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                    <div class="col-xs-6 col-xs-text-right">
                        <div class="color">Rp. {{number_format($cart->total,0,',','.')}}</div>
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-6">
                        coupon discount
                    </div>
                    <div class="col-xs-6 col-xs-text-right">
                        <div class="color">Rp. {{number_format($coupon_amount,0,',','.')}}</div>
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-6">
                        shipping and handling
                        <br/>
                        <span>JNE</span>
                    </div>
                </div>
                <div class="order-details-entry simple-article size-3 grey uppercase">
                    <div class="row">
                        <div class="col-xs-6">
                            shipping and handling
                            <br/>
                            <span>JNE (Sub - sub)</span>
                            <span>jne (dps - sub)</span>
                        </div>
                        <div class="col-xs-6 col-xs-text-right">
                            <div class="color">
                                <span>Rp {{number_format($ship->cost,0,',','.')}}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-6 color">
                        order total
                    </div>
                    <div class="col-xs-6 col-xs-text-right">
                        <div id="order-total" class="color">Rp {{number_format($cart->total+$ship->cost-$coupon_amount,0,',','.')}}</div>
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b50"></div>
            <h4 class="h4 col-xs-b25">payment method (bank transfer only)</h4>
            <label class="checkbox-entry radio">
                <input id="1" type="radio" name="1" checked="" onchange="checkChanged(this)">
                <span id="pay-1" style="text-transform: none;">
                    BCA - Cabang : HR Muhammad Surabaya<br/>
                    No. Rek. : 8290332959<br/>
                    Nama : Raffles Indonesia, CV
                </span>
            </label>
            <div class="empty-space col-xs-b10"></div>
            <label class="checkbox-entry radio">
                <input id="2" type="radio" name="1" checked="" onchange="checkChanged(this)">
                <span id="pay-2" style="text-transform: none;">
                    BCA - Cabang : HR Muhammad Surabaya<br/>
                    No. Rek. : 8290871281<br/>
                    Nama : Benny Widjaja
                </span>
            </label>
            <div class="empty-space col-xs-b10"></div>
            <label class="checkbox-entry radio">
                <input id="3" type="radio" name="1" checked="" onchange="checkChanged(this)">
                <span id="pay-3" style="text-transform: none;">
                    MANDIRI (Rp) - Cabang : Kusuma Bangsa - Surabaya<br/>
                    No. Rek. : 140-00-1051414-0<br/>
                    Nama : Oei Hwang Ie al Benny Widjaja
                </span>
            </label>
            <input id="payment" type="hidden" value="MANDIRI (Rp) - Cabang : Kusuma Bangsa - Surabaya No. Rek. : 140-00-1051414-0 Nama : Oei Hwang Ie al Benny Widjaja">
            <div class="empty-space col-xs-b10"></div>
            <div class="simple-article size-2">* Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus sollicitudin facilisis. Lorem ipsum dolor sit amet semper ante vehicula ociis natoq.</div>
            <div class="empty-space col-xs-b30"></div>
            <div class="button block size-2 style-3">
                <span class="button-wrapper">
                    <span class="icon"><img src="img/icon-4.png" alt=""></span>
                    <span class="text">place order</span>
                </span>
                <input id="user" type="hidden" value="{{$user_encode}}">
                <input id="user_billing" type="hidden" value="{{$user_billing_encode}}">
                <input id="user_shipping" type="hidden" value="{{$user_shipping_encode}}">
                <input id="cart" type="hidden" value="{{$cart_encode}}">
                <input id="cart_items" type="hidden" value="{{$cart_items_encode}}">
                <input id="ship" type="hidden" value="{{$ship_encode}}">
                <input id="temp-ship-cost" type="hidden" value="{{$ship->cost}}">
                <input id="coupon-amount" type="hidden" value="{{$coupon_amount}}">
                <input type="submit" onclick="ajaxPlaceOrder()"/>
            </div>
            <br>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
@endsection
