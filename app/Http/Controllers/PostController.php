<?php

namespace App\Http\Controllers;

use App\Post;
use App\Category;
use App\User;
use Illuminate\Http\Request;

class PostController extends Controller
{

    public function __construct(){
        $this->middleware('auth')->except(['index','show']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('created_at','desc')->paginate(10);
        $users = User::all();
        $categories = Category::all();
        return view('posts.index', compact('posts','users','categories'));
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('posts.create', compact('categories'));
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title' => 'required|min:3',
            'content' => 'required|min:10',
            'author' => 'min:3',
            'category' => 'required',
            'picture' => 'max:10240|mimes:png,jpg,jpeg'
        ]);
        $pictureFile = $request->file('picture');
        $fileNameWithExt = $pictureFile->getClientOriginalName();
        $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
        $extension = $request->file('picture')->getClientOriginalExtension();
        $fileNameToStore = $filename.'_'.time().'.'.$extension;

        $pictureFile2 = $request->file('picture2');
        if($pictureFile2){
            /* $pictureName2 = $pictureFile2->getClientOriginalName(); */
            $fileNameWithExt2 = $pictureFile2->getClientOriginalName();
            $filename2 = pathinfo($fileNameWithExt2, PATHINFO_FILENAME);
            $extension2 = $request->file('picture2')->getClientOriginalExtension();
            $fileNameToStore2 = $filename2.'_'.time().'.'.$extension2;
        }
        else{
            $fileNameToStore2 = null;
        }
        
        Post::create([
            'title' => $request->title,
            'content' => $request->content,
            'author' => $request->author,
            'featured' => 0,
            'category_id' => $request->category,
            'user_id' => auth()->user()->id,
            'picture' => $fileNameToStore,
            'picture2' => $fileNameToStore2
        ]);
        $path = $request->file('picture')->storeAs('/public/img/posts_pictures', $fileNameToStore);
        //$pictureFile->move(base_path().'/public/img/portfolio_pictures',$pictureName);
        if($pictureFile2){
            $path = $request->file('picture2')->storeAs('/public/img/posts_pictures', $fileNameToStore2);
            //$pictureFile2->move(base_path().'/public/img/portfolio_pictures',$pictureName2);
        }
        /* $pictureFile->move(base_path().'/public/img/posts_pictures',$pictureName);
        if($pictureFile2){
            $pictureFile2->move(base_path().'/public/img/posts_pictures',$pictureName2);
        } */
        
        return redirect(route('posts.index'));
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('posts.show',compact('post'));
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        $categories = Category::all();
        return view('posts.edit', compact('post','categories'));
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $post->title = $request->title;
        $post->content = $request->content;

        if($pictureFile = $request->file('picture')){
            $fileNameWithExt = $pictureFile->getClientOriginalName();
            $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('picture')->getClientOriginalExtension();
            $fileNameToStore = $filename.'_'.time().'.'.$extension;
            if($post->picture != $fileNameToStore || $fileNameToStore != null){

                $post->picture = $fileNameToStore;
                $path = $request->file('picture')->storeAs('/public/img/posts_pictures', $fileNameToStore);
            }
        }

        if($pictureFile2 = $request->file('picture2')){
            $fileNameWithExt2 = $pictureFile2->getClientOriginalName();
            $filename2 = pathinfo($fileNameWithExt2, PATHINFO_FILENAME);
            $extension2 = $request->file('picture2')->getClientOriginalExtension();
            $fileNameToStore2 = $filename2.'_'.time().'.'.$extension2;
            if($post->picture2 != $fileNameToStore2 || $fileNameToStore2 != null){

                $post->picture2 = $fileNameToStore2;
                $path = $request->file('picture')->storeAs('/public/img/posts_pictures', $fileNameToStore2);
            }
        }

        $post->save();
        session()->flash('message','Your post have been updated');
        return redirect()->back();
        //
    }

    public function setFeatured($id){
        $post = Post::find($id);

        $post->featured = 1;
        $saved = $post->save();

        return response()->json([
            'success' => $saved
        ]);
    }

    public function unsetFeatured($id){
        $post = Post::find($id);

        $post->featured = 0;
        $saved = $post->save();

        return response()->json([
            'success' => $saved
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $post->delete();
        return redirect(route('posts.index'));
        //
    }
}
