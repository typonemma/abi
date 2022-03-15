<div class="h4 col-xs-b25">location</div>
    <label class="checkbox-entry">
        <input type="checkbox"><span>all location</span>
    </label>
    @foreach ($tags as $tag)
        <div class="empty-space col-xs-b10"></div>
        <label class="checkbox-entry checkboxP">
            <input type="checkbox" class="checkboxProduct" value="{{$tag['term_id']}}"><span>{{$tag['name']}}</span>
        </label>
    @endforeach
    <div class="empty-space col-xs-b25 col-sm-b50"></div>

    @include('product::partial.promo')
