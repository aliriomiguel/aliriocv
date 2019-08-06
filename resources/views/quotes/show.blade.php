@extends('master')
@section('content')
<div class="card">
    <div class="card-body">
        <h2>"{{$quote->quote}}"</h2>
        <p>
            {{$quote->author}}
        </p>
    </div>
</div>
@stop