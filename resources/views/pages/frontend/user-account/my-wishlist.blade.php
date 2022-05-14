@extends('partials.main')
@section('content')
<div class="container">
    <div class="empty-space col-xs-b25 col-sm-b50"></div>

    <div class="text-center">
        <div class="simple-article size-3 text-blue uppercase col-xs-b5">wishlist</div>
        <div class="h2">your wishlist</div>
        <div class="title-underline center"><span></span></div>
    </div>
    <div class="tab-entry visible">
        <div class="row nopadding">
            @foreach ($user_wishlist_detail as $item)
                <?php
                    $product = App\Models\Product::find($item->product_id);
                    $or = App\Models\ObjectRelationship::where('object_id', '=', $item->product_id)->first();
                    $term_id = $or->term_id;
                    $term = App\Models\Term::where('term_id', '=', $term_id)->first();
                ?>
                <div class="col-sm-3">
                    <div class="product-shortcode style-1">
                        <div class="title">
                            <div class="simple-article size-1 color col-xs-b5"><a href="/product?cat={{$term->term_id}}">{{$term->name}}</a></div>
                            <div class="h6 animate-to-green"><a href="/product/detail/{{$product->slug}}">{{$product->title}}</a></div>
                        </div>
                        <div class="preview">
                            @if ($product->image_url == '')
                                <?php
                                    $product->image_url = '/public/uploads/no-image.jpeg';
                                ?>
                            @endif
                            <img src="{{$product->image_url}}" alt="" />
                            <div class="preview-buttons valign-middle">
                                <div class="valign-middle-content">
                                    <a class="button size-2 style-3" href="/product/detail/{{$product->slug}}">
                                        <span class="button-wrapper">
                                            <span class="icon"><img src="img/icon-4.png" alt=""></span>
                                            <span class="text">see detail</span>
                                        </span>
                                    </a>

                                </div>
                            </div>
                        </div>
                        <div class="price">
                            <div class="simple-article size-4 dark">Rp {{number_format($product->regular_price,0,',','.')}}</div>
                        </div>
                        <div class="description">
                            <div class="simple-article text size-2">{!! htmlspecialchars_decode($product->content) !!}</div>
                            <div class="icons">
                                <a class="entry" onclick="ajaxInsertToCart({{$product->id}})"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                <a id="products-{{$product->id}}" class="entry open-popup" onclick="popup({{$product->id}})" data-rel="0" data-id="{{$product->id}}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <a class="entry" onclick="ajaxInsertToWishlist({{$product->id}})"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    <div class="empty-space col-xs-b25 col-md-b30"></div>
    @if ($page_count > 0)
        <div class="row">
            <div class="col-sm-3 hidden-xs">
                <a class="button size-1 style-5" href="{{ "wishlist?page=" . max($page - 1, 1) }}">
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
                                    <a class="pagination active" href="wishlist?page={{ $i }}">{{ $i }}</a>
                                @else
                                    <a class="pagination" href="wishlist?page={{ $i }}">{{ $i }}</a>
                                @endif
                        @endif
                    @endfor
                    @if ($page + 5 <= $page_count)
                        <a class="pagination" href="wishlist?page={{ $page + 5 }}">...</a>
                    @endif
                </div>
            </div>
            <div class="col-sm-3 hidden-xs text-right">
                <a class="button size-1 style-5" href="{{ "wishlist?page=" . min($page + 1, $page_count)}}">
                    <span class="button-wrapper">
                        <span class="icon"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                        <span class="text">next page</span>
                    </span>
                </a>
            </div>
        </div>
    @endif
    <div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="empty-space col-md-b70"></div>
</div>

@endsection
