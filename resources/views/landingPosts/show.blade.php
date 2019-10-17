@extends('welcomemaster')
@section('welcome_content')

<div class="container">
    <div class="row">
        <div class="col-lg-8">
            <h1 class="mt-4">{{$post->title}}</h1>

            <!-- Author -->
            <p class="lead">
            by
            <a href="/">{{$post->author}}</a>
            </p>

            <hr>

            <!-- Date/Time -->
            <p>Posted on {{$post->updated_at->formatLocalized('%d %B %Y')}}</p>

            <hr>

            <img class="img-fluid rounded" src="/storage/img/posts_pictures/{{$post->picture}}" alt="">

            <hr>

            <p>{{$post->content}}</p>
            @if($post->picture2)
                <img class="img-fluid rounded" src="/storage/img/posts_pictures/{{$post->picture2}}" alt="">
            @endif
            <hr>

            <br>
            </div>
    </div>
</div>

@endsection