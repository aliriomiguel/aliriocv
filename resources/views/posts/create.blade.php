@extends('master')
@section('content')
<h2 class="my-3">Add a post</h2>
@if($errors->all())
    <div class="alert alert-danger">
        @foreach ($errors->all() as $error)
        <li>{{$error}}</li>
        @endforeach
    </div>
@endif
<form action="{{route('posts.store')}}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" name="title" id="title" class="form-control">
    </div>
    <div class="form-group">
        <label for="content">Content</label>
        <textarea name="content" id="content" cols="30" rows="10" class="form-control"></textarea>
    </div>
    <div class="form-group">
        <label for="author">Author</label>
        <input type="text" name="author" id="author" class="form-control">
    </div>
    <div class="form-group">
        <label for="category">Category</label>
        <select name="category" id="category">
            @foreach($categories as $category)
                <option name="category" value="{{$category->id}}">{{$category->name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label>Picture</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="picture" name="picture">
            <label class="custom-file-label" for="picture">Choose File</label>
        </div>
    </div>
    <div class="form-group">
        <label>Picture 2</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="picture2" name="picture2">
            <label class="custom-file-label" for="picture2">Choose File</label>
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-outline-info">Add a post</button>
    </div>
</form>
@endsection