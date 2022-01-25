@extends('layouts.admin.master')
@section('title','Ads < '. get_site_title())

@section('content')
@include('pages-message.form-submit')
@include('pages-message.notify-msg-success')

<form class="form-horizontal" method="post" action="{{route('admin.ads_store')}}" enctype="multipart/form-data">
  @include('includes.csrf-token')
  <input type="hidden" name="hf_post_type" id="hf_post_type" value="add">

  <div class="box box-solid">
    <div class="box-header">
      <h3 class="box-title">Create Ads &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('admin.ads_list') }}">Ads List</a></h3>
      <div class="box-tools pull-right">
        <button class="btn btn-primary pull-right btn-sm" type="submit">{{ trans('admin.save') }}</button>
      </div>
    </div>
  </div>

 <div class="box box-solid">
    <div class="box-body">

      <div class="form-group">
        <div class="row">
          <div class="col-sm-4">
            <label class="control-label" for="name">Name</label>
          </div>
          <div class="col-sm-8">
            <input type="text" placeholder="Name" class="form-control" value="" id="name" name="name">
          </div>
        </div>
      </div>

      <div class="form-group">
        <div class="row">
          <div class="col-sm-4">
            <label class="control-label" for="inputEmail">Link / Url</label>
          </div>
          <div class="col-sm-8">
            <input type="text" placeholder="Link / Url" class="form-control" value="" id="url" name="url">
          </div>
        </div>
      </div>

      <div class="form-group">
        <div class="row">
          <div class="col-sm-4">
            <label class="control-label" for="inputEmail">Start Date</label>
          </div>
          <div class="col-sm-8">
            <input type="date" placeholder="Start Date" class="form-control" value="" id="start_date" name="start_date">
          </div>
        </div>
      </div>

      <div class="form-group">
        <div class="row">
          <div class="col-sm-4">
            <label class="control-label" for="inputEmail">End Date</label>
          </div>
          <div class="col-sm-8">
            <input type="date" placeholder="End Date" class="form-control" value="" id="end_date" name="end_date">
          </div>
        </div>
      </div>

      <div class="form-group">
        <div class="row">
          <div class="col-sm-4">
            <label class="control-label" for="inputEmail">Status</label>
          </div>
          <div class="col-sm-8">
            <select name="status" class="form-control" id="">
                <option value="0">INACTIVE</option>
                <option value="1">ACTIVE</option>
            </select>
          </div>
        </div>
      </div>

      <div class="form-group">

      <div class="box box-solid">
        <div class="box-header with-border">
          <i class="fa fa-upload"></i>
          <h3 class="box-title">Image</h3>
          <div class="box-tools pull-right">
            <div data-toggle="modal" data-dropzone_id="available-at-picture" data-target="#productUploader" class="icon product-uploader">{!! trans('admin.upload_image') !!}</div>
          </div>
        </div>
        <div class="box-body">
          <div class="uploaded-product-image">
            <div class="product-sample-img"><img class="upload-icon img-responsive" src="{{ default_upload_sample_img_src() }}"></div>
            <div class="available-at-picture"><img class="img-responsive"></div>
          </div>

          <div class="modal fade" id="productUploader" tabindex="-1" role="dialog" aria-labelledby="updater" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <p class="no-margin">{!! trans('admin.you_can_upload_1_image') !!}</p>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <div class="uploadform dropzone no-margin dz-clickable available-at-picture" id="available-at-picture" name="available-at-picture">
                    <div class="dz-default dz-message">
                      <span>{!! trans('admin.drop_your_cover_picture_here') !!}</span>
                    </div>
                  </div>
                </div>
                <input type="hidden" name="hf_available_at_picture" id="hf_available_at_picture">
                <div class="modal-footer">
                  <button type="button" class="btn btn-default attachtopost" data-dismiss="modal">{!! trans('admin.close') !!}</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      </div>

  </div>
</form>
@endsection
