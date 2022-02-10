@extends('partials.main')
@section('cart')
    <a href="cart.html">
        <b class="hidden-xs">YOUR CART</b>
        <span class="cart-icon">
            <i class="fa fa-shopping-bag" aria-hidden="true"></i>
            <span class="cart-label">5</span>
        </span>
        <span class="cart-title hidden-xs">Rp 200.000</span>
    </a>
@endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="h3">PROFILE</div>
            <ul class="profile-menu ">
                <li><a href="profile-detail">Account Details</a></li>
                <li><a href="profile-addresses">Addresses</a></li>
                <li><a href="profile-yourorder" class="active">Your Order</a></li>
                <li><a href="profile-history">History Order</a></li>
                <li><a href="logout">Log Out</a></li>
            </ul>
        </div>
        <div class="col-sm-9">
            <div class="h4">billing address</div>
            <div class="empty-space col-xs-b30"></div>
            <div class="row">
                <div class="col-sm-4">
                    <input class="simple-input" type="text" value="" placeholder="First Name">
                    <div class="empty-space col-xs-b20"></div>
                    <input class="simple-input" type="text" value="" placeholder="Email">
                    <div class="empty-space col-xs-b20"></div>

                </div>
                <div class="col-sm-4">
                    <input class="simple-input" type="text" value="" placeholder="Last Name">
                    <div class="empty-space col-xs-b20"></div>
                    <input class="simple-input" type="text" value="" placeholder="Phone">
                    <div class="empty-space col-xs-b20"></div>

                </div>
                <div class="col-sm-8">
                    <textarea class="simple-input" placeholder="Address"></textarea>
                    <div class="empty-space col-xs-b20"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <select class="SlectBox">
                        <option disabled="disabled" selected="selected">City</option>
                        <option value="volvo">Volvo</option>
                        <option value="saab">Saab</option>
                        <option value="mercedes">Mercedes</option>
                        <option value="audi">Audi</option>
                    </select>
                    <div class="empty-space col-xs-b20"></div>
                    <input class="simple-input" type="text" value="" placeholder="Zip Code">
                    <div class="empty-space col-xs-b20"></div>

                </div>
                <div class="col-sm-4">
                    <input class="simple-input" type="text" value="" placeholder="District">
                    <div class="empty-space col-xs-b20"></div>


                </div>

            </div>
            <div class="h4">shipping address</div>
            <div class="empty-space col-xs-b30"></div>
            <div class="row">
                <div class="col-sm-4">
                    <input class="simple-input" type="text" value="" placeholder="First Name">
                    <div class="empty-space col-xs-b20"></div>
                    <input class="simple-input" type="text" value="" placeholder="Email">
                    <div class="empty-space col-xs-b20"></div>

                </div>
                <div class="col-sm-4">
                    <input class="simple-input" type="text" value="" placeholder="Last Name">
                    <div class="empty-space col-xs-b20"></div>
                    <input class="simple-input" type="text" value="" placeholder="Phone">
                    <div class="empty-space col-xs-b20"></div>

                </div>
                <div class="col-sm-8">
                    <textarea class="simple-input" placeholder="Address"></textarea>
                    <div class="empty-space col-xs-b20"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <select class="SlectBox">
                        <option disabled="disabled" selected="selected">City</option>
                        <option value="volvo">Volvo</option>
                        <option value="saab">Saab</option>
                        <option value="mercedes">Mercedes</option>
                        <option value="audi">Audi</option>
                    </select>
                    <div class="empty-space col-xs-b20"></div>
                    <input class="simple-input" type="text" value="" placeholder="Zip Code">
                    <div class="empty-space col-xs-b20"></div>
                    <div class="button size-2 style-3">
                        <span class="button-wrapper">
                            <span class="icon"><img src="img/icon-4.png" alt=""></span>
                            <span class="text">save changes</span>
                        </span>
                        <input type="submit" value="">
                    </div>
                </div>
                <div class="col-sm-4">
                    <input class="simple-input" type="text" value="" placeholder="District">
                    <div class="empty-space col-xs-b20"></div>


                </div>

            </div>
        </div>
    </div>
</div>
</div>
@endsection
