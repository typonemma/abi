@extends('partials.main')
@section('content')
<div class="bg-layer"></div>
<div style="margin-left:28%">
    <div class="layer-close"></div>
    <div class="popup-container size-1">
        <div class="popup-align">
            <h3 class="h3 text-center">Log in</h3>
            <form id="loginForm" method="post" action="doLogin">
                @csrf
                <div class="empty-space col-xs-b30"></div>
                <input id="phone_number" name="phone_number" class="simple-input" type="text" value="" placeholder="Phone Number" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <input id="password" name="password" class="simple-input" type="password" value="" placeholder="Password" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <div class="row">
                    <div class="col-sm-6 col-xs-b10 col-sm-b0">
                        <div class="empty-space col-sm-b5"></div>
                        <a class="simple-link" href="forgot-password-1">Forgot password?</a>
                        <div class="empty-space col-xs-b5"></div>
                        <a class="simple-link" href="register">register now</a>
                    </div>
                    <input id="temp" name="temp" type="hidden" value="">
                    <div class="col-sm-6 text-right">
                        <a class="button size-2 style-3" onclick="Login()">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">login</span>
                            </span>
                        </a>
                    </div>
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
            <div class="popup-or">
                <span>or</span>
            </div>
            <div class="row m5">
                <div class="col-sm-4 col-xs-b10 col-sm-b0">
                    <a class="button facebook-button size-2 style-4 block" href="facebook">
                        <span class="button-wrapper">
                            <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                            <span class="text">facebook</span>
                        </span>
                    </a>
                </div>
                <div class="col-sm-4 col-xs-b10 col-sm-b0">
                    <a class="button twitter-button size-2 style-4 block" href="#">
                        <span class="button-wrapper">
                            <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                            <span class="text">twitter</span>
                        </span>
                    </a>
                </div>
                <div class="col-sm-4">
                    <a class="button google-button size-2 style-4 block" href="#">
                        <span class="button-wrapper">
                            <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                            <span class="text">google+</span>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function Login() {
        let phone_number = document.getElementById('phone_number').value;
        let password = document.getElementById('password').value;
        document.getElementById('temp').value = phone_number + '-' + password;
        document.getElementById('loginForm').submit();
    }
</script>
@endsection
