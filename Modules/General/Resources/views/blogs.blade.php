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
    <li class="active">
        <a href="blogs">blogs</a>
    </li>
    <li>
        <a href="contact">contact us</a>
    </li>
@endsection
@section('content')
    <div id="content-block">
        <div class="container">
            <div class="empty-space col-xs-b25 col-sm-b60"></div>
            
            <div class="text-center">
                
                <div class="h2">BLOGS</div>
                <div class="title-underline center"><span></span></div>
            </div>
        </div>
        <div class="empty-space col-xs-b35 col-md-b70"></div>

    <div class="container">
        <div class="row">
            <div class="col-md-9">
                @foreach ($blogs_list as $b)
                    <div class="blog-shortcode style-3">
                        <a class="preview  simple-mouseover" href="#">
                            <img src="{{URL::asset($b->image)}}" width="868" height="450">
                        </a>
                        <div class="date">
                            <span>
                                <?php
                                    $tanggal = $b->created_at;
                                    echo date ("d", strtotime($tanggal));
                                ?>
                            </span>
                                <?php
                                    $tanggal = $b->created_at;
                                    echo date ("F / Y", strtotime($tanggal));
                                ?>    
                        </div>
                        <div class="content">                            
                            <h4 class="title h4">
                                <a href="#">{{ $b->post_title }}</a>
                            </h4>
                            <div class="description-article simple-article size-2">
                                {!! htmlspecialchars_decode($b->post_content)!!}
                            </div>
                            <a class="button size-1 style-3" href="blog_detail/<?= $b->post_slug ?>">
                                <span class="button-wrapper">
                                    <span class="icon">
                                        <img src="{{URL::asset('public/custom/img/icon-4.png')}}">
                                        <!-- <img src="img/icon-4.png" alt=""> -->
                                    </span> 
                                    <span class="text">
                                        read more
                                    </span>
                                </span>
                            </a>
                        </div>
                    </div>   
                    <div class="empty-space col-xs-b35 col-md-b70"></div>                             
                @endforeach      

                @if ($page_count > 0)
                <div class="row">
                    <div class="col-sm-3 hidden-xs">
                        <a class="button size-1 style-5" href="{{ "blogs?page=" . max($page - 1, 1) }}">
                            <span class="button-wrapper">
                                <span class="icon"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                                <span class="text">prev page</span>
                            </span>
                        </a>
                    </div>
                    <div class="col-sm-6 text-center">
                        <div class="pagination-wrapper">
                            <?php
                                $start = 0;
                                $end = 0;
                                if ($page + 4 <= $page_count) {
                                    if ($page - 4 < 1) {
                                    $start = 1;
                                    $end = 5;
                                    }
                                    else {
                                        $start = $page - 2;
                                        $end = $page + 2;
                                    }
                                }
                                else {
                                    $start = $page_count - 4;
                                    $end = $page_count;
                                }
                            ?>
                            @for ($i = $start; $i <= $end; $i++)
                                @if ($i > 0)
                                        @if ($i == $page)
                                            <a class="pagination active" href="blogs?page={{ $i }}">{{ $i }}</a>
                                        @else
                                            <a class="pagination" href="blogs?page={{ $i }}">{{ $i }}</a>
                                        @endif
                                @endif
                            @endfor
                            @if ($page + 5 <= $page_count)
                                <a class="pagination" href="blogs?page={{ $page + 5 }}">...</a>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-3 hidden-xs text-right">
                        <a class="button size-1 style-5" href="{{ "blogs?page=" . min($page + 1, $page_count)}}">
                            <span class="button-wrapper">
                                <span class="icon"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                                <span class="text">next page</span>
                            </span>
                        </a>
                    </div>
                </div>
            @endif
                <div class="empty-space col-xs-b35 col-md-b70"></div>
            </div>
            <div class="col-md-3">                   
                <div class="h4 col-xs-b25">related blog</div>
                @foreach ($relatedblog_list as $a)
                <div class="blog-shortcode style-2">
                    <a href="blog_detail/<?= $a->post_slug ?>" class="preview rounded-image simple-mouseover">
                        <img class="rounded-image" src="{{URL::asset($a->image)}}" alt="" />
                        <!-- <img class="rounded-image" src="img/blog1.jpg" alt="" /> -->
                    </a>
                    <div class="description simple-article size-1 grey uppercase">
                        <?php
                            $tanggal = $b->created_at;
                            echo date ("F d / Y", strtotime($tanggal));
                        ?> &nbsp;&nbsp;
                    </div>
                    <div class="title h6"><a href="blog_detail/<?= $a->post_slug ?>">{{Str::limit($a->post_title, 25, '..')}}</a></div>                        
                    <div class="simple-article size-2">{{Str::limit($a->post_content, 80, '')}}</div>
                </div>
                <div class="empty-space col-xs-b25"></div>
                @endforeach                    
            </div>
        </div>
    </div>

    <div class="empty-space col-xs-b35 col-md-b70"></div>
@endsection