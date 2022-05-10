@extends('layouts.admin.master')
@section('title', 'Add compatibility' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<?php
    $product = session('product');
?>

<form class="form-horizontal" method="post" action="{{ route('compatibility.create') }}">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Add new compatibility: {{$product->title}} &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('compatibility.list', $product->id) }}">Compatibility list</a></h3>
      <div class="pull-right">
        <button class="btn btn-block btn-primary btn-sm" type="submit">{!! trans('admin.save') !!}</button>
      </div>
    </div>
  </div>

  <div class="row" style="width:154.5%">
    <div class="col-md-8">
      <div class="box box-solid">

        <div class="box-body">
            <div class="form-group">
                <div class="row">
                    <label class="col-sm-7 control-label" for="eb_input_name">Name</label>
                    <div class="col-sm-5">
                        <input type="text" name="name" placeholder="Name" class="form-control" id="eb_input_name" value="{{ old('name') }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="box-header with-border">

          </div>
          <div class="box-body">
              <div class="form-group">
                  <div class="row">
                  <label class="col-sm-7 control-label" for="inputBrand">Brand</label>
                  <div class="col-sm-5">
                      <select id="inputBrand" class="form-control select2" name="brand">
                          @foreach ($brands as $brand)
                              <option value="{{$brand->id}}">{{$brand->name_brand}}</option>
                          @endforeach
                      </select>
                  </div>
                  </div>
              </div>
          </div>

          <div class="box-header with-border">

          </div>

          <div class="box-body">
              <div class="form-group">
                  <div class="row">
                  <label class="col-sm-7 control-label" for="inputType">Type</label>
                  <div class="col-sm-5">
                      <select id="inputType" class="form-control select2" name="type">
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
