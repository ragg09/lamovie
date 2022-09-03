@extends('layouts.app')
@section('body')
<div class="container">

	<h2>Create New Role</h2>
	{{-- <form method="post" action="{{route('role.store')}}" >
	<input type="hidden" name="_token" value="{{ csrf_token() }}"> --}}
	{{ Form::open(array('url'=>'role','files'=>true,'enctype'=>'multipart/form-data')) }}

		{{-- <div class="form-group">
		<label for="role" class="control-label">Role</label>
		<input type="text" class="form-control" id="role" name="role" >
		@if($errors->has('role'))
		<small>{{ $errors->first('role') }}</small>
		@endif
		</div> --}}
		<div class="form-group">
			{{ Form::label('role','Role',array('class'=>'control-label'))}}
			{{ Form::text('role',Request::old('role'),array('class'=>'form-control','id'=>'role'))}}
			@if($errors->has('role'))
				<small>{{ $errors->first('role') }}</small>
			@endif
		</div>

		<button type="submit" class="btn btn-primary">Save</button>
		<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
	{{ Form::close()}}
</div>

@endsection