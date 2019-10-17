@extends('master')
@section('content')
<div class="card mb-3">
    <div class="card-header">
        <h2>{{$post->title}}</h2>
    </div>
    <div class="card-body">
        <p>
            {!!$post->content!!}
        </p>
        
        <div>
            <span>Category:</span> {{$post->category->name}}    
        </div>
        <div>
            <span>Author:</span> {{$post->author}}    
        </div>
        <div>
            <span>Publisher:</span> {{$post->user->name}}    
        </div>
        <div>
            <span>Date:</span> {{$post->created_at->formatLocalized('%d %B %Y %I:%M')}}{{$post->created_at->format('a')}}    
        </div>
        <div>
            <label for="picture">Picture:</label>
            <br>
            <img src="/storage/img/posts_pictures/{{$post->picture}}" style="width:100%;" alt="posts_image">
        </div>
        @if($post->picture2)
        <div>
            <label for="picture">Picture:</label>
            <br>
            <img src="/storage/img/posts_pictures/{{$post->picture2}}" style="width:100%;" alt="posts_image">
        </div>
        @endif

    </div>
</div>
@stop