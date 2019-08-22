<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        
        <title>Alirio CV</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        
        {{-- <link rel="stylesheet" href="/css/bootstrap.css"> --}}        
        <link href="{{ asset('assets/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="/css/freelancer.min.css">
        <style>
            .center-image{
                display:block;
                margin:auto;
            }
        </style>
    </head>
    <body id="page-top">
            <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
                    <div class="container">
                      <a class="navbar-brand js-scroll-trigger" href="#page-top">Alirio's Resume</a>
                      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        Menu
                        <i class="fas fa-bars"></i>
                      </button>
                      <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ml-auto">
                          <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Portfolio</a>
                          </li>
                          <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">About</a>
                          </li>
                          <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </nav>
            
                {{-- @if (Route::has('login'))
                    <div class="top-right links">
                        @auth
                            <a href="{{ url('/home') }}">Home</a>
                        @else
                            <a href="{{ route('login') }}">Login</a>

                            @if (Route::has('register'))
                                <a href="{{ route('register') }}">Register</a>
                            @endif
                        @endauth
                    </div>
                @endif --}}

            <!-- Masthead -->
            <header class="masthead bg-primary text-white text-center">
                    <div class="container d-flex align-items-center flex-column">
                
                    <!-- Masthead Avatar Image -->
                    <img class="masthead-avatar mb-5" src="img/avataaars.svg" alt="">
                
                    <!-- Masthead Heading -->
                    <h1 class="masthead-heading text-uppercase mb-0">Alirio Aranguren</h1>
                
                    <!-- Icon Divider -->
                    <div class="divider-custom divider-light">
                        <div class="divider-custom-line"></div>
                        <div class="divider-custom-icon">
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="divider-custom-line"></div>
                    </div>
                
                    <!-- Masthead Subheading -->
                    <p class="masthead-subheading font-weight-light mb-0">Web Developer</p>
                
                    </div>
            </header>

            <div class="container-fluid "> 
                <div class="main container">
                        @yield('welcome_content')
                </div>               
            </div>

            {{-- <div class="content">
                <div class="title m-b-md">
                    Alirio Aranguren 
                </div>

                <div class="links">
                    <a href="https://laravel.com/docs">Docs</a>
                    <a href="https://laracasts.com">Laracasts</a>
                    <a href="https://laravel-news.com">News</a>
                    <a href="https://blog.laravel.com">Blog</a>
                    <a href="https://nova.laravel.com">Nova</a>
                    <a href="https://forge.laravel.com">Forge</a>
                    <a href="https://github.com/laravel/laravel">GitHub</a>
                </div>
            </div> --}}

    <!-- Bootstrap core JavaScript -->
    <script src="/assets/jquery/jquery.min.js"></script>
    <script src="/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/assets/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.js"></script>
    </body>
</html>