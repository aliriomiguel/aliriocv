<?php

namespace App\Http\Controllers;

use App\Portfolio;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
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
        $pictureName = $pictureFile->getClientOriginalName();
        
        $pictureFile2 = $request->file('picture2');
        if($pictureFile2){
            $pictureName2 = $pictureFile2->getClientOriginalName();
        }
        else{
            $pictureName2 = null;
        }

        $pictureFile3 = $request->file('picture3');
        if($pictureFile3){
            $pictureName3 = $pictureFile3->getClientOriginalName();    
        }
        else{
            $pictureName3 = null;
        }
        
        Portfolio::create([
            'name' => $request->name,
            'description' => $request->description,
            'website' => $request->website,
            'picture' => $pictureName,
            'picture2' => $pictureName2,
            'picture3' => $pictureName3
        ]);
        $pictureFile->move(base_path().'/public/img/portfolio_pictures',$pictureName);
        if($pictureFile2){
            $pictureFile2->move(base_path().'/public/img/portfolio_pictures',$pictureName2);
        }
        if($pictureFile3){
            $pictureFile3->move(base_path().'/public/img/portfolio_pictures',$pictureName3);
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
            $pictureName = $pictureFile->getClientOriginalName();
            if($portfolio->picture != $pictureName || $pictureName != null){
                $portfolio->picture = $pictureName;
                $pictureFile->move(base_path().'/public/img/portfolio_pictures',$pictureName);
            }
        }
        if($pictureFile2 = $request->file('picture2')){
            $pictureName2 = $pictureFile2->getClientOriginalName();
            if($portfolio->picture2 != $pictureName2 || $pictureName2 != null){
                $portfolio->picture2 = $pictureName2;
                $pictureFile2->move(base_path().'/public/img/portfolio_pictures',$pictureName2);
            }
        }
        if($pictureFile3 = $request->file('picture3')){
            $pictureName3 = $pictureFile3->getClientOriginalName();
            if($portfolio->picture3 != $pictureName3 || $pictureName3 != null){
                $portfolio->picture3 = $pictureName3;
                $pictureFile3->move(base_path().'/public/img/portfolio_pictures',$pictureName3);
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
