<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use App\Producer;

class ProducerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $producers = Producer::all();
        return View::make('producer.index',compact('producers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return View::make('producer.create');
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
            'name' =>'required|alpha|min:6|max:32',
            'email'=>'required',
            'website'=>'required',
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
            Producer::create($request->all());
            return Redirect::to('producer')->with('success','New Producer added!'); 
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
        $producer = Producer::find($id);
        return view('producer.edit',compact('producer'));
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
        $producer = Producer::find($id);
        // dd($customer);
        $producer->update($request->all());
        return Redirect::to('producer')->with('success','Producer updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $producer = Producer::findOrFail($id);
        $producer->delete();
        return Redirect::to('producer')->with('success','Producer deleted!');
    }
}
