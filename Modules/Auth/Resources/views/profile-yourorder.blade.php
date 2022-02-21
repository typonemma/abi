@extends('partials.main')
<?php
    $user = session('user');
?>
@section('cart')
    <a href="cart.html">
        <b class="hidden-xs">YOUR CART</b>
        <span class="cart-icon">
            <i class="fa fa-shopping-bag" aria-hidden="true"></i>
            <span class="cart-label">5</span>
        </span>
        <span class="cart-title hidden-xs">Rp {{ number_format($user->wallet, 0, '.', '.') }}</span>
    </a>
@endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="h3">PROFILE</div>
            <ul class="profile-menu ">
                <li><a href="profile-detail">Account Details</a></li>
                <li><a href="profile-addresses">Addresses</a></li>
                <li><a href="profile-yourorder" class="active">Your Order</a></li>
                <li><a href="profile-history">History Order</a></li>
                <li><a href="logout">Log Out</a></li>
            </ul>
        </div>
        <div class="col-sm-9">
            <div class="h4">YOUR ORDER</div>
            <div class="empty-space col-xs-b30"></div>
            @foreach ($user_order as $uo)
                <div class="grey-box">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="h6">invoice number: {{ $uo->invoice_number }}</div>
                        </div>
                        <div class="col-sm-6 text-right">{{ $uo->date }}</div>
                    </div>
                    <table class="table-view">
                        <?php
                            $user_order_details = App\UserOrderDetails::where('user_order_id', '=', $uo->id)->get();
                            $ctr = 1;
                        ?>
                        @foreach ($user_order_details as $uod)
                            <?php
                                $product = App\Models\Product::find($uod->product_id);
                            ?>
                            <tr>
                                <td>
                                    {{ $ctr }}. {{ $product->title }}<br/>
                                </td>
                                <td>
                                    x{{ $uod->quantity }}<br/>
                                </td>
                                <td>
                                    Rp {{ number_format($uod->price, 0, '.', '.') }}<br/>
                                </td>
                                @if ($ctr == count($user_order_details))
                                    <td>
                                        TOTAL:<br/>
                                        Rp {{ number_format($uo->total, 0, '.', '.') }}
                                    </td>
                                    <td>
                                        DELIVERY STATUS:<br/>
                                        <div class="color">
                                            @if ($uo->status == -1)
                                                Barang ditolak
                                            @elseif ($uo->status == 1)
                                                Barang telah diterima
                                            @else
                                                Pending
                                            @endif
                                        </div>
                                    </td>
                                @endif
                            </tr>
                            @if ($ctr == count($user_order_details))
                                <tr>
                                    <td>SHIPPING COST</td>
                                    <td></td>
                                    <td>Rp {{ number_format($uod->shipping_cost, 0, '.', '.') }}</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            @endif
                            <?php
                                $ctr++;
                            ?>
                        @endforeach
                    </table>
                </div>
                <br><br>
            @endforeach



            <div class="empty-space col-xs-b35 col-md-b70"></div>

        </div>
    </div>
</div>
</div>
@endsection
