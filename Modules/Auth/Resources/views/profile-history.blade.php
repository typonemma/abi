@extends('partials.main')
@section('content')
<div class="empty-space col-xs-b35 col-md-b70"></div>
<div class="container">
    <div class="row">
        <div class="col-sm-3">
            <div class="h3">PROFILE</div>
            <ul class="profile-menu ">
                <li><a href="profile-detail">Account Details</a></li>
                <li><a href="profile-addresses">Addresses</a></li>
                <li><a href="profile-yourorder">Your Order</a></li>
                <li><a href="profile-history" class="active">History Order</a></li>
                <li><a href="logout">Log Out</a></li>
            </ul>
        </div>
        <div class="col-sm-9">
            <div class="h4">HISTORY ORDER</div>
            <div class="empty-space col-xs-b30"></div>
            @foreach ($user_order as $uo)
                <div class="grey-box">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="h6">invoice number:</div>
                        </div>
                        <div class="col-sm-6 text-right">{{ $uo['details']['date'] }}</div>
                    </div>
                    <table class="table-view">
                        <?php
                            $user_order_details = $uo['items'];
                            $ctr = 1;
                        ?>
                        @foreach ($user_order_details as $uod)
                            <?php
                                $product = App\Models\Product::find($uod['product_id']);
                            ?>
                            <tr>
                                <td>
                                    {{ $ctr }}. {{ $product->title }}<br/>
                                </td>
                                <td>
                                    x{{ $uod['quantity'] }}<br/>
                                </td>
                                <td>
                                    Rp {{ number_format($uod['price'], 0, '.', '.') }}<br/>
                                </td>
                                @if ($ctr == count($user_order_details))
                                    <td>
                                        TOTAL:<br/>
                                        Rp {{ number_format($uo['details']['total'], 0, '.', '.') }}
                                    </td>
                                    <td>
                                        DELIVERY STATUS:<br/>
                                        <div class="color">
                                            @if ($uo['details']['status'] == 'on-hold')
                                                On hold
                                            @elseif ($uo['details']['status'] == 'pending')
                                                Pending
                                            @elseif ($uo['details']['status'] == 'processing')
                                                Processing
                                            @elseif ($uo['details']['status'] == 'completed')
                                                Completed
                                            @elseif ($uo['details']['status'] == 'cancelled')
                                                Cancelled
                                            @elseif ($uo['details']['status'] == 'refunded')
                                                Refunded
                                            @elseif ($uo['details']['status'] == 'shipping')
                                                Shipping
                                            @endif
                                        </div>
                                    </td>
                                @endif
                            </tr>
                            @if ($ctr == count($user_order_details))
                                <tr>
                                    <td>SHIPPING COST</td>
                                    <td></td>
                                    <td>Rp {{ number_format($uo['details']['shipping_cost'], 0, '.', '.') }}</td>
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
            <div class="empty-space col-xs-b25 col-md-b30"></div>
            @if ($page_count > 0)
                <div class="row">
                    <div class="col-sm-3 hidden-xs">
                        <a class="button size-1 style-5" href="{{ "profile-history?page=" . max($page - 1, 1) }}">
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
                                            <a class="pagination active" href="profile-history?page={{ $i }}">{{ $i }}</a>
                                        @else
                                            <a class="pagination" href="profile-history?page={{ $i }}">{{ $i }}</a>
                                        @endif
                                @endif
                            @endfor
                            @if ($page + 5 <= $page_count)
                                <a class="pagination" href="profile-history?page={{ $page + 5 }}">...</a>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-3 hidden-xs text-right">
                        <a class="button size-1 style-5" href="{{ "profile-history?page=" . min($page + 1, $page_count)}}">
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
    </div>
</div>
</div>

<div class="empty-space col-xs-b35 col-md-b70"></div>
<div>
@endsection
