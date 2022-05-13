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
    <div class="col-md-12">
      <div class="box box-solid">

        <br>
        <div class="box-body">
          <div class="form-group">
              <div class="row">
                  <label class="col-sm-2 control-label" for="eb_input_name"><i class="fa fa-text-width"> </i> Bank name</label>
                  <div class="col-sm-10">
                  <input type="text" placeholder="Bank name" class="form-control" name="title" id="eb_compatibility_name" value="{{ old('title') }}">
                  </div>
              </div>
          </div>  
        </div>
        <hr>

        <br>
        <div class="box-body">
          <div class="form-group">
              <div class="row">
                  <label class="col-sm-2 control-label" for="eb_input_name"><i class="fa fa-text-width"> </i> Nomor Rekening</label>
                  <div class="col-sm-10">
                  <input type="text" placeholder="Nomor Rekening" class="form-control" name="nomor_rekening" id="eb_compatibility_name" value="{{ old('nomor_rekening') }}">
                  </div>
              </div>
          </div>  
        </div>
        <hr>

        <br>
        <div class="box-body">
          <div class="form-group">
              <div class="row">
                  <label class="col-sm-2 control-label" for="eb_input_name"><i class="fa fa-text-width"> </i> Keterangan</label>
                  <div class="col-sm-10">
                  <input type="text" placeholder="Keterangan" class="form-control" name="content" id="eb_compatibility_name" value="{{ old('content') }}">
                  </div>
              </div>
          </div>  
        </div>
        <hr>

      </div>
    </div>
 
</form>
@endsection
