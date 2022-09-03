@extends('layouts.app')
@section('body')
<div class="container">
	<h2>Create New Actor</h2>
	{{-- <form method="post" action="{{route('actor.store')}}" >
	<input type="hidden" name="_token" value="{{ csrf_token() }}"> --}}
	{{ Form::open(array('url'=>'actor','files'=>true,'enctype'=>'multipart/form-data')) }}

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
			<label for="note" class="control-label">Note</label>
			<textarea class="form-control " id="note" name="note"></textarea>
			@if($errors->has('note'))
			<small>{{ $errors->first('note') }}</small>
			@endif
		</div> --}}
		<div class="form-group">
			{{ Form::label('note','Note',array('class'=>'control-label'))}}
			{{ Form::text('note',Request::old('note'),array('class'=>'form-control','id'=>'note'))}}
			@if($errors->has('note'))
				<small>{{ $errors->first('note') }}</small>
			@endif
		</div>

		<div class="form-group">
		{{ Form::label('poster','Image',array('class'=>'control-label'))}}
		{{ Form::file('poster', Request::old('poster'), array('class' => 'form-control', 'id' => 'poster'))}}
		@if($errors->has('poster'))
		<small>{{ $errors->first('poster') }}</small>
		@endif
		</div>

		<button type="submit" class="btn btn-primary">Save</button>
		<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>	
	{{ Form::close()}}
</div>
@endsection