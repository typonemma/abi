@extends('partials.main')
<?php
    $user = session('user');
?>
@section('cart')
    <a href="cart.html">
        <b class="hidden-xs">YOUR CART</b>
        <span class="cart-icon">
            <i class="fa fa-shopping-bag" aria-hidden="true"></i>
            <span class="cart-label">5</span>
        </span>
        <span class="cart-title hidden-xs">Rp {{ number_format($user->wallet, 0, '.', '.') }}</span>
    </a>
@endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="h3">PROFILE</div>
            <ul class="profile-menu ">
                <li><a href="profile-detail">Account Details</a></li>
                <li><a href="profile-addresses" class="active">Addresses</a></li>
                <li><a href="profile-yourorder">Your Order</a></li>
                <li><a href="profile-history">History Order</a></li>
                <li><a href="logout">Log Out</a></li>
            </ul>
        </div>
        <form  method="post" action="saveAddressChanges">
            @csrf
            <div class="col-sm-9">
                <div class="h4">billing address</div>
                <div class="empty-space col-xs-b30"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <input name="bill_fname" class="simple-input" type="text" value="{{ $user_billing_address->first_name }}" placeholder="First Name">
                        <div class="empty-space col-xs-b20"></div>
                        <input name="bill_email" class="simple-input" type="text" value="{{ $user_billing_address->email }}" placeholder="Email">
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-4">
                        <input name="bill_lname" class="simple-input" type="text" value="{{ $user_billing_address->last_name }}" placeholder="Last Name">
                        <div class="empty-space col-xs-b20"></div>
                        <input name="bill_phone" class="simple-input" type="text" value="{{ $user_billing_address->phone_number }}" placeholder="Phone">
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-8">
                        <textarea name="bill_address" class="simple-input" placeholder="Address">{{ $user_billing_address->address }}</textarea>
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <input id="temp_bill_city" type="hidden" value="{{ $user_billing_address->city }}">
                        <select id="bill_city" name="bill_city" class="SlectBox">
                            <option disabled="disabled" selected="selected">City</option>
                            <option value="volvo">Volvo</option>
                            <option value="saab">Saab</option>
                            <option value="mercedes">Mercedes</option>
                            <option value="audi">Audi</option>
                        </select>
                        <div class="empty-space col-xs-b20"></div>
                        <input name="bill_zipcode" class="simple-input" type="text" value="{{ $user_billing_address->zip_code }}" placeholder="Zip Code">
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-4">
                        <input name="bill_district" class="simple-input" type="text" value="{{ $user_billing_address->district }}" placeholder="District">
                        <div class="empty-space col-xs-b20"></div>


                    </div>

                </div>
                <div class="h4">shipping address</div>
                <div class="empty-space col-xs-b30"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <input name="ship_fname" class="simple-input" type="text" value="{{ $user_shipping_address->first_name }}" placeholder="First Name">
                        <div class="empty-space col-xs-b20"></div>
                        <input name="ship_email" class="simple-input" type="text" value="{{ $user_shipping_address->email }}" placeholder="Email">
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-4">
                        <input name="ship_lname" class="simple-input" type="text" value="{{ $user_shipping_address->last_name }}" placeholder="Last Name">
                        <div class="empty-space col-xs-b20"></div>
                        <input name="ship_phone" class="simple-input" type="text" value="{{ $user_shipping_address->phone_number }}" placeholder="Phone">
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-8">
                        <textarea name="ship_address" class="simple-input" placeholder="Address">{{ $user_shipping_address->address }}</textarea>
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <input id="temp_ship_city" type="hidden" value="{{ $user_shipping_address->city }}">
                        <select id="ship_city" name="ship_city" class="SlectBox">
                            <option disabled="disabled" selected="selected">City</option>
                            <option value="volvo">Volvo</option>
                            <option value="saab">Saab</option>
                            <option value="mercedes">Mercedes</option>
                            <option value="audi">Audi</option>
                        </select>
                        <div class="empty-space col-xs-b20"></div>
                        <input name="ship_zipcode" class="simple-input" type="text" value="{{ $user_shipping_address->zip_code }}" placeholder="Zip Code">
                        <div class="empty-space col-xs-b20"></div>
                        <div class="button size-2 style-3">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                <span class="text">save changes</span>
                            </span>
                            <input type="submit" value="">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <input name="ship_district" class="simple-input" type="text" value="{{ $user_shipping_address->district }}" placeholder="District">
                        <div class="empty-space col-xs-b20"></div>


                    </div>

                </div>
            </div>
            @if ($errors->any())
                <ul style="list-style-type:none;color:red;margin-left:28%;">
                    @foreach ($errors->all() as $error)
                        <br>
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            @endif
        </form>
    </div>
</div>
<script>
    let bill_city = document.getElementById('bill_city');
    let temp_bill_city = document.getElementById('temp_bill_city').value;
    let ship_city = document.getElementById('ship_city');
    let temp_ship_city = document.getElementById('temp_ship_city').value;
    if (temp_bill_city != '') {
        for (let i = 0; i < bill_city.options.length; i++) {
            if (bill_city.options[i].value == temp_bill_city) {
                bill_city.options[i].selected = true;
            }
            else {
                bill_city.options[i].selected = false;
            }
        }
    }
    if (temp_ship_city != '') {
        for (let i = 0; i < ship_city.options.length; i++) {
            if (ship_city.options[i].value == temp_ship_city) {
                ship_city.options[i].selected = true;
            }
            else {
                ship_city.options[i].selected = false;
            }
        }
    }
</script>
@endsection
