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
        <div class="empty-space col-xs-b15 col-sm-b50"></div>                
        <div class="text-center">
            <div class="simple-article size-3 text-blue uppercase col-xs-b5">checkout</div>
            <div class="h2">check your info</div>
            <div class="title-underline center"><span></span></div>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-xs-b50 col-md-b0">
                <h4 class="h4 col-xs-b25">billing details</h4>
                <select class="SlectBox disabled">
                    <option disabled="disabled" selected="selected">Indonesia</option>
                    
                </select>
                <div class="empty-space col-xs-b20"></div>
                <div class="row m10">
                    <div class="col-sm-12">
                        <input class="simple-input" type="text" value="" placeholder="Full name" />
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                    
                </div>
                <div class="row m10">
                    <div class="col-sm-6">
                        <input class="simple-input" type="text" value="" placeholder="Email" />
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                    <div class="col-sm-6">
                        <input class="simple-input" type="text" value="" placeholder="Phone" />
                        <div class="empty-space col-xs-b20"></div>
                    </div>
                </div>
                <input class="simple-input" type="text" value="" placeholder="Street address" />
                <div class="empty-space col-xs-b20"></div>
                <textarea class="simple-input" placeholder="Note about your order"></textarea>
                <div class="empty-space col-xs-b20"></div>
                <label class="checkbox-entry">
                    <input type="checkbox" checked><span>Privacy policy agreement</span>
                </label>
                <div class="empty-space col-xs-b30"></div>
                <h4 class="h4 col-xs-b25">your order</h4>
                <div class="cart-entry clearfix">
                    <a class="cart-entry-thumbnail" href="#"> <img src="{{URL::asset('public/custom/img/product-1.png')}}"></a>    
                    <div class="cart-entry-description">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="h6"><a href="#">charger asus a455l</a></div>
                                        <div class="simple-article size-1">QUANTITY: 2</div>
                                    </td>
                                    <td class="text-right">
                                        <div class="simple-article size-3 grey">Rp 200.000</div>
                                        <div class="simple-article size-1">TOTAL: Rp 200.000</div>
                                    </td>
                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="cart-entry clearfix">
                    <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-2.png')}}"></a> 
                    <div class="cart-entry-description">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="h6"><a href="#">charger asus a455l</a></div>
                                        <div class="simple-article size-1">QUANTITY: 2</div>
                                    </td>
                                    <td class="text-right">
                                        <div class="simple-article size-3 grey">Rp 200.000</div>
                                        <div class="simple-article size-1">TOTAL: Rp 200.000</div>
                                    </td>
                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="cart-entry clearfix">
                    <a class="cart-entry-thumbnail" href="#"><img src="{{URL::asset('public/custom/img/product-3.png')}}"></a>
                    <div class="cart-entry-description">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="h6"><a href="#">charger asus a455l</a></div>
                                        <div class="simple-article size-1">QUANTITY: 2</div>
                                    </td>
                                    <td class="text-right">
                                        <div class="simple-article size-3 grey">Rp 200.000</div>
                                        <div class="simple-article size-1">TOTAL: Rp 200.000</div>
                                    </td>
                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="h4">cart totals</div>
                <div class="order-details-entry simple-article size-3 grey uppercase">
                    <div class="row">
                        <div class="col-xs-6">
                            cart subtotal
                        </div>
                        <div class="col-xs-6 col-xs-text-right">
                            <div class="color">Rp 200.000</div>
                        </div>
                    </div>
                </div>
                <div class="order-details-entry simple-article size-3 grey uppercase">
                    <div class="row">
                        <div class="col-xs-6">
                            coupon discount
                        </div>
                        <div class="col-xs-6 col-xs-text-right">
                            <div class="color">-</div>
                        </div>
                    </div>
                </div>
                <div class="order-details-entry simple-article size-3 grey uppercase">
                    <div class="row">
                        <div class="col-xs-6">
                            shipping and handling
                            <br/>
                            <span>JNE (Sub - sub)</span>
                            <span>jne (dps - sub)</span>
                        </div>
                        <div class="col-xs-6 col-xs-text-right">
                            <div class="color">
                                &nbsp;
                                <br/>
                                <div class="color">
                                    <span>Rp 20.000</span>
                                    <span>Rp 20.000</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="order-details-entry simple-article size-3 grey uppercase">
                    <div class="row">
                        <div class="col-xs-6 color">
                            order total
                        </div>
                        <div class="col-xs-6 col-xs-text-right">
                            <div class="color">Rp 200.000</div>
                        </div>
                    </div>
                </div>
                <div>
                <div class="empty-space col-xs-b50"></div>
                <h4 class="h4 col-xs-b25">payment method (bank transfer only)</h4> 
                <?php
                    $bank_list = App\bank_list::where('post_title', 'LIKE', '%bank%')->get();
                    $i = 1;
                ?>
                @foreach ($bank_list as $checkout)   
                    <label class="checkbox-entry radio">
                        <input id="{{$i}}" type="radio" name="1" checked="" value="" onchange="checkChanged(this)">
                        <span id="pay-{{$i}}" style="text-transform: none;">
                            <?php
                                $potong_kalimat = substr("$checkout->post_title",5);
                                echo $potong_kalimat . htmlspecialchars_decode($checkout->post_content) . '<br>';
                                $i++;
                            ?>
                        </span>
                    </label>
                    <input id="payment" type="hidden" value="MANDIRI (Rp) - Cabang : Kusuma Bangsa - Surabaya No. Rek. : 140-00-1051414-0 Nama : Oei Hwang Ie al Benny Widjaja">
                @endforeach                
                <div class="empty-space col-xs-b10"></div>
                <div class="simple-article size-2">* Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus sollicitudin facilisis. Lorem ipsum dolor sit amet semper ante vehicula ociis natoq.</div>
                <div class="empty-space col-xs-b30"></div>
                <div class="button block size-2 style-3">
                    <span class="button-wrapper">
                        <span class="icon"><img src="img/icon-4.png" alt=""></span>
                        <span class="text">place order</span>
                    </span>
                    <input type="submit" onclick="ajaxPlaceOrder()"/>
                </div>
                <br>
                </div>
            </div>
        </div>
    </div>
    <div class="empty-space col-xs-b35 col-md-b70"></div>
@endsection