@extends('layouts.admin.master')
@section('title', 'Update Bank' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<form class="form-horizontal" method="post" action="{{ route('PagesBank.update', $bank_list->id) }}">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Update Bank &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('PagesBank.list') }}">Bank list</a></h3>
      <div class="pull-right">
        <button class="btn btn-block btn-primary btn-sm" type="submit">{!! trans('admin.update') !!}</button>
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
          <input name="title" type="text" placeholder="Bank name" class="form-control" id="eb_compatibility_name" value="{{ $bank_list->title }}">
        </div>

        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
          <h3 class="box-title">Nomor Rekening</h3>
        </div>
        <div class="box-body">
          <input name="nomor_rekening" type="text" placeholder="Bank name" class="form-control" id="eb_compatibility_name" value="{{ $bank_list->nomor_rekening }}">
        </div>

        <div class="box-header with-border">
          <i class="fa fa-text-width"></i>
          <h3 class="box-title">Keterangan</h3>
        </div>
        <div class="box-body">
          <input name="content" type="text" placeholder="Bank name" class="form-control" id="eb_compatibility_name" value="{{ $bank_list->content }}">
        </div>

      </div>
    </div>            
</form>
@endsection