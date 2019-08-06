<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/switch.css">
    <link href="{{ asset('assets/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
</head>
<body>
    {{-- Menu --}}
    <div class="bg-info text-white p-5 mb-3">
            <nav class="navbar navbar-expand-lg bg-info text-white">
                <button class="navbar-toggler navbar-light bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon text-white"></span>
                </button>
                
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item p-1">
                            <a href="/" class="btn btn-secondary">Landing Page</a>
                        </li>
                        <li class="nav-item p-1">
                            <a href="{{route('dashboard.index')}}" class="btn btn-secondary">Home</a>
                        </li>
                        <li class="nav-item p-1 dropdown">
                            <button class="btn btn-secondary dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Posts
                            </button>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('posts.index')}}">Show Posts</a>
                            <a class="dropdown-item" href="{{route('posts.create')}}">Create Post</a>
                            {{-- <div class="dropdown-divider"></div> --}}
                            </div>
                        </li>

                        <li class="nav-item p-1 dropdown">
                            <button class="btn btn-secondary dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            About Texts
                            </button>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('abouts.index')}}">Show About Texts</a>
                            <a class="dropdown-item" href="{{route('abouts.create')}}">Create About Text</a>
                            </div>
                        </li>

                        <li class="nav-item p-1 dropdown">
                            <button class="btn btn-secondary dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Services
                            </button>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('services.index')}}">Show Services</a>
                            <a class="dropdown-item" href="{{route('services.create')}}">Add Service</a>
                            </div>
                        </li>

                        <li class="nav-item p-1 dropdown">
                            <button class="btn btn-secondary dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Portfolio
                            </button>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('portfolios.index')}}">Show Portfolio</a>
                            <a class="dropdown-item" href="{{route('portfolios.create')}}">Add New Portfolio Entry</a>
                            </div>
                        </li>

                        <li class="nav-item p-1 dropdown">
                            <button class="btn btn-secondary dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Quotes
                            </button>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('quotes.index')}}">Show Quotes</a>
                            <a class="dropdown-item" href="{{route('quotes.create')}}">Add Quote</a>
                            </div>
                        </li>
                        
                    </ul>
                    @auth
                    <form class="d-inline-block float-right" action="{{route('logout')}}" method="post">
                        @csrf
                        <a>Logged as {{auth()->user()->name}} | </a><button class="btn btn-secondary">Logout</button>
                    </form>
                    @else
                    <a href="{{route('login')}}" class="btn btn-secondary d-inline-block float-right">Login</a>
                    @endauth
                </div>
            </nav>
        
        {{-- <a href="/" class="btn btn-secondary">Landing Page</a>
        
        <a href="{{route('dashboard.index')}}" class="btn btn-secondary">Home</a>

        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">Posts
            <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <a class="dropdown-item" href="{{route('posts.index')}}">Show Posts</a>
                <a class="dropdown-item" href="{{route('posts.create')}}">New Post</a>
            </ul>
        </div>
        
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">About Text
            <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <a class="dropdown-item" href="{{route('abouts.index')}}">Show About Us Texts</a>
                <a class="dropdown-item" href="{{route('abouts.create')}}">New About Us Text</a>
            </ul>
        </div>

        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">Services
            <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <a class="dropdown-item" href="{{route('services.index')}}">Show Services</a>
                <a class="dropdown-item" href="{{route('services.create')}}">New Service</a>
            </ul>
        </div>
              
        <a href="{{route('abouts.create')}}" class="btn btn-secondary">Create About Us Text</a>
        <a href="{{route('services.create')}}" class="btn btn-secondary">Create Service</a>
        <a href="{{route('quotes.create')}}" class="btn btn-secondary">Create New Quote</a>
        <a href="{{route('portfolios.create')}}" class="btn btn-secondary">Create New Portfolio Entry</a>
        @auth
        <form class="d-inline-block float-right" action="{{route('logout')}}" method="post">
            @csrf
            <a>Logged as {{auth()->user()->name}} | </a><button class="btn btn-secondary">Logout</button>
        </form>
        @else
        <a href="{{route('login')}}" class="btn btn-secondary d-inline-block float-right">Login</a>
        @endauth --}}
    </div>
    {{-- end menu --}}
    <div class="container">        
        @yield('content')
    </div>
    {{-- footer --}}
    <div class="bg-dark text-white p-4 text-center">
        All rights reserved Alirio Aranguren {{date('Y')}}
    </div>
    {{-- end footer --}}
</body>
</html>