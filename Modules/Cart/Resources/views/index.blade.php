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
        <tbody>
            <tr>
                <td data-title=" ">
                    <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-1.png')}}" alt=""></a>
                </td>
                <td data-title=" "><h5 class="h5"><a href="#">charger asus a455l</a></h5></td>
                <td data-title="Price: ">Rp 200.000</td>
                <td data-title="Quantity: ">
                    <div class="quantity-select">
                        <span class="minus"></span>
                        <span class="number">1</span>
                        <span class="plus"></span>
                    </div>
                </td>

                <td data-title="Total:">Rp 200.000</td>
                <td data-title="">
                    <div class="button-close"></div>
                </td>
            </tr>
            <tr>
                <td data-title=" ">
                    <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-1.png')}}" alt=""></a>
                </td>
                <td data-title=" "><h5 class="h5"><a href="#">charger asus a455l</a></h5></td>
                <td data-title="Price: ">Rp 200.000</td>
                <td data-title="Quantity: ">
                    <div class="quantity-select">
                        <span class="minus"></span>
                        <span class="number">1</span>
                        <span class="plus"></span>
                    </div>
                </td>

                <td data-title="Total:">Rp 200.000</td>
                <td data-title="">
                    <div class="button-close"></div>
                </td>
            </tr>
            <tr>
                <td data-title=" ">
                    <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-1.png')}}" alt=""></a>
                </td>
                <td data-title=" "><h5 class="h5"><a href="#">charger asus a455l</a></h5></td>
                <td data-title="Price: ">Rp 200.000</td>
                <td data-title="Quantity: ">
                    <div class="quantity-select">
                        <span class="minus"></span>
                        <span class="number">1</span>
                        <span class="plus"></span>
                    </div>
                </td>

                <td data-title="Total:">Rp 200.000</td>
                <td data-title="">
                    <div class="button-close"></div>
                </td>
            </tr>
        </tbody>
    </table>

    <div class="empty-space col-xs-b35 col-md-b50"></div>
    <div class="row">
        <div class="col-md-6 col-xs-b50 col-md-b0">
            <h4 class="h4 col-xs-b25">calculate shipping</h4>

            <div class="empty-space col-xs-b20"></div>
            <div class="row m10">
                <div class="col-sm-6">
                    <select class="SlectBox">
                        <option disabled="disabled" selected="selected">Choose city for shipping</option>
                        <option value="volvo">Volvo</option>
                        <option value="saab">Saab</option>
                        <option value="mercedes">Mercedes</option>
                        <option value="audi">Audi</option>
                    </select>

                </div>
                <div class="col-sm-6">
                    <input class="simple-input" type="text" value="" placeholder="Postcode / Zip" />
                    <div class="empty-space col-xs-b20"></div>
                </div>
            </div>
            <div>
                <input class="simple-input" type="text" value="" placeholder="Address" />
                <div class="empty-space col-xs-b20"></div>
            </div>
            <div class="button size-2 style-2">
                <span class="button-wrapper">
                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-1.png')}}" alt=""></span>
                    <span class="text">calculate</span>
                </span>
                <input type="submit"/>
            </div>
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
                <input class="simple-input" type="text" value="" placeholder="Enter your coupon code" />
                <div class="button size-2 style-3">
                    <span class="button-wrapper">
                        <span class="icon"><img src="img/icon-4.png" alt=""></span>
                        <span class="text">submit</span>
                    </span>
                    <input type="submit" value="">
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
                        <div class="color">Rp 200.000</div>
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

                <a class="button size-2 style-3" href="#">
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
