<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use App\Role;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = role::all();
        return View::make('role.index',compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return View::make('role.create');
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
            'role' =>'required|alpha|min:3|max:32',
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
            role::create($request->all());
            return Redirect::to('role')->with('success','New role added!'); 
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
        $role = role::find($id);
        return view('role.edit',compact('role'));
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
        $role = role::find($id);
        // dd($customer);
        $role->update($request->all());
        return Redirect::to('role')->with('success','role updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $role = role::findOrFail($id);
        $role->delete();
        return Redirect::to('role')->with('success','role deleted!');
    }
}
