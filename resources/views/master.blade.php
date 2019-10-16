<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" href="{{ asset('/img/favicon.png') }}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Document</title>
    <link rel="stylesheet" href="/css/template.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/switch.css">
    <link href="{{ asset('assets/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">

    
</head>
<body>
    {{-- Menu --}}



    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">
                Alirio Resume
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <button class="navbar-toggler navbar-light bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon text-white"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    {{-- <li class="nav-item p-1">
                        <a href="/" class="nav-link">Landing Page</a>
                    </li> --}}
                    <li class="nav-item p-1">
                        <a href="{{route('dashboard.index')}}" class="nav-link"><i class="fas fa-home"></i></a>
                    </li>
                    <li class="nav-item p-1 dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Posts
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{route('posts.index')}}">Show Posts</a>
                        <a class="dropdown-item" href="{{route('posts.create')}}">Create Post</a>
                        {{-- <div class="dropdown-divider"></div> --}}
                        </div>
                    </li>

                    <li class="nav-item p-1 dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{route('categories.index')}}">Show Category</a>
                        <a class="dropdown-item" href="{{route('categories.create')}}">Create Category</a>
                        </div>
                    </li>

                    <li class="nav-item p-1 dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        About Texts
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{route('abouts.index')}}">Show About Texts</a>
                        <a class="dropdown-item" href="{{route('abouts.create')}}">Create About Text</a>
                        </div>
                    </li>

                    <li class="nav-item p-1 dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Services
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{route('services.index')}}">Show Services</a>
                        <a class="dropdown-item" href="{{route('services.create')}}">Add Service</a>
                        </div>
                    </li>

                    <li class="nav-item p-1 dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Portfolio
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{route('portfolios.index')}}">Show Portfolio</a>
                        <a class="dropdown-item" href="{{route('portfolios.create')}}">Add New Portfolio Entry</a>
                        </div>
                    </li>

                    <li class="nav-item p-1 dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Quotes
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{route('quotes.index')}}">Show Quotes</a>
                        <a class="dropdown-item" href="{{route('quotes.create')}}">Add Quote</a>
                        </div>
                    </li>
                    <li class="nav-item p-1">
                        <a href="{{route('contacts.index')}}" class="nav-link"><i class="fas fa-envelope"></i></a>
                    </li>
                    
                </ul>
                @auth
                <form class="d-inline-block float-right" action="{{route('logout')}}" method="post">
                    @csrf
                    <a style="font-size: 13px;">Logged as {{auth()->user()->name}}</a> | <button class="btn btn-sm btn-secondary">Logout</button>
                </form>
                @else
                <a href="{{route('login')}}" class="btn btn-secondary d-inline-block float-right">Login</a>
                @endauth
            </div>
        </div>
    </nav>
    <br>
        {{-- end menu --}}
    <div class="container-fluid "> 
        <div class="main container">
                @yield('content')
        </div>               
    </div>
    {{-- footer --}}
    <footer id="footer" class="bg-dark text-white mt-0 p-4 text-center">        
            All rights reserved Alirio Aranguren {{date('Y')}}
    </footer>
    
    {{-- end footer --}}
    {{-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> --}}
    <script src="{{asset('/js/jquery-3.4.1.min.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="{{asset('/js/file_name_upload.js')}}"></script>
    <script src="{{asset('/js/aboutShow.js')}}"></script>
    <script src="{{asset('/js/postFeatured.js')}}"></script>
</body>
</html>
