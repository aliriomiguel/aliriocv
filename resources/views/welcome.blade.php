@extends('welcomemaster')
@section('welcome_content')

<section class="page-section portfolio" id="portfolio">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>

        <!-- Icon Divider -->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
        </div>
        <div class="row">
            @foreach($portfolio as $pentry)
                <div class="col-md-6 col-lg-4">
                    <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal{{$pentry->id}}">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white">
                                <i class="fas fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid center-image" src="img/portfolio_pictures/{{$pentry->picture}}" style="width:100%;" alt="portfolioPicture">
                    </div>
                </div>

                <!-- Portfolio Modal -->
                <div class="portfolio-modal modal fade" id="portfolioModal{{$pentry->id}}" tabindex="-1" role="dialog" aria-labelledby="portfolioModal{{$pentry->id}}Label" aria-hidden="true">
                    <div class="modal-dialog modal-xl" role="document">
                    <div class="modal-content">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">
                            <i class="fas fa-times"></i>
                        </span>
                        </button>
                        <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title -->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">{{$pentry->name}}</h2>
                                <!-- Icon Divider -->
                                <div class="divider-custom">
                                <div class="divider-custom-line"></div>
                                <div class="divider-custom-line"></div>
                                <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image -->
                                <img class="img-fluid rounded mb-5" src="img/portfolio_pictures/{{$pentry->picture}}" alt="portfolioPicture">
                                <!-- Portfolio Modal - Text -->
                                <p class="mb-5 text-left">{!! $pentry->description !!}</p>
                                {{-- <button class="btn btn-info" href="{{$pentry->website}}">{{$pentry->website}}</button> --}}
                                <p><a href="https://{{$pentry->website}}" target="_blank">{{$pentry->website}}</a></p>
                                @if($pentry->picture2)
                                <img class="img-fluid rounded mb-5" src="img/portfolio_pictures/{{$pentry->picture2}}">
                                @endif
                                @if($pentry->picture3)
                                <img class="img-fluid rounded mb-5" src="img/portfolio_pictures/{{$pentry->picture3}}">
                                @endif
                                <button class="btn btn-primary" href="#" data-dismiss="modal">
                                <i class="fas fa-times fa-fw"></i>
                                Close Window
                                </button>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                <!-- End Portfolio Modal -->
            @endforeach
        </div>
    </div>
</section>

<section class="page-section about" id="about">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">About Me</h2>
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
        </div>
        <div class="row">
            @foreach($about as $ab)
                @if($ab->active_text == 1)
                    <p class="mb-5 text-center">{!!$ab->about!!}</p>
                @endif    
            @endforeach
        </div>
    </div>
</section>

<section class="page-section skills" id="skills">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Skills</h2>
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
        </div>
        <div class="row">
            @foreach($services as $service)
            <div class="col-md-6 col-lg-4">
                <div class="portfolio-item mx-auto">
                    <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-50 w-50">
                        <div class="portfolio-item-caption-content text-center text-white">
                            <i class="fas fa-plus fa-3x"></i>
                        </div>
                    </div>
                    <img class="img-fluid center-image" src="img/icons/{{$service->icon}}" style="width:50%;">
                    <h2 class="text-center">{{$service->name}}</h2>
                    <p class="text-center">{!!$service->description!!}</p>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

@if($posts->count() > 0)
<section class="page-section" id="posts">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Blog</h2>
        <!-- Icon Divider -->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
        </div>
        <div class="row">
            {{--Featured--}}
            @foreach($posts as $post)
                @if($post->featured == 1)
                <div class="card bg-dark text-white" style="width:100%; margin-bottom:16px;">
                    <img src="img/posts_pictures/{{$post->picture}}" class="card-img" alt="BlogImage{{$post->id}}">
                    <div class="card-img-overlay name-featured">
                        <h2 class="card-title">{{$post->title}}</h2>
                        <p class="card-text ">{{ str_limit($post->content, $limit = 150, $end = '...') }}<br><a class="left" href="/showpost/{{$post->id}}">read more.</a></p>
                        <p class="card-text">Updated at {{$post->updated_at->formatLocalized('%d %B %Y')}}</p>
                    </div>
                </div>
                @endif
            @endforeach
        </div>
        <hr>
        <br>
        <div class="row">
            {{--Normal--}}
            <div class="card-group">
                @foreach($posts as $post)
                    @if($post->featured == 0)
                        <div class="card">
                            <img class="card-img-top" src="img/posts_pictures/{{$post->picture}}" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">{{$post->title}}</h5>
                                <p class="card-text">{{ str_limit($post->content, $limit = 20, $end = '...') }} <a class="left" href="/showpost/{{$post->id}}">read more.</a></p>
                                <p class="card-text"><small class="text-muted">Updated at {{$post->updated_at->formatLocalized('%d %B %Y')}}</small></p>
                            </div>
                        </div>
                    @endif
                @endforeach        
            </div>
        </div>
    </div>   
</section>
@endif
<section class="page-section" id="contact">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact Me</h2>

        <!-- Icon Divider -->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
            <div class="divider-custom-line"></div>
        </div>
        <div class="content col-lg-8 mx-auto">
    
            <form action="{{route('contacts.store')}}"  method="post">
                @csrf
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label for="name">Name</label>
                        <input type="text" name="name" id="name" class="form-control" placeholder="Name">
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" class="form-control" placeholder="Email">
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label for="phone">Phone</label>
                        <input type="phone" name="phone" id="phone" class="form-control" placeholder="Phone">
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls mb-0 pb-2">
                        <label for="content">Text</label>
                        <textarea name="content" id="content" cols="30" rows="5" class="form-control" placeholder="Message"></textarea>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="col-xs-1 text-center">
                        <button type="submit" class="btn btn-primary btn-xl"><i class="fas fa-envelope"></i> Send</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    
</section>
@endsection