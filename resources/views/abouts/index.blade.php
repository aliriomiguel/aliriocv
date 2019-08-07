@extends('master')

@section('content')
        <h1>All About Texts</h1>
        <div class="card mt-4">
            <div class="card-body">
                <table class="table table-striped text-nowrap table-responsive-lg">
                    <thead>
                        <tr>
                            <th>
                                Text
                            </th>
                            <th>
                                Show on Landing Page
                            </th>
                            <th>
                                Actions
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($abouts as $about)
                        <tr>
                            <td>
                                <a href="{{route('abouts.show', $about->id)}}">
                                    {{ str_limit($about->about, $limit = 40, $end = '...') }}
                                    {{-- {{$about->about}} --}}    
                                </a>
                            </td>
                            <td>
                                <input type="checkbox" name="active_text" id="active_text">
                            </td>
                            <td>
                                <a href="{{route('abouts.edit', $about->id)}}" class="btn btn-info">Edit</a>
                                <form class="d-inline-block" onsubmit="return confirm('Are you sure you want to delete this post?')" action="{{route('abouts.destroy', $about->id)}}" method="post">
                                    @csrf
                                    @method('delete')
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <div class="mt-4">
            {{$abouts->links()}}
        </div>
@endsection