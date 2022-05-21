<div class="col-md-3 col-md-pull-9">
    <div class="h4 col-xs-b10">product categories</div>
<<<<<<< HEAD
    <ul class="categories-menu">
        @foreach ($categories as $category)
            <li>
                <a href="javascript:;"  class="menuSelect" data-id="{{$category['parent']['term_id']}}">{{$category['parent']['name']}}</a>
=======
    <input id="cat" type="hidden" value="{{isset($_GET['cat']) ? $_GET['cat'] : ''}}">
    <ul class="categories-menu">
        @foreach ($categories as $category)
            <li>
                <a href="javascript:;" id="cat-{{$category['parent']['term_id']}}" class="menuSelect" data-id="{{$category['parent']['term_id']}}">{{$category['parent']['name']}}</a>
>>>>>>> origin/dev_bryan
                @if(isset($category['child']) && $category['child'] != null)
                <div class="toggle"></div>
                <ul>
                    @foreach ($category['child'] as $child)
                        <li>
<<<<<<< HEAD
                            <a href="javascript:;" class="menuSelect"  data-id="{{$child['term_id']}}" >{{$child['name']}}</a>
=======
                            <a href="javascript:;" class="menuSelect" data-id="{{$child['term_id']}}" >{{$child['name']}}</a>
>>>>>>> origin/dev_bryan
                        </li>
                    @endforeach
                </ul>
                @endif
            </li>
        @endforeach
    </ul>

    @include('product::partial.location')
</div>
