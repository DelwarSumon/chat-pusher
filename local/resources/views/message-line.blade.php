@if($message->from_user == \Auth::user()->id)

    <div class="d-flex justify-content-start mb-4 msg_container base_sent" data-message-id="{{ $message->id }}">
        <div class="img_cont_msg avatar">
            <img src="{{ url('/asset_custom/images/user-avatar.png') }}" class="rounded-circle user_img_msg">
        </div>
        <div class="msg_cotainer messages msg_sent">
            {!! $message->content !!}
            <span class="msg_time"><time datetime="{{ date("Y-m-dTH:i", strtotime($message->created_at->toDateTimeString())) }}">{{ $message->fromUser->name }} • {{ $message->created_at->diffForHumans() }}</time></span>
        </div>
    </div>

@else
    <div class="d-flex justify-content-end mb-4 msg_container base_receive" data-message-id="{{ $message->id }}">
        <div class="msg_cotainer_send messages msg_receive">
            {!! $message->content !!}
            <span class="msg_time_send"><time datetime="{{ date("Y-m-dTH:i", strtotime($message->created_at->toDateTimeString())) }}">{{ $message->fromUser->name }} • {{ $message->created_at->diffForHumans() }}</time></span>
        </div>
        <div class="img_cont_msg avatar">
            <img src="{{ url('/asset_custom/images/user-avatar.png') }}" class="rounded-circle user_img_msg">
        </div>
    </div>

@endif