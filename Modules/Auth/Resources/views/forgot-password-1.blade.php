@extends('partials.main')
@section('content')
<div class="bg-layer"></div>
<div style="margin-left:28%">
    <div class="layer-close"></div>
    <div class="popup-container size-1">
        <div class="popup-align">
            <h3 class="h3 text-center">forgot password</h3>
            <form id="forgotPassword1Form" method="post" action="#">
                @csrf
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
                        <a class="simple-link" onclick="otpSend()">RESEND CODE</a>
                        <div class="empty-space col-xs-b5"></div>
                        <a class="simple-link" href="login">BACK TO LOGIN</a>
                    </div>
                    <div class="col-sm-6 text-right">
                        <a class="button size-2 style-3" onclick="otpVerify()">
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
<script src="https://www.gstatic.com/firebasejs/8.9.1/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.9.1/firebase-auth.js"></script>
<script type="text/javascript">
    const config = {
        apiKey: "AIzaSyBWBs5b2LgRvhSzgQ1ROu2t81zdiuXuE8c",
        authDomain: "laravel-otp-authenticati-b8b94.firebaseapp.com",
        projectId: "laravel-otp-authenticati-b8b94",
        storageBucket: "laravel-otp-authenticati-b8b94.appspot.com",
        messagingSenderId: "616261656632",
        appId: "1:616261656632:web:abdfb97eb6bd71a3d2c6cd",
        measurementId: "G-85TM774S3P"
    };
    firebase.initializeApp(config);
</script>
<script type="text/javascript">
    window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container', {
        'size': 'invisible',
        'callback': (response) => {
            onSignInSubmit();
        }
    });

    function otpSend() {
        var phoneNumber = document.getElementById('phone_number').value;
        const appVerifier = window.recaptchaVerifier;
        firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
        .then((confirmationResult) => {
            window.confirmationResult = confirmationResult;
        }).catch((error) => {
            console.log(error.message);
        });
    }

    otpSend();

    function otpVerify() {
        let code = '';
        for (let i = 1; i <= 6; i++) {
            let digit = document.getElementById('digit-' + i.toString()).value;
            code += digit;
        }
        confirmationResult.confirm(code).then(function (result) {
            var user = result.user;
            location.href = '/auth/forgot-password-2';
        }).catch(function (error) {
            alert(error.message);
        });
    }
</script>
@endsection
