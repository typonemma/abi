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
      <h3 class="box-title">Add new compatibility &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('compatibility.list', $product->id) }}">Compatibility list</a></h3>
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
          <h3 class="box-title">Brand/Part name</h3>
        </div>
        <div class="box-body">
            <div id="brand-body" class="form-group">
                <div class="row">
                <label class="col-sm-7 control-label" for="inputName">Brand name</label>
                <div class="col-sm-5">
                    <select id="name" class="form-control select2" name="name" style="width: 100%;">
                        @foreach ($brands as $brand)
                            <option value="{{$brand->name_brand}}">{{$brand->name_brand}}</option>
                        @endforeach
                    </select>
                </div>
                </div>
            </div>
            <input id="part-body" type="text" placeholder="Part name" class="form-control" id="eb_input_name" value="{{ old('name') }}" style="display:none">
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
                    <select class="form-control select2" name="product" style="width: 100%;" value="{{$product->id}}" disabled>
                        @foreach ($products as $p)
                            @if ($p->id == $product->id)
                                <option value="{{$p->id}}" selected>{{$p->title}}</option>
                            @else
                                <option value="{{$p->id}}">{{$p->title}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                </div>
            </div>
        </div>
      </div>
      <div class="box box-solid">
        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
          <h3 class="box-title">Brand</h3>
        </div>
        <div id="box-body" class="box-body">
            <div class="form-group">
                <div class="row">
                <label class="col-sm-7 control-label" for="inputBrand">Brand</label>
                <div class="col-sm-5">
                    <select class="form-control select2" name="brand" style="width: 100%;">
                        @foreach ($brands as $brand)
                            <option value="{{$brand->id}}">{{$brand->name_brand}}</option>
                        @endforeach
                    </select>
                </div>
                </div>
            </div>
        </div>
      </div>
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
                        <select id="type" class="form-control select2" name="type" style="width: 100%;" onchange="change({{$brands}})">
                            <option value="0">Brand</option>
                            <option value="1">Part</option>
                        </select>
                    </div>
                    </div>
                </div>
            </div>
        </div>
</form>
<script>
    function change(brands) {
        const value = document.getElementById('type').value;
        if (value == '0') {
            document.getElementById('brand-body').style.display = 'block';
            document.getElementById('name').setAttribute('name', 'name');
            document.getElementById('part-body').style.display = 'none';
            document.getElementById('part-body').removeAttribute('name');
        }
        else {
            document.getElementById('brand-body').style.display = 'none';
            document.getElementById('name').removeAttribute('name');
            document.getElementById('part-body').style.display = 'block';
            document.getElementById('part-body').setAttribute('name', 'name');
        }
    }
</script>
@endsection
