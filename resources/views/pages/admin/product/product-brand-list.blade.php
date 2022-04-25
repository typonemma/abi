@extends('layouts.admin.master')
@section('title', trans('admin.product_brand_list') .' < '. get_site_title())

@section('content')
<div class="row">
  <div class="col-6">
    <h5>Brand List</h5>
  </div>
  <div class="col-6">
    <div class="pull-right">
        <a href="{{ route('ProductBrand.store') }}" class="btn btn-primary pull-right btn-sm">Add New</a>
    </div>  
  </div>
</div>
<br>
<div class="row">
  <div class="col-12">
    <div class="box">
      <div class="box-body">
        <div id="table_search_option">             
          <form action="{{ route('ProductBrand.list', 'all') }}" method="GET">
            <div class="row">
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="input-group">
                  <input type="text" name="term_brand" class="search-query form-control" placeholder="Enter Brand Name To Search" value="{{ $search_value }}" />
                  <div class="input-group-btn">
                    <button class="btn btn-primary" type="submit">
                      <span class="fa fa-search"></span>
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>    
        <table class="table table-bordered admin-data-table admin-data-list">
          <thead class="thead-dark">
            <tr>
              <th>Name</th>
              <th>Nama Product</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
          @if($brand_all_data->count() > 0)
            @foreach ($brand_all_data as $b)
            <tr>
                <td>{!! $b->name_brand !!}</td>

                <?php
                    $or = App\product_brand::where('id', '=', $b->id)->first();
                    $term = App\bestsellerproduct_list::where('id', '=', $or->product_id)->first();
                ?>
                <td>{!! $term->title !!}</td>

                @if($b->status == 1)
                  <td>Enable</td>
                @else
                  <td>Disable</td>
                @endif
                <td>
                  <div class="btn-group">
                    <button class="btn btn-success btn-flat" type="button">{!! trans('admin.action') !!}</button>
                    <button data-toggle="dropdown" class="btn btn-success btn-flat dropdown-toggle" type="button">
                      <span class="caret"></span>
                      <span class="sr-only">Toggle Dropdown</span>
                    </button>
                    <ul role="menu" class="dropdown-menu">
                      @if(in_array('product_brand_access', $user_permission_list))
                        <li><a href="{{ route( 'ProductBrand.edit', $b->id ) }}"><i class="fa fa-edit"></i>{!! trans('admin.edit') !!}</a></li>
                      @endif
                      @if(in_array('product_brand_access', $user_permission_list))
                        <li><a class="remove-selected-data-from-list" data-track_name="brandproduct_list" data-id="{{ $b->id }}" href="#"><i class="fa fa-remove"></i>{!! trans('admin.delete') !!}</a></li>
                      @endif
                    </ul>
                  </div>
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
              <th>Nama Product</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </tfoot>
        </table>
        <br>  
        <div class="products-pagination">{!! $brand_all_data->appends(Request::capture()->except('page'))->render() !!}</div>  
      </div>
    </div>
  </div>
</div>
<div class="eb-overlay"></div>
<div class="eb-overlay-loader"></div>
<input type="hidden" name="hf_from_model" id="hf_from_model" value="">
<input type="hidden" name="hf_update_id" id="hf_update_id" value="">
@endsection