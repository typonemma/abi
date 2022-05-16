@extends('partials.main')
@section('navbar')
    <li>
        <a href="/general/home" class="nav-link">Home</a>
    </li>
    <li class="active">
        <a href="/general/aboutus">about us</a>
    </li>
    <li>
        <a href="/product">products</a>
    </li>
    <li>
        <a href="/general/shipment">Shipment</a>
    </li>
    <li>
        <a href="/general/blogs">blogs</a>
    </li>
    <li>
        <a href="/general/contact">contact us</a>
    </li>
@endsection
@section('content')
    <div id="content-block">                      
    <div class="block-entry fixed-background" style="background-image: url({{url('public/custom/img/banner-about.jpg')}});">  
    <!-- <div class="block-entry fixed-background" style="background-image: url(img/banner-about.jpg);"> -->
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <div class="cell-view simple-banner-height text-center">
                        <div class="empty-space col-xs-b35 col-sm-b100"></div>
                        <h1 class="h1 light">ABOUT US</h1>
                        <div class="title-underline center"><span></span></div>
                        <div class="simple-article light transparent size-4">In feugiat molestie tortor a malesuada. Etiam a venenatis ipsum. Proin pharetra elit at feugiat commodo vel placerat tincidunt sapien nec</div>
                        <div class="empty-space col-xs-b35 col-sm-b100"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>

    @foreach ($aboutus_list as $aboutus)
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <div class="simple-article size-3 grey uppercase col-xs-b5">about</div>
                <div class="h2">
                    <?php
                        $aboutus = App\aboutus_list::find(25);
                        $potong_kalimat = substr("$aboutus->post_title",6);
                        echo $potong_kalimat;
                    ?>
                </div>
                <div class="title-underline left"><span></span></div>
                <div class="simple-article size-4 grey">Memberikan kualitas terbaik dan kenyamanan pelanggan adalah yang utama.</div>
            </div>
            <div class="col-sm-7">
                <div class="simple-article size-3">                            
                    {!! htmlspecialchars_decode($aboutus->post_content)!!}                            
                </div>
            </div>
        </div>
    </div>
    
    <div class="empty-space col-xs-b35 col-md-b70"></div>            
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <div class="simple-article size-3 grey uppercase col-xs-b5">mengenal</div>
                <div class="h2">
                    <?php
                        $aboutus = App\aboutus_list::find(26);
                        $potong_kalimat = substr("$aboutus->post_title",9);
                        echo $potong_kalimat;
                    ?>
                </div>
                <div class="title-underline left"><span></span></div>                        
            </div>
            <div class="col-sm-7">
                <div class="simple-article size-3">
                    {!! htmlspecialchars_decode($aboutus->post_content)!!}                             
                </div>
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
    @endforeach

    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <img src="{{URL::asset('public/custom/img/about1.png')}}">                        
            </div>
            <div class="col-sm-7">
                <div class="h2">
                    <?php
                        $aboutus = App\aboutus_list::find(27);                                
                    ?>
                    {{ $aboutus->post_title }} 
                </div>
                <div class="title-underline left"><span></span></div>
                <div class="simple-article size-3">
                    {!! htmlspecialchars_decode($aboutus->post_content)!!}                                      
                </div>
                <div class="empty-space col-xs-b35 col-md-b30"></div>
                <div class="h2">
                    <?php
                        $aboutus = App\aboutus_list::find(28);                                
                    ?>
                    {{ $aboutus->post_title }} 
                </div>
                <div class="title-underline left"><span></span></div>
                <div class="simple-article size-3">
                    <p>{!! htmlspecialchars_decode($aboutus->post_content)!!}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>    
@endsection