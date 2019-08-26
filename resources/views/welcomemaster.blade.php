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
            .profile-pic{
              border-radius: 50%;
            }
            .back-img{
              background-image: url('/img/backgrounds/164622.jpg');
              background-size: cover;
              background-position: center;
              background-repeat: no-repeat;
            }
            .name-prof{
              width:75%;
              background-color: rgba(44,62,80, 0.8);
            }
            .name-featured{
              width:25%;
              /* height:30%; */
              background-color: rgba(44,62,80, 0.8);
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
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#skills">Skills</a>
              </li>
              <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#posts">Blog</a>
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
      <header class="masthead {{-- bg-primary --}} back-img text-white text-center">
        <div class="container d-flex align-items-center flex-column">
    
        <!-- Masthead Avatar Image -->
        <img class="masthead-avatar mb-5 profile-pic" src="img/profile300x300.png" alt="">
    
        <!-- Masthead Heading -->
        <div class="name-prof">
            <h1 class="masthead-heading text-uppercase mb-0">Alirio Aranguren</h1>
    
            <!-- Icon Divider -->
            <div class="divider-custom divider-light">
                {{-- <div class="divider-custom-line"></div>
                <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                </div> --}}
                <div class="divider-custom-line"></div>
                <div class="divider-custom-line"></div>
                <div class="divider-custom-line"></div>
            </div>
        
            <!-- Masthead Subheading -->
            <p class="masthead-subheading font-weight-light mb-0"> <b>Web Developer</b> </p>
        </div>
        
    
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
      <!-- Footer -->
      <footer class="footer text-center">
        <div class="container">
          <div class="row">

            <!-- Footer Location -->
            <div class="col-lg-4 mb-5 mb-lg-0">
              <h4 class="text-uppercase mb-4">Location</h4>
              <p class="lead mb-0">Jesus Maestro #33
                <br>Mirador Norte, Santo Domingo
                <br>Dominican Republic, PC 10114</p>
            </div>

            <!-- Footer Social Icons -->
            <div class="col-lg-4 mb-5 mb-lg-0">
              <h4 class="text-uppercase mb-4">Around the Web</h4>
              <a class="btn btn-outline-light btn-social mx-1" href="https://www.facebook.com/aliriomiguel" target="_blank">
                <i class="fab fa-fw fa-facebook-f"></i>
              </a>
              <a class="btn btn-outline-light btn-social mx-1" href="https://www.twitter.com/alirio_miguel" target="_blank">
                <i class="fab fa-fw fa-twitter"></i>
              </a>
              <a class="btn btn-outline-light btn-social mx-1" href="#" target="_blank">
                <i class="fab fa-fw fa-linkedin-in"></i>
              </a>
              {{-- <a class="btn btn-outline-light btn-social mx-1" href="#">
                <i class="fab fa-fw fa-dribbble"></i>
              </a> --}}
            </div>

            <!-- Footer About Text -->
            {{-- <div class="col-lg-4">
              <h4 class="text-uppercase mb-4">About Freelancer</h4>
              <p class="lead mb-0">Freelance is a free to use, MIT licensed Bootstrap theme created by
                <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
            </div> --}}

          </div>
        </div>
      </footer>

      <!-- Copyright Section -->
      <section class="copyright py-4 text-center text-white">
        <div class="container">
          <small>Copyright &copy; Alirio Aranguren 2019</small>
        </div>
      </section>

    <!-- Bootstrap core JavaScript -->
    <script src="/assets/jquery/jquery.min.js"></script>
    <script src="/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/assets/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.js"></script>
    </body>
</html>