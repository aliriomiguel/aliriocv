<?php

namespace App\Http\Controllers;

use App\Portfolio;
use Illuminate\Http\Request;

class PortfolioController extends Controller
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
        $portfolios = Portfolio::orderBy('created_at','desc')->paginate(10);
        return view('portfolios.index',compact('portfolios'));
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('portfolios.create');
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
        //dd($request);
        $this->validate($request,[
            'name' => 'required|min:3',
            'description' => 'required|min:10',
            'website' => 'required|min:10',
            'picture' => 'required|max:10240|mimes:png,jpg,jpeg'
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

        $pictureFile3 = $request->file('picture3');
        if($pictureFile3){
            /* $pictureName2 = $pictureFile2->getClientOriginalName(); */
            $fileNameWithExt3 = $pictureFile3->getClientOriginalName();
            $filename3 = pathinfo($fileNameWithExt3, PATHINFO_FILENAME);
            $extension3 = $request->file('picture3')->getClientOriginalExtension();
            $fileNameToStore3 = $filename3.'_'.time().'.'.$extension3;
        }
        else{
            $fileNameToStore3 = null;
        }
        
        Portfolio::create([
            'name' => $request->name,
            'description' => $request->description,
            'website' => $request->website,
            'picture' => $fileNameToStore,
            'picture2' => $fileNameToStore2,
            'picture3' => $fileNameToStore3
        ]);

        $path = $request->file('picture')->storeAs('/public/img/portfolio_pictures', $fileNameToStore);
        //$pictureFile->move(base_path().'/public/img/portfolio_pictures',$pictureName);
        if($pictureFile2){
            $path = $request->file('picture2')->storeAs('/public/img/portfolio_pictures', $fileNameToStore2);
            //$pictureFile2->move(base_path().'/public/img/portfolio_pictures',$pictureName2);
        }
        if($pictureFile3){
            $path = $request->file('picture3')->storeAs('/public/img/portfolio_pictures', $fileNameToStore3);
            //$pictureFile3->move(base_path().'/public/img/portfolio_pictures',$pictureName3);
        }

        return redirect(route('portfolios.index'));
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function show(Portfolio $portfolio)
    {
        return view('portfolios.show',compact('portfolio'));
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function edit(Portfolio $portfolio)
    {
        return view('portfolios.edit',compact('portfolio'));
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Portfolio $portfolio)
    {
        $portfolio->name = $request->name;
        $portfolio->description = $request->description;
        $portfolio->website = $request->website;

        if($pictureFile = $request->file('picture')){
            $fileNameWithExt = $pictureFile->getClientOriginalName();
            $filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('picture')->getClientOriginalExtension();
            $fileNameToStore = $filename.'_'.time().'.'.$extension;
            if($portfolio->picture != $fileNameToStore || $fileNameToStore != null){

                $portfolio->picture = $fileNameToStore;
                $path = $request->file('picture')->storeAs('/public/img/portfolio_pictures', $fileNameToStore);
            }
        }

        if($pictureFile2 = $request->file('picture2')){
            $fileNameWithExt2 = $pictureFile2->getClientOriginalName();
            $filename2 = pathinfo($fileNameWithExt2, PATHINFO_FILENAME);
            $extension2 = $request->file('picture2')->getClientOriginalExtension();
            $fileNameToStore2 = $filename2.'_'.time().'.'.$extension2;
            if($portfolio->picture2 != $fileNameToStore2 || $fileNameToStore2 != null){

                $portfolio->picture2 = $fileNameToStore2;
                $path = $request->file('picture2')->storeAs('/public/img/portfolio_pictures', $fileNameToStore2);
            }
        }
        if($pictureFile3 = $request->file('picture3')){
            $fileNameWithExt3 = $pictureFile3->getClientOriginalName();
            $filename3 = pathinfo($fileNameWithExt3, PATHINFO_FILENAME);
            $extension3 = $request->file('picture3')->getClientOriginalExtension();
            $fileNameToStore3 = $filename3.'_'.time().'.'.$extension3;
            if($portfolio->picture3 != $fileNameToStore3 || $fileNameToStore3 != null){

                $portfolio->picture3 = $fileNameToStore3;
                $path = $request->file('picture3')->storeAs('/public/img/portfolio_pictures', $fileNameToStore3);
            }
        }
        $portfolio->save();
        session()->flash('message','Your portfolio entry has been updated');
        return redirect(route('portfolios.index'));
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function destroy(Portfolio $portfolio)
    {
        $portfolio->delete();
        return redirect(route('portfolios.index'));
        //
    }
}
