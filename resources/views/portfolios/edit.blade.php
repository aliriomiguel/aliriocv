@extends('master')
@section('content')
<h2 class="my-3">Update portfolio</h2>
@if($errors->all())
    <div class="alert alert-danger">
        @foreach ($errors->all() as $error)
        <li>{{$error}}</li>
        @endforeach
    </div>
@endif

@if(session()->has('message'))
    <div class="alert alert-success">
        {{session()->get('message')}}
    </div>
@endif
<form action="{{route('portfolios.update', $portfolio->id)}}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    
    <div class="form-group">
        <label for="name">Name</label>
        <input name="name" id="name" class="form-control" value="{{$portfolio->name}}">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <textarea name="description" id="description" cols="30" rows="10" class="form-control">{{$portfolio->description}}</textarea>
    </div>
    <div class="form-group">
        <label for="website">URL/Website</label>
        <input name="website" id="website" class="form-control" value="{{$portfolio->website}}">
    </div>
    <div class="form-group">
        <label>Current Picture</label>
        <img class="avatar" src="/storage/img/portfolio_pictures/{{$portfolio->picture}}" alt="portfolio_image">
    </div>
    <div class="form-group">
        <label>Change Picture</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="picture" name="picture">
            <label class="custom-file-label" for="picture">Choose File</label>
        </div>
    </div>
    <div class="form-group">
        <label>Current Picture2</label>
        <img class="avatar" src="/storage/img/portfolio_pictures/{{$portfolio->picture2}}" alt="portfolio_image">
    </div>
    <div class="form-group">
        <label>Change Picture2</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="picture2" name="picture2">
            <label class="custom-file-label" for="picture2">Choose File</label>
        </div>
    </div>
    <div class="form-group">
        <label>Current Picture3</label>
        <img class="avatar" src="/storage/img/portfolio_pictures/{{$portfolio->picture3}}" alt="portfolio_image">
    </div>
    <div class="form-group">
        <label>Change Picture3</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="picture3" name="picture3">
            <label class="custom-file-label" for="picture3">Choose File</label>
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-outline-info">Update portfolio</button>
    </div>
</form>
@endsection