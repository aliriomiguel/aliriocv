@extends('master')
@section('content')
<h2 class="my-3">Update post</h2>
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
<form action="{{route('posts.update', $post->id)}}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="form-group">
        <label for="title">Title</label>
        <input name="title" id="title" class="form-control" value="{{$post->title}}">
    </div>
    <div class="form-group">
        <label for="content">Content</label>
        <textarea name="content" id="content" cols="30" rows="10" class="form-control">{{$post->content}}</textarea>
    </div>
    <div class="form-group">
        <label for="author">Author</label>
        <input name="author" id="author" class="form-control" value="{{$post->author}}">
    </div>
    <div class="form-group">
        <label for="category">Category</label>
        <select name="category" id="category">
            @foreach($categories as $category)
                <option name="category" value="{{$category->id}}" @if($category->id == $post->category->id) selected @endif>{{$category->name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label>Current Picture</label>
        <img class="avatar" src="/img/posts_pictures/{{$post->picture}}" alt="post_image">
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
        <img class="avatar" src="/img/posts_pictures/{{$post->picture2}}" alt="post_image">
    </div>
    <div class="form-group">
        <label>Change Picture2</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="picture2" name="picture2">
            <label class="custom-file-label" for="picture2">Choose File</label>
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-outline-info">Update post</button>
    </div>
</form>
@endsection