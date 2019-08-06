@extends('master')
@section('content')
<div class="card">
    {{-- <div class="card-header">
        <h2>{{$about->about}}</h2>
    </div> --}}
    <div class="card-body">
        <p>
            {{$about->about}}
        </p>
    </div>
</div>
@stop