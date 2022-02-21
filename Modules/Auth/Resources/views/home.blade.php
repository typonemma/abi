@extends('partials.main')
@section('content')
<div class="popup-wrapper">
    <div class="bg-layer"></div>
    <div class="popup-content" data-rel="1">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">Log in</h3>
                <form>
                    <div class="empty-space col-xs-b30"></div>
                    <input id="phone_number" name="phone_number" class="simple-input" type="text" value="" placeholder="Phone Number" />
                    <ul class="phone-number-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="password" name="password" class="simple-input" type="password" value="" placeholder="Password" />
                    <ul class="password-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-6 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b5"></div>
                            <a class="simple-link open-popup" data-rel="3" onclick="ForgotPassword()">Forgot password?</a>
                            <div class="empty-space col-xs-b5"></div>
                            <a class="simple-link open-popup" data-rel="2" onclick="Load()">register now</a>
                        </div>
                        <input id="temp" name="temp" type="hidden" value="">
                        <div class="col-sm-6 text-right">
                            <a class="button size-2 style-3 login">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                    <span class="text">login</span>
                                </span>
                            </a>
                        </div>
                    </div>
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
    <div class="popup-content" data-rel="2">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">register</h3>
                <form>
                    <div class="empty-space col-xs-b30"></div>
                    <input id="name" name="name" class="simple-input" type="text" value="" placeholder="Your name" />
                    <ul class="name-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="reg_phone_number" name="phone_number" class="simple-input" type="text" value="" placeholder="Phone Number" />
                    <ul class="reg-phone-number-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="reg_password" name="password" class="simple-input" type="password" value="" placeholder="Enter password" />
                    <ul class="reg-password-errors" style="list-style-type:none;color:red;">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="repeat_password" name="repeat_password" class="simple-input" type="password" value="" placeholder="Repeat password" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-7 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b15"></div>
                            <a class="simple-link size-3 open-popup" data-rel="1" onclick="Load()">BACK TO LOGIN</a>
                        </div>
                        <input id="reg_temp" name="temp" type="hidden" value="">
                        <div class="col-sm-5 text-right">
                            <a class="button size-2 style-3 register">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                    <span class="text">register</span>
                                </span>
                            </a>
                        </div>
                    </div>
                    <ul class="reg-errors" style="list-style-type:none;color:red;">

                    </ul>
                </form>
            </div>
        </div>
    </div>
    <div class="popup-content" data-rel="3">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">forgot password</h3>
                <form>
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
                    </div>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <div class="row">
                        <div class="col-sm-6 col-xs-b10 col-sm-b0">
                            <div class="empty-space col-sm-b5"></div>
                            <a class="simple-link" onclick="otpSend()">RESEND CODE</a>
                            <div class="empty-space col-xs-b5"></div>
                            <a class="simple-link open-popup" data-rel="1" onclick="Load()">BACK TO LOGIN</a>
                        </div>
                        <div class="col-sm-6 text-right">
                            <a id="verifyOTP" class="button size-2 style-3" data-rel="4" onclick="otpVerify()">
                                <span class="button-wrapper">
                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                    <span class="text">submit</span>
                                </span>
                            </a>
                        </div>
                    </div>
                    <ul class="fp1-errors" style="list-style-type:none;color:red;">

                    </ul>
                </form>
            </div>
        </div>
    </div>
    <div class="popup-content" data-rel="4">
        <div class="layer-close"></div>
        <div class="popup-container size-1">
            <div class="popup-align">
                <h3 class="h3 text-center">forgot password</h3>
                <form id="forgotPassword2Form" method="post" action="verifyPassword">
                    <div class="empty-space col-xs-b20"></div>
                    <h6 class="h6 text-center" style="font-weight: normal;text-transform: none;">Please input your new password</h6>
                    <div class="empty-space col-xs-b20"></div>
                    <input id="new-password" name="new_password" class="simple-input" type="password" value="" placeholder="New password" />
                    <ul class="fp2-password-errors" style="list-style-type:none;color:red;margin-left:27%">

                    </ul>
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="confnewpasswd" name="confnewpasswd" class="simple-input" type="password" value="" placeholder="Confirm New password" />
                    <div class="empty-space col-xs-b10 col-sm-b20"></div>
                    <input id="fp_temp" name="fp_temp" type="hidden" value="">
                    <div class="row text-center">
                        <a class="button size-2 style-3 verify-password">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}" alt="" /></span>
                                <span class="text">make new password</span>
                            </span>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div style="display:none" id="recaptcha-container"></div>
