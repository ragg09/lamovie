@extends('layouts.app')
@section('body')
<div class="container">
	<h2>Edit role</h2>
	{{-- {{ Form::model($role,['route' => ['role.update',$role->id]]) }}
	{{csrf_field()}}
	{{ method_field('PATCH') }} --}}
	{{ Form::model($role,['route' => ['role.update',$role->id],'role'=>true,'enctype'=>'multipart/form-data','method'=>'PATCH']) }}


	{{-- <div class="form-group">
		<label for="role" class="control-label">Role</label>
		{{ Form::text('role',null,array('class'=>'form-control','id'=>'role')) }}
	</div> --}}
	<div class="form-group">
		{{ Form::label('role','Role',array('class'=>'control-label'))}}
		{{ Form::text('role',null,array('class'=>'form-control','id'=>'role'))}}
		@if($errors->has('role'))
			<small>{{ $errors->first('role') }}</small>
		@endif
	</div>

	<button type="submit" class="btn btn-primary">Save</button>
	<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
</div>
{!! Form::close() !!}
@endsection