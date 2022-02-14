@extends('partials.main')
@section('content')
<div class="bg-layer"></div>
<div style="margin-left:28%">
    <div class="layer-close"></div>
    <div class="popup-container size-1">
        <div class="popup-align">
            <h3 class="h3 text-center">forgot password</h3>
            <form id="forgotPassword2Form" method="post" action="verifyPassword">
                <div class="empty-space col-xs-b20"></div>
                <h6 class="h6 text-center" style="font-weight: normal;text-transform: none;">Please input your new password</h6>
                <div class="empty-space col-xs-b20"></div>
                <input id="new-password" name="new_password" class="simple-input" type="password" value="" placeholder="New password" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <input id="confnewpasswd" name="confnewpasswd" class="simple-input" type="password" value="" placeholder="Confirm New password" />
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <input id="temp" name="temp" type="hidden" value="">
                <input name="phone_number" type="hidden" value="{{ session('phone_number') }}">
                <div class="row text-center">
                    <a class="button size-2 style-3" onclick="VerifyPassword()">
                        <span class="button-wrapper">
                            <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                            <span class="text">make new password</span>
                        </span>
                    </a>
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
    function VerifyPassword() {
        let new_password = document.getElementById('new-password').value;
        let confnewpasswd = document.getElementById('confnewpasswd').value;
        document.getElementById('temp').value = new_password + '-' + confnewpasswd;
        document.getElementById('forgotPassword2Form').submit();
    }
</script>
@endsection
