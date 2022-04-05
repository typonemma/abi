<div id="wishlists_details">
  <h5><label>{{ trans('frontend.frontend_my_saved_items') }}</label></h5><hr>

  @if(!empty($user_wishlist_detail))
  <div class="table-responsive">
    <table class="table table-bordered">
      <thead>
        <tr class="cart_menu">
          <td class="image">{{ trans('frontend.image') }}</td>
          <td class="description">{{ trans('frontend.description') }}</td>
          <td class="description">{{ trans('frontend.availability') }}</td>
          <td class="price">{{ trans('frontend.price') }}</td>
          <td class="action">{{ trans('frontend.action') }}</td>
        </tr>
      </thead>
      @foreach($user_wishlist_detail as $item)
        <?php
            $items = App\Models\Product::find($item->product_id);
        ?>
        <tr>
          <td>
            @if(get_product_image($items) && get_product_image($items) != '/images/no-image.png')
            <a href="{{ route('details-page', get_product_slug($items)) }}" target="_blank"><img src="{{ get_image_url(get_product_image($items)) }}" alt=""></a>
            @else
              <a href="{{ route('details-page', get_product_slug($items)) }}" target="_blank"><img src="{{ default_placeholder_img_src() }}" alt=""></a>
            @endif
          </td>
          <td>
            <p><a href="{{ route('details-page', get_product_slug($items)) }}" target="_blank">{!! get_product_title($items) !!}</a></p>
          </td>
          <td>
            <p> {!! get_product_availability($items) !!} </p>
          </td>
          <td>
            <p> {!! price_html(get_product_price($items), get_frontend_selected_currency()) !!} </p>
          </td>
          <td>
            <a class="delete_item_from_wishlist" href="" data-id="{{ $items }}"><i class="fa fa-close"></i></a>
          </td>
        </tr>
      @endforeach
    </table>
  </div>
  @else
    <p>{{ trans('frontend.no_saved_items_yet_label') }}</p>
  @endif
</div>
