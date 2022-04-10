@extends('partials.main')
@section('navbar')
    <li class="active">
        <a href="/admin" class="nav-link">Payment Method</a>
    </li>
@endsection
@section('content')  
<div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="h4">Edit Payment Method</div>
                <div class="empty-space col-xs-b30"></div>

                <form action="/admin/{{$AdminPaymentMethod->id}}" method="POST">
                    @method('put')
                    @csrf
                        <div class="row">
                            <div class="col-sm-8">
                                <input name="title" class="simple-input" type="text" value="{{$AdminPaymentMethod->title}}" placeholder="Title">
                                <div class="empty-space col-xs-b20"></div>
                                <input name="nomor_rekening" class="simple-input" type="text" value="{{$AdminPaymentMethod->nomor_rekening}}" placeholder="Nomor Rekening">
                                <div class="empty-space col-xs-b20"></div>
                                <input name="content" class="simple-input" value="{{$AdminPaymentMethod->content}}" placeholder="Keterangan">
                                <div class="empty-space col-xs-b20"></div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="empty-space col-xs-b20"></div>
                                <span class="button size-2 style-3" >
                                    <input  type="submit" name="submit" value="Save">
                                        <span class="button-wrapper"> 
                                            <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}"></span>
                                            <span class="text"> Edit </span>                                             
                                        </span>    
                                </span>                            
                            </div>                    
                        </div>
                </form>                
           
            </div>
        </div>
    </div>
<div class="empty-space col-xs-b35 col-md-b70"></div>
@endsection