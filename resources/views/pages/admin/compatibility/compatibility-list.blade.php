@extends('layouts.admin.master')
@section('title', 'Compatibility list' .' < '. get_site_title())
@section('content')
<div class="row">
  <div class="col-6">
    <h5>Compatibility list</h5>
  </div>
  <div class="col-6">
    <div class="pull-right">
      <a href="{{ route('compatibility.store') }}" class="btn btn-primary pull-right btn-sm">Add new compatibility</a>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-12">

    <div class="box">
      <div class="box-body">
        <div id="table_search_option">
          <form action="{{ route('compatibility.list') }}" method="GET">
            <div class="row">
              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="input-group">
                  <input type="text" name="term_compatibility" class="search-query form-control" placeholder="Enter name to search" value="{{ $search_value }}" />
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
              <th>Brand</th>
              <th>Name</th>
              <th>Type</th>
              <th>{!! trans('admin.action') !!}</th>
            </tr>
          </thead>
          <tbody>
            @if($compatibility_all_data->count() > 0)
              @foreach($compatibility_all_data as $row)
              <tr>

                <?php
                    $brand = App\product_brand::find($row->brand_id);
                    $type = 'Brand';
                    if ($row->type == 1) {
                        $type = 'Part';
                    }
                ?>

                <td>{!! $brand->name_brand !!}</td>

                <td>{!! $row->name !!}</td>

                <td>{!! $type !!}</td>

                <td>
                  <div class="btn-group">
                    <button class="btn btn-success btn-flat" type="button">{!! trans('admin.action') !!}</button>
                    <button data-toggle="dropdown" class="btn btn-success btn-flat dropdown-toggle" type="button">
                      <span class="caret"></span>
                      <span class="sr-only">Toggle Dropdown</span>
                    </button>
                    <ul role="menu" class="dropdown-menu">
                      @if(in_array('product_compatibility', $user_permission_list))
                        <li><a href="{{ route( 'compatibility.edit', $row->id ) }}"><i class="fa fa-edit"></i>{!! trans('admin.edit') !!}</a></li>
                      @endif
                      @if(in_array('product_compatibility', $user_permission_list))
                        <li><a class="remove-selected-data-from-list" data-track_name="comp_list" data-id="{{ $row->id }}" href="#"><i class="fa fa-remove"></i>{!! trans('admin.delete') !!}</a></li>
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
                <th>Brand</th>
                <th>Name</th>
                <th>Type</th>
                <th>{!! trans('admin.action') !!}</th>
            </tr>
          </tfoot>
        </table>
          <br>
        <div class="compatibility-pagination">{!! $compatibility_all_data->appends(Request::capture()->except('page'))->render() !!}</div>
      </div>
    </div>
  </div>
</div>
@endsection
