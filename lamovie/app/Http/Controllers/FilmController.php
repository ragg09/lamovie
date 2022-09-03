<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Film;
use App\Producer;
use App\Genre;
use App\Actor;
use App\Role;
use App\Rating;
use DB;

class FilmController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $films = Film::orderBy('id','DESC')->withTrashed()->paginate('5');
        return View::make('film.index',compact('films'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $producer=Producer::orderBy('name')->pluck('name','id');
        $genre=Genre::orderBy('genre')->pluck('genre','id');
        $actor=Actor::orderBy('name')->pluck('name','id');
        $role=Role::orderBy('role')->pluck('role','id');
        return View::make('film.create',compact('genre','producer','actor','role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $rules = [
            'title' =>'required',
            'story'=>'required|min:6|max:100000',
            'released_at' =>'required',
            'duration' =>'required|numeric',
            'info'=>'required',
            'poster'=>'required',
        ];
        $messages = [
            'required' => 'This :attribute field is required',
            'min' => 'masyadong maliit ang :attribute',
            'alpha' => 'pawang mga letra lamang',
            // 'name.required' => 'Anong pangalan mo?'
        ];

        $formData = $request->all();
        $validator = Validator::make($formData, $rules, $messages);
        if ($validator->passes()){
                    // dd($request);
            $poster=$request->file('poster');
            $file_name=$request->input('title').'.'.$poster->getClientOriginalExtension();
            $poster->move(public_path("image"),$file_name);

            $film=new Film;
            $film->title=$request->input('title');
            $film->story=$request->input('story');
            $film->released_at=$request->input('released_at');
            $film->duration=$request->input('duration');
            $film->info=$request->input('info');
            $film->image=$file_name;
            $film->save();

            // $film = Film::create($request->all());
            DB::table('film_actor_role') -> insert([
                'role_id' => $request -> input('role'),
                'film_id' => $film -> id,
                'actor_id' => $request -> input('actor'),
            ]);

            DB::table('film_genre') -> insert([
                'genre_id' => $request -> input('genre'),
                'film_id' => $film -> id,
            ]);

            DB::table('film_producer') -> insert([
                'producer_id' => $request -> input('producer'),
                'film_id' => $film -> id,
            ]);
            return Redirect::to('film')->with('success','New Album added!'); 
        }

        //return Redirect::route('customer.create')->withInput();
        return redirect()->back()->withInput()->withErrors($validator);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $film=Film::with(['actors','roles','genres','producers','users'])->where('id',$id)->get();
        $rating=Rating::where('film_id',$id)->get();
        $user_rating=Rating::where('film_id',$id)->where('user_id',Auth::user()->id)->get();
        return View::make('film.showinfo',compact('film','rating','user_rating'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $film = Film::find($id);
        $producer=Producer::orderBy('name')->pluck('name','id');
        $genre=Genre::orderBy('genre')->pluck('genre','id');
        $actor=Actor::orderBy('name')->pluck('name','id');
        $role=Role::orderBy('role')->pluck('role','id');
        $film_info=Film::with(['actors','roles','genres','producers'])->where('id',$id)->get();

        return view('film.edit',compact('film','actor','role','genre','producer','film_info'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $rules = [
            'title' =>'required',
            'story'=>'required|min:6|max:100000',
            'released_at' =>'required',
            'duration' =>'required|numeric',
            'info'=>'required',
        ];
        $messages = [
            'required' => 'This :attribute field is required',
            'min' => 'masyadong maliit ang :attribute',
            'alpha' => 'pawang mga letra lamang',
            // 'name.required' => 'Anong pangalan mo?'
        ];

        $formData = $request->all();
        $validator = Validator::make($formData, $rules, $messages);
        if ($validator->passes()){
            $film = Film::find($id);
            if ($request->file('poster') != null){
                $poster=$request->file('poster');
                $file_name=$request->input('title').'.'.$poster->getClientOriginalExtension();
                $poster->move(public_path("image"),$file_name);
                $film->image=$file_name;
            }

            $film->title=$request->input('title');
            $film->story=$request->input('story');
            $film->released_at=$request->input('released_at');
            $film->duration=$request->input('duration');
            $film->info=$request->input('info');
            $film->save();
        
            $film->genres()->wherePivot('film_id','=',$id)->detach();
            $film->producers()->wherePivot('film_id','=',$id)->detach();
            $film->actors()->wherePivot('film_id','=',$id)->detach();


            DB::table('film_actor_role') -> insert([
                'role_id' => $request -> input('role'),
                'film_id' => $film -> id,
                'actor_id' => $request -> input('actor'),
            ]);

            DB::table('film_genre') -> insert([
                'genre_id' => $request -> input('genre'),
                'film_id' => $film -> id,
            ]);

            DB::table('film_producer') -> insert([
                'producer_id' => $request -> input('producer'),
                'film_id' => $film -> id,
            ]);
        }
        return Redirect::to('film')->with('success','Film updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $film = Film::findOrFail($id);
        $film->delete();
        return Redirect::to('film')->with('success','Film deleted!');
    }

    public function restore($id){
        Film::withTrashed()->where('id',$id)->restore();
        return  Redirect::route('film.index')->with('message','Film restored successfully!');
    }
}
