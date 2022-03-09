@extends('partials.main')
<?php
    $user = session('user');
    $arr = explode(' ', $user->display_name);
    $first_name = $arr[0];
    $last_name = count($arr) == 1 ? '' : $arr[count($arr) - 1];
    $phone_number = '0' . substr($user->phone_number, 3);
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
<div class="empty-space col-xs-b35 col-md-b70"></div>
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
            <br>
            @if (session('success'))
                <div class="alert alert-success" role="alert">
                    Saved changes successfully !
                </div>
            @endif
            <form method="post" action="saveAccountChanges">
                @csrf
                <div class="empty-space col-xs-b30"></div>
                <div class="row">
                    <div class="col-sm-4">
                        @if ($errors->any())
                            @if ($errors->has('first_name'))
                                <input name="first_name" class="simple-input" type="text" style="border-color:red" value="{{ $first_name }}" placeholder="First Name">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['first_name'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="first_name" class="simple-input" type="text" value="{{ $first_name }}" placeholder="First Name">
                            @endif
                        @else
                            <input name="first_name" class="simple-input" type="text" value="{{ $first_name }}" placeholder="First Name">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('email'))
                                <input name="email" class="simple-input" type="text" style="border-color:red" value="{{ $user->email }}" placeholder="Email">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['email'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="email" class="simple-input" type="text" value="{{ $user->email }}" placeholder="Email">
                            @endif
                        @else
                            <input name="email" class="simple-input" type="text" value="{{ $user->email }}" placeholder="Email">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                            @if ($errors->any())
                                @if ($errors->has('new_password') || $errors->has('temp'))
                                <input id="new_password" name="new_password" class="simple-input" type="password" style="border-color:red" value="" placeholder="New Password">
                            @else
                                <input id="new_password" name="new_password" class="simple-input" type="password" value="" placeholder="New Password">
                            @endif
                            @if ($errors->has('new_password'))
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['new_password'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @endif
                            @if ($errors->has('temp'))
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['temp'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @endif
                        @else
                            <input id="new_password" name="new_password" class="simple-input" type="password" value="" placeholder="New Password">
                        @endif
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
                        @if ($errors->any())
                            @if ($errors->has('last_name'))
                                <input name="last_name" class="simple-input" type="text" style="border-color:red" value="{{ $last_name }}" placeholder="Last Name">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['last_name'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="last_name" class="simple-input" type="text" value="{{ $last_name }}" placeholder="Last Name">
                            @endif
                        @else
                            <input name="last_name" class="simple-input" type="text" value="{{ $last_name }}" placeholder="Last Name">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        @if ($errors->any())
                            @if ($errors->has('phone_number'))
                                <input name="phone_number" class="simple-input" type="text" style="border-color:red" value="{{ $user->phone_number }}" placeholder="Phone Number">
                                <ul style="list-style-type:none;color:red;">
                                    @foreach ($errors->getMessages()['phone_number'] as $error)
                                        {{ $error }}
                                    @endforeach
                                </ul>
                            @else
                                <input name="phone_number" class="simple-input" type="text" value="{{ $phone_number }}" placeholder="Phone Number">
                            @endif
                        @else
                            <input name="phone_number" class="simple-input" type="text" value="{{ $phone_number }}" placeholder="Phone Number">
                        @endif
                        <div class="empty-space col-xs-b20"></div>
                        <input id="confpasswd" name="confpasswd" class="simple-input" type="password" value="" placeholder="Confirm Your Password">
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                    <input id="temp" name="temp" type="hidden" value="">
                </div>
            </form>
        </div>
    </div>
</div>
<div class="empty-space col-xs-b35 col-md-b70"></div>
<script>
    function SaveChanges() {
        let password = document.getElementById('new_password').value;
        let confpasswd = document.getElementById('confpasswd').value;
        document.getElementById('temp').value = password + '-' + confpasswd;
    }
</script>
@endsection
