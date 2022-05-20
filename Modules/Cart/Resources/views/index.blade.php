@extends('partials.main')
@section('content')
@if (session('empty'))
    <script>alert('Cart cannot be empty !')</script>
@endif
@if (session('ship-error'))
    <script>alert('Please calculate the shipping cost first !')</script>
@endif
<div class="container">
    <div class="empty-space col-xs-b25 col-sm-b50"></div>

    <div class="text-center">
        <div class="simple-article size-3 text-blue uppercase col-xs-b5">shopping cart</div>
        <div class="h2">check your products</div>
        <div class="title-underline center"><span></span></div>
    </div>
</div>
<div class="empty-space col-xs-b35 col-md-b70"></div>
<div class="container">
    <table id="cart-detail" class="cart-table">
        <thead>
            <tr>
                <th style="width: 95px;"></th>
                <th>product name</th>
                <th style="width: 150px;">price</th>
                <th style="width: 260px;">quantity</th>

                <th style="width: 150px;">total</th>
                <th style="width: 70px;"></th>
            </tr>
        </thead>
        <tbody>
            @foreach($cart_detail as $items)
                <tr>
                    <?php
                        $product = App\Models\Product::find($items->prod_id);
                        $image = $product->image_url;
                        if ($image == '') {
                            $image = 'public/uploads/no-image.jpg';
                        }
                    ?>
                    <td data-title=" ">
                        <a class="cart-entry-thumbnail" href="/product/detail/{{$product->slug}}"><img src="{{$image}}" alt="" style="width:100%;height:100%;"></a>
                    </td>
                    <td data-title=" "><h5 class="h5"><a href="/product/detail/{{$product->slug}}">{!! $items->title !!}</a></h5></td>
                    <td data-title="Price: " class="price" data-price="{!!$items->price!!}">Rp. {!!  number_format($items->price,0,',','.') !!}</td>
                    <td data-title="Quantity: ">
                        <div class="quantity-select">
                            <span class="minus" class="minus" onclick="ajaxUpdateCartItem(-1, {{$items->id}})"></span>
                            <span id="{{$items->id}}" class="number">{{ $items->quantity }}</span>
                            <span class="plus" class="plus" onclick="ajaxUpdateCartItem(1, {{$items->id}})"></span>
                        </div>
                    </td>

                    <td data-title="Total:" id="total-{{$items->id}}" class="final" data-price="{{$items->price}}" data-total="{{$items->price * $items->quantity}}">Rp.{!! number_format($items->price * $items->quantity,0,',','.') !!}</td>
                    <td data-title="">
                        <a class="button-close" onclick="ajaxDeleteFromCart({{$items->id}})"></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="empty-space col-xs-b35 col-md-b50"></div>
    <div class="row">
        <div class="col-md-6 col-xs-b50 col-md-b0">
            <h4 class="h4 col-xs-b25">calculate shipping</h4>
            <div class="empty-space col-xs-b20"></div>
            <div class="row m10">
                <div class="col-sm-6">
                    <select id="city" class="SlectBox">
                        <option disabled="disabled" selected="selected">Choose city for shipping</option>
                        @foreach ($kota as $kt)
                            <option value="{{ $kt->nama_kota }}">{{ $kt->nama_kota }}</option>
                        @endforeach
                    </select>
                    <ul id="city-errors" style="list-style-type:none;color:red;">

                    </ul>
                </div>
                <div class="col-sm-6">
                    <input id="postcode" class="simple-input" type="text" value="" placeholder="Postcode / Zip" />
                    <ul id="postcode-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b20"></div>
                </div>
                <div>
                    <input id="address" class="simple-input" type="text" value="" placeholder="Address" />
                    <ul id="address-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b20"></div>
                </div>
            </div>
            <div id="calc-ship-btn">
                <div class="button size-2 style-2" onclick="ajaxCalcShipping()">
                    <span class="button-wrapper">
                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                        <span class="text">calculate</span>
                    </span>
                </div>
            </div>
            <div class="empty-space col-xs-b15 col-md-b40"></div>
            <div class="h4">result</div>
            <br>
            <div id="shipping-cost">Rp. 0</div>
            <div id="jne" class="order-details-entry simple-article size-3 grey uppercase" style="display:none">
                <div class="row">
                    <div class="col-xs-1">
                        <label class="checkbox-entry radio">
                            <input type="radio" name="1" checked=""><span></span>
                        </label>
                    </div>
                    <div class="col-xs-2">
                        <img src="{{URL::asset('public/custom/img/jne.png')}}">
                    </div>
                    <div class="col-xs-6">
                        <span id="jne-city">Surabaya - Surabaya (1-2days)</span>
                    </div>
                    <div class="col-xs-3 col-xs-text-right">
                        <div class="">
                            <span id="jne-city-cost">Rp 7.000</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b15 col-md-b40"></div>
            <div class="h4">COUPON CODE</div>
            <div class="empty-space col-xs-b15 col-md-b20"></div>
            <div class="single-line-form">
                <input class="simple-input" type="text" value="" id="coupon" name="coupon" placeholder="Enter your coupon code" />
                <div id="submit-coupon" class="button size-2 style-3" onclick="submitCoupon()">
                    <span class="button-wrapper">
                        <span class="icon"><img src="img/icon-4.png" alt=""></span>
                        <span class="text">submit</span>
                    </span>
                    <input type="submit" id="submitCoupon" value="">
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <h4 class="h4">cart totals</h4>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-6">
                        cart subtotal
                    </div>
                    <div class="col-xs-6 col-xs-text-right">
                        <?php
                            $cart = App\Cart::where('user_id', '=', session('user')->id)->first();
                            if ($cart == null) {
                                $cart = new App\Cart;
                                $cart->total = 0;
                            }
                        ?>
                        <div class="color" id="subtotal">RP. {!! number_format($cart->total,0,',','.') !!}</div>
                        <input id="temp-cart-total" type="hidden" value="{{$cart->total}}">
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-6">
                        coupon discount
                    </div>
                    <div class="col-xs-6 col-xs-text-right">
                        <div id="coupon-discount" class="color">-</div>
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
                    <div class="col-xs-6 col-xs-text-right">
                        <div class="color">
                            &nbsp;
                            <br/>
                            <div class="color">
                                <span id="ship-cost">Rp 0</span>
                                <input id="temp-ship-cost" type="hidden" value="0">
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
                        <div id="order-total" class="color">Rp. {{number_format($cart->total,0,',','.')}}</div>
                        <input id="temp-total" type="hidden" value="{{$cart->total}}">
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b15 col-md-b30"></div>
            <div class="buttons-wrapper text-right">

                <a class="button size-2 style-3" onclick="location.href='/cart-slice/getShippingCost/'+document.getElementById('temp-ship-cost').value">
                    <span class="button-wrapper">
                        <span class="icon"><img src="img/icon-4.png" alt=""></span>
                        <span class="text">proceed to checkout</span>
                    </span>
                </a>
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
</div>
@endsection
@section('script')
<script>
    $(document).on('click','.plus',function(){
        var number = $(this).parent().find('.number').text();
        var price = $(this).parent().parent().parent().find('.final');
        number = parseInt(number)+1;
        price.text('Rp. '+numberWithCommas(number * price.data("price")));
        price.attr("data-total",(number*price.data("price")));
        refreshSubtotal()
    });
    $(document).on('click','.minus',function(){
        var number = $(this).parent().find('.number').text();
        var price = $(this).parent().parent().parent().find('.final');
        number = parseInt(number);
        price.text('Rp. '+numberWithCommas(number * price.data("price")));
        price.attr("data-total",(number*price.data("price")));
        refreshSubtotal()
    });
    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
    function refreshSubtotal(){
        var price = $('.final');
        var total = 0;
        $.each(price,function(key,value){
            total = total + parseInt($(value).attr("data-total"));
        });
        $('#subtotal').text('Rp. '+numberWithCommas(total));
    }
</script>
@endsection
