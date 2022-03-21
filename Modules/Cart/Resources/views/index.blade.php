@extends('partials.main')
@section('content')
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
    <table class="cart-table">
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
        <tbody id="cart-detail">
            @foreach($cart_detail as $items)
                <tr>
                    <td data-title=" ">
                        <a class="cart-entry-thumbnail" href="#"><img src="{{ get_image_url($items->img_src) }}" alt="" style="widht:85px;height:85px"></a>
                    </td>
                    <td data-title=" "><h5 class="h5"><a href="/product/detail/{{$items->prod_id}}">{!! $items->title !!}</a></h5></td>
                    <td data-title="Price: " class="price" data-price="{!!$items->price!!}">Rp. {!!  number_format($items->price,0,',','.') !!}</td>
                    <td data-title="Quantity: ">
                        <div class="quantity-select">
                            <span class="minus" class="minus" onclick="ajaxUpdateCartItem(-1, {{$items->id}})"></span>
                            <span id="{{$items->id}}" class="number">{{ $items->quantity }}</span>
                            <span class="plus" class="plus" onclick="ajaxUpdateCartItem(1, {{$items->id}})"></span>
                        </div>
                    </td>

                    <td data-title="Total:" id="total" class="final" data-price="{{$items->price}}" data-total="{{$items->price * $items->quantity}}">Rp.{!! number_format($items->price * $items->quantity,0,',','.') !!}</td>
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
            <form action="/cart-slice/calculateShipping" method="post">
                @csrf
                <div class="row m10">
                    <div class="col-sm-6">
                        @if ($errors->any())
                            @if ($errors->has('city'))
                                <select name="city" class="SlectBox" style="border-color:red">
                                    <option disabled="disabled" selected="selected">Choose city for shipping</option>
                                    @foreach ($kota as $kt)
                                        <option value="{{ $kt->nama_kota }}">{{ $kt->nama_kota }}</option>
                                    @endforeach
                                </select>
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['city'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <select name="city" class="SlectBox">
                                    <option disabled="disabled" selected="selected">Choose city for shipping</option>
                                    @foreach ($kota as $kt)
                                        <option value="{{ $kt->nama_kota }}">{{ $kt->nama_kota }}</option>
                                    @endforeach
                                </select>
                            @endif
                        @else
                            <select name="city" class="SlectBox">
                                <option disabled="disabled" selected="selected">Choose city for shipping</option>
                                @foreach ($kota as $kt)
                                    <option value="{{ $kt->nama_kota }}">{{ $kt->nama_kota }}</option>
                                @endforeach
                            </select>
                         @endif
                    </div>
                    <div class="col-sm-6">
                        @if ($errors->any())
                            @if ($errors->has('postcode'))
                                <input name="postcode" class="simple-input" style="border-color:red" type="text" value="" placeholder="Postcode / Zip" />
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['postcode'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="postcode" class="simple-input" type="text" value="" placeholder="Postcode / Zip" />
                            @endif
                        @else
                            <input name="postcode" class="simple-input" type="text" value="" placeholder="Postcode / Zip" />
                         @endif
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                </div>
                <div>
                    @if ($errors->any())
                        @if ($errors->has('address'))
                            <input name="address" class="simple-input" style="border-color:red" type="text" value="" placeholder="Address" />
                            <ul style="list-style-type:none;color:red;">
                                @foreach ($errors->getMessages()['address'] as $error)
                                    {{ $error }}
                                @endforeach
                            </ul>
                        @else
                            <input name="address" class="simple-input" type="text" value="" placeholder="Address" />
                        @endif
                    @else
                        <input name="address" class="simple-input" type="text" value="" placeholder="Address" />
                    @endif
                    <div class="empty-space col-xs-b20"></div>
                </div>
                <div class="button size-2 style-2">
                    <span class="button-wrapper">
                        <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                        <span class="text">calculate</span>
                    </span>
                    <input type="submit"/>
                </div>
            </form>
            <div class="empty-space col-xs-b15 col-md-b40"></div>
            <div class="h4">result</div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
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
                        <span>Surabaya - Surabaya (2-4days)</span>
                        <span>Surabaya - Surabaya (1-2days)</span>
                    </div>
                    <div class="col-xs-3 col-xs-text-right">
                        <div class="">
                            <span>Rp 7.000</span>
                            <span>Rp 17.000</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-1">
                        <label class="checkbox-entry radio">
                            <input type="radio" name="1"><span></span>
                        </label>
                    </div>
                    <div class="col-xs-2">
                        <img src="{{URL::asset('public/custom/img/custom-shipping.png')}}">
                    </div>
                    <div class="col-xs-6">
                        <span>CUSTOM</span>

                    </div>
                    <div class="col-xs-3 col-xs-text-right">
                        <div class="">
                            <span>Rp 0</span>

                        </div>
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-1">
                        <label class="checkbox-entry radio">
                            <input type="radio" name="1" disabled><span></span>
                        </label>
                    </div>
                    <div class="col-xs-2">
                        <img src="{{URL::asset('public/custom/img/jnt.png')}}">
                    </div>
                    <div class="col-xs-9">
                        this expedition cannot accept a battery product
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-1">
                        <label class="checkbox-entry radio">
                            <input type="radio" name="1" disabled><span></span>
                        </label>
                    </div>
                    <div class="col-xs-2">
                        <img src="{{URL::asset('public/custom/img/sicepat.png')}}">
                    </div>
                    <div class="col-xs-9">
                        this expedition cannot accept a battery product
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b15 col-md-b40"></div>
            <div class="h4">COUPON CODE</div>
            <div class="empty-space col-xs-b15 col-md-b20"></div>
            <div class="single-line-form">
                <form action="/cart-slice/couponCode" method="post">
                    @csrf
                    @if ($errors->any())
                        @if ($errors->has('coupon'))
                            <input class="simple-input" type="text" style="border-color:red" value="" id="coupon" name="coupon" placeholder="Enter your coupon code" />
                            <ul style="list-style-type:none;color:red;">
                                @foreach ($errors->getMessages()['coupon'] as $error)
                                    {{ $error }}
                                @endforeach
                            </ul>
                        @else
                            <input class="simple-input" type="text" value="" id="coupon" name="coupon" placeholder="Enter your coupon code" />
                        @endif
                    @else
                        <input class="simple-input" type="text" value="" id="coupon" name="coupon" placeholder="Enter your coupon code" />
                    @endif
                    <div class="button size-2 style-3">
                        <span class="button-wrapper">
                            <span class="icon"><img src="img/icon-4.png" alt=""></span>
                            <span class="text">submit</span>
                        </span>
                        <input type="submit" id="submitCoupon" value="">
                    </div>
                </form>
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
                        <div class="color" id="subtotal">RP. {!! number_format(Cart::getTotal(),0,',','.') !!}</div>
                    </div>
                </div>
            </div>
            <div class="order-details-entry simple-article size-3 grey uppercase">
                <div class="row">
                    <div class="col-xs-6">
                        coupon discount
                    </div>
                    <div class="col-xs-6 col-xs-text-right">
                        <div class="color">-</div>
                    </div>
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
                            &nbsp;
                            <br/>
                            <div class="color">
                                <span>Rp 20.000</span>
                                <span>Rp 20.000</span>
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
                        <div class="color">Rp 200.000</div>
                    </div>
                </div>
            </div>
            <div class="empty-space col-xs-b15 col-md-b30"></div>
            <div class="buttons-wrapper text-right">

                <a class="button size-2 style-3" href="/cart-slice/checkout">
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

    $(document).on('click','#submitCoupon',function(){
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
              alert( 'Your coupon successfully added' );

              shopist_frontend.event.remove_user_coupon();
            }
            else if(data.error == true && data.error_type == 'exceed_from_cart_total'){
              alert( 'Discount price can not be greater than from cart total' );
            }
        });
    });
</script>
@endsection
