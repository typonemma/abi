@extends('partials.main')
@section('navbar')
    <li class="active">
        <a href="admin" class="nav-link">Payment Method</a>
    </li>
@endsection
@section('content')  
<div class="empty-space col-xs-b35 col-md-b70"></div>
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="h4">Payment Method</div>
                <div class="empty-space col-xs-b30"></div>
                
                <div class="row">
                    <table class="cart-table">
                        <tr>
                            <th>Title</th>
                            <th>Nomor Rekening</th>
                            <th>Keterangan</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        @foreach ($AdminPaymentMethod as $apm)
                            <tr>
                                <td>{{ $apm->title }}</td>
                                <td>{{ $apm->nomor_rekening }}</td>
                                <td>{{ $apm->content }}</td>
                                <td>
                                    <a class="button size-2 style-3" href="admin/{{ $apm->id }}/edit">
                                        <span class="button-wrapper">
                                            <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}"></span>
                                            <span class="text"> Edit </span>
                                        </span>
                                    </a>
                                </td>
                                <td>

                                    <form action="admin/{{ $apm->id }}" method="POST">
                                        @csrf
                                        @method('delete')                                        
                                        <span class="button size-2 style-3">
                                            <input type="submit" Value="Delete">                                                
                                                <span class="button-wrapper"> 
                                                    <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}"></span>
                                                    <span class="text"> Delete </span>                                             
                                                </span>
                                        </span>
                                    </form>
                                    
                                </td>
                            </tr>
                        @endforeach
                    </table>
                </div>
                <div class="empty-space col-xs-b20"></div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="empty-space col-xs-b20"></div>
                        <a class="button size-2 style-3" href="{{ url('admin/create') }}">
                            <span class="button-wrapper">
                                <span class="icon"><img src="{{URL::asset('public/custom/img/icon-4.png')}}"></span>
                                <span class="text">
                                    Add                               
                                </span>
                            </span>
                        </a>   
                    </div>                    
                </div>

            </div>
        </div>
    </div>
<div class="empty-space col-xs-b35 col-md-b70"></div>

<script>
    swal("Halo");
</script>
@endsection

