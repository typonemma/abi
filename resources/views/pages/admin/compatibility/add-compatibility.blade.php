@extends('layouts.admin.master')
@section('title', 'Add compatibility' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<form class="form-horizontal" method="post" action="{{ route('compatibility.create') }}">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Add new compatibility &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('compatibility.list') }}">Compatibility list</a></h3>
      <div class="pull-right">
        <button class="btn btn-block btn-primary btn-sm" type="submit">{!! trans('admin.save') !!}</button>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-8">
      <div class="box box-solid">
        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
          <h3 class="box-title">Compatibility name</h3>
        </div>
        <div class="box-body">
          <input name="name" type="text" placeholder="Compatibility name" class="form-control" name="compatibility_name" id="eb_compatibility_name" value="{{ old('compatibility_name') }}">
        </div>
      </div>

      <div class="box box-solid">
        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
          <h3 class="box-title">Product</h3>
        </div>
        <div class="box-body">
            <div class="form-group">
                <div class="row">
                <label class="col-sm-7 control-label" for="inputProduct">Product</label>
                <div class="col-sm-5">
                    <select class="form-control select2" name="product" style="width: 100%;">
                        @foreach ($products as $product)
                            <option value="{{$product->id}}">{{$product->title}}</option>
                        @endforeach
                    </select>
                </div>
                </div>
            </div>
        </div>
      </div>
        {{-- <div class="box-body">
            <div class="form-group">
                <div class="row">
                <label class="col-sm-7 control-label" for="inputProduct">Product</label>
                <div class="col-sm-5">
                    <select class="form-control select2" name="brand" style="width: 100%;">
                    @foreach ($brands as $brand)
                        <option value="{{$brand->id}}">{{$brand->name}}</option>
                    @endforeach
                    </select>
                </div>
                </div>
            </div>
        </div> --}}
        <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-text-width"></i>
              <h3 class="box-title">Type</h3>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <div class="row">
                    <label class="col-sm-7 control-label" for="inputType">Type</label>
                    <div class="col-sm-5">
                        <select class="form-control select2" name="type" style="width: 100%;">
                            <option value="0">Brand</option>
                            <option value="1">Part</option>
                        </select>
                    </div>
                    </div>
                </div>
            </div>
        </div>
</form>
@endsection