<script src="{{ URL::asset('public/jquery/jquery-1.10.2.js') }}"></script>
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
<script>
    $(function(){
        $('.login').click(function(e){
            let phone_number = $('#phone_number').val();
            let password = $('#password').val();
            let temp = phone_number + '-' + password;
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                method: "POST",
                url: "/auth/doLogin",
                data : {
                    phone_number : phone_number,
                    password : password,
                    temp : temp
                },
                success: function() {
                    location.href = "/auth/profile-detail"
                },
                error: function(jqXhr, json, errorThrown) {
                    Load();
                    let errors = jqXhr.responseJSON;
                    let errorsHtml = '';
                    if ('phone_number' in errors['errors']) {
                        if (errors['errors']['phone_number'].length > 0) {
                            $('#phone_number').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['phone_number'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.phone-number-errors').append(errorsHtml);
                    }
                    if ('password' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['password'].length > 0) {
                            $('#password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['password'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.password-errors').append(errorsHtml);
                    }
                    if ('temp' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['temp'].length > 0) {
                            $('#password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['temp'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.password-errors').append(errorsHtml);
                    }
                }
            });
        });

        $('.register').click(function(e){
            let name = $('#name').val();
            let phone_number = $('#reg_phone_number').val();
            let password = $('#reg_password').val();
            let confpasswd = $('#repeat_password').val();
            let temp = password + '-' + confpasswd;
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                method: "POST",
                url: "/auth/doRegister",
                data : {
                    name : name,
                    phone_number : phone_number,
                    password : password,
                    temp : temp
                },
                success: function() {
                    $('.login-popup').click();
                },
                error: function(jqXhr, json, errorThrown) {
                    Load();
                    let errors = jqXhr.responseJSON;
                    let errorsHtml = '';
                    if ('name' in errors['errors']) {
                        if (errors['errors']['name'].length > 0) {
                            $('#name').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['name'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.name-errors').append(errorsHtml);
                    }
                    if ('phone_number' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['phone_number'].length > 0) {
                            $('#reg_phone_number').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['phone_number'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.reg-phone-number-errors').append(errorsHtml);
                    }
                    if ('password' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['password'].length > 0) {
                            $('#reg_password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['password'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.reg-password-errors').append(errorsHtml);
                    }
                    if ('temp' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['temp'].length > 0) {
                            $('#reg_password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['temp'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.reg-password-errors').append(errorsHtml);
                    }
                }
            });
        });

        $('.verify-password').click(function(e){
            let password = $('#new-password').val();
            let confpasswd = $('#confnewpasswd').val();
            let temp = password + '-' + confpasswd;
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                method: "POST",
                url: "/auth/verifyPassword",
                data : {
                    new_password : password,
                    temp : temp
                },
                success: function() {
                    location.href = "/auth"
                },
                error: function(jqXhr, json, errorThrown) {
                    Load();
                    let errors = jqXhr.responseJSON;
                    let errorsHtml = '';
                    if ('new_password' in errors['errors']) {
                        if (errors['errors']['new_password'].length > 0) {
                            $('#new-password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['new_password'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.fp2-password-errors').append(errorsHtml);
                    }
                    if ('temp' in errors['errors']) {
                        errorsHtml = '';
                        if (errors['errors']['temp'].length > 0) {
                            $('#new-password').attr('style', 'border-color:red');
                        }
                        $.each(errors['errors']['temp'], function (index, value) {
                            errorsHtml += '<br><li style="font-size:15px">' + value + '</li>';
                        });
                        $('.fp2-password-errors').append(errorsHtml);
                    }
                }
            });
        });
    });

    function ForgotPassword() {
        Load();
        window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container', {
            'size': 'invisible',
            'callback': (response) => {
                onSignInSubmit();
            }
        });
        otpSend();
    }

    function otpSend() {
        var phoneNumber = '+628113116991';
        const appVerifier = window.recaptchaVerifier;
        firebase.auth().signInWithPhoneNumber(phoneNumber, appVerifier)
        .then((confirmationResult) => {
            window.confirmationResult = confirmationResult;
        }).catch((error) => {
            console.log(error.message);
        });
    }

    function otpVerify() {
        let verifyOTP = document.getElementById('verifyOTP');
        if (!verifyOTP.classList.contains('open-popup')) {
            let code = '';
            for (let i = 1; i <= 6; i++) {
                let digit = document.getElementById('digit-' + i.toString()).value;
                code += digit;
            }
            confirmationResult.confirm(code).then(function (result) {
                verifyOTP.classList.add('open-popup');
                verifyOTP.click();
            }).catch(function (error) {
                alert(error.message);
            });
        }
    }
</script>
@endsection
