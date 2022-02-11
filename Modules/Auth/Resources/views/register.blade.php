@extends('partials.main')
@section('content')
<div class="bg-layer"></div>
<div style="margin-left:28%">
    <div class="layer-close"></div>
    <div class="popup-container size-1">
        <div class="popup-align">
            <h3 class="h3 text-center">register</h3>
            <form id="regForm" method="post" action="doRegister">
                @csrf
                <div class="empty-space col-xs-b30"></div>
                <input name="name" class="simple-input" type="text" value="" placeholder="Your name" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <input name="phone_number" class="simple-input" type="text" value="" placeholder="Phone Number" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <input id="password" name="password" class="simple-input" type="password" value="" placeholder="Enter password" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <input id="repeat_password" name="repeat_password" class="simple-input" type="password" value="" placeholder="Repeat password" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <div class="row">
                    <div class="col-sm-7 col-xs-b10 col-sm-b0">
                        <div class="empty-space col-sm-b15"></div>
                        <a class="simple-link size-3" href="login">BACK TO LOGIN</a>
                    </div>
                    <input id="temp" name="temp" type="hidden" value="">
                    <div class="col-sm-5 text-right">
                        <a class="button size-2 style-3" onclick="Register()">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">register</span>
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
        </div>
    </div>
</div>
<script>
    function Register() {
        let password = document.getElementById('password').value;
        let repeat_password = document.getElementById('repeat_password').value;
        document.getElementById('temp').value = password + '-' + repeat_password;
        document.getElementById('regForm').submit();
    }
</script>
@endsection
