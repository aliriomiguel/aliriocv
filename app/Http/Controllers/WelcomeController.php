<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Portfolio;
use App\Quotes;
use App\About;
use App\Service;

class WelcomeController extends Controller
{
    public static function index(){
        $posts = new Post;
        $about = new About;
        $services = new Service;
        $portfolio = new Portfolio;

        $posts = Post::all();
        $about = About::all();
        $portfolio = Portfolio::all();
        $services = Service::all();
        //dd($portfolio);
        return view('welcome', compact('posts','about','portfolio','services'));
    }
    //
    public function showLandingPost(Post $post){
        return view('landingPosts.show', compact('post'));
    }
}
