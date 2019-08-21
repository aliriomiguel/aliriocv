@extends('welcomemaster')
@section('welcome_content')
<section class="page-section portfolio" id="portfolio">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>

        <!-- Icon Divider -->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon">
            <i class="fas fa-star"></i>
            </div>
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
                    <img class="img-fluid" src="img/portfolio_pictures/{{$pentry->picture}}" alt="portfolioPicture" style="width:100%;">
                </div>
            </div>
            @endforeach
        </div>
        
    </div>
</section>

<section id="contact">
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
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-xl"><i class="fas fa-envelope"></i> Send</button>
            </div>
        </form>
    </div>
</section>
@endsection