@extends('layouts.admin.master')
@section('title', 'Add Brand' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<form class="form-horizontal" method="post" action="{{ route('ProductBrand.create') }}" enctype="multipart/form-data">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Add new Product Brand &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('ProductBrand.list') }}">Brand list</a></h3>
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

      <!-- Image -->
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
            <div class="product-sample-img">
              <input name="logo_brand" type="file" id="fileInput">
            </div><div class="product-uploaded-image"><img class="img-responsive"><div class="remove-img-link"><button type="button" data-target="product_image" class="btn btn-default attachtopost">Remove Image</button></div></div>
          </div>
        </div>
        </div>
      <!-- Batas Image -->
      </div>

      <div class="col-md-4">
        <div class="box box-solid">
          <div class="box-header with-border">
            <i class="fa fa-eye"></i>
            <h3 class="box-title">visibility</h3>
          </div>
          <div class="box-body">
              <div class="form-group">
                  <div class="row">
                  <label class="col-sm-7 control-label" for="inputType">Status</label>
                  <div class="col-sm-5">
                      <select class="form-control select2" name="status" style="width: 100%;">
                          <option value="1">Enable</option>
                          <option value="0">Disable</option>
                      </select>
                  </div>
                  </div>
              </div>
          </div>
        </div>
      </div>

</form>
<script>
  let fileupload = document.getElementById('productUploader');
  let fileInput = document.getElementById('eb_dropzone_file_upload');
  fileupload.ondragover = fileupload.ondragenter = function(evt) {
    evt.preventDefault();
  };
  fileupload.ondrop = function(evt) {
    fileInput.files = evt.dataTransfer.files;
    const dT = new DataTransfer();
    dT.items.add(evt.dataTransfer.files[0]);
    fileInput.files = dT.files;
    evt.preventDefault();
  };
</script>
@endsection
