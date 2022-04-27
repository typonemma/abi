@extends('layouts.admin.master')
@section('title', 'Add Bank' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<form class="form-horizontal" method="post" action="{{ route('PagesBank.create') }}">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Add new Bank &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('PagesBank.list') }}">Bank list</a></h3>
      <div class="pull-right">
        <button class="btn btn-block btn-primary btn-sm" type="submit">Save</button>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-8">
      <div class="box box-solid">

        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
          <h3 class="box-title">Bank name</h3>
        </div>
        <div class="box-body">
          <input type="text" placeholder="Brand name" class="form-control" name="title" id="eb_compatibility_name" value="{{ old('title') }}">
        </div>

        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
          <h3 class="box-title">Nomor Rekening</h3>
        </div>
        <div class="box-body">
          <input type="text" placeholder="Nomor Rekening" class="form-control" name="nomor_rekening" id="eb_compatibility_name" value="{{ old('nomor_rekening') }}">
        </div>

        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
        <h3 class="box-title">Keterangan</h3>
        </div>
        <div class="box-body">
          <input type="text" placeholder="Keterangan" class="form-control" name="content" id="eb_compatibility_name" value="{{ old('content') }}">
        </div>

      </div>
    </div>
 
</form>
@endsection
