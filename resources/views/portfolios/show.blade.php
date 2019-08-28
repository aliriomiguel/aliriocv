@extends('master')
@section('content')
<div class="card mb-3">
    <div class="card-header">
        <h2>{{$portfolio->name}}</h2>
    </div>
    <div class="card-body">
        <div>
            <label for="description">Description:</label>
            <p>
                {{$portfolio->description}}
            </p>
        </div>
        <div>
            <label for="website">URL/Website:</label>
            <br>
            <a href="{{$portfolio->website}}" target="_blank">{{$portfolio->website}}</a>
        </div>
        <br>
        <div>
            <label for="picture">Picture:</label>
            <br>
            <img src="/img/portfolio_pictures/{{$portfolio->picture}}" width="300px" alt="portfolio_image">
        </div>
        @if($portfolio->picture2)
        <div>
            <label for="picture">Picture:</label>
            <br>
            <img src="/img/portfolio_pictures/{{$portfolio->picture2}}" width="300px" alt="portfolio_image">
        </div>
        @endif
        @if($portfolio->picture3)
        <div>
            <label for="picture">Picture:</label>
            <br>
            <img src="/img/portfolio_pictures/{{$portfolio->picture3}}" width="300px" alt="portfolio_image">
        </div>
        @endif
    </div>
</div>
@stop