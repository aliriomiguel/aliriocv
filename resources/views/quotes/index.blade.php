@extends('master')

@section('content')
        <h1>All Quotes</h1>
        <div class="card mt-4">
            <div class="card-body">
                <table class="table table-striped text-nowrap">
                    <thead>
                        <tr>
                            <th>
                                Quote
                            </th>
                            <th>
                                Author
                            </th>
                            <th>
                                Actions
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($quotes as $quote)
                        <tr>
                            <td>
                                <a href="{{route('quotes.show', $quote->id)}}">
                                    {{ str_limit($quote->quote, $limit = 40, $end = '...') }}
                                    {{-- {{$about->about}} --}}    
                                </a>
                            </td>
                            <td>
                                <a>
                                    {{-- {{ str_limit($quote->quote, $limit = 40, $end = '...') }} --}}
                                    {{$quote->author}} {{$quote->id}}   
                                </a>
                            </td>
                            <td>
                                <a href="{{route('quotes.edit', $quote->id)}}" class="btn btn-info">Edit</a>
                                <form class="d-inline-block" onsubmit="return confirm('Are you sure you want to delete this quote?')" action="{{route('quotes.destroy', $quote->id)}}" method="post">
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
            {{$quotes->links()}}
        </div>
@endsection