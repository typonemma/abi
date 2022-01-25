@extends('layouts.admin.master')
@section('title','Ads < '. get_site_title())

@section('content')
<div class="row">
  <div class="col-6">
    <h5>Ads</h5>
  </div>
  <div class="col-6">
    <div class="pull-right">
      <a href="{{ route('admin.ads_create') }}" class="btn btn-primary pull-right btn-sm">Add New Ads</a>
    </div>
  </div>
</div>
<br>
<div class="row">
  <div class="col-12">
    <div class="box">
      <div class="box-body">
        <table class="table table-bordered admin-data-table admin-data-list">
          <thead class="thead-dark">
            <tr>
              <th>Title</th>
              <th>Link</th>
              <th>Image</th>
              <th>Start Date</th>
              <th>End Date</th>
              <th>Status</th>
              <th>{{ trans('admin.action') }}</th>
            </tr>
          </thead>
          <tbody>
            @forelse ($available as $value)
                <tr>
                    <td>{{$value->title}}</td>
                    <td><a href="{{$value->url}}">Website</a></td>
                    <td><img src="{{$value->image}}" style="width: 100px !important"></td>
                    <td>{{date('d-m-Y',strtotime($value->start_date))}}</td>
                    <td>{{date('d-m-Y',strtotime($value->end_date))}}</td>
                    <td>{{$value->status == 1?'ACTIVE':'INACTIVE'}}</td>
                    <td>
                        <div class="btn-group">
                          <button class="btn btn-success btn-flat" type="button">{!! trans('admin.action') !!}</button>
                          <button data-toggle="dropdown" class="btn btn-success btn-flat dropdown-toggle" type="button">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                          </button>
                          <ul role="menu" class="dropdown-menu">
                            @if(in_array('add_edit_delete_product', $user_permission_list))
                                <li><a href="{{ route('admin.ads_edit', $value->id) }}"><i class="fa fa-edit"></i>{!! trans('admin.edit') !!}</a></li>
                            @endif
                            @if(in_array('add_edit_delete_product', $user_permission_list))
                              <li><a class="remove-selected-data-from-list" data-track_name="available_at" data-id="{{ $value->id }}" href="#"><i class="fa fa-remove"></i>{!! trans('admin.delete') !!}</a></li>
                            @endif
                          </ul>
                        </div>
                    </td>
                </tr>
            @empty
            <tr>
                <td colspan="4"><center> No Data Found!</center></td>
            </tr>
            @endforelse
          </tbody>
        </table>
        <br>
       </div>
    </div>
  </div>
</div>
@include('includes.csrf-token')
@endsection
