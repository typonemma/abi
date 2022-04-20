@extends('layouts.admin.master')
@section('title', 'Add Brand' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<form class="form-horizontal" method="post" action="{{ route('ProductBrand.create') }}">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Add new Bank &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('ProductBrand.list') }}">Brand list</a></h3>
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
          <h3 class="box-title">Brand name</h3>
        </div>
        <div class="box-body">
          <input type="text" placeholder="Brand name" class="form-control" name="name_brand" id="eb_compatibility_name" value="{{ old('name_brand') }}">
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
                    <select class="form-control select2" name="product_id" style="width: 100%;">
                        @foreach ($products as $product)
                            <option value="{{$product->id}}">{{$product->title}}</option>
                        @endforeach
                    </select>
                </div>
                </div>
            </div>
        </div>
      </div>
        
        <div class="box box-solid">
        <div class="box-header with-border">
          <i class="fa fa-upload"></i>
          <h3 class="box-title">Brand Image</h3>
          <div class="box-tools pull-right">
            <div data-toggle="modal" data-dropzone_id="eb_dropzone_file_upload" data-target="#productUploader" class="icon product-uploader">Upload Image</div>
          </div>
        </div>
        <div class="box-body">
          <div class="uploaded-product-image">
            <div class="product-sample-img"><img class="upload-icon img-responsive" src="{{ default_upload_sample_img_src() }}"></div>
            <div class="product-uploaded-image"><img class="img-responsive"><div class="remove-img-link"><button type="button" data-target="product_image" class="btn btn-default attachtopost">Remove Image</button></div></div>
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
                  <div class="uploadform dropzone no-margin dz-clickable eb_dropzone_file_upload" id="eb_dropzone_file_upload" name="eb_dropzone_file_upload">
                    <div class="dz-default dz-message">
                      <span>{!! trans('admin.drop_your_cover_picture_here') !!}</span>
                    </div>
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default attachtopost" data-dismiss="modal">{!! trans('admin.close') !!}</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-text-width"></i>
              <h3 class="box-title">Status</h3>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <div class="row">
                    <label class="col-sm-7 control-label" for="inputType">Status</label>
                    <div class="col-sm-5">
                        <select class="form-control select2" name="status" style="width: 100%;">
                            <option value="0">Disable</option>
                            <option value="1">Enable</option>
                        </select>
                    </div>
                    </div>
                </div>
            </div>
        </div>

</form>
@endsection
