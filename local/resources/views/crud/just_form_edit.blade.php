@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    
                    <div class="post__content">
                        <form method="POST" action="{{url('/just_form_edit/'.$data->id)}}" accept-charset="UTF-8">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 col-sm-12 col-12">
                                    <div class="form-group">
                                        <label for="contact_name" class="control-label required">Name</label>
                                        <input type="text" class="form-control" name="name" value="{{$data->name}}" id="contact_name" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-12">
                                    <div class="form-group">
                                        <label for="contact_email" class="control-label required">Email</label>
                                        <input type="email" class="form-control" name="email" value="{{$data->email}}" id="contact_email" placeholder="Email">
                                    </div>
                                </div>
                                
                                <div class="col-md-6 col-sm-12 col-12">
                                    <div class="form-group">
                                        <label for="contact_phone" class="control-label">Phone</label>
                                        <input type="text" class="form-control" name="phone" value="{{$data->phone}}" id="contact_phone" placeholder="Phone">
                                    </div>
                                </div>
                                
                                <div class="col-md-12 col-sm-12 col-12">
                                    <div class="form-group text-right">
                                        <button type="submit" class="btn btn-primary cyan text">Send message</button>
                                    </div>
                                </div>

                            </div>
                        
                        </form>
                        
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
