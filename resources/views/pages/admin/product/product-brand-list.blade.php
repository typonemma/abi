@extends('layouts.admin.master')
@section('title', trans('admin.product_brand_list') .' < '. get_site_title())

@section('content')
<div class="row">
  <div class="col-6">
    <h5>Brand List</h5>
  </div>
  <div class="col-6">

    <div class="pull-right">
        <a href="{{ route('ProductBrand.store') }}" class="btn btn-primary pull-right btn-sm">Add New</a>
    </div>  

  </div>
</div>
<br>

<div class="modal fade" id="addDynamicTags" tabindex="-1" role="dialog" aria-labelledby="updater" aria-hidden="true">
  <div class="modal-dialog add-tag-dialog">
    <div class="ajax-overlay"></div>
    
    <div class="modal-content">
      <div class="modal-header">
        <p class="no-margin">Create</p>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>  
      <div class="modal-body">
        <div class="custom-model-row">
          <div class="custom-input-group">
            <div class="custom-input-label"><label for="inputTagName">Name</label></div>
            <div class="custom-input-element"><input type="text" placeholder="{{ trans('admin.name') }}" id="inputTagName" name="inputTagName" class="form-control"></div>
          </div>
          <div class="custom-input-group">
            <div class="custom-input-label"><label for="inputTagDescription">Description</label></div>
            <div class="custom-input-element">
              <textarea class="form-control" name="inputTagDescription" id="inputTagDescription" placeholder="{{ trans('admin.description') }}"></textarea>
            </div>
          </div>
          <div class="custom-input-group">
            <div class="custom-input-label"><label for="inputTagStatus">Status</label></div>
            <div class="custom-input-element">
              <select name="tag_status" id="tag_status" class="form-control select2" style="width: 100%;">
                <option value="1">Enable</option>
                <option value="0">Disable</option>
              </select>
            </div>
          </div>
        </div>     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default attachtopost create-tag">Create</button>
        <button type="button" class="btn btn-default attachtopost" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-12">
    <div class="box">
      <div class="box-body">
        <div id="table_search_option">          

        </div>    
        <table class="table table-bordered admin-data-table admin-data-list">
          <thead class="thead-dark">
            <tr>
              <th>Name</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>

          <tbody>
            @foreach ($brand as $b)
            <tr>
                <td>{!! $b->name_brand !!}</td>

                @if($b->status == 1)
                  <td>Enable</td>
                @else
                  <td>Disable</td>
                @endif

                <td>
                  <div class="btn-group">
                    <button class="btn btn-success btn-flat" type="button">{!! trans('admin.action') !!}</button>
                    <button data-toggle="dropdown" class="btn btn-success btn-flat dropdown-toggle" type="button">
                      <span class="caret"></span>
                      <span class="sr-only">Toggle Dropdown</span>
                    </button>

                    <ul role="menu" class="dropdown-menu">
                      <li><a href="#" class="edit-data" data-track_name="tag_list" data-id="{{ $b->id }}"><i class="fa fa-edit"></i>Edit</a></li>

                      <li>
                        <a class="remove-selected-data-from-list" data-track_name="tag_list" data-id="{{ $b->id }}" href="#">
                          <i class="fa fa-remove"></i>
                          Delete
                        </a>
                      </li>

                    </ul>

                  </div>
                </td>

              </tr>
            @endforeach
          </tbody>

          <tfoot class="thead-dark">
            <tr>
              <th>Name</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </tfoot>
        </table>
        <br>  

        <div class="products-pagination"></div>  

      </div>
    </div>
  </div>
</div>
<div class="eb-overlay"></div>
<div class="eb-overlay-loader"></div>

<input type="hidden" name="hf_from_model" id="hf_from_model" value="">
<input type="hidden" name="hf_update_id" id="hf_update_id" value="">
@endsection