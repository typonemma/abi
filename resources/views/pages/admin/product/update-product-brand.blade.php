@extends('layouts.admin.master')
@section('title', 'Update Brand' .' < '. get_site_title())

@section('content')
@include('pages-message.notify-msg-error')
@include('pages-message.form-submit')

<form class="form-horizontal" method="post" action="{{ route('ProductBrand.update', $product_brand->id) }}" enctype="multipart/form-data">
  @include('includes.csrf-token')

  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Update Product Brand &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="{{ route('ProductBrand.list') }}">Bank list</a></h3>
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
            <h3 class="box-title">Brand name</h3>
          </div>
          <div class="box-body">
            <input name="name_brand" type="text" placeholder="Bank name" class="form-control" id="eb_compatibility_name" value="{{ $product_brand->name_brand }}">
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
              <div class="product-sample-img">
<<<<<<< HEAD
                
                <input name="logo_brand" type="file" value="{{ $product_brand->logo_brand }}" id="fileInput"><br><br>

                <?php                                                
                    $key_value = $product_brand->logo_brand;
                    $filename = $_SERVER['DOCUMENT_ROOT'] . $key_value;                                                   
                    if ($key_value == ''){                                                 
                        echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:100px;'>";                                                    
                    }  
                    else if ($key_value == '/public/uploads/'){                                                 
                      echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:100px;'>";                                                    
                    } 
                    else if (!file_exists($filename)) {
                        echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:100px;'>";  
                    }                                
                    else {                                                 
                        echo "<img src='$key_value' style='width:100px;height:100px;'>";                                                    
=======

                <input name="logo_brand" type="file" value="{{ $product_brand->logo_brand }}" id="fileInput"><br><br>

                <?php
                    $key_value = $product_brand->logo_brand;
                    $filename = $_SERVER['DOCUMENT_ROOT'] . $key_value;
                    if ($key_value == ''){
                        echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:100px;'>";
                    }
                    else if ($key_value == '/public/uploads/'){
                      echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:100px;'>";
                    }
                    else if (!file_exists($filename)) {
                        echo "<img src='/public/uploads/no-image.jpg' style='width:100px;height:100px;'>";
                    }
                    else {
                        echo "<img src='$key_value' style='width:100px;height:100px;'>";
>>>>>>> origin/dev_bryan
                    }
                ?><br>

              </div>
              <div class="product-uploaded-image"><img class="img-responsive"><div class="remove-img-link">
                <button type="button" data-target="product_image" class="btn btn-default attachtopost">Remove Image</button></div></div>
              </div>
<<<<<<< HEAD
          </div>   
=======
          </div>
>>>>>>> origin/dev_bryan
          </div>
      </div>

      <div class="col-md-4">
        <div class="box box-solid">
          <div class="box-header with-border">
            <i class="fa fa-text-width"></i>
            <h3 class="box-title">visibility</h3>
          </div>
          <div class="box-body">
              <div class="form-group">
                  <div class="row">
                  <label class="col-sm-7 control-label" for="inputType">Status</label>
                  <div class="col-sm-5">
                      <select class="form-control select2" name="status" style="width: 100%;">
                          <option value="1">Enable</option>
<<<<<<< HEAD
                          <option value="0">Disable</option>                            
=======
                          <option value="0">Disable</option>
>>>>>>> origin/dev_bryan
                      </select>
                  </div>
                  </div>
              </div>
          </div>
        </div>
<<<<<<< HEAD
      </div>         
</form> 
=======
      </div>
</form>
>>>>>>> origin/dev_bryan
<script>
  let fileupload = document.getElementById('file-upload');
  fileupload.ondragover = dropContainer.ondragenter = function(evt) {
    evt.preventDefault();
  };
  fileupload.ondrop = function(evt) {
    fileInput.files = evt.dataTransfer.files;
    const dT = new DataTransfer();
    dT.items.add(evt.dataTransfer.files[0]);
    fileInput.files = dT.files;
    evt.preventDefault();
  };
<<<<<<< HEAD
</script> 
@endsection
=======
</script>
@endsection
>>>>>>> origin/dev_bryan
