@extends('layouts.admin.master')
@section('title', 'Compatibility list' .' < '. get_site_title())
@section('content')
<div class="row">
  <div class="col-6">
    <h5>Product compatibles list</h5>
  </div>
</div>

<div class="box">
    <div class="box-header">
      <a class="btn btn-default btn-sm" href="{{ route('admin.product_list', 'all') }}">{!! trans('admin.products_list') !!}</a></h3>
    </div>
  </div>

<div class="row">
  <div class="col-12">

    <div class="box">
      <div class="box-body">
        <table class="table table-bordered admin-data-table admin-data-list">
          <thead class="thead-dark">
            <tr>
              <th>Name</th>
              <th>Brand</th>
              <th>{!! trans('admin.action') !!}</th>
            </tr>
          </thead>
          <tbody>
            @if($compatibilities->count() > 0)
              @foreach($compatibilities as $row)
              <tr>

                <?php
                    $brand = App\product_brand::find($row->brand_id);
                    $type = 'Brand';
                    if ($row->type == 1) {
                        $type = 'Part';
                    }
                ?>

                <td>{!! $row->name !!}</td>

                <td>{!! $brand->name_brand !!}</td>

                <td>
                    <input id="cb-{{$row->id}}" type="checkbox" onchange="ajaxCbChange({{$product_id}}, {{$row->id}})">
                </td>
              </tr>
              @endforeach
            @else
              <tr><td colspan="8"><i class="fa fa-exclamation-triangle"></i> {!! trans('admin.no_data_found_label') !!}</td></tr>
            @endif
          </tbody>
          <tfoot class="thead-dark">
            <tr>
                <th>Name</th>
                <th>Brand</th>
                <th>{!! trans('admin.action') !!}</th>
            </tr>
          </tfoot>
        </table>
          <br>
        <div class="compatibility-pagination">{!! $compatibilities->appends(Request::capture()->except('page'))->render() !!}</div>
      </div>
    </div>
  </div>
</div>
<script>
    function ajaxCbChange(product_id, compatible_id) {
        let cb = document.getElementById("cb-" + compatible_id);
        if (cb.checked) {
            $.ajaxSetup({
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
                }
            });
            $.ajax({
                type: "POST",
                url: "/admin/product-compatibles/create",
                data: {product_id: product_id, compatible_id: compatible_id}
            });
        }
        else {
            $.ajax({
                type: "GET",
                url: "/admin/product-compatibles/delete/"+product_id+"/"+compatible_id
            });
        }
    }
</script>
@endsection
