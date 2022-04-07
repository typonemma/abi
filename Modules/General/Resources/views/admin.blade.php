@extends('partials.main')
@section('navbar')
    <li class="active">
        <a href="home" class="nav-link">Payment Method</a>
    </li>
@endsection
@section('content')  
<div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="h4">Add Payment Method</div>
                <div class="empty-space col-xs-b30"></div>

                <div class="row">
                    <div class="col-sm-8">
                        <input class="simple-input" type="text" value="" placeholder="Title">
                        <div class="empty-space col-xs-b20"></div>
                        <input class="simple-input" type="text" value="" placeholder="Nomor Rekening">
                        <div class="empty-space col-xs-b20"></div>
                        <textarea class="simple-input" placeholder="Keterangan"></textarea>
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="empty-space col-xs-b20"></div>
                        <div class="button size-2 style-3">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}"></span>
                                <span class="text">Add</span>
                            </span>
                            <input type="submit" value="">
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
<div class="empty-space col-xs-b35 col-md-b70"></div>
@endsection