@extends('partials.main')
@section('navbar')
    <li>
        <a href="home" class="nav-link">Home</a>
    </li>
    <li>
        <a href="aboutus">about us</a>
    </li>
    <li class="active">
        <a href="products">products</a>
    </li>
    <li>
        <a href="shipment">Shipment</a>
    </li>
    <li>
        <a href="blogs">blogs</a>
    </li>
    <li>
        <a href="contact">contact us</a>
    </li>
@endsection
@section('content')
    <div class="container">                
        <div class="empty-space col-xs-b15 col-sm-b30 col-md-b60"></div>
        <div class="text-center">
            <div class="simple-article size-3 text-blue uppercase col-xs-b5">your order has been successfully adopted</div>
            <div class="h2">complete your payment</div>
            <div class="title-underline center"><span></span></div>
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="simple-article size-4 grey">Please complete your payment within 1x24 hours. Payment details: </div>                
                    <div class="simple-article size-3 text-center color">
                            <span style="text-transform: none;">
                                <?php
                                    echo html_entity_decode(session('payment'));
                                ?>    
                            </span>
                        <textarea id="textArea" rows="4" style="text-align: center; color:white; margin-top:-80px; margin-left:9999px;">
                             <?php
                                $norek = html_entity_decode(session('payment'));
                                $potong_kalimat = substr("$norek",48,11);
                                echo $potong_kalimat;
                            ?>                       
                        </textarea>
                            <i class="fa fa-copy"></i>
                            <a class="entry" onclick="copyToClipboard()">Copy Account Number</a>                            
                            <!-- <a href="" class="underline">Copy Account Number</a> -->      

                            <!-- {!! html_entity_decode(session('payment')) !!}                             -->                  
                    </div>
                    <div class="empty-space col-xs-b20 col-sm-b15 col-md-b30"></div>
                    <div class="button size-1 style-3">
                    <a class="button size-2 style-3" href="home">
                        <span class="button-wrapper">
                            <span class="icon">
                                <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                            </span>
                            <span class="text">OK</span>
                        </span>
                        <input type="submit"/>
                    </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>

    <script>
        function copyToClipboard() {
        var content = document.getElementById('textArea');
        content.select();
        document.execCommand('copy');
        alert("Copied!");
    }
    </script>
@endsection