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
                <br>
                @if (session('success'))
                    <div class="alert alert-success" role="alert">
                        Saved changes successfully !
                    </div>
                @endif
                <div class="empty-space col-xs-b30"></div>
                <div class="row">
                    <div class="col-sm-4">
                        @if ($errors->any())
                            @if ($errors->has('bill_fname'))
                                <input name="bill_fname" class="simple-input" type="text" style="border-color:red" value="{{ $user_billing_address->first_name }}" placeholder="First Name">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_fname'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="bill_fname" class="simple-input" type="text" value="{{ $user_billing_address->first_name }}" placeholder="First Name">
                            @endif
                        @else
                            <input name="bill_fname" class="simple-input" type="text" value="{{ $user_billing_address->first_name }}" placeholder="First Name">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('bill_email'))
                                <input name="bill_email" class="simple-input" type="text" style="border-color:red" value="{{ $user_billing_address->email }}" placeholder="Email">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_email'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="bill_email" class="simple-input" type="text" value="{{ $user_billing_address->email }}" placeholder="Email">
                            @endif
                        @else
                            <input name="bill_email" class="simple-input" type="text" value="{{ $user_billing_address->email }}" placeholder="Email">
                        @endif
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-4">
                        @if ($errors->any())
                            @if ($errors->has('bill_lname'))
                                <input name="bill_lname" class="simple-input" type="text" style="border-color:red" value="{{ $user_billing_address->last_name }}" placeholder="Last Name">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_lname'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="bill_lname" class="simple-input" type="text" value="{{ $user_billing_address->last_name }}" placeholder="Last Name">
                            @endif
                        @else
                            <input name="bill_lname" class="simple-input" type="text" value="{{ $user_billing_address->last_name }}" placeholder="Last Name">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('bill_phone'))
                                <input name="bill_phone" class="simple-input" type="text" style="border-color:red" value="{{ $user_billing_address->phone_number }}" placeholder="Phone">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_phone'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="bill_phone" class="simple-input" type="text" value="{{ $user_billing_address->phone_number }}" placeholder="Phone">
                            @endif
                        @else
                            <input name="bill_phone" class="simple-input" type="text" value="{{ $user_billing_address->phone_number }}" placeholder="Phone">
                        @endif
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div style="margin-left:1.5%;width:64%">
                        @if ($errors->any())
                            @if ($errors->has('bill_address'))
                                <textarea name="bill_address" class="simple-input" style="border-color:red" placeholder="Address">{{ $user_billing_address->address }}</textarea>
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_address'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <textarea name="bill_address" class="simple-input" placeholder="Address">{{ $user_billing_address->address }}</textarea>
                            @endif
                        @else
                            <textarea name="bill_address" class="simple-input" placeholder="Address">{{ $user_billing_address->address }}</textarea>
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <input id="temp_bill_city" type="hidden" value="{{ $user_billing_address->city }}">
                        @if ($errors->any())
                            @if ($errors->has('bill_city'))
                                <select id="bill_city" name="bill_city" class="SlectBox" style="border-color:red">
                                    <option disabled="disabled" selected="selected">City</option>
                                    <option value="volvo">Volvo</option>
                                    <option value="saab">Saab</option>
                                    <option value="mercedes">Mercedes</option>
                                    <option value="audi">Audi</option>
                                </select>
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_city'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <select id="bill_city" name="bill_city" class="SlectBox">
                                    <option disabled="disabled" selected="selected">City</option>
                                    <option value="volvo">Volvo</option>
                                    <option value="saab">Saab</option>
                                    <option value="mercedes">Mercedes</option>
                                    <option value="audi">Audi</option>
                                </select>
                            @endif
                        @else
                            <select id="bill_city" name="bill_city" class="SlectBox">
                                <option disabled="disabled" selected="selected">City</option>
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="mercedes">Mercedes</option>
                                <option value="audi">Audi</option>
                            </select>
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('bill_zipcode'))
                                <input name="bill_zipcode" class="simple-input" type="text" style="border-color:red" value="{{ $user_billing_address->zip_code }}" placeholder="Zip Code">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_zipcode'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="bill_zipcode" class="simple-input" type="text" value="{{ $user_billing_address->zip_code }}" placeholder="Zip Code">
                            @endif
                        @else
                            <input name="bill_zipcode" class="simple-input" type="text" value="{{ $user_billing_address->zip_code }}" placeholder="Zip Code">
                        @endif
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-4">
                        @if ($errors->any())
                            @if ($errors->has('bill_district'))
                                <input name="bill_district" class="simple-input" type="text" style="border-color:red" value="{{ $user_billing_address->district }}" placeholder="District">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['bill_district'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="bill_district" class="simple-input" type="text" value="{{ $user_billing_address->district }}" placeholder="District">
                            @endif
                        @else
                            <input name="bill_district" class="simple-input" type="text" value="{{ $user_billing_address->district }}" placeholder="District">
                        @endif
                        <div class="empty-space col-xs-b20"></div>


                    </div>

                </div>
                <div class="h4">shipping address</div>
                <div class="empty-space col-xs-b30"></div>
                <div class="row">
                    <div class="col-sm-4">
                        @if ($errors->any())
                            @if ($errors->has('ship_fname'))
                                <input name="ship_fname" class="simple-input" type="text" style="border-color:red" value="{{ $user_shipping_address->first_name }}" placeholder="First Name">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_fname'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="ship_fname" class="simple-input" type="text" value="{{ $user_shipping_address->first_name }}" placeholder="First Name">
                            @endif
                        @else
                            <input name="ship_fname" class="simple-input" type="text" value="{{ $user_shipping_address->first_name }}" placeholder="First Name">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('ship_email'))
                                <input name="ship_email" class="simple-input" type="text" style="border-color:red" value="{{ $user_shipping_address->email }}" placeholder="Email">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_email'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="ship_email" class="simple-input" type="text" value="{{ $user_shipping_address->email }}" placeholder="Email">
                            @endif
                        @else
                            <input name="ship_email" class="simple-input" type="text" value="{{ $user_shipping_address->email }}" placeholder="Email">
                        @endif
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div class="col-sm-4">
                        @if ($errors->any())
                            @if ($errors->has('ship_lname'))
                                <input name="ship_lname" class="simple-input" type="text" style="border-color:red" value="{{ $user_shipping_address->last_name }}" placeholder="Last Name">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_lname'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="ship_lname" class="simple-input" type="text" value="{{ $user_shipping_address->last_name }}" placeholder="Last Name">
                            @endif
                        @else
                            <input name="ship_lname" class="simple-input" type="text" value="{{ $user_shipping_address->last_name }}" placeholder="Last Name">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('ship_phone'))
                                <input name="ship_phone" class="simple-input" type="text" style="border-color:red" value="{{ $user_shipping_address->phone_number }}" placeholder="Phone">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_phone'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="ship_phone" class="simple-input" type="text" value="{{ $user_shipping_address->phone_number }}" placeholder="Phone">
                            @endif
                        @else
                            <input name="ship_phone" class="simple-input" type="text" value="{{ $user_shipping_address->phone_number }}" placeholder="Phone">
                        @endif
                        <div class="empty-space col-xs-b20"></div>

                    </div>
                    <div style="margin-left:1.5%;width:64%">
                        @if ($errors->any())
                            @if ($errors->has('ship_address'))
                                <textarea name="ship_address" class="simple-input" style="border-color:red" placeholder="Address">{{ $user_shipping_address->address }}</textarea>
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_address'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <textarea name="ship_address" class="simple-input" placeholder="Address">{{ $user_shipping_address->address }}</textarea>
                            @endif
                        @else
                            <textarea name="ship_address" class="simple-input" placeholder="Address">{{ $user_shipping_address->address }}</textarea>
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <input id="temp_ship_city" type="hidden" value="{{ $user_shipping_address->city }}">
                        @if ($errors->any())
                            @if ($errors->has('ship_city'))
                                <select id="ship_city" name="ship_city" class="SlectBox" style="border-color:red">
                                    <option disabled="disabled" selected="selected">City</option>
                                    <option value="volvo">Volvo</option>
                                    <option value="saab">Saab</option>
                                    <option value="mercedes">Mercedes</option>
                                    <option value="audi">Audi</option>
                                </select>
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_city'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <select id="ship_city" name="ship_city" class="SlectBox">
                                    <option disabled="disabled" selected="selected">City</option>
                                    <option value="volvo">Volvo</option>
                                    <option value="saab">Saab</option>
                                    <option value="mercedes">Mercedes</option>
                                    <option value="audi">Audi</option>
                                </select>
                            @endif
                        @else
                            <select id="ship_city" name="ship_city" class="SlectBox">
                                <option disabled="disabled" selected="selected">City</option>
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="mercedes">Mercedes</option>
                                <option value="audi">Audi</option>
                            </select>
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('ship_zipcode'))
                                <input name="ship_zipcode" class="simple-input" type="text" style="border-color:red" value="{{ $user_shipping_address->zip_code }}" placeholder="Zip Code">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_zipcode'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="ship_zipcode" class="simple-input" type="text" value="{{ $user_shipping_address->zip_code }}" placeholder="Zip Code">
                            @endif
                        @else
                            <input name="ship_zipcode" class="simple-input" type="text" value="{{ $user_shipping_address->zip_code }}" placeholder="Zip Code">
                        @endif
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
                        @if ($errors->any())
                            @if ($errors->has('ship_district'))
                                <input name="ship_district" class="simple-input" type="text" style="border-color:red" value="{{ $user_shipping_address->district }}" placeholder="District">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['ship_district'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="ship_district" class="simple-input" type="text" value="{{ $user_shipping_address->district }}" placeholder="District">
                            @endif
                        @else
                            <input name="ship_district" class="simple-input" type="text" value="{{ $user_shipping_address->district }}" placeholder="District">
                        @endif
                        <div class="empty-space col-xs-b20"></div>


                    </div>

                </div>
            </div>
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
