@extends('layouts.app')

@section('content')

    <div class="row h-100 float-left">
        <div class="col-md-12 col-xl-12 chat">
            <div class="card mb-sm-3 mb-md-0 contacts_card">
                <div class="card-header">
                    <div class="input-group">
                        <input type="text" placeholder="Search..." name="" class="form-control search">
                        <div class="input-group-prepend">
                            <span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
                        </div>
                    </div>
                </div>
                <div class="card-body contacts_body">
                    @if($users->count() > 0)
                    <ul class="contacts" id="users">
                        @foreach($users as $user)
                        <li>
                            <a href="javascript:void(0);" class="chat-toggle" data-id="{{ $user->id }}" data-user="{{ $user->name }}">
                                <div class="d-flex bd-highlight">
                                    <div class="img_cont">
                                        <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                                        <span class="online_icon offline"></span>
                                    </div>
                                    <div class="user_info">
                                        <span>{{ $user->name }}</span>
                                        <p>{{ $user->name }} is online</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        @endforeach
                    </ul>
                    @else
                        <p>No users found! try to add a new user using another browser by going to <a href="{{ url('register') }}">Register page</a></p>
                    @endif
                </div>
                <div class="card-footer"></div>
            </div>
        </div>

        <div class="chat">
            @include('chat-box')

            <input type="hidden" id="current_user" value="{{ \Auth::user()->id }}" />
            <input type="hidden" id="pusher_app_key" value="{{ env('PUSHER_APP_KEY') }}" />
            <input type="hidden" id="pusher_cluster" value="{{ env('PUSHER_APP_CLUSTER') }}" />

        </div>



    </div>


@stop

@section('script')
    <script src="https://js.pusher.com/4.1/pusher.min.js"></script>
    <script src="{{ url('/asset_custom/js/chat.js') }}"></script>

@stop