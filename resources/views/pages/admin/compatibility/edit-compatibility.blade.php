@extends('layouts.admin.master')
@section('title', 'Edit compatibility' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<?php
    $product = session('product');
?>

<form class="form-horizontal" method="post" action="{{ route('compatibility.update', $compatibility->id) }}">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Edit compatibility: {{$product->title}} &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('compatibility.list', $product->id) }}">Compatibility list</a></h3>
      <div class="pull-right">
        <button class="btn btn-block btn-primary btn-sm" type="submit">{!! trans('admin.update') !!}</button>
      </div>
    </div>
  </div>

  <div class="row" style="width:154.5%">
    <div class="col-md-8">
      <div class="box box-solid">
        <div class="box-header with-border">
        </div>
        <div class="box-body">
            <div class="form-group">
                <div class="row">
                    <label class="col-sm-7 control-label" for="eb_input_name">Name</label>
                    <div class="col-sm-5">
                        <input type="text" name="name" placeholder="Name" class="form-control" id="eb_input_name" value="{{ $compatibility->name }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="box-header with-border">
          </div>
          <div id="box-body" class="box-body">
              <div class="form-group">
                  <div class="row">
                  <label class="col-sm-7 control-label" for="inputBrand">Brand</label>
                  <div class="col-sm-5">
                      <select id="inputBrand" class="form-control select2" name="brand">
                          @foreach ($brands as $brand)
                              @if ($brand->id == $compatibility->brand_id)
                                  <option value="{{$brand->id}}" selected>{{$brand->name_brand}}</option>
                              @else
                                  <option value="{{$brand->id}}">{{$brand->name_brand}}</option>
                              @endif
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
                          @if ($compatibility->type == 0)
                              <option value="0" selected>Brand</option>
                              <option value="1">Part</option>
                          @else
                              <option value="0">Brand</option>
                              <option value="1" selected>Part</option>
                          @endif
                      </select>
                  </div>
                  </div>
              </div>
          </div>
      </div>
</form>
@endsection
