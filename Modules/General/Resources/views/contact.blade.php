@extends('partials.main')
@section('navbar')
    <li>
        <a href="home" class="nav-link">Home</a>
    </li>
    <li>
        <a href="aboutus">about us</a>
    </li>
    <li>
        <a href="products">products</a>
    </li>
    <li>
        <a href="shipment">Shipment</a>
    </li>
    <li>
        <a href="blogs">blogs</a>
    </li>
    <li class="active">
        <a href="contact">contact us</a>
    </li>
@endsection
@section('content')
    <div id="content-block">   
        <div class="block-entry fixed-background" style="background-image: url({{url('public/custom/img/bg-contact.jpg')}});">        
        <!-- <div class="block-entry fixed-background" style="background-image: url(img/bg-contact.jpg);"> -->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <div class="cell-view simple-banner-height text-center">
                            <div class="empty-space col-xs-b35 col-sm-b70"></div>
                            <h1 class="h1 light">contact us</h1>
                            <div class="title-underline center"><span></span></div>
                            <div class="simple-article light transparent size-4">In feugiat molestie tortor a malesuada. Etiam a venenatis ipsum. Proin pharetra elit at feugiat commodo vel placerat tincidunt sapien nec</div>
                            <div class="empty-space col-xs-b35 col-sm-b70"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="empty-space col-xs-b35 col-md-b70"></div>
        <div class="container">
            <div class="text-center">
                <div class="simple-article size-3 text-blue uppercase col-xs-b5">contact us</div>
                <div class="h2">we ready for your questions</div>
                <div class="title-underline center"><span></span></div>
            </div>
        </div>
        <div class="empty-space col-sm-b15 col-md-b50"></div>
        <div class="container">
            <div class="row">

                <div class="col-sm-3">
                    <div class="icon-description-shortcode style-1">
                        <img src="{{URL::asset('public/custom/img/icon-25.png')}}">
                        <!-- <img class="icon" src="img/icon-25.png" alt=""> -->
                        <div class="title h6">address</div>
                        @foreach ($contactus_list as $contactus)
                        <div class="description simple-article size-2">
                            <div class="simple-article">                                        
                                <?php
                                    $contactus = App\contactus_list::where('post_title', 'LIKE', '%address%')->get();
                                    foreach ($contactus as $cu) {
                                        $potong_kalimat = substr("$cu->post_title",8);
                                        echo '<b>' . $potong_kalimat . '</b>' . '<br>';
                                        echo htmlspecialchars_decode($cu->post_content) . '<br>' . '<br>';
                                    }
                                ?>
                            </div>                               
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="icon-description-shortcode style-1">
                        <img src="{{URL::asset('public/custom/img/icon-23.png')}}">
                        <!-- <img class="icon" src="img/icon-23.png" alt=""> -->
                        <div class="title h6">phone</div>
                        <div class="description simple-article size-2">                                
                            <div class="simple-article">
                            <!-- style="line-height:1px;" -->
                                <?php
                                    $contactus = App\contactus_list::where('post_title', 'LIKE', '%phone%')->get();
                                    foreach ($contactus as $cu) {
                                        $potong_kalimat = substr("$cu->post_title",6);
                                        echo '<b>' . $potong_kalimat . '</b>' . '<br>';
                                        echo htmlspecialchars_decode($cu->post_content);
                                    }
                                ?>             
                            </div>                                                                  
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="icon-description-shortcode style-1">
                        <img src="{{URL::asset('public/custom/img/open.png')}}">
                        <!-- <img class="icon" src="img/open.png" alt=""> -->
                        <div class="title h6">working hours</div>
                        <div class="description simple-article size-2">
                            <div class="simple-article">
                            <?php                                    
                                $contactus = App\contactus_list::where('post_title', 'LIKE', '%working hours%')->get();
                                foreach ($contactus as $cu) {
                                    $potong_kalimat = substr("$cu->post_title",14);
                                    echo '<b>' . $potong_kalimat . '</b>' . '<br>';
                                    echo htmlspecialchars_decode($cu->post_content);
                                }
                            ?>
                            </div>                                 
                        </div>                            
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="icon-description-shortcode style-1">
                        <img src="{{URL::asset('public/custom/img/icon-28.png')}}">
                        <!-- <img class="icon" src="img/icon-28.png" alt=""> -->
                        <div class="title h6">email</div>
                        <div class="description simple-article size-2">
                            <?php
                                $contactus = App\contactus_list::where('post_title', 'LIKE', '%email%')->get();
                                foreach ($contactus as $cu) {
                                    $to = htmlspecialchars_decode($cu->post_content);
                                    echo '<a href="mailto:' . $to . '">' . $to . '</a>';
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="empty-space col-xs-b25 col-sm-b50"></div>
        @endforeach
        <div class="container">
            <div class="row" style="background: url({{url('public/custom/img/bg-banner-contact.jpg')}}) no-repeat;">            
            <!-- <div class="row" style="background: url(img/bg-banner-contact.jpg) no-repeat;"> -->
                <div class="col-sm-6"></div>
                <div class="col-sm-6 text-center">
                    <div class="empty-space col-xs-b25 col-sm-b100"></div>
                    <p class="h5 light">FIND US ON</p>                            
                    <p>
                        <img src="{{URL::asset('public/custom/img/tokopedia-contact.png')}}">
                        <!-- <img class="icon" src="img/tokopedia-contact.png" alt=""> -->
                    </p>
                    <p class="h6 light">tokopedia.com/radiantkomputer</p>
                    <div class="empty-space col-sm-b10"></div>
                    <a class="button size-1 style-1" href="https://www.tokopedia.com/radiantkomputer?source=universe&st=product">
                        <span class="button-wrapper">
                            <span class="icon">
                                <img src="{{URL::asset('public/custom/img/icon-1.png')}}">
                                <!-- <img src="img/icon-1.png" alt=""> -->
                            </span>
                            <span class="text">visit shop</span>
                        </span>
                    </a>
                    <div class="empty-space col-xs-b25 col-sm-b50"></div>
                </div>
            </div>
        </div>
        <div class="empty-space col-xs-b25 col-sm-b50"></div>
        <div class="container">
            <h4 class="h4 text-center col-xs-b25">have a questions?</h4>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">

                    <form action="{{ route('send.email') }}" method="POST" class="contact-form">
                        @csrf
                        <div class="row m5">
                            <div class="col-sm-6">
                                <input class="simple-input col-xs-b20" type="text" value="" placeholder="Name" name="name" />
                            </div>
                            <div class="col-sm-6">
                                <input class="simple-input col-xs-b20" type="text" value="" placeholder="Email" name="email" />
                            </div>
                            <div class="col-sm-6">
                                <input class="simple-input col-xs-b20" type="text" value="" placeholder="Phone" name="phone" />
                            </div>
                            <div class="col-sm-6">
                                <input class="simple-input col-xs-b20" type="text" value="" placeholder="Subject" name="subject" />
                            </div>
                            <div class="col-sm-12">
                                <textarea class="simple-input col-xs-b20" placeholder="Your message" name="email_body"></textarea>
                            </div>
                            <div class="col-sm-12">
                                <div class="text-center">
                                    <div class="button size-2 style-3">
                                        <span class="button-wrapper">
                                            <span class="icon">
                                                <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                                <!-- <img src="img/icon-4.png" alt=""> -->
                                            </span> 
                                            <span class="text">send message</span>                                                
                                        </span>
                                        <input type="submit"/>
                                        @if (session('success'))
                                            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js">
                                                swal("Our First Alert");
                                            </script>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
        <div class="empty-space col-xs-b35 col-md-b70"></div>
        <div class="empty-space col-xs-b35 col-md-b70"></div>    
@endsection