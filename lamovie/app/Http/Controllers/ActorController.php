<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use App\Actor;
use DB;

class ActorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $actors = Actor::orderBy('id','DESC')->withTrashed()->paginate('5');
        return View::make('actor.index',compact('actors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return View::make('actor.create');
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
            'name' =>'required',
            'note'=>'required|alpha_num',
            'poster'=>'required',
        ];
        $messages = [
            'required' => 'This :attribute field is required',
            'min' => 'masyadong maliit ang :attribute',
            'alpha' => 'pawang mga letra lamang',
            'name.required' => 'Anong pangalan mo?'
        ];

        $formData = $request->All();
        $validator = Validator::make($formData, $rules, $messages);
        if ($validator->passes()){
            $poster=$request->file('poster');
            $file_name=$request->input('name').'.'.$poster->getClientOriginalExtension();
            $poster->move(public_path("image"),$file_name);

            $actor=new Actor;
            $actor->name=$request->input('name');
            $actor->note=$request->input('note');
            $actor->image=$file_name;
            $actor->save();

            return Redirect::to('actor')->with('success','New Album added!'); 
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $actor = Actor::find($id);
        return view('actor.edit',compact('actor'));
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
            'name' =>'required',
            'note'=>'required|alpha_num',
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
        $actor = Actor::find($id);
        
            if ($request->file('poster') != null){
                $poster=$request->file('poster');
                $file_name=$request->input('name').'.'.$poster->getClientOriginalExtension();
                $poster->move(public_path("image"),$file_name);
                $actor->image=$file_name;
            }            
        $actor->name=$request->input('name');
        $actor->note=$request->input('note');
        // dd($actor);
        $actor->save();
        }
        return Redirect::to('actor')->with('success','Actor updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $actor = Actor::findOrFail($id);
        $actor->delete();
        return Redirect::to('actor')->with('success','Actor deleted!');
    }

    public function restore($id){
        Actor::withTrashed()->where('id',$id)->restore();
        return  Redirect::route('actor.index')->with('message','Actor restored successfully!');
    }
}
