@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    {{ __('Dashboard') }}

                    <a href="{{url('/just_form')}}" class="float-right btn btn-primary">Add</a>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    
                    <div class="post__content">
                        <table class="table table-striped table-bordered text-white">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($list as $key => $value) {?>
                                <tr>
                                    <td><?php echo $value->name; ?></td>
                                    <td><?php echo $value->email; ?></td>
                                    <td><?php echo $value->phone; ?></td>
                                    <td> 
                                        <a href="{{url('/just_form_edit/'.$value->id)}}" class="btn btn-primary">Edit</a> 
                                        <a href="{{url('/just_form_delete/'.$value->id)}}" class="btn btn-danger">Delete</a> 
                                    </td>
                                </tr>
                                <?php } ?>

                            </tbody>
                        </table>
                        
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
