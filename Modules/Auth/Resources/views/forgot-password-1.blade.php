@extends('partials.main')
@section('content')
<div class="bg-layer"></div>
<div style="margin-left:28%">
    <div class="layer-close"></div>
    <div class="popup-container size-1">
        <div class="popup-align">
            <h3 class="h3 text-center">forgot password</h3>
            <form id="forgotPassword1Form" method="post" action="forgot-password-2">
                <div class="empty-space col-xs-b20"></div>
                <h6 class="h6 text-center" style="font-weight: normal;text-transform: none;">Enter the OTP code that has been sent to your phone number</h6>
                <div class="empty-space col-xs-b20"></div>
                <div class="otp">
                    <input type="text" id="digit-1" name="digit-1" data-next="digit-2" />
                    <input type="text" id="digit-2" name="digit-2" data-next="digit-3" data-previous="digit-1" />
                    <input type="text" id="digit-3" name="digit-3" data-next="digit-4" data-previous="digit-2" />
                    <input type="text" id="digit-4" name="digit-4" data-next="digit-5" data-previous="digit-3" />
                    <input type="text" id="digit-5" name="digit-5" data-next="digit-6" data-previous="digit-4" />
                    <input type="text" id="digit-6" name="digit-6" data-previous="digit-5" />
                    <input id="phone_number" type="hidden" value="{{ session('phone_number') }}">
                </div>
                <div class="empty-space col-xs-b10 col-sm-b20"></div>
                <div class="row">
                    <div class="col-sm-6 col-xs-b10 col-sm-b0">
                        <div class="empty-space col-sm-b5"></div>
                        <a class="simple-link" onclick="SendOTP()">RESEND CODE</a>
                        <div class="empty-space col-xs-b5"></div>
                        <a class="simple-link" href="login">BACK TO LOGIN</a>
                    </div>
                    <div class="col-sm-6 text-right">
                        <a class="button size-2 style-3" onclick="VerifyOTP()">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">submit</span>
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
<div style="display:none" id="recaptcha-container"></div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/6.0.2/firebase.js"></script>
<script>
   const firebaseConfig = {
      apiKey: "AIzaSyBWBs5b2LgRvhSzgQ1ROu2t81zdiuXuE8c",
      authDomain: "laravel-otp-authenticati-b8b94.firebaseapp.com",
      projectId: "laravel-otp-authenticati-b8b94",
      storageBucket: "laravel-otp-authenticati-b8b94.appspot.com",
      messagingSenderId: "616261656632",
      appId: "1:616261656632:web:abdfb97eb6bd71a3d2c6cd"
    };
    firebase.initializeApp(firebaseConfig);
</script>
<script>
    coderesult = '';
    window.onload = function() {
        render();
        SendOTP();
    };
    function render() {
        window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container');
        recaptchaVerifier.render();
    }
    function SendOTP() {
        let phone_number = document.getElementById('phone_number').value;
        firebase.auth().signInWithPhoneNumber(phone_number, window.recaptchaVerifier).then(function (confirmationResult) {
            window.confirmationResult = confirmationResult;
            coderesult = confirmationResult;
        }).catch(function (error) {
            console.log(error.message);
        });
    }
    function VerifyOTP() {
        let code = '';
        for (let i = 1; i <= 6; i++) {
            let digit = document.getElementById('digit-' + i.toString()).value;
            code += digit;
        }
        coderesult.confirm(code).then(function (result) {
            var user = result.user;
            console.log(user);
        }).catch(function (error) {
            console.log(error.message);
        });
    }
</script>
@endsection
