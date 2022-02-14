@extends('partials.main')
<?php
    $user = session('user');
    $arr = explode(' ', $user->display_name);
    $first_name = $arr[0];
    $last_name = count($arr) == 1 ? '' : $arr[count($arr) - 1];
?>
@section('cart')
<a href="cart.html">
    <b class="hidden-xs">YOUR CART</b>
    <span class="cart-icon">
        <i class="fa fa-shopping-bag" aria-hidden="true"></i>
        <span class="cart-label">5</span>
    </span>
    <span class="cart-title hidden-xs">Rp {{ $user->wallet }}</span>
</a>
@endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="h3">PROFILE</div>
            <ul class="profile-menu ">
                <li><a href="profile-detail" class="active">Account Details</a></li>
                <li><a href="profile-addresses">Addresses</a></li>
                <li><a href="profile-yourorder">Your Order</a></li>
                <li><a href="profile-history">History Order</a></li>
                <li><a href="logout">Log Out</a></li>
            </ul>
        </div>
        <div class="col-sm-9">
            <div class="h4">ACCOUNT DETAILS</div>
            <form method="post" action="saveAccountChanges">
                @csrf
                <div class="empty-space col-xs-b30"></div>
                <div class="row">
                    <div class="col-sm-4">
                        <input name="first_name" class="simple-input" type="text" value="{{ $first_name }}" placeholder="First Name">
                        <div class="empty-space col-xs-b20"></div>
                        <input name="email"  class="simple-input" type="text" value="{{ $user->email }}" placeholder="Email">
                        <div class="empty-space col-xs-b20"></div>
                        <input id="new_password" class="simple-input" type="password"name="new_password" class="simple-input" type="password" value="" placeholder="Change New Password">
                        <div class="empty-space col-xs-b20"></div>
                        <div class="button size-2 style-3">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt=""></span>
                                <span class="text">save changes</span>
                            </span>
                            <input type="submit" value="" onclick="SaveChanges()">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <input name="last_name" class="simple-input" type="text" value="{{ $last_name }}" placeholder="Last Name">
                        <div class="empty-space col-xs-b20"></div>
                        <input name="phone_number" class="simple-input" type="text" value="{{ $user->phone_number }}" placeholder="Phone Number">
                        <div class="empty-space col-xs-b20"></div>
                        <input id="confpasswd" name="confpasswd" class="simple-input" type="password" value="" placeholder="Confirm Your Password">
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                    <input id="temp" name="temp" type="hidden" value="">
                </div>
                @if ($errors->any())
                    <ul style="list-style-type:none;color:red;">
                        @foreach ($errors->all() as $error)
                            <br>
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif
            </form>
        </div>
    </div>
</div>
<script>
    function SaveChanges() {
        let password = document.getElementById('new_password').value;
        let confpasswd = document.getElementById('confpasswd').value;
        document.getElementById('temp').value = password + '-' + confpasswd;
    }
</script>
@endsection
