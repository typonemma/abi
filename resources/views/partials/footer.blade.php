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
                                        <?php
                                            $contactus = App\contactus_list::where('post_title', 'LIKE', '%phone%')->get();
                                            foreach ($contactus as $cu) {
                                                $potong_kalimat = substr("$cu->post_title",6);
                                                echo '<h6 class="h6 light">' . $potong_kalimat . '</h6>';
                                                echo '<font color="#f7f7f7">' . htmlspecialchars_decode($cu->post_content) . '</font>';
                                            }
                                        ?>                                                                  
                                </div>
                                    <div class="footer-contact"><i class="fa fa-envelope-o" aria-hidden="true"></i> email: <br/>
                                        <?php
                                            $contactus = App\contactus_list::where('post_title', 'LIKE', '%email%')->get();
                                            foreach ($contactus as $cu) {
                                                $to = htmlspecialchars_decode($cu->post_content);
                                                echo '<a href="mailto:' . $to . '">' . $to . '</a>' . '<br>';
                                            }
                                        ?>
                                    </div>
                                </div>
                                <div class="col-sm-8">     
                                    <div class="footer-contact"><i class="fa fa-map-marker" aria-hidden="true"></i> address: <br/>
                                        <?php
                                            $contactus = App\contactus_list::where('post_title', 'LIKE', '%address%')->get();
                                            foreach ($contactus as $cu) {
                                                $potong_kalimat = substr("$cu->post_title",8);
                                                echo '<h6 class="h6 light">' . $potong_kalimat . '</h6>';
                                                echo htmlspecialchars_decode($cu->post_content);
                                                echo '<div class="empty-space col-xs-b35 col-md-b10"></div>';
                                            }
                                        ?>                                
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
                                        <a href="/general/home">home</a>
                                        <a href="/product">products</a>
                                        <a href="/general/aboutus">about us</a>
                                        <a href="/general/shipment">shipment</a>
                                        <a href="/general/blogs">blogs</a>
                                        <a href="/general/contact">contact us</a>
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
                                    <a class="image" href="/general/blog_detail/<?= $blog->post_slug ?>">
                                    <?php
                                            $pe = App\blogs_extras::where('post_id', '=', $blog->id)->get();
                                            $key_value = '';
                                            foreach ($pe as $x) {
                                                if ($x->key_name == '_featured_image') {
                                                    $key_value = $x->key_value;
                                                    break;
                                                }
                                            }

                                            $filename = $_SERVER['DOCUMENT_ROOT'] . $key_value;
                                            if ($key_value == ''){                                                 
                                                echo "<img src='/public/uploads/no-image.jpg'>";                                                    
                                            }
                                            else if (file_exists($filename)) {
                                                echo "<img src='$key_value'>";
                                            } else { 
                                                echo "<img src='/public/uploads/no-image.jpg'>";
                                                
                                            }
                                        ?>
                                    </a>
                                    <div class="description">
                                        <div class="date">
                                            <?php
                                                $tanggal = $blog->created_at;
                                                echo date ("F d / Y", strtotime($tanggal));
                                            ?> &nbsp;&nbsp;
                                        </div>
                                        <a href="/general/blog_detail/<?= $blog->post_slug ?>" class="title">{{Str::limit($blog->post_title, 25, '..')}}</a>
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
