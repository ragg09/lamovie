@extends('layouts.app')
@section('body')
<div class="container">

	<h2>Create New Producer</h2>
	{{-- <form method="post" action="{{route('producer.store')}}" >
	<input type="hidden" name="_token" value="{{ csrf_token() }}"> --}}
	{{ Form::open(array('url'=>'producer','files'=>true,'enctype'=>'multipart/form-data')) }}

		{{-- <div class="form-group">
		<label for="name" class="control-label">Name</label>
		<input type="text" class="form-control" id="name" name="name" >
		@if($errors->has('name'))
		<small>{{ $errors->first('name') }}</small>
		@endif
		</div> --}}
		<div class="form-group">
			{{ Form::label('name','Name',array('class'=>'control-label'))}}
			{{ Form::text('name',Request::old('name'),array('class'=>'form-control','id'=>'name'))}}
			@if($errors->has('name'))
				<small>{{ $errors->first('name') }}</small>
			@endif
		</div>

		{{-- <div class="form-group">
		<label for="email" class="control-label">Email</label>
		<input type="text" class="form-control" id="email" name="email" >
		@if($errors->has('email'))
		<small>{{ $errors->first('email') }}</small>
		@endif
		</div> --}}
		<div class="form-group">
			{{ Form::label('email','Email',array('class'=>'control-label'))}}
			{{ Form::text('email',Request::old('email'),array('class'=>'form-control','id'=>'email'))}}
			@if($errors->has('email'))
				<small>{{ $errors->first('email') }}</small>
			@endif
		</div>

		{{-- <div class="form-group">
		<label for="website" class="control-label">Website</label>
		<input type="text" class="form-control" id="websitemwebsite" name="website" >
		@if($errors->has('website'))
		<small>{{ $errors->first('website') }}</small>
		@endif
		</div> --}}
		<div class="form-group">
			{{ Form::label('website','Website',array('class'=>'control-label'))}}
			{{ Form::text('website',Request::old('website'),array('class'=>'form-control','id'=>'website'))}}
			@if($errors->has('website'))
				<small>{{ $errors->first('website') }}</small>
			@endif
		</div>


		<button type="submit" class="btn btn-primary">Save</button>
		<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
	{{ Form::close()}}
</div>

@endsection