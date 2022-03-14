<div>
    <footer>
        <div class="container">
            <div class="footer-top">
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-xs-b30 col-md-b0">
                        <img src="{{URL::asset('public/custom/img/logo-footer.png')}}" alt="" />
                        <div class="empty-space col-xs-b20"></div>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="footer-contact"><i class="fa fa-mobile" aria-hidden="true"></i> contact us:<br/>
                                    <p>
                                    <h6 class="h6 light"><?php
                                        $contactus = App\contactus_list::find(15);
                                        $potong_kalimat = substr("$contactus->post_title",6);                                        
                                        echo $potong_kalimat;                                        
                                    ?></h6>
                                    <?php
                                        $potong_content = substr("$contactus->post_content",0,23);
                                        echo $potong_content; 
                                    ?>
                                    </p>
                                    <p>
                                    <h6 class="h6 light"><?php
                                        $contactus = App\contactus_list::find(16);
                                        $potong_kalimat = substr("$contactus->post_title",6);
                                          echo $potong_kalimat; 
                                    ?></h6>
                                    <?php
                                        $potong_content = substr("$contactus->post_content",0,13);
                                        echo $potong_content; 
                                    ?>
                                    </p>
                                    <p>
                                    <h6 class="h6 light"><?php
                                        $contactus = App\contactus_list::find(17);
                                        $potong_kalimat = substr("$contactus->post_title",6);
                                          echo $potong_kalimat; 
                                    ?></h6>
                                    <?php
                                        $potong_content = substr("$contactus->post_content",0,13);
                                        echo $potong_content; 
                                    ?>
                                    </p>
                                    <p>
                                    <h6 class="h6 light"><?php
                                        $contactus = App\contactus_list::find(18);
                                        $potong_kalimat = substr("$contactus->post_title",6);
                                          echo $potong_kalimat; 
                                    ?></h6>
                                    <?php
                                        $potong_content = substr("$contactus->post_content",0,14);
                                        echo $potong_content; 
                                    ?>
                                    </p>                                    
                                </div>
                                <div class="footer-contact"><i class="fa fa-envelope-o" aria-hidden="true"></i> email: <br/>
                                    <?php
                                        $contactus = App\contactus_list::find(23);
                                    ?>
                                    <a href="mailto: {{ $contactus->post_content }}">{{ $contactus->post_content }}</a></div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="footer-contact"><i class="fa fa-map-marker" aria-hidden="true"></i> address: <br/>
                                        <p>
                                        <h6 class="h6 light"><?php
                                            $contactus = App\contactus_list::find(11);
                                            $potong_kalimat = substr("$contactus->post_title",8);                                            
                                            echo $potong_kalimat; 
                                        ?></h6>
                                        {!! htmlspecialchars_decode($contactus->post_content)!!}
                                        </p>
                                        <p>
                                        <h6 class="h6 light"><?php
                                            $contactus = App\contactus_list::find(12);
                                            $potong_kalimat = substr("$contactus->post_title",8);
                                            echo $potong_kalimat; 
                                        ?></h6>
                                        {!! htmlspecialchars_decode($contactus->post_content)!!}
                                        </p>
                                        <p>
                                        <h6 class="h6 light"><?php
                                            $contactus = App\contactus_list::find(13);
                                            $potong_kalimat = substr("$contactus->post_title",8);
                                            echo $potong_kalimat; 
                                        ?></h6>
                                        {!! htmlspecialchars_decode($contactus->post_content)!!}
                                        </p>
                                        <p>
                                        <h6 class="h6 light"><?php
                                            $contactus = App\contactus_list::find(14);
                                            $potong_kalimat = substr("$contactus->post_title",8);
                                            echo $potong_kalimat; 
                                        ?></h6>
                                        {!! htmlspecialchars_decode($contactus->post_content)!!}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-b30 col-md-b0">
                            <h6 class="h6 light">quick links</h6>
                            <div class="empty-space col-xs-b20"></div>
                            <div class="footer-column-links">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <a href="home">home</a>
                                        <a href="products">products</a>
                                        <a href="aboutus">about us</a>
                                        <a href="shipment">shipment</a>
                                        <a href="blogs">blogs</a>
                                        <a href="contact">contact us</a>
                                    </div>
                                    <div class="col-xs-6">
                                        <a href="#">privacy policy</a>
                                        <a href="#">warranty</a>
                                        <a href="#">marketplace</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clear visible-sm"></div>
                        <div class="col-sm-6 col-md-3 col-xs-b30 col-sm-b0">
                            <h6 class="h6 light">latest blogs</h6>
                            <?php
                                $relatedblog_list = App\relatedblog_list::where('post_type', '=', 'post-blog')->orderBy('id', 'DESC')->limit(3)->get(); 
                            ?>
                            @foreach ($relatedblog_list as $blog)
                                <div class="empty-space col-xs-b20"></div>
                                <div class="footer-post-preview clearfix">
                                    <a class="image" href="#"><img src="{{URL::asset($blog->image)}}" alt="" /></a>
                                    <div class="description">
                                        <div class="date">
                                            <?php
                                                $tanggal = $blog->created_at;
                                                echo date ("F d / Y", strtotime($tanggal));
                                            ?> &nbsp;&nbsp;
                                        </div>
                                        <a href="blog_detail/<?= $blog->post_slug ?>" class="title">{{Str::limit($blog->post_title, 25, '..')}}</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="row">
                        <div class="col-lg-8 col-xs-text-center col-lg-text-left col-xs-b20 col-lg-b0">
                            <div class="copyright">Copyright &copy; 2021 Radiant Computer. All rights reserved.</div>

                        </div>
                        <div class="follow col-lg-4 col-xs-text-center col-lg-text-right">
                            <a class="entry" href="#"><i class="fa fa-facebook"></i></a>
                            <a class="entry" href="#"><i class="fa fa-twitter"></i></a>
                            <a class="entry" href="#"><i class="fa fa-linkedin"></i></a>
                            <a class="entry" href="#"><i class="fa fa-google-plus"></i></a>
                            <a class="entry" href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
